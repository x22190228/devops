from django.db import models

class UserPreference(models.Model):
    username = models.CharField(max_length=100)
    email = models.EmailField()
    age = models.IntegerField()
    choice_of_news = models.CharField(max_length=200)
    country = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
