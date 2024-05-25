import 'package:my_dgl_app/classes/colors_provider.dart';
import 'package:my_dgl_app/classes/dad_model.dart';
import 'package:flutter/material.dart';
import 'package:my_dgl_app/route/routes_magager.dart' as route;

class EditDad extends StatefulWidget {
  const EditDad({Key? key, this.note}) : super(key: key);
final DglNote? note;

  @override
  State<EditDad> createState() => _EditDadState();
}

class _EditDadState extends State<EditDad> {

   TextEditingController bodyController = TextEditingController();

  @override
  void initState(){
    if(widget.note!= null){
      bodyController = TextEditingController(text: widget.note!.firstQuestion);
    }
    super.initState();
  }

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
              Text("#1",
                style: TextStyle(
                  fontSize: 50,
                  color: CouleurApplication.CouleurPrimaire,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 20,),
              Text("What is God Telling \nyou in This Passage?",
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
              controller: bodyController,
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
          Navigator.pop(context, bodyController.text);
          Navigator.pushNamed(context, route.editSecond);
        },
        elevation: 10,
        backgroundColor: CouleurApplication.Couleurprimaire2,
        child: const Icon(
          Icons.arrow_circle_right_outlined,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
