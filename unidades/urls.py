from django.urls import path
from .views import UnidadView, unidad_delete, unidad_edit, getUnidad

urlpatterns = [
    path('', UnidadView.as_view(), name='unidades'),
    path('delete/<int:id>/', unidad_delete, name='unidad_delete'),
    path('edit/<int:id>/', unidad_edit, name='unidad_edit'),
    path('<int:id>/', getUnidad, name='get_unidad'),
]