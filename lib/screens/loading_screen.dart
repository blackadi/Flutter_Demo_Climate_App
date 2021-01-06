import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../screens/location_screen.dart';
import '../services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    //Go to location screen
    var weatherData = await WeatherModel().getWeatherData();

    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return LocationScreen(weatherData);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Colors.teal,
          size: 100.0,
        ),
      ),
    );
  }
}
