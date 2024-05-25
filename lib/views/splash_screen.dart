import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_dgl_app/route/routes_magager.dart' as route;
import '../classes/colors_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 late bool _isLoading;

  @override
  void initState(){
    super.initState();
    _isLoading = true;
    Future.delayed(
        const Duration(
          seconds: 10
        ), (){
          Navigator.pushNamed(context, route.loginPage);
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: CouleurApplication.primaryGroupe,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )
        ),
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
              height: 250,
              width: 250,
              child: Image.asset("assets/logos/MyDGLogoWhite.png",
                height: 250,
              ),
            ),
            const Spacer(),
            /*const SpinKitWaveSpinner(
                color: Colors.white,
              trackColor: Colors.black,
              waveColor: Colors.white,
              size: 75,
            ),*/
            const Spacer(),
            const Text("By Thinkers",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
