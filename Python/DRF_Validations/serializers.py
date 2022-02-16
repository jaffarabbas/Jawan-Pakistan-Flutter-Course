from calendar import c
from wsgiref.validate import validator
from rest_framework import serializers
from .models import Student

def length_of_name(value):
    if len(value) < 2:
        raise serializers.ValidationError('Should grater then 1')
    return value


class StudentSerializer(serializers.Serializer):
    name = serializers.CharField(max_length=100, validators=[length_of_name])
    roll = serializers.IntegerField()
    city = serializers.CharField(max_length=100)

    def create(self,validated_data):
        return Student.objects.create(**validated_data)
    
    def update(seld, instance, validated_data):
        instance.name = validated_data.get('name',instance.name)
        instance.roll = validated_data.get('roll',instance.roll)
        instance.city = validated_data.get('city',instance.city)
        instance.save()
        return instance

    #Feild level validation
    def validate_roll(self, value):
        if value >= 200:
            raise serializers.ValidationError('Seat Full')
        return value

    #Object level validation
    def validate(self, data):
        name = data.get('name')
        city = data.get('city')
        if name.lower() == 'jaffar' and city.lower() == 'karachi':
            raise serializers.ValidationError('Feild errors')
        return data