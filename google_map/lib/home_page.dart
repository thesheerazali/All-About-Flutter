import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Marker> _marker = [];

  final List<Marker> _listOfMarkers = [
    const Marker(
      markerId: MarkerId("1"),
      position: LatLng(24.9180271, 67.0970916),
      infoWindow: InfoWindow(title: "My Current Location"),
    ),
  ];

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {
      print(value);
    }).onError((error, stackTrace) {
      print("Error$error");
    });

    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    super.initState();

    _marker.addAll(_listOfMarkers);
  }

  final Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map App"),
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(24.9180271, 67.0970916),
          zoom: 14,
        ),
        // minMaxZoomPreference: MinMaxZoomPreference.unbounded,
        zoomControlsEnabled: false,

        myLocationButtonEnabled: true,
        // compassEnabled: true,
        myLocationEnabled: true,

        mapType: MapType.hybrid,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: Set<Marker>.of(_marker),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getUserCurrentLocation().then((value) async {
            print("My Current Location");
            print("${value.latitude} ${value.longitude}");

            _marker.add(
              Marker(
                markerId: MarkerId("2"),
                position: LatLng(value.latitude, value.longitude),
                infoWindow: const InfoWindow(title: "My Current Location"),
              ),
            );

            CameraPosition cameraPosition = CameraPosition(
                target: LatLng(value.latitude, value.longitude), zoom: 16);

            GoogleMapController controller = await _controller.future;

            controller
                .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
            setState(() {});
          });
        },
        backgroundColor: Colors.white,
        child: const Icon(
          CupertinoIcons.arrow_3_trianglepath,
          color: Colors.blue,
        ),
      ),
    );
  }
}
