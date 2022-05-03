from django.urls import path

from .views import  *

urlpatterns = [
    path('auth', UserAuth.as_view()),
    path('user', UserList.as_view()),
    path('user/<int:id>/', UserList.as_view()),
    path('place', PlaceList.as_view()),
    path('place/<int:id>/', PlaceList.as_view()),
    path('flight', FlightList.as_view()),
    path('flight/<int:pk>/', FlightList.as_view()),
    path('flight/ticket/book', Book.as_view()),
    path('flight/ticket/book/<int:pk>/', Book.as_view()),
    path('passenger/', PassengerList.as_view()),
    # path('booking/', BookingList.as_view()),
    # path('/validate', UserAPIView.as_view()),


]
