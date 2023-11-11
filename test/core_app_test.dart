import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_nscore/core_app.dart';

void main() {
  test('Create a Core App', () {
    CoreApp app = CoreApp();
    app.initialize();
  });
}
