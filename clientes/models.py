from django.db import models

# Create your models here.
class Cliente(models.Model):
    nombres = models.CharField(max_length=50)
    direccion = models.CharField(max_length=100)
    ruc_dni = models.CharField(max_length=11)
    telefono = models.CharField(max_length=10)
    email = models.EmailField()
    estado = models.BooleanField(default=True)
    
    def __str__(self):
        return self.nombres
