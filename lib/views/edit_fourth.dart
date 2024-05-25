import 'package:my_dgl_app/route/routes_magager.dart' as route;
import 'package:flutter/material.dart';

import '../classes/colors_provider.dart';
class EditLast extends StatefulWidget {
  const EditLast({Key? key}) : super(key: key);

  @override
  State<EditLast> createState() => _EditLastState();
}

class _EditLastState extends State<EditLast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("What Have you Discover?",
          style: TextStyle(
              fontSize: 15
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("#4",
                style: TextStyle(
                    fontSize: 50,
                    color: CouleurApplication.CouleurPrimaire,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 20,),
              Text("whit who did you \nShared your DGL?",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ],
          ),
          const SizedBox(height:30,),
          SizedBox(
            height: 350, //     <-- TextField expands to this height.
            width: 275,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Just type it"
              ),
              maxLines: null, // Set this
              expands: true, // and this
              keyboardType: TextInputType.multiline,
            ),
          ),
          const Spacer(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, route.homePage);
        },
        elevation: 10,
        backgroundColor: CouleurApplication.Couleurprimaire2,
        child: const Icon(
          Icons.save_sharp,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
