import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_page/uiHelper/colors.dart';
import 'package:home_page/view/home_screen/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
        toolbarHeight: 60,
      ),
      body:
        Stack(
        children: [
          SvgPicture.asset(
            "assets/svgImages/Login_Screen_background.svg"
            ,fit: BoxFit.cover,),

          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset("assets/svgImages/Login.svg"),],
            ),
          ),

          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 120,),
                Container(
                  child: SvgPicture.asset(
                    "assets/svgImages/login_girl.svg",
                  ),
                ),

                SizedBox(height: 40,),
                Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Email",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "demo@gmail.com",
                              prefixIcon: Icon(Icons.mail_outline_rounded),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Password",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20),
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              hintText: "**********",
                              prefixIcon: Icon(Icons.lock_outline_rounded),
                              suffixIcon: Icon(Icons.remove_red_eye_outlined , size: 20,)
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Checkbox(value: isChecked, onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                                activeColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            ),
                            const Text("Remember me"),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("Forget Password" ,
                                style: TextStyle(color: green , fontWeight: FontWeight.w500),),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder){
                                return HomeScreen();
                              }));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: main_purple,
                              ),
                              child: const Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account ?"),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(color: green , fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,)

                      ],
                    )),
              ],
            ),
          ),

        ],
      ),
    );
  }
}