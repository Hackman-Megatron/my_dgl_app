import 'package:my_dgl_app/classes/colors_provider.dart';
import 'package:my_dgl_app/classes/dad_model.dart';
import 'package:my_dgl_app/views/edite_dad.dart';
import 'package:flutter/material.dart';
//import 'package:my_dgl_app/route/routes_magager.dart' as route;
import 'package:intl/intl.dart';

class HomeLand extends StatefulWidget {
  const HomeLand({super.key});

  @override
  State<HomeLand> createState() => _HomeLandState();
}

class _HomeLandState extends State<HomeLand> {

  List<DglNote> filteredNotes = [];
  bool sorted = false;

  @override
  void initState(){
    super.initState();
    filteredNotes = sampleNotes;
  }

  Type sortNotesByModifiedTime(List<DglNote> notes){
    if(sorted){
      notes.sort((a,b) => a.modifiedTime.compareTo(b.modifiedTime));
    }else{
      notes.sort((b,a) => a.modifiedTime.compareTo(b.modifiedTime));
    }
    sorted = !sorted;
    return DglNote;
  }

  void onSearchTextChanged(String searchText){
    setState(() {
      filteredNotes = sampleNotes.where(
              (notes) =>
          notes.passageReference.toLowerCase().contains(searchText.toLowerCase())||
              notes.passageText.toLowerCase().contains(searchText.toLowerCase())||
              notes.firstQuestion.toLowerCase().contains(searchText.toLowerCase())||
              notes.secondQuestion.toLowerCase().contains(searchText.toLowerCase())||
              notes.thirdQuestion.toLowerCase().contains(searchText.toLowerCase())||
              notes.fourthQuestion.toLowerCase().contains(searchText.toLowerCase())||
              notes.passageReference.toLowerCase().contains(searchText.toLowerCase())

      ).toList();
    });
  }

  void deleteItem(int index){
    setState(() {
      filteredNotes.removeAt(index);
    });
  }


  List<DglNote> notes = List.empty(growable: true);

  void onDadCreated(DglNote dgl){
    notes.add(dgl);
    setState(() {

    });
  }

  void onDadDeleted(int index){
    notes.removeAt(index);
    setState(() {

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "MyDGL",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: CouleurApplication.Couleurprimaire2,
                    ),
                    child: const Icon(
                      Icons.alarm,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 175,
              decoration: BoxDecoration(
                  color: CouleurApplication.couleurSecondaire2,
                  borderRadius: BorderRadius.circular(25)),
              child: const Column(
                children: [
                  SizedBox(height: 15,),
                  Text("Mark 10: 5-7",textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Text("And Jesus answered and said unto them, For the hardness of your heart he wrote you this precept. 6 But from the beginning of the creation God made them male and female",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: onSearchTextChanged,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  hintText: "search an D.G.L",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.5,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.5,
                      )),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: filteredNotes.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      onTap: () async{
                      },
                      title: RichText(
                        maxLines: 3,
                        text: TextSpan(
                            text: "${filteredNotes[index].passageReference}\n",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                height: 1.5),
                            children: [
                              TextSpan(
                                text: filteredNotes[index].passageText,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    height: 1.5),
                              ),
                            ]),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          DateFormat(
                              'EEEE MMM d, yyy h:mm a'
                          ).format(sampleNotes[index].modifiedTime),
                          style: TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800),
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            deleteItem(index);
                          },
                          icon: const Icon(
                            Icons.delete_forever_rounded,
                            size: 30,
                            color: CouleurApplication.CouleurPrimaire,
                          )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          final result = await Navigator.push(context,
            MaterialPageRoute(
              builder: (BuildContext context) => const EditDad(),
            ),
          );
          if(result!= null){
            setState(() {
              sampleNotes.add(
                DglNote(
                    id: sampleNotes.length,
                    passageText: "And Jesus answered and said unto them, For the hardness of your heart he wrote you this precept. 6 But from the beginning of the creation God made them male and female",
                    passageReference: "Mark 10: 5-6",
                    firstQuestion: result[0],
                    secondQuestion: result[1],
                    thirdQuestion: result[2],
                    fourthQuestion: result[3],
                    modifiedTime: DateTime.now(),

                ),
              );
              filteredNotes = sampleNotes;
            });
          }
        },
        elevation: 10,
        backgroundColor: CouleurApplication.CouleurPrimaire,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.home, size: 35, color: Colors.blue,)
            ),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.settings, size: 35, color: Colors.black,)
            )
          ],
        ),
      ),
    );
  }
}
