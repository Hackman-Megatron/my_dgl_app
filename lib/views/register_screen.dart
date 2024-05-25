import 'package:flutter/material.dart';
import 'package:my_dgl_app/route/routes_magager.dart' as route;
import '../classes/colors_provider.dart';
import '../widgets/arrondieTextField.dart';
import '../widgets/boutonarrondie.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordcontroller=TextEditingController();
  bool _isObscure = true;

  final _formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body:  SafeArea(
        child:SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical:15,horizontal: 15),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: media.width ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: media.width * 0.03,),
                        const Icon(Icons.person,
                            size: 100,
                            color: CouleurApplication.CouleurPrimaire,
                        ),
                        SizedBox(height: media.width * 0.01,),
                        const Text("Create an Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: CouleurApplication.noir,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: media.width * 0.1,),

                        TxtF(
                          textEditingController: _emailController,
                          hintText: "Name",
                          icon: "assets/icons/profile_icon.png",
                          textInputType: TextInputType.emailAddress,
                          onChanged: (String value) {  }, isObscure: false,
                        ),
                        SizedBox(height: media.width * 0.03,),
                        TxtF(
                          textEditingController: _emailController,
                          hintText: "Email",
                          icon: "assets/icons/message_icon.png",
                          textInputType: TextInputType.emailAddress,
                          onChanged: (String value) {  }, isObscure: false,
                        ),
                        SizedBox(height: media.width * 0.03),
                        TxtF(
                          textEditingController: _emailController,
                          hintText: "Assembly (Church)",
                          icon: "assets/icons/home_icon.png",
                          textInputType: TextInputType.emailAddress,
                          onChanged: (String value) {  }, isObscure: false,
                        ),
                        SizedBox(height: media.width * 0.03,),
                        TxtF(
                          textEditingController: _passwordcontroller,
                          hintText: "Password",
                          icon: "assets/icons/lock_icon.png",
                          textInputType: TextInputType.emailAddress,
                          onChanged: (String value) {  },
                          isObscure:_isObscure,
                          rightIcon: TextButton(
                            onPressed: (){
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                  _isObscure? "assets/icons/show_pwd_icon.png":
                                  "assets/icons/hide_pwd_icon.png",
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.contain,
                                  color: CouleurApplication.gris
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: media.width * 0.05,),
                        roundButton(
                            titre: "Sign Up",
                            onpressed: () => Navigator.pushNamed(context, route.loginPage)
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
                            const SizedBox(width: 5,),
                            TextButton(
                                onPressed: () => Navigator.pushNamed(context, route.loginPage),
                                child: const Text("Sign In Now",
                                  style: TextStyle(
                                    color: CouleurApplication.Couleurprimaire2,
                                  ),
                                ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
