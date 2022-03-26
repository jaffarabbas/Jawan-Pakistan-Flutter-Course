"""fh_backend URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from api import views
from django.contrib import admin
from django.urls import path

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/user/', views.UserApi.as_view()),
    path('api/user/<int:pk>', views.UserApi.as_view()),
    path('api/categories/', views.CategoriesApi.as_view()),
    path('api/categories/<int:pk>', views.CategoriesApi.as_view()),
    path('api/subcategories/', views.SubCategoriesApi.as_view()),
    path('api/subcategories/<int:pk>', views.SubCategoriesApi.as_view()),
    path('api/pakages/', views.PackagesApi.as_view()),
    path('api/pakages/<int:pk>', views.PackagesApi.as_view()),
    path('api/booking/', views.BookingsApi.as_view()),
    path('api/booking/<int:pk>', views.BookingsApi.as_view()),
]
