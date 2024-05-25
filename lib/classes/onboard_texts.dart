class OnboardText{

  final String imageText, title, description;

  OnboardText({
    required this.title,
    required this.description,
    required this.imageText
  });
}


final List<OnboardText> demoData = [
  OnboardText(
      title: "do your DGL \nInside Your Phone",
      description: "MyDGL App provide You a smart place to organise and manage your weekly Meditations",
      imageText: "assets/illustration/pic1.jpg",
  ),
  OnboardText(
    title: "share your DGL easily",
    description: "Just in some simple few steps, you can share your DGL with brethren and other peoples",
    imageText: "assets/illustration/pic2.jpg",
  ),

];