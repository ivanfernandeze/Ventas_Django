from django.shortcuts import render, redirect
from productos.models import Producto
from clientes.models import Cliente
from .models import Tipo_Venta, Detalle_Venta, Venta
from django.http import JsonResponse
import json
# Create your views here.

IGV_RATE = 0.18

def detalle_venta(request):
    productos = Producto.objects.filter(estado=True)
    clientes = Cliente.objects.filter(estado=True)
    tipo_venta = Tipo_Venta.objects.all()
    ctx = {
        'productos': productos,
        'clientes': clientes,
        'tipo_ventas': tipo_venta,
        'igv': IGV_RATE*100
    }
    return render(request, 'create_venta.html', ctx)

def create_venta(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)  # Cargar datos JSON de la solicitud
            print(f'data: {data}')
            cliente_id = data.get('cliente_id')
            tipo_venta = data.get('tipo_venta')
            fecha = data.get('fecha')
            detalles_data = data.get('detalles')

            if not Cliente.objects.filter(id=cliente_id, estado=True).exists():
                return JsonResponse({'message': 'El cliente no existe'}, status=400)

            if not Tipo_Venta.objects.filter(id=tipo_venta).exists():
                return JsonResponse({'message': 'El tipo de venta no existe'}, status=400)

            subtotal = 0
            detalles_venta = []

            for detalle in detalles_data:
                producto_id = detalle.get('producto_id')
                cantidad = detalle.get('cantidad')
                precio = detalle.get('precio')

                try:
                    producto = Producto.objects.get(id=producto_id)
                except Producto.DoesNotExist:
                    return JsonResponse({'message': f'El producto con ID {producto_id} no existe'}, status=400)

                if producto.stock < cantidad:
                    return JsonResponse({'message': 'No hay suficiente stock para el producto: ' + producto.nombre}, status=400)

                # Actualizar stock
                producto.stock -= cantidad
                producto.save()
                subtotal += float(precio) * cantidad

                # Agregar el detalle a la lista para bulk_create
                detalles_venta.append(Detalle_Venta(
                    producto_id=producto_id,
                    cantidad=cantidad,
                    precio=precio
                ))

            print(f'subtotal: {subtotal}')
            igv = subtotal * IGV_RATE
            total = subtotal + igv
            
            # Crear la venta
            venta = Venta.objects.create(
                fecha_venta=fecha,
                nro_doc='00100010',  # Asegúrate de generar un número de documento único
                subtotal=subtotal,
                total=total,
                igv=igv,
                cliente_id=cliente_id,
                tipo_venta_id=tipo_venta,
            )

            # Crear detalles de venta en bulk
            for detalle in detalles_venta:
                detalle.venta = venta  # Asignar la venta a cada detalle
            Detalle_Venta.objects.bulk_create(detalles_venta)

            return JsonResponse({'message': 'Venta creada correctamente', 'venta_id': venta.id}, status=201)

        except json.JSONDecodeError:
            return JsonResponse({'message': 'Error en el formato JSON'}, status=400)
        except Exception as e:
            print(f'excepcion: {e}')
            return JsonResponse({'message': 'Error al crear la venta'}, status=400)

    return JsonResponse({'message': 'Método no permitido'}, status=405)