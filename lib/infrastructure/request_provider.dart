import 'package:blood_365/domain/core/failure.dart';

import 'package:blood_365/domain/request_blood/i_request_provider.dart';
import 'package:blood_365/domain/request_blood/request.dart';
import 'package:blood_365/domain/tips/tips.dart';
import 'package:blood_365/domain/user/user_profile.dart';

import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import 'package:logger/logger.dart';

class RequestProvider extends IRequestProvider {
  final FirebaseAuth firebaseAuth;

  RequestProvider(
    this.firebaseAuth,
  );

  @override
  Future<Either<Failure, Unit>> postRequestData(RequestData request) async {
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('RequestData');
    try {
      await requests.add(request.toJson()).then((value) {
        Logger().i("updated ");

        return right(unit);
      }).onError((error, stackTrace) {
        Logger().e(error.toString());
        return left(Failure(error.toString()));
      });

      return right(unit);
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RequestData>>> getPendingRequest(
      String bloodGroup, UserLocation myLocation) async {
    final String userId = firebaseAuth.currentUser!.uid;

    final CollectionReference requests =
        FirebaseFirestore.instance.collection('RequestData');
    try {
      final QuerySnapshot<Object?> response =
          await requests.where('status', isEqualTo: 'pending').get();

      if (response.docs.isNotEmpty) {
        final List<RequestData> list = List<RequestData>.from(response.docs.map(
            (e) => RequestData.fromJson(
                    Map<String, dynamic>.from(e.data()! as Map))
                .copyWith(requestId: e.id)));
        Logger().i(list);

        list.removeWhere((element) {
          final double km = const Distance().as(
              LengthUnit.Kilometer,
              LatLng(myLocation.latitude, myLocation.longitude),
              LatLng(element.location.latitude, element.location.longitude));
          Logger().i("distance: $km");
          return element.requestSenderId == userId ||
              element.bloodGroup != bloodGroup ||
              km > 10;
        });

        Logger().i(list.length);
        final DateTime currentTime = DateTime.now();
        final filteredList = list.where((item) {
          final DateTime date =
              DateTime.fromMillisecondsSinceEpoch(item.dateTime);
          return date.isAfter(currentTime);
        }).toList();

        return right(filteredList);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RequestData>>> getMyRequestList() async {
    final String userId = firebaseAuth.currentUser!.uid;
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('RequestData');
    try {
      final QuerySnapshot<Object?> response =
          await requests.where('requestSenderId', isEqualTo: userId).get();

      if (response.docs.isNotEmpty) {
        Logger().i(response.docs.first.data().runtimeType);
        final List<RequestData> list = List<RequestData>.from(response.docs.map(
            (e) => RequestData.fromJson(
                    Map<String, dynamic>.from(e.data()! as Map))
                .copyWith(requestId: e.id)));
        Logger().i(list.length);
        return right(list);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TipsData>>> getTipsList() async {
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('tips');
    try {
      final QuerySnapshot<Object?> response = await requests.get();

      if (response.docs.isNotEmpty) {
        Logger().i(response.docs.first.data().runtimeType);
        final List<TipsData> list = List<TipsData>.from(response.docs.map((e) =>
            TipsData.fromJson(Map<String, dynamic>.from(e.data()! as Map))));
        Logger().i(list.length);
        return right(list);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RequestData>>> getUpcomingRequest() async {
    final String userId = firebaseAuth.currentUser!.uid;
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('RequestData');
    try {
      final QuerySnapshot<Object?> response = await requests
          .where('recieverId', isEqualTo: userId)
          .where('status', isEqualTo: 'accepted')
          .get();

      if (response.docs.isNotEmpty) {
        Logger().i(response.docs.first.data().runtimeType);
        final List<RequestData> list = List<RequestData>.from(response.docs.map(
            (e) => RequestData.fromJson(
                    Map<String, dynamic>.from(e.data()! as Map))
                .copyWith(requestId: e.id)));
        Logger().i(list.length);
        final DateTime currentTime = DateTime.now();
        final filteredList = list.where((item) {
          final DateTime date =
              DateTime.fromMillisecondsSinceEpoch(item.dateTime);
          return date.isAfter(currentTime);
        }).toList();

        return right(filteredList);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RequestData>>> getHistoryRequestList() async {
    final String userId = firebaseAuth.currentUser!.uid;
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('RequestData');
    try {
      final QuerySnapshot<Object?> response = await requests
          .where('recieverId', isEqualTo: userId)
          .where('status', isEqualTo: 'success')
          .get();

      if (response.docs.isNotEmpty) {
        Logger().i(response.docs.first.data().runtimeType);
        final List<RequestData> list = List<RequestData>.from(response.docs.map(
            (e) => RequestData.fromJson(
                    Map<String, dynamic>.from(e.data()! as Map))
                .copyWith(requestId: e.id)));
        Logger().i(list.length);
        final DateTime currentTime = DateTime.now();
        final filteredList = list.where((item) {
          final DateTime date =
              DateTime.fromMillisecondsSinceEpoch(item.dateTime);
          return date.isAfter(currentTime);
        }).toList();

        return right(filteredList);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateRequestData(RequestData request) async {
    final DocumentReference<Map<String, dynamic>> requests = FirebaseFirestore
        .instance
        .collection('RequestData')
        .doc(request.requestId);
    try {
      await requests.set(request.toJson()).then((value) {
        Logger().i("updated ");

        return right(unit);
      }).onError((error, stackTrace) {
        Logger().e(error.toString());
        return left(Failure(error.toString()));
      });

      return right(unit);
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Position>> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return left(Failure(toString()));
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return left(Failure(toString()));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return left(Failure(toString()));
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    final Position position = await Geolocator.getCurrentPosition();
    print("map lati ${position.latitude}");
    return right(position);
  }

  @override
  Future<Either<Failure, Unit>> confirmRequestData(RequestData request) async {
    final DocumentReference<Map<String, dynamic>> requests = FirebaseFirestore
        .instance
        .collection('RequestData')
        .doc(request.requestId);
    try {
      await requests.set(request.toJson()).then((value) {
        Logger().i("updated ");

        return right(unit);
      }).onError((error, stackTrace) {
        Logger().e(error.toString());
        return left(Failure(error.toString()));
      });

      return right(unit);
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> completeRequestData(RequestData request) async {
    final DocumentReference<Map<String, dynamic>> requests = FirebaseFirestore
        .instance
        .collection('RequestData')
        .doc(request.requestId);
    try {
      await requests.set(request.toJson()).then((value) {
        Logger().i("updated ");

        return right(unit);
      }).onError((error, stackTrace) {
        Logger().e(error.toString());
        return left(Failure(error.toString()));
      });

      return right(unit);
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  RequestData request = const RequestData('', '', '', 0, "", "", '', "", "", '',
      '', "", "", '', '', 0, UserLocation(0, 0));

  @override
  Future<Either<Failure, List<UserLocation>>> getNearbyDoners(
      String bloodGroup, UserLocation mylocation) async {
    // km = 423

    final CollectionReference requests =
        FirebaseFirestore.instance.collection('usersData');
    try {
      final QuerySnapshot<Object?> response =
          await requests.where('bloodGroup', isEqualTo: bloodGroup).get();
      if (response.docs.isNotEmpty) {
        Logger().i(response.docs.first.data().runtimeType);
        final List<UserData> list = List<UserData>.from(response.docs.map((e) =>
            UserData.fromJson(Map<String, dynamic>.from(e.data()! as Map))));
        Logger().i(list.length);

        final List<UserLocation> userlocationList =
            List<UserLocation>.from(list.map((e) => e.location));
        final List<UserLocation> filteredList =
            userlocationList.where((location) {
          final double km = const Distance().as(
              LengthUnit.Kilometer,
              LatLng(mylocation.latitude, mylocation.longitude),
              LatLng(location.latitude, location.longitude));
          return km <= 10;
        }).toList();
        return right(userlocationList);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }
}
