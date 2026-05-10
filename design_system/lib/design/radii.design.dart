import 'package:flutter/widgets.dart';

abstract class AppRadii {
  static const BorderRadius button = BorderRadius.all(Radius.circular(14));
  static const BorderRadius card = BorderRadius.all(Radius.circular(20));
  static const BorderRadius sheet = BorderRadius.vertical(
    top: Radius.circular(28),
  );
  static const BorderRadius pill = BorderRadius.all(Radius.circular(999));
}
