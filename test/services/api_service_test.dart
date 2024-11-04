import 'package:flutter_test/flutter_test.dart';
import 'package:tots_ayala_lucas/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ApiServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
