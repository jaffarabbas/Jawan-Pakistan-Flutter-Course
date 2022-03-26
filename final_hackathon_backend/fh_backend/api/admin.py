from django.contrib import admin
from .models import Bookings, Categories, Packages, SubCategories, User

# Register your models here.
@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ['id', 'f_name', 'l_name', 'contact', 'address', 'u_name', 'password', 'email']


@admin.register(Categories)
class CategoriesAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'description', 'image', 'rating', 'price']


@admin.register(SubCategories)
class CategoriesAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'description', 'image', 'rating', 'price', 'categories_id']


@admin.register(Packages)
class PackagesAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'description', 'image', 'rating', 'price', 'subCategories_id']


@admin.register(Bookings)
class PackagesAdmin(admin.ModelAdmin):
    list_display = ['id', 'user_id', 'package_id', 'start_date', 'end_date', 'hour', 'total_price', 'status']
