import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // create init state
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    // create an object from Location class 
    Location location = Location();
    // invoke getCurrentLocation method 
    // when we want to await for a method the method must be type of future
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            //Get the current location
            getLocation();
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}
