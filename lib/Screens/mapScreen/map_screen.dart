import 'package:blood_365/Screens/mapScreen/marker_popup.dart';
import 'package:blood_365/Screens/request_screeen/request.dart';
import 'package:blood_365/application/request/request_bloc.dart';
import 'package:blood_365/components/rounded_button.dart';
import 'package:blood_365/domain/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';

import 'package:latlong2/latlong.dart';
import 'package:logger/logger.dart';

class MapScreen extends StatelessWidget {
  final String bloodGroup;
  final bool showButton;

  final UserLocation myLocation;
  final List<UserLocation> nearbyDonars;
  MapScreen(
    this.bloodGroup,
    this.myLocation,
    this.nearbyDonars, {
    Key? key,
    this.showButton = true,
  }) : super(key: key);

  final MapController _mapController = MapController();
  final PopupController _popupLayerController = PopupController();
  final markerAnchorAlign = AnchorAlign.center;

  @override
  Widget build(BuildContext context) {
    int markerIndex = 0;
    return BlocConsumer<RequestBloc, RequestState>(
      listener: (context, state) {
        // _mapController.move(LatLng(state.lat, state.long), 15);
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Map'),
          ),
          bottomNavigationBar: showButton
              ? RoundedButton(
                  text: "Proceed",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Request(bloodGroup, myLocation)));
                  },
                )
              : null,
          body: FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              // swPanBoundary: LatLng(13, 77.5),
              // nePanBoundary: LatLng(13.07001, 77.58),
              center:
                  LatLng(state.myLocation.latitude, state.myLocation.longitude),
              // bounds: LatLngBounds.fromPoints(_latLngList),
              zoom: 7,
            ),
            children: [
              TileLayerWidget(
                options: TileLayerOptions(
                  minZoom: 2,
                  maxZoom: 18,
                  backgroundColor: Colors.black,
                  // errorImage: ,
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
              ),
              PopupMarkerLayerWidget(
                options: PopupMarkerLayerOptions(
                  markers: List<Marker>.from(nearbyDonars.map(
                    (e) => Marker(
                      point: LatLng(e.latitude, e.longitude),
                      width: 40,
                      height: 40,
                      builder: (_) => Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.redAccent),
                        child: Text(
                          bloodGroup,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      anchorPos: AnchorPos.align(markerAnchorAlign),
                    ),
                  )),
                  popupSnap: PopupSnap.mapCenter,
                  popupController: _popupLayerController,
                  popupBuilder: (BuildContext context, Marker marker) =>
                      ExamplePopup(marker),
                  markerRotate: true,
                  markerRotateAlignment:
                      PopupMarkerLayerOptions.rotationAlignmentFor(
                    markerAnchorAlign,
                  ),
                  popupAnimation: 2 == 2
                      ? PopupAnimation.fade(
                          duration: Duration(milliseconds: 700))
                      : null,
                ),
              ),
            ],
            // layers: [

            // ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _mapController.move(
                  LatLng(nearbyDonars[markerIndex].latitude,
                      nearbyDonars[markerIndex].longitude),
                  15);
              if (markerIndex < nearbyDonars.length) {
                markerIndex = markerIndex + 1;
              }
              // BlocProvider.of<RequestBloc>(context)
              //     .add(const GetCurrentLocation());
            },
            child: Icon(Icons.arrow_right),
          ),
        );
      },
    );
  }
}
