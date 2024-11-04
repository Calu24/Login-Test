import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tots_ayala_lucas/ui/common/ui_helpers.dart';
import 'package:tots_ayala_lucas/ui/widgets/background_widget.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                verticalSpaceMassive,
                verticalSpaceLarge,
                Image.asset('assets/logo.png'),
                verticalSpaceSmall,
                const Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                verticalSpaceLarge,
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Mail',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
                verticalSpaceLarge,
                TextField(
                  obscureText: viewModel.showPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    labelStyle: const TextStyle(fontSize: 16),
                    suffixIcon: IconButton(
                      icon: Icon(
                        viewModel.showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        viewModel.showHidePassword();
                      },
                    ),
                  ),
                ),
                verticalSpaceLarge,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      viewModel.login();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
