
import 'package:my_dgl_app/classes/colors_provider.dart';
import 'package:flutter/material.dart';
import 'package:my_dgl_app/route/routes_magager.dart' as route;
import '../classes/onboard_texts.dart';
import '../widgets/OnboardingBox.dart';
import '../widgets/indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  late PageController _pageController;

  int _pageIndex = 0;
  @override
  void initState(){
    _pageController = PageController(
      initialPage: 0
    );
    super.initState();
  }
  iconChanger(){
    if(_pageIndex == 1){
      return  const Icon(
          Icons.home,
          color: Colors.white);
    }else{
      return  const Icon(
          Icons.arrow_forward,
          color: Colors.white);
    }
  }

  routeForHome(){
    if(_pageIndex == 1){
      return  Navigator.pushNamed(context, route.homePage);
    }else{
      return _pageController.nextPage(
          duration: const Duration(microseconds: 300),
          curve: Curves.easeInOut);
    }
  }


  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                      itemCount: demoData.length,
                      onPageChanged: (index){
                        setState(() {
                          _pageIndex = index;
                        });
                      },
                      itemBuilder: (context, index) => Onboarding(
                        imagePath: demoData[index].imageText,
                        title: demoData[index].title,
                        description: demoData[index].description,
                      ),
                  ),
              ),
              Row(
                children: [
                      ...List.generate(
                        demoData.length,
                            (index)=> Padding(
                          padding: const EdgeInsets.only(right: 4),
                              child: indicator(
                                isActive: index == _pageIndex,
                              ),
                        ),
                      ),
                  const Spacer(),
                  SizedBox(
                    height: 65,
                    width: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: CouleurApplication.Couleurprimaire2,
                      ),
                        onPressed: (){
                        routeForHome();
                        },
                        child: iconChanger(),
                        )
                    ),
                ],
              ),
              const SizedBox(height: 25,)
            ],
          ),
        )
      )
    );
  }
}
