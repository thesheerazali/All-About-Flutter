import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarkerInfoWindowScreen extends StatefulWidget {
  const CustomMarkerInfoWindowScreen({Key? key}) : super(key: key);

  @override
  _CustomMarkerInfoWindowScreenState createState() =>
      _CustomMarkerInfoWindowScreenState();
}

class _CustomMarkerInfoWindowScreenState
    extends State<CustomMarkerInfoWindowScreen> {
  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  final List<Marker> _markers = <Marker>[];
  final List<LatLng> _latLang = [
    LatLng(33.6941, 72.9734),
    LatLng(33.7008, 72.9682),
    LatLng(33.6992, 72.9744),
    LatLng(33.6939, 72.9771),
    LatLng(33.6910, 72.9807),
    LatLng(33.7036, 72.9785)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() {
    for (int i = 0; i < _latLang.length; i++) {
      _markers.add(Marker(
          markerId: MarkerId(i.toString()),
          position: _latLang[i],
          icon: BitmapDescriptor.defaultMarker,
          onTap: () {
            _customInfoWindowController.addInfoWindow!(
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media.istockphoto.com/id/1403973419/photo/table-top-of-food-spread-on-table.jpg?s=2048x2048&w=is&k=20&c=huMXHeOEi-72-TuRBbpjQppkbp4ABrW2Cj1Xgofl2Xc='),
                            fit: BoxFit.fitWidth,
                            filterQuality: FilterQuality.high),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Colors.red,
                      ),
                    ),
                    const Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              'Food Breaks',
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                              softWrap: false,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '8 mi.',
                            // widget.data!.date!,
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Text(
                        'We Serve Love With Food as Well.',
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
              _latLang[i],
            );
          }));
    }
  }

  @override
  Widget build(BuildContext context) {
    // loadData() ;
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Info Window Example'),
        backgroundColor: Colors.cyan,
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
                target: LatLng(33.6941, 72.9734), zoom: 14),
            markers: Set<Marker>.of(_markers),
            onMapCreated: (GoogleMapController controller) {
              _customInfoWindowController.googleMapController = controller;
            },
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 200,
            width: 300,
            offset: 25,
          )
        ],
      ),
    );
  }
}
