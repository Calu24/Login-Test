import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tots_ayala_lucas/ui/common/ui_helpers.dart';
import 'package:tots_ayala_lucas/ui/widgets/background_widget.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewmodel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewmodel viewModel,
    Widget? child,
  ) {
    final homeViewmodel = HomeViewmodel();
    final List<Map<String, String>> clients = [
      {'name': 'Jane Cooper', 'email': 'alma.lawson@example.com'},
      {'name': 'Esther Howard', 'email': 'debbie.baker@example.com'},
      {'name': 'Jenny Wilson', 'email': 'kenzi.lawson@example.com'},
      {'name': 'Robert Fox', 'email': 'bill.sanders@example.com'},
      {'name': 'Miles Esther', 'email': 'vuhaithuongnute@gmail.com'},
    ];
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                verticalSpaceLarge,
                Image.asset('assets/logo.png', height: 75),
                verticalSpaceSmall,
                const Row(
                  children: [
                    Text(
                      'CLIENTS',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                        ),
                        style: const TextStyle(height: 1),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Add new client functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(0, 40), // Set height to 100px
                      ),
                      child: const Text(
                        'ADD NEW',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                Expanded(
                  child: ListView.builder(
                    itemCount: clients.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.black),
                          ),
                          elevation: 1,
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.fromLTRB(12, 8, 0, 8),
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://via.placeholder.com/150',
                              ),
                            ),
                            title: Text(
                              clients[index]['name']!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(clients[index]['email']!),
                            trailing: PopupMenuButton<String>(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.black,
                              onSelected: (String value) =>
                                  homeViewmodel.addEditClient(context),
                              itemBuilder: (BuildContext context) {
                                return [
                                  const PopupMenuItem<String>(
                                    value: 'edit',
                                    child: SizedBox(
                                      width: 80,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ];
                              },
                              icon: const Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Load more functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        'LOAD MORE',
                        style: TextStyle(color: Colors.white),
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
  HomeViewmodel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewmodel();
}
