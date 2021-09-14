import 'package:simple_architecture_flutter/initializing/dependency_injection/injection_container.dart';

Future<void> initApp() async {
  //* INIT THINGS
  await setUpInjections();
}
