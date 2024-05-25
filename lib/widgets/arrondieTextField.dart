import 'package:flutter/material.dart';

import '../classes/colors_provider.dart';

class TxtF extends StatelessWidget {
final TextEditingController?textEditingController;
final FormFieldValidator?validator;
final ValueChanged<String> onChanged;
final String hintText;
final String icon;
final TextInputType textInputType;
final bool isObscure;
final Widget? rightIcon;
  const TxtF({super.key,required  this.textEditingController, this.validator, required this.onChanged, required this.hintText, required this.icon, required this.textInputType, this.rightIcon, required this.isObscure,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CouleurApplication.grisClair,
            borderRadius: BorderRadius.circular(25)
      ),
      child: TextFormField(
        controller: textEditingController,
        keyboardType: textInputType,
        obscureText: isObscure,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          prefixIcon: Container(
            alignment: Alignment.center,
            width: 20,
              height: 20,
            color: CouleurApplication.grisClair,
            child: Image.asset(icon,
            width: 20,
              height: 20,
              fit: BoxFit.contain,

              color: CouleurApplication.gris,
            ),
          ),
          suffixIcon: rightIcon,
          helperStyle: const TextStyle(
            fontSize: 12,
            color: CouleurApplication.gris,

          )
        ),
        validator: validator,
      ),
    );
  }
}
