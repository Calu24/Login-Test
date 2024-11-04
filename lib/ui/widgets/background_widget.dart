import 'package:flutter/material.dart';
import 'package:tots_ayala_lucas/ui/common/app_colors.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        const Positioned(
          top: -30,
          right: -50,
          child: Bubble(size: 500),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.4,
          left: -100,
          child: const Bubble(size: 300),
        ),
        Positioned(
          bottom: -100,
          left: MediaQuery.of(context).size.height * 0.15,
          child: const Bubble(size: 400),
        ),
      ],
    );
  }
}

class Bubble extends StatelessWidget {
  const Bubble({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size / 2,
      height: size / 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: kcBackgroundColor.withOpacity(0.7),
            spreadRadius: 20,
            blurRadius: 100,
          ),
        ],
      ),
    );
  }
}
