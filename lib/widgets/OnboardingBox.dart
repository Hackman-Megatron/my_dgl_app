import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key, required this.imagePath, required this.title, required this.description}) : super(key: key);

  final String imagePath, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imagePath,
          height: 250,

        ),
        const Spacer(),
        Text(title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w500
          ),
        ),
        const SizedBox(height: 16,),
        Text(description),
        const Spacer(),
      ],
    );
  }
}
