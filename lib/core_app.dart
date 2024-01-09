library flutter_nscore;
import 'package:flutter_fimber/flutter_fimber.dart';

class CoreApp {

  void initialize() {
    Fimber.plantTree(DebugTree(useColors: true));
    Fimber.d("Application initialized");
  }
}