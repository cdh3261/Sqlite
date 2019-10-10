from django.db import models

# Create your models here.
class User(models.Model):
    first_name = models.CharField(max_length=20)
    last_name = models.CharField(max_length=20)
    age = models.IntegerField()
    country = models.CharField(max_length=100)
    phone = models.IntegerField()
    balance = models.IntegerField()