import 'package:flutter/material.dart';
import 'package:home_page/view/LoginPage/loginpage.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}
class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 300,

              margin: EdgeInsets. only(top: 100.0),
              height: 300,
              child: Image.asset('assets/images/intro.png'),
            ),
            SizedBox(height: 20), // Add some space between the image and text
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Let's meeting new people around you",
                textAlign: TextAlign.center,
                style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Card(
                color: Color(0xFF500452),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/images/phone.png'),
                    ),
                    Container(
                       margin: EdgeInsets.fromLTRB(8.0, 0.0, 15.0, 0.0),
                        child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder){
                                return LoginPage();
                              }));
                            },
                              // margin: EdgeInsets.fromLTRB(8.0, 0.0, 15.0, 0.0),
                      child: Text(
                        "Login with phone",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                      ),
                          ),                      
                    )
                  ],
                ),
              ),
            ),


            Card(
              margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),

              color: Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: 50,

                    height: 50,
                    child: Image.asset('assets/images/googleLogo.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 0.0, 15.0, 0.0),
                    child: Text(
                      "Login with Goggle",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF500452),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )
            ,

         Center(


             child: Container(
           margin: EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 0.0),
           child: Row(
             mainAxisSize: MainAxisSize.min,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[ // Use children instead of children: <Widgets>[]
               Container(


                 child: Text(
                   "Don't have account? ",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Color(0xFF070307),
                     fontSize: 20,
                     //fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
               Container(

                 child: Text(
                   "Sign up",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Color(0xFF500452),
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               )
             ],
           ),
         )
         ),
          ],
        ),
    );  }
}