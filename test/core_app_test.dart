import 'package:flutter_test/flutter_test.dart';
import 'test_util.dart';

import 'package:flutter_nscore/core_app.dart';

void main() {
  test('Create a Core App', () {
    final provider = createContainer();
    final app = provider.read(appProvider);

    expect(app.mIsInitialized, true);
  });
}
