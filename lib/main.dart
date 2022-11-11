import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GoogleMapController? controller;


  double lat = 19.060617;
  double long = 72.848791;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocationPermission();
  }

  getLocationPermission() async {

    PermissionStatus res =  await Permission.location.request();

  }

  @override
  Widget build(BuildContext context) {

    final CameraPosition initialPosition =
    CameraPosition(target: LatLng(lat , long ),);

    return Scaffold(
      appBar: AppBar(
        title: Text('Google map'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: initialPosition,
            mapType: MapType.normal,
            onMapCreated: (controller) {
              setState(() {
                controller = controller;
              });
            },
            onTap: (val) {
              setState(() {
                lat = val.latitude;
                long = val.longitude;
              });
            },
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              "Lat: $lat\nLong: $long",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
                Geolocator.getPositionStream().listen((Position position) {
                  setState(() {
                    lat = position.latitude;
                    long = position.longitude;
                  });
                });
              },
        child: Icon(Icons.gps_fixed),
      ),
    );
  }
}