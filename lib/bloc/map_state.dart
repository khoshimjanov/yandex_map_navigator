// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'map_bloc.dart';

class MapState {
  final Point destinationPoint;
  final Point myPoint;
  YandexMapController? controller;
  final PolylineMapObject route;
  final Status status;
  MapState({
    required this.destinationPoint,
    required this.myPoint,
    this.controller,
    required this.route,
    required this.status,
  });

  MapState copyWith({
    Point? destinationPoint,
    Point? myPoint,
    YandexMapController? controller,
    PolylineMapObject? route,
    Status? status,
  }) {
    return MapState(
      destinationPoint: destinationPoint ?? this.destinationPoint,
      myPoint: myPoint ?? this.myPoint,
      controller: controller ?? this.controller,
      route: route ?? this.route,
      status: status ?? this.status,
    );
  }
}

enum Status {
  loading,
  succses,
}
