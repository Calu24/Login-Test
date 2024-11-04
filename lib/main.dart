import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tots_ayala_lucas/app/app.bottomsheets.dart';
import 'package:tots_ayala_lucas/app/app.dialogs.dart';
import 'package:tots_ayala_lucas/app/app.locator.dart';
import 'package:tots_ayala_lucas/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.loginView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black87,
        ),
      ),
    );
  }
}
