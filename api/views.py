from django.shortcuts import render
from rest_framework import generics
from rest_framework import mixins


from rest_framework.response import Response
from rest_framework import parsers
from django_filters.rest_framework import DjangoFilterBackend
# from rest_framework import filters
import requests
import json
from django.http import HttpResponse
from rest_framework.parsers import JSONParser
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate, login, logout
# Create your views here.
import secrets
from datetime import datetime, timedelta
import math



from flight.models import Place,Week,Flight,Passenger,Ticket,User
from api.serializers import *


class UserList(generics.GenericAPIView,mixins.ListModelMixin,mixins.RetrieveModelMixin,mixins.UpdateModelMixin,
                  mixins.CreateModelMixin):
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    serializer_class = UserSerializer
    queryset = User.objects.all()
    # filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
    # # filter_backends = [filters.SearchFilter]
    # filterset_fields = ['fileName']
    # ordering_fields = ['fileName', 'id']
    # lookup_field = 'id'

    def get(self, request, id=None, thumbId=None, file=None, searchKey=None):
        if id:
            user = User.objects.get(id=id)
            serializer = UserSerializer(user)
            return Response(serializer.data)

        try:
            queryset = self.get_queryset()
            serializer = UserSerializer(queryset, many=True)
            return Response(serializer.data)
        except Exception as e:
            x = {"status": "Error", "message": " Failed !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def post(self, request):
        user = authenticate(request, username=request.data["username"], password=request.data["password"])
        print(user)
        try:
            user = User.objects.create_user(request.data["username"],request.data["email"],request.data["password"])
            user.first_name = request.data["first_name"]
            user.last_name = request.data["last_name"]
            user.save()

            x = {"status": "Success", "message": "Account Created Successfully !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
        except Exception as e:
            x = {"status": "Error", "message": "Account Not Created !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def put(self, request, id=None):
        # return self.update(request, id)
        x = {"status": "Error", "message": "Account Not Created !!"}
        json_format = json.dumps(x)
        return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def delete(self, request, id=None):
        isAuth, user = authUser(request)
        x = {"status": "Error", "message": "Authentication Failed !!"}
        json_format = json.dumps(x)
        return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


class UserAuth(generics.GenericAPIView,mixins.ListModelMixin,mixins.RetrieveModelMixin,mixins.UpdateModelMixin,
                  mixins.CreateModelMixin):
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    serializer_class = UserAuthSerializer
    queryset = User.objects.all()
    # filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
    # # filter_backends = [filters.SearchFilter]
    # filterset_fields = ['fileName']
    # ordering_fields = ['fileName', 'id']
    # lookup_field = 'id'

    def get(self, request, id=None, thumbId=None, file=None, searchKey=None):

        x = {"status": "Error", "message": " Failed !!"}
        json_format = json.dumps(x)
        return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def post(self, request):
        print("fdasdfsdf")
        print(request.data["username"])
        try:
            user = authenticate(request, username=request.data["username"], password=request.data["password"])
            print(user)

            serializer = UserSerializer(user)
            return Response(serializer.data)
            x = {"status": "Success", "message": "Account Created Successfully !!"}
            json_format = json.dumps(user)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
        except Exception as e:
            x = {"status": "Error", "message": "Account Not Created !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def put(self, request, id=None):
        # return self.update(request, id)
        x = {"status": "Error", "message": "Account Not Created !!"}
        json_format = json.dumps(x)
        return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def delete(self, request, id=None):
        isAuth, user = authUser(request)
        x = {"status": "Error", "message": "Authentication Failed !!"}
        json_format = json.dumps(x)
        return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


class PlaceList(generics.GenericAPIView,mixins.ListModelMixin,mixins.RetrieveModelMixin,mixins.UpdateModelMixin,
                  mixins.CreateModelMixin):
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    serializer_class = PlaceSerializer
    queryset = Place.objects.all()
    # filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
    # # filter_backends = [filters.SearchFilter]
    # filterset_fields = ['fileName']
    # ordering_fields = ['fileName', 'id']
    # lookup_field = 'id'

    def get(self, request, id=None):
        if id:
            place = Place.objects.get(id=id)
            serializer = PlaceSerializer(place)
            return Response(serializer.data)

        try:
            queryset = self.get_queryset()
            serializer = PlaceSerializer(queryset, many=True)
            return Response(serializer.data)
        except Exception as e:
            x = {"status": "Error", "message": " Failed !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def post(self, request):
        user = authenticate(request, username=request.data["username"], password=request.data["password"])
        print(user)
        try:
            user = User.objects.create_user(request.data["username"],request.data["email"],request.data["password"])
            user.first_name = request.data["first_name"]
            user.last_name = request.data["last_name"]
            user.save()

            x = {"status": "Success", "message": "Account Created Successfully !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
        except Exception as e:
            x = {"status": "Error", "message": "Account Not Created !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


class FlightList(generics.GenericAPIView,mixins.ListModelMixin,mixins.RetrieveModelMixin,mixins.UpdateModelMixin,
                  mixins.CreateModelMixin):
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    serializer_class = FlightSerializer
    queryset = Flight.objects.all()

    def get(self, request, pk=None):
        if id:
            # flight = FlightSerializer.objects.get(id=id)
            # serializer = FlightSerializer(flight)
            # return Response(serializer.data)
            return self.retrieve(request)

        try:
            min_date = f"{datetime.now().date().year}-{datetime.now().date().month}-{datetime.now().date().day}"
            max_date = f"{datetime.now().date().year if (datetime.now().date().month + 3) <= 12 else datetime.now().date().year + 1}-{(datetime.now().date().month + 3) if (datetime.now().date().month + 3) <= 12 else (datetime.now().date().month + 3 - 12)}-{datetime.now().date().day}"
            # print (request.query_params['Origin'] )
            print(request.data)

            o_place = request.query_params['Origin']
            d_place = request.query_params['Destination']
            departdate = request.query_params['DepartDate']
            trip_type = request.query_params['TripType']
            depart_date = datetime.strptime(departdate, "%Y-%m-%d")
            return_date = None
            print(o_place)
            if trip_type == '2':
                returndate = request.query_params['ReturnDate']
                return_date = datetime.strptime(returndate, "%Y-%m-%d")
                flightday2 = Week.objects.get(number=return_date.weekday())  ##
                origin2 = Place.objects.get(code=d_place.upper())  ##
                destination2 = Place.objects.get(code=o_place.upper())  ##

            seat = request.query_params['SeatClass']
            #
            flightday = Week.objects.get(number=depart_date.weekday())
            destination = Place.objects.get(code=d_place.upper())
            origin = Place.objects.get(code=o_place.upper())



            if seat == 'economy':
                flights = Flight.objects.filter(depart_day=flightday, origin=origin, destination=destination).exclude(
                    economy_fare=0).order_by('economy_fare')
                try:
                    max_price = flights.last().economy_fare
                    min_price = flights.first().economy_fare
                except:
                    max_price = 0
                    min_price = 0

                if trip_type == '2':  ##
                    flights2 = Flight.objects.filter(depart_day=flightday2, origin=origin2,
                                                     destination=destination2).exclude(economy_fare=0).order_by(
                        'economy_fare')  ##
                    try:
                        max_price2 = flights2.last().economy_fare  ##
                        min_price2 = flights2.first().economy_fare  ##
                    except:
                        max_price2 = 0  ##
                        min_price2 = 0  ##

            elif seat == 'business':
                flights = Flight.objects.filter(depart_day=flightday, origin=origin, destination=destination).exclude(
                    business_fare=0).order_by('business_fare')
                try:
                    max_price = flights.last().business_fare
                    min_price = flights.first().business_fare
                except:
                    max_price = 0
                    min_price = 0

                if trip_type == '2':  ##
                    flights2 = Flight.objects.filter(depart_day=flightday2, origin=origin2,
                                                     destination=destination2).exclude(business_fare=0).order_by(
                        'business_fare')  ##
                    try:
                        max_price2 = flights2.last().business_fare  ##
                        min_price2 = flights2.first().business_fare  ##
                    except:
                        max_price2 = 0  ##
                        min_price2 = 0  ##

            elif seat == 'first':
                flights = Flight.objects.filter(depart_day=flightday, origin=origin, destination=destination).exclude(
                    first_fare=0).order_by('first_fare')
                try:
                    max_price = flights.last().first_fare
                    min_price = flights.first().first_fare
                except:
                    max_price = 0
                    min_price = 0

                if trip_type == '2':  ##
                    flights2 = Flight.objects.filter(depart_day=flightday2, origin=origin2,
                                                     destination=destination2).exclude(first_fare=0).order_by(
                        'first_fare')     
                    try:
                        max_price2 = flights2.last().first_fare  ##
                        min_price2 = flights2.first().first_fare  ##
                    except:
                        max_price2 = 0  ##
                        min_price2 = 0  ##    ##

            # print(calendar.day_name[depart_date.weekday()])
            if trip_type == '2':
                return render(request, "flight/search.html", {
                    'flights': flights,
                    'origin': origin,
                    'destination': destination,
                    'flights2': flights2,  ##
                    'origin2': origin2,  ##
                    'destination2': destination2,  ##
                    'seat': seat.capitalize(),
                    'trip_type': trip_type,
                    'depart_date': depart_date,
                    'return_date': return_date,
                    'max_price': math.ceil(max_price / 100) * 100,
                    'min_price': math.floor(min_price / 100) * 100,
                    'max_price2': math.ceil(max_price2 / 100) * 100,  ##
                    'min_price2': math.floor(min_price2 / 100) * 100  ##
                })
            else:
                # serializer = PlaceSerializer(place)
                # return Response(serializer.data)

                flights = FlightSerializer(flights, many=True).data
                json_format = json.dumps(flights)

                return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)

            return Response("request")
        except Exception as e:
            print (e)
            x = {"status": "Error", "message": " Failed !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


    def post(self, request):
        user = authenticate(request, username=request.data["username"], password=request.data["password"])
        print(user)
        try:
            user = User.objects.create_user(request.data["username"],request.data["email"],request.data["password"])
            user.first_name = request.data["first_name"]
            user.last_name = request.data["last_name"]
            user.save()

            x = {"status": "Success", "message": "Account Created Successfully !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
        except Exception as e:
            x = {"status": "Error", "message": "Account Not Created !!"}
            json_format = json.dumps(x)
            return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)


class PassengerList(generics.GenericAPIView,mixins.ListModelMixin,mixins.RetrieveModelMixin,mixins.UpdateModelMixin,
                  mixins.CreateModelMixin):
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    serializer_class = PassengerSerializer
    queryset = Passenger.objects.all()
    # filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
    # # filter_backends = [filters.SearchFilter]
    # filterset_fields = ['fileName']
    # ordering_fields = ['fileName', 'id']
    # lookup_field = 'id'

    def get(self, request, id=None):
        if id:
            return self.retrieve(request)
        else:
            return self.list(request)

    def post(self, request):
        return self.create(request)

    def put(self, request, id=None):
        return self.update(request, id)

    def delete(self, request, id=None):
        return self.destroy(request, id)


class Book(generics.GenericAPIView,mixins.ListModelMixin,mixins.RetrieveModelMixin,mixins.UpdateModelMixin,
                  mixins.CreateModelMixin):
    parser_classes = [parsers.MultiPartParser, parsers.FormParser, parsers.JSONParser]
    serializer_class = TicketSerializer
    queryset = Ticket.objects.all()
    # filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
    # # filter_backends = [filters.SearchFilter]
    # filterset_fields = ['fileName']
    # ordering_fields = ['fileName', 'id']
    # lookup_field = 'id'

    def get(self, request, pk=None):
        if id:
            return self.retrieve(request)
        else:
            return self.list(request)

    def post(self, request):
        return self.create(request)

    def put(self, request, pk=None):
        return self.update(request, pk)

    def delete(self, request, id=None):
        return self.destroy(request, id)

    # def get(self, request, id=None, thumbId=None, file=None, searchKey=None):
    #     if id:
    #         ticket = Ticket.objects.get(id=id)
    #         serializer = TicketSerializer(ticket)
    #         return Response(serializer.data)
    #
    #     try:
    #         queryset = self.get_queryset()
    #         serializer = TicketSerializer(queryset, many=True)
    #         return Response(serializer.data)
    #     except Exception as e:
    #         print (e)
    #         x = {"status": "Error", "message": " Failed !!"}
    #         json_format = json.dumps(x)
    #         return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
    #
    #
    # def post(self, request):
    #
    #     try:
    #         ticket = Ticket.objects.create_user(request.data["username"],request.data["email"],request.data["password"])
    #         ticket.first_name = request.data["first_name"]
    #         ticket.last_name = request.data["last_name"]
    #         user.save()
    #
    #         x = {"status": "Success", "message": "Account Created Successfully !!"}
    #         json_format = json.dumps(x)
    #         return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
    #     except Exception as e:
    #         x = {"status": "Error", "message": "Account Not Created !!"}
    #         json_format = json.dumps(x)
    #         return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
    #
    #
    # def put(self, request, id=None):
    #     # return self.update(request, id)
    #     x = {"status": "Error", "message": "Account Not Created !!"}
    #     json_format = json.dumps(x)
    #     return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
    #
    #
    # def delete(self, request, id=None):
    #     isAuth, user = authUser(request)
    #     x = {"status": "Error", "message": "Authentication Failed !!"}
    #     json_format = json.dumps(x)
    #     return HttpResponse(json_format, content_type="application/json")  # return self.retrieve(request)
    #
