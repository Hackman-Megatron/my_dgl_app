import 'package:flutter/material.dart';
import 'package:my_dgl_app/route/routes_magager.dart' as route;
import '../classes/colors_provider.dart';

class EditdadSecond extends StatefulWidget {
  const EditdadSecond({Key? key}) : super(key: key);

  @override
  State<EditdadSecond> createState() => _EditdadSecondState();
}

class _EditdadSecondState extends State<EditdadSecond> {
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
              Text("#2",
                style: TextStyle(
                    fontSize: 50,
                    color: CouleurApplication.CouleurPrimaire,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 20,),
              Text("What is God Telling \nyou about him?",
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
          Navigator.pushNamed(context, route.editThird);
        },
        elevation: 10,
        backgroundColor: CouleurApplication.Couleurprimaire2,
        child: const Icon(
          Icons.arrow_circle_right_outlined,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
