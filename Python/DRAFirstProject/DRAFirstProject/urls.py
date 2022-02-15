
from django.contrib import admin
from django.urls import path
from api import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('stuinfo/<int:pk>', views.Student_detail),
    path('stuinfo/', views.Student_List),
    path('stucreate/', views.Student_Create),
]
