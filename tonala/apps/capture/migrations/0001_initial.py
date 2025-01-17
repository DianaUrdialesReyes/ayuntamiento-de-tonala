# Generated by Django 4.0.4 on 2022-05-06 15:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Constitutive_Act',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('act_pdf', models.FileField(upload_to='')),
            ],
        ),
        migrations.CreateModel(
            name='Identification',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='Identification_Type',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('identification_type', models.CharField(choices=[('Alto', 'Alto'), ('Media', 'Media'), ('Baja', 'Baja')], max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('photo_ubication', models.ImageField(upload_to='')),
                ('location_link', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Not_Applicable',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('not_applicable', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Ownership_Type',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('ownership_type', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Plane',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('plane_pdf', models.FileField(upload_to='')),
                ('description', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Privilege',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('privilege', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Proceedings',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('comments', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Request',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('request_pdf', models.FileField(upload_to='')),
            ],
        ),
        migrations.CreateModel(
            name='Status',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('status', models.CharField(choices=[('Validado', 'Validado'), ('No Validado', 'No Validado')], max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=256)),
                ('privilege', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.privilege')),
            ],
        ),
        migrations.CreateModel(
            name='User_Proceedings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_proceedings', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.proceedings')),
                ('id_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.user')),
            ],
        ),
        migrations.CreateModel(
            name='Property_Accreditation',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('document_pdf', models.FileField(upload_to='')),
                ('ownership_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.ownership_type')),
            ],
        ),
        migrations.AddField(
            model_name='proceedings',
            name='accreditation',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.property_accreditation'),
        ),
        migrations.AddField(
            model_name='proceedings',
            name='constitutive_act',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.constitutive_act'),
        ),
        migrations.AddField(
            model_name='proceedings',
            name='identification',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.identification'),
        ),
        migrations.AddField(
            model_name='proceedings',
            name='location',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.location'),
        ),
        migrations.AddField(
            model_name='proceedings',
            name='plane',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.plane'),
        ),
        migrations.AddField(
            model_name='proceedings',
            name='request',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.request'),
        ),
        migrations.AddField(
            model_name='proceedings',
            name='status',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.status'),
        ),
        migrations.CreateModel(
            name='Power_Letter',
            fields=[
                ('id', models.PositiveSmallIntegerField(primary_key=True, serialize=False)),
                ('power_letter_pdf', models.FileField(upload_to='')),
                ('not_applicable', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.not_applicable')),
            ],
        ),
        migrations.AddField(
            model_name='identification',
            name='identification_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.identification_type'),
        ),
        migrations.AddField(
            model_name='constitutive_act',
            name='not_applicable',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='capture.not_applicable'),
        ),
    ]
