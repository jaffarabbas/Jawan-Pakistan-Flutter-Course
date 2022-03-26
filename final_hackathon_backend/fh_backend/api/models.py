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
    rating = models.IntegerField()
    price = models.IntegerField()

# categories
class SubCategories(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    rating = models.IntegerField()
    price = models.IntegerField()
    categories_id = models.IntegerField()

# categories
class Packages(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    rating = models.IntegerField()
    price = models.IntegerField()
    subCategories_id = models.IntegerField()