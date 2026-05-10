import 'package:flutter/widgets.dart';

import 'app.dart';
import 'di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await bootstrap(env: 'dev', baseUrl: 'http://192.168.0.107:8080');
  runApp(const RobotApp());
}
