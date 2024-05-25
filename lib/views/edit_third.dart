import 'package:my_dgl_app/route/routes_magager.dart' as route;
import 'package:flutter/material.dart';
import '../classes/colors_provider.dart';

class EditThird extends StatefulWidget {
  const EditThird({Key? key}) : super(key: key);

  @override
  State<EditThird> createState() => _EditThirdState();
}

class _EditThirdState extends State<EditThird> {
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
              Text("#3",
                style: TextStyle(
                    fontSize: 50,
                    color: CouleurApplication.CouleurPrimaire,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 20,),
              Text("what commitment do \nyou take after Meditate \non this passage?",
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
          Navigator.pushNamed(context, route.editFourth);
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
