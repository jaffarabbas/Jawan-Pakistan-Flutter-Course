from rest_framework import serializers
from .models import Bookings, Categories, Packages, SubCategories, User

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'f_name', 'l_name', 'contact', 'address', 'u_name', 'password', 'email']

class CategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categories
        fields = ['id', 'name', 'description', 'image', 'rating', 'price']


class SubCategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = SubCategories
        fields = ['id', 'name', 'description', 'image', 'rating', 'price', 'categories_id']


class PackagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Packages
        fields = ['id', 'name', 'description', 'image', 'rating', 'price', 'subCategories_id']


class BookingsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Bookings
        fields = ['id', 'user_id', 'package_id', 'start_date', 'end_date', 'hour', 'total_price', 'status']


