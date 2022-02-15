from django.shortcuts import render
import io
from rest_framework.parsers import JSONParser
from .models import Student
from .serializers import StudentSerializer
from rest_framework.renderers import JSONRenderer
from django.http import HttpResponse,JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from django.views import View
# Create your views here.

@method_decorator(csrf_exempt,name="dispatch")
class StudentApi(View):
    def get(self, request, *args, **kwargs):
        if (request.method == 'GET'):
            json_data = request.body
            stream =  io.BytesIO(json_data)
            data = JSONParser().parse(stream)
            id = data.get('id',None)
            if id is not None:
                stuDetail = Student.objects.get(id = id)
                serializers = StudentSerializer(stuDetail)
                return JsonResponse(serializers.data)
            stuDetail = Student.objects.all()
            serializers = StudentSerializer(stuDetail, many=True)
            return JsonResponse(serializers.data, safe=False)      

    def post(self, request,*args, **kwargs):
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

    def update(self, request,pk,*args, **kwargs):
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
        
    def delete(self, request,pk,*args, **kwargs):
        if(request.method == 'DELETE'):
            stuDetail = Student.objects.get(id = pk)
            stuDetail.delete()
            res = {'msg':'Data Deleted'}
            json_data = JSONRenderer().render(res)
            return HttpResponse(json_data,content_type='application/json')
