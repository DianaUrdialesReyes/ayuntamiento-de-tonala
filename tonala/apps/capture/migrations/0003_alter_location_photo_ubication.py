# Generated by Django 4.0.4 on 2022-05-11 10:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('capture', '0002_alter_constitutive_act_act_pdf_alter_plane_plane_pdf_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='location',
            name='photo_ubication',
            field=models.ImageField(upload_to='store/photo_ubication/'),
        ),
    ]