class DglNote {
  int id;
  String passageText;
  String passageReference;
  String firstQuestion;
  String secondQuestion;
  String thirdQuestion;
  String fourthQuestion;
  DateTime modifiedTime;

  DglNote({
    required this.id,
    required this.passageText,
    required this.passageReference,
    required this.firstQuestion,
    required this.secondQuestion,
    required this.thirdQuestion,
    required this.fourthQuestion,
    required this.modifiedTime,
  });
}

List<DglNote> sampleNotes = [
  DglNote(
    id: 0,
    passageText:
        "In the beginning was the world, and the world was with God, and the world was God",
    passageReference: "John Chapter 1: 1",
    firstQuestion: "this is what god tells me in this passage",
    secondQuestion: "this is what god tells me about him in this passage",
    thirdQuestion:
        "this is the engagement that i take after reading this passage",
    fourthQuestion: "these are the peoples with whom i shared my dgl",
    modifiedTime: DateTime(2024, 12, 22, 23, 56, 33),
  ),
];
