from django.urls import path
from .views import detalle_venta, create_venta, IGV_RATE
from django.http import JsonResponse

urlpatterns = [
    path('', detalle_venta, name='detalle_venta'),
    path('create/', create_venta, name='create_venta'),
    path('igv', lambda request: JsonResponse({'igv': IGV_RATE}), name='igv'),
]