import json
from django.shortcuts import render
from .models import Student
import io
from rest_framework.parsers import JSONParser
from .serializers import StudentSerializer
from rest_framework.renderers import JSONRenderer
from django.http import HttpResponse,JsonResponse
from django.views.decorators.csrf import csrf_exempt

# for single model      
def Student_detail(request, pk):
    stuDetail = Student.objects.get(id = pk)
    serializers = StudentSerializer(stuDetail)
    # json_data = JSONRenderer().render(serializers.data)
    # return HttpResponse(json_data , content_type="application/json")
    return JsonResponse(serializers.data)

# for all data
def Student_List(request):
    stuDetail = Student.objects.all()
    serializers = StudentSerializer(stuDetail, many=True)
    # json_data = JSONRenderer().render(serializers.data)
    # return HttpResponse(json_data , content_type="application/json")
    return JsonResponse(serializers.data, safe=False)


# Create your views here.
@csrf_exempt
def Student_Create(request):
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