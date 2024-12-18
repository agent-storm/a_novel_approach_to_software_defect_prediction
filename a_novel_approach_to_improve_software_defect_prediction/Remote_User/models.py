from django.db import models

# Create your models here.
from django.db.models import CASCADE


class ClientRegister_Model(models.Model):
    username = models.CharField(max_length=30)
    email = models.EmailField(max_length=30)
    password = models.CharField(max_length=10)
    phoneno = models.CharField(max_length=10)
    country = models.CharField(max_length=30)
    state = models.CharField(max_length=30)
    city = models.CharField(max_length=30)
    gender= models.CharField(max_length=30)
    address= models.CharField(max_length=30)


class software_defect_prediction(models.Model):

    Fid= models.CharField(max_length=3000)
    defect_id= models.CharField(max_length=3000)
    creation_date= models.CharField(max_length=3000)
    software_name= models.CharField(max_length=3000)
    short_description= models.CharField(max_length=3000)
    long_description= models.CharField(max_length=3000)
    assignee_name= models.CharField(max_length=3000)
    reporter_name= models.CharField(max_length=3000)
    defect_fix_time= models.CharField(max_length=3000)
    status_category= models.CharField(max_length=3000)
    resolution_category= models.CharField(max_length=3000)
    Prediction= models.CharField(max_length=300)

class detection_accuracy(models.Model):

    names = models.CharField(max_length=300)
    ratio = models.CharField(max_length=300)

class detection_ratio(models.Model):

    names = models.CharField(max_length=300)
    ratio = models.CharField(max_length=300)



