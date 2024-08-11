from django import forms
from .models import Unidad

class UnidadForm(forms.ModelForm):
    class Meta:
        model = Unidad
        fields = ['descripcion']
    
    def __init__(self, *args, **kwargs):
        super(UnidadForm, self).__init__(*args, **kwargs)
        self.fields['descripcion'].widget.attrs.update({
            'class': 'block w-full px-3 py-3 border border-gray-300 text-sm rounded-md shadow-sm focus:outline-none focus:ring-0 focus:border-red-200 sm:text-sm',
            'placeholder': 'Ingrese la descripción de la categoría'
        })