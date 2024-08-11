from django.shortcuts import render, HttpResponse, redirect
from django.views import View
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib import messages
# Create your views here.
    
class SignIn(View):
    template_name = 'login.html'

    def get(self, request):
        return render(request, self.template_name, {
            'form': AuthenticationForm  
        })

    def post(self, request):
        user = authenticate(request, username=request.POST['username'], password=request.POST['password'])
        if user is None:
            return render(request, 'login.html', {
                'form': AuthenticationForm,
                'error': 'Invalid username or password'
            })
        login(request, user)
        return redirect('home')
        

def signout(request):
    logout(request)
    return redirect('home')