from django.db import models

# Create your models here.
class User(models.Model):
    f_name = models.CharField(max_length=100)
    l_name = models.CharField(max_length=100)
    contact = models.CharField(max_length=100)
    address = models.CharField(max_length=200)
    u_name = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    email = models.CharField(max_length=100)

# categories
class Categories(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    image = models.CharField(max_length=500)
    rating = models.IntegerField()
    price = models.IntegerField()

# categories
class SubCategories(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    image = models.CharField(max_length=500)
    rating = models.IntegerField()
    price = models.IntegerField()
    categories_id = models.IntegerField()

# categories
class Packages(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    image = models.CharField(max_length=500)
    rating = models.IntegerField()
    price = models.IntegerField()
    subCategories_id = models.IntegerField()

# booking
class Bookings(models.Model):
    user_id = models.IntegerField()
    package_id = models.IntegerField()
    start_date = models.CharField(max_length=100)
    end_date = models.CharField(max_length=100)
    hour = models.IntegerField()
    total_price = models.IntegerField()
    status = models.BooleanField()
