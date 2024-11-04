import 'package:tots_ayala_lucas/app/app.locator.dart';
import 'package:tots_ayala_lucas/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool _showPassword = false;

  bool get showPassword => _showPassword;

  void login() {
    _navigationService.replaceWithHomeView();
  }

  void showHidePassword() {
    _showPassword = !_showPassword;
    rebuildUi();
  }
}
