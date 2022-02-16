from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Student
from .serializers import StudentSerializer
from rest_framework import status

# Create your views here.
@api_view(['GET', 'POST', 'PUT', 'PATCH' ,'DELETE'])
def student_api(request,pk = None):
    if request.method == 'GET':
        id = pk
        if id is not None:
            stuData = Student.objects.get(id=id)
            serializers = StudentSerializer(stuData)
            return Response(serializers.data, status=status.HTTP_200_OK)
        stuData = Student.objects.all()
        serializers = StudentSerializer(stuData,many=True)
        return Response(serializers.data, status=status.HTTP_200_OK)
    
    if request.method == 'POST':
        serializers = StudentSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'},status=status.HTTP_201_CREATED)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)
    
    if request.method == 'PUT':
        id = pk
        stuData = Student.objects.get(pk=id)
        serializers = StudentSerializer(stuData,data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Complete data Updated'}, status=status.HTTP_200_OK)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    if request.method == 'PATCH':
        id = pk
        stuData = Student.objects.get(pk=id)
        serializers = StudentSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Partial data Updated'})
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    if request.method == 'DELETE':
        id = pk
        stuData = Student.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'}, status=status.HTTP_200_OK)



