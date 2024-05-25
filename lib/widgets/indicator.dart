import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../classes/colors_provider.dart';

class indicator extends StatelessWidget {
  const indicator({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: isActive? CouleurApplication.CouleurPrimaire :
          CouleurApplication.Couleurprimaire2,
          borderRadius: const  BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
