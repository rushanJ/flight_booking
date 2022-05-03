from flight.models import Place,Week,Flight,Passenger,Ticket,User,Passenger
from rest_framework import serializers


class UserSerializer(serializers.ModelSerializer):
      class Meta:
            model = User
            fields = ['id','first_name','username', 'last_name','email','password']

class UserAuthSerializer(serializers.ModelSerializer):
      class Meta:
            model = User
            fields = ['username',  'password']

class PlaceSerializer(serializers.ModelSerializer):
      class Meta:
            model = Place
            fields = ['id','code','city','country']

class FlightSerializer(serializers.ModelSerializer):
      class Meta:
            model = Flight
            fields = ['id','origin','destination','depart_time','duration','arrival_time','plane','airline','economy_fare','business_fare','first_fare']

class TicketSerializer(serializers.ModelSerializer):
      class Meta:
            model = Ticket
            fields = ['id','user','ref_no','passengers','flight','flight_ddate','flight_adate','flight_fare','other_charges','coupon_used','coupon_discount','total_fare','seat_class','booking_date','mobile','email','status']

class PassengerSerializer(serializers.ModelSerializer):
      class Meta:
            model = Passenger
            fields = ['id','first_name','last_name','gender']