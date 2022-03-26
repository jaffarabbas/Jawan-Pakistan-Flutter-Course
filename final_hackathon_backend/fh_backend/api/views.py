from django.shortcuts import render
from rest_framework.response import Response
from .models import Bookings, Categories, Packages, SubCategories, User
from .serializers import BookingsSerializer, CategoriesSerializer, PackagesSerializer, SubCategoriesSerializer, UserSerializer
from rest_framework import status
from rest_framework.views import APIView


class UserApi(APIView):
    def get(self, request, pk=None, format=None):
        id = pk
        if id is not None:
            stuData = User.objects.get(id=id)
            serializers = UserSerializer(stuData)
            return Response(serializers.data, status=status.HTTP_200_OK)
        stuData = User.objects.all()
        serializers = UserSerializer(stuData,many=True)
        return Response(serializers.data, status=status.HTTP_200_OK)
    
    def post(self, request, format=None):
        serializers = UserSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'},status=status.HTTP_201_CREATED)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def put(self, request,pk, format=None):
        id = pk
        stuData = User.objects.get(pk=id)
        serializers = UserSerializer(stuData,data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Complete data Updated'}, status=status.HTTP_200_OK)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)
    
    def patch(self, request,pk, format=None):
        id = pk
        stuData = User.objects.get(pk=id)
        serializers = UserSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Partial data Updated'})
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request,pk, format=None):
        id = pk
        stuData = User.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'}, status=status.HTTP_200_OK)


class CategoriesApi(APIView):
    def get(self, request, pk=None, format=None):
        id = pk
        if id is not None:
            stuData = Categories.objects.get(id=id)
            serializers = CategoriesSerializer(stuData)
            return Response(serializers.data, status=status.HTTP_200_OK)
        stuData = Categories.objects.all()
        serializers = CategoriesSerializer(stuData,many=True)
        return Response(serializers.data, status=status.HTTP_200_OK)
    
    def post(self, request, format=None):
        serializers = CategoriesSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'},status=status.HTTP_201_CREATED)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def put(self, request,pk, format=None):
        id = pk
        stuData = Categories.objects.get(pk=id)
        serializers = CategoriesSerializer(stuData,data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Complete data Updated'}, status=status.HTTP_200_OK)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)
    
    def patch(self, request,pk, format=None):
        id = pk
        stuData = Categories.objects.get(pk=id)
        serializers = CategoriesSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Partial data Updated'})
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request,pk, format=None):
        id = pk
        stuData = Categories.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'}, status=status.HTTP_200_OK)


class SubCategoriesApi(APIView):
    def get(self, request, pk=None, format=None):
        id = pk
        if id is not None:
            stuData = SubCategories.objects.get(id=id)
            serializers = SubCategoriesSerializer(stuData)
            return Response(serializers.data, status=status.HTTP_200_OK)
        stuData = SubCategories.objects.all()
        serializers = SubCategoriesSerializer(stuData,many=True)
        return Response(serializers.data, status=status.HTTP_200_OK)
    
    def post(self, request, format=None):
        serializers = SubCategoriesSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'},status=status.HTTP_201_CREATED)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def put(self, request,pk, format=None):
        id = pk
        stuData = SubCategories.objects.get(pk=id)
        serializers = SubCategoriesSerializer(stuData,data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Complete data Updated'}, status=status.HTTP_200_OK)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)
    
    def patch(self, request,pk, format=None):
        id = pk
        stuData = SubCategories.objects.get(pk=id)
        serializers = SubCategoriesSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Partial data Updated'})
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request,pk, format=None):
        id = pk
        stuData = SubCategories.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'}, status=status.HTTP_200_OK)


class PackagesApi(APIView):
    def get(self, request, pk=None, format=None):
        id = pk
        if id is not None:
            stuData = Packages.objects.get(id=id)
            serializers = PackagesSerializer(stuData)
            return Response(serializers.data, status=status.HTTP_200_OK)
        stuData = Packages.objects.all()
        serializers = PackagesSerializer(stuData,many=True)
        return Response(serializers.data, status=status.HTTP_200_OK)
    
    def post(self, request, format=None):
        serializers = PackagesSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'},status=status.HTTP_201_CREATED)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def put(self, request,pk, format=None):
        id = pk
        stuData = Packages.objects.get(pk=id)
        serializers = PackagesSerializer(stuData,data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Complete data Updated'}, status=status.HTTP_200_OK)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)
    
    def patch(self, request,pk, format=None):
        id = pk
        stuData = Packages.objects.get(pk=id)
        serializers = PackagesSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Partial data Updated'})
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request,pk, format=None):
        id = pk
        stuData = Packages.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'}, status=status.HTTP_200_OK)


class BookingsApi(APIView):
    def get(self, request, pk=None, format=None):
        id = pk
        if id is not None:
            stuData = Bookings.objects.get(id=id)
            serializers = BookingsSerializer(stuData)
            return Response(serializers.data, status=status.HTTP_200_OK)
        stuData = Bookings.objects.all()
        serializers = BookingsSerializer(stuData,many=True)
        return Response(serializers.data, status=status.HTTP_200_OK)
    
    def post(self, request, format=None):
        serializers = BookingsSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'data inserted'},status=status.HTTP_201_CREATED)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def put(self, request,pk, format=None):
        id = pk
        stuData = Bookings.objects.get(pk=id)
        serializers = BookingsSerializer(stuData,data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Complete data Updated'}, status=status.HTTP_200_OK)
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)
    
    def patch(self, request,pk, format=None):
        id = pk
        stuData = Bookings.objects.get(pk=id)
        serializers = BookingsSerializer(stuData,data=request.data,partial=True)
        if serializers.is_valid():
            serializers.save()
            return Response({'msg':'Partial data Updated'})
        return Response(serializers.errors ,status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request,pk, format=None):
        id = pk
        stuData = Bookings.objects.get(pk=id)
        stuData.delete()
        return Response({'msg':'data Deleted'}, status=status.HTTP_200_OK)