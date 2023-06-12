import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

// use future to can use async and await concept
  Future<void> getCurrentLocation() async {
    // use try and catch for exeption handling that prevent crash our app
    try {
    // create a geolocator object
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latitude = position.latitude;
    longitude = position.longitude;
    // ignore: avoid_print
    print(position);
    }
    catch (e){
      // ignore: avoid_print
      print(e);
    }
  }
}