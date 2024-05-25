import 'package:flutter/material.dart';
import '../classes/colors_provider.dart';

class roundButton extends StatelessWidget {
  final String titre;
  final Function () onpressed;
  const roundButton({required this.onpressed,required this.titre,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(

      
      padding: const EdgeInsets.all(10),

      child:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: CouleurApplication.primaryGroupe,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(color: Colors.black26,
            blurRadius: 2,
              offset: Offset(0, 2)
            )
          ]
        ),
         child:  MaterialButton(
           onPressed: onpressed,
           minWidth: double.maxFinite,
           height: 50,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(250),

         ),
           textColor: CouleurApplication.CouleurPrimaire,
           child: Text(titre,
           style: const TextStyle(
             fontSize: 16,
             color: CouleurApplication.couleurBlanche,
             fontWeight: FontWeight.w700
           ),),
         )
      ),

    );
  }
}

