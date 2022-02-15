from functools import partial
from django.shortcuts import render
import io
from rest_framework.parsers import JSONParser
from .models import Student
from .serializers import StudentSerializer
from rest_framework.renderers import JSONRenderer
from django.http import HttpResponse,JsonResponse
from django.views.decorators.csrf import csrf_exempt

def getStudent(request,pk):
    if (request.method == 'GET'):
        stuDetail = Student.objects.get(id = pk)
        serializers = StudentSerializer(stuDetail)
        return JsonResponse(serializers.data)

def getStudents(request):
    if (request.method == 'GET'):
        stuDetail = Student.objects.all()
        serializers = StudentSerializer(stuDetail, many=True)
        return JsonResponse(serializers.data, safe=False)

@csrf_exempt
def postStudent(request):
    if(request.method == 'POST'):
        json_data = request.body
        stream =  io.BytesIO(json_data)
        data = JSONParser().parse(stream)
        serializers = StudentSerializer(data=data) 
        if serializers.is_valid():
            serializers.save()
            res = {'msg':'Data send'}
            json_data = JSONRenderer().render(res)
            return HttpResponse(json_data,content_type='application/json')

        json_data = JSONRenderer().render(serializers.errors)
        return HttpResponse(json_data,content_type='application/json')

@csrf_exempt
def updateStudent(request, pk):
    if(request.method == 'PUT'):
        json_data = request.body
        stream =  io.BytesIO(json_data)
        data = JSONParser().parse(stream)
        stuData = Student.objects.get(id=pk)
        serializers = StudentSerializer(stuData,data=data,partial=True)
        if serializers.is_valid():
            serializers.save()
            res = {'msg':'Data Updated'}
            json_data = JSONRenderer().render(res)
            return HttpResponse(json_data,content_type='application/json')

        json_data = JSONRenderer().render(serializers.errors)
        return HttpResponse(json_data,content_type='application/json')

@csrf_exempt
def deleteStudent(request,pk):
    if(request.method == 'DELETE'):
        stuDetail = Student.objects.get(id = pk)
        stuDetail.delete()
        res = {'msg':'Data Deleted'}
        json_data = JSONRenderer().render(res)
        return HttpResponse(json_data,content_type='application/json')