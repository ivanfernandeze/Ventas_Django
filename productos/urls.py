from django.urls import path
from .views import ProductosView, producto_delete, get_producto, ProductoEdit

urlpatterns = [
    path('', ProductosView.as_view(), name='productos'),
    path('delete/<int:id>/', producto_delete, name='producto_delete'),
    path('edit/<int:id>/', ProductoEdit.as_view(), name='producto_edit'),
    path('get/<int:id>/', get_producto, name='get_producto'),
]