// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:tots_ayala_lucas/app/app.bottomsheets.dart';
// import 'package:tots_ayala_lucas/app/app.locator.dart';
// import 'package:tots_ayala_lucas/ui/common/app_strings.dart';
// import 'package:tots_ayala_lucas/ui/views/login/login_viewmodel.dart';

// import '../helpers/test_helpers.dart';

// void main() {
//   LoginViewModel getModel() => LoginViewModel();

//   group('loginViewmodelTest -', () {
//     setUp(() => registerServices());
//     tearDown(() => locator.reset());

//     group('incrementCounter -', () {
//       test('When called once should return  Counter is: 1', () {
//         final model = getModel();
//         model.incrementCounter();
//         expect(model.counterLabel, 'Counter is: 1');
//       });
//     });

//     group('showBottomSheet -', () {
//       test('When called, should show custom bottom sheet using notice variant',
//           () {
//         final bottomSheetService = getAndRegisterBottomSheetService();

//         final model = getModel();
//         model.showBottomSheet();
//         verify(bottomSheetService.showCustomSheet(
//           variant: BottomSheetType.notice,
//           title: ksHomeBottomSheetTitle,
//           description: ksHomeBottomSheetDescription,
//         ));
//       });
//     });
//   });
// }
