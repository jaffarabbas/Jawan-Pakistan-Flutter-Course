from django.shortcuts import render
from rest_framework.response import Response
from .models import Student
from .serializers import StudentSerializer
from rest_framework import status
from rest_framework import viewsets


class StudentViewSet(viewsets.ViewSet):
    def list(self, request):
        stuData = Student.objects.all()
        serializers = StudentSerializer(stuData,many=True)
        return Response(serializers.data, status=status.HTTP_200_OK)

    def retrieve(self, request, pk=None):
        id = pk
        if id is not None:
            stuData = Student.objects.get(id=id)
            serializers = StudentSerializer(stuData)
            return Response(serializers.data, status=status.HTTP_200_OK)
    
    def create(self, request):
        serializers = StudentSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'},status=status.HTTP_201_CREATED)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def update(self, request,pk):
        id = pk
        stuData = Student.objects.get(pk=id)
        serializers = StudentSerializer(stuData,data= request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Complete data Updated'}, status=status.HTTP_200_OK)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)
    
    def partial_update(self, request,pk):
        id = pk
        stuData = Student.objects.get(pk=id)
        serializers = StudentSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Partial data Updated'})
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request,pk):
        id = pk
        stuData = Student.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'}, status=status.HTTP_200_OK)