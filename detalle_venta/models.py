from django.db import models

# Create your models here.
    
class Venta(models.Model):
    cliente = models.ForeignKey('clientes.Cliente', on_delete=models.NOT_PROVIDED)
    fecha_venta = models.DateField()
    tipo_venta = models.ForeignKey('Tipo_Venta', on_delete=models.NOT_PROVIDED)
    nro_doc = models.CharField(max_length=50)
    total = models.DecimalField(max_digits=10, decimal_places=2)
    subtotal = models.DecimalField(max_digits=10, decimal_places=2)
    igv = models.DecimalField(max_digits=10, decimal_places=2)
    estado = models.BooleanField(default=True)

    
    def __str__(self):
        return f'{self.cliente} - {self.fecha_venta} - {self.total}'
    

class Tipo_Venta(models.Model):
    descripcion = models.CharField(max_length=50)
    
    def __str__(self):
        return self.descripcion
    

class Detalle_Venta(models.Model):
    venta = models.ForeignKey('Venta', on_delete=models.NOT_PROVIDED)
    producto = models.ForeignKey('productos.Producto', on_delete=models.NOT_PROVIDED)
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    cantidad = models.IntegerField()
    estado = models.BooleanField(default=True)
    
    def __str__(self):
        return f'{self.venta} - {self.producto} - {self.precio} - {self.cantidad}'