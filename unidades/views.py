from django.views import View
from django.http import JsonResponse
from django.shortcuts import render, get_object_or_404, redirect
from .models import Unidad
from .forms import UnidadForm
from django.db.models import Q

class UnidadView(View):
    template_name = 'unidades.html'

    def get(self, request):
        query = request.GET.get('q', '')
        unidades = Unidad.objects.filter(estado=True)
        print(query)
        if query:
            unidades = unidades.filter(
                Q(descripcion__icontains=query) | Q(id__icontains=query)
            )

        form = UnidadForm()
        ctx = {
            "unidades": unidades,
            "form": form
        }
        return render(request, self.template_name, ctx)
    
    def post(self, request):
        form = UnidadForm(request.POST)
        if form.is_valid():
            descripcion = form.cleaned_data['descripcion']
            
            if Unidad.objects.filter(descripcion=descripcion, estado=True).exists():
                return JsonResponse({"error": "La unidad ya existe"})
            else:
                form.save()
                return JsonResponse({"success": "Unidad registrada correctamente"}, status=201)
        
        return JsonResponse({"error": "Error al registrar la unidad"}, status=400)

def unidad_delete(request, id):
    unidad = Unidad.objects.get(id=id)
    unidad.estado = False
    unidad.save()
    return redirect('unidades')

def unidad_edit(request, id):
    unidad = get_object_or_404(Unidad, id=id)
    
    if request.method == "POST":
        form = UnidadForm(request.POST, instance=unidad)

        # Asegúrate de que no se repitan las descripciones, pero excluye la unidad actual
        descripcion = request.POST.get('descripcion')
        if Unidad.objects.filter(descripcion=descripcion, estado=True).exclude(id=id).exists():
            return JsonResponse({"error": "La unidad ya existe"}, status=400)

        if form.is_valid():
            form.save()
            return JsonResponse({"success": "Unidad editada correctamente"}, status=200)
        else:
            return JsonResponse({"error": "Error al editar la unidad"}, status=400)
    
    return JsonResponse({"error": "Método no permitido"}, status=405)

def getUnidad(request, id):
    unidad = get_object_or_404(Unidad, id=id)
    data = {
        'id': unidad.id,
        'descripcion': unidad.descripcion
    }
    return JsonResponse(data)