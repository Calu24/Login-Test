import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tots_ayala_lucas/ui/common/app_colors.dart';

class HomeViewmodel extends BaseViewModel {
  // final _dialogService = locator<DialogService>();

  Future<void> addEditClient(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Add new client',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Upload Image Placeholder
                  Center(
                    child: DottedBorder(
                      color: kcBackgroundColor,
                      strokeWidth: 2,
                      dashPattern: const [8, 4],
                      borderType: BorderType.Circle,
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Image.asset('assets/image_icon.png'),
                          const SizedBox(height: 8),
                          const Text(
                            'Upload image',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // First Name Field
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'First name*',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                          ),
                        ),
                        SizedBox(height: 16),
                        // Last Name Field
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Last name*',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                          ),
                        ),
                        SizedBox(height: 16),
                        // Email Address Field
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email address*',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Cancel and Save Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Save functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          minimumSize: const Size(170, 0),
                          elevation: 5,
                        ),
                        child: const Text(
                          'SAVE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
