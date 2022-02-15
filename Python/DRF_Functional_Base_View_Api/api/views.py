from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Student
from .serializers import StudentSerializer

# Create your views here.
@api_view(['GET', 'POST', 'PUT', 'PATCH' ,'DELETE'])
def student_api(request):
    if request.method == 'GET':
        id = request.data.get('id')
        if id is not None:
            stuData = Student.objects.get(id=id)
            serializers = StudentSerializer(stuData)
            return Response(serializers.data)
        stuData = Student.objects.all()
        serializers = StudentSerializer(stuData,many=True)
        return Response(serializers.data)
    
    if request.method == 'POST':
        serializers = StudentSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'})
        return Response(serializers.errors)
    
    if request.method == 'PUT':
        id = request.data.get('id')
        stuData = Student.objects.get(pk=id)
        serializers = StudentSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data Updated'})
        return Response(serializers.errors)

    if request.method == 'DELETE':
        id = request.data.get('id')
        stuData = Student.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'})



