from django.shortcuts import render, redirect, get_object_or_404
from django.views import View
from django.http import HttpResponse, JsonResponse
from .models import Categoria
from .forms import CategoriaForm


class CategoriaView(View):
    template_name = 'categorias/categorias.html'

    def get(self, request):
        categorias = Categoria.objects.get_queryset().filter(estado=True)
        form = CategoriaForm()
        ctx = {
            "categorias": categorias,
            "form": form
        }
        return render(request, self.template_name, ctx)
    
    def post(self, request):
        print(request.POST)
        form = CategoriaForm(request.POST)
        if form.is_valid():
            descripcion = form.cleaned_data['descripcion']
            
            if Categoria.objects.filter(descripcion=descripcion, estado = 1).exists():
                return JsonResponse({"error": "La categoría ya existe"})
            else:
                form.save()
                return JsonResponse({"success": "Categoría registrada correctamente"}, status=201)
        
        return JsonResponse({"error": "Error al registrar la categoría"}, status=400)

def categoria_delete(request, id):
    categoria = Categoria.objects.get(id=id)
    categoria.estado = False
    categoria.save()

    return redirect('categorias')

def categoria_edit(request, id):
    categoria = get_object_or_404(Categoria, id=id)
    
    if request.method == "POST":
        form = CategoriaForm(request.POST, instance=categoria)

        # Asegúrate de que no se repitan las descripciones, pero excluye la categoría actual
        descripcion = request.POST.get('descripcion')
        if Categoria.objects.filter(descripcion=descripcion, estado=1).exclude(id=id).exists():
            return JsonResponse({"error": "La categoría ya existe"}, status=400)

        if form.is_valid():
            form.save()
            return JsonResponse({"success": "Categoría editada correctamente"}, status=200)
        else:
            return JsonResponse({"error": "Error al editar la categoría"}, status=400)
    
    # Si no es un método POST, devuelve un error
    return JsonResponse({"error": "Método no permitido"}, status=405)


def getCategoria(request, id):
    categoria = get_object_or_404(Categoria, id=id)
    if categoria is None:
        return JsonResponse({"error": "No se encontró la categoría"}, status=400)
    data = {
        'id': categoria.id,
        'descripcion': categoria.descripcion
    }

    return JsonResponse(data)

    