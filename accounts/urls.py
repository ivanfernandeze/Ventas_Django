from django.urls import path
from . import views

urlpatterns = [
    path('signin/', views.SignIn.as_view(), name='login'),
    path('signout/', views.signout, name='signout'),
]