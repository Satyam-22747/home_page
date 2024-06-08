import 'package:flutter/material.dart';
import 'package:home_page/uiHelper/colors.dart';
import 'package:home_page/view/UserProfile/user_profile.dart';
import 'package:home_page/view/create_post/create_post_screen.dart';
import 'package:home_page/view/discover_screen/discover_screen.dart';
import 'package:home_page/view/VideoSection/video_section.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    ScreenOne(),
    DiscoverScreen(),
    ScreenThree(),
    VideoSection(),
    ScreenFive(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '',
          ),
        ],
        selectedItemColor: Colors.purple, // Customize selected item color
        unselectedItemColor: Colors.grey, // Customize unselected item color
        showSelectedLabels: false, // Hide labels for selected item
        showUnselectedLabels: false, // Hide labels for unselected items
      ),
    );
  }
  
}

// Example screens to be shown based on BottomNavigationBar index






class ScreenOne extends StatelessWidget {
    var arrNames = ['vivek','Anil','Rahul','raj_veer','indu','suraj', 'zakir',
    'vivek','Anil','priya','raj_veer','indu','suraj', 'zakir',
    'vivek','Anil','priya','raj_veer','indu','suraj', 'zakir','Noor'];

  List arrImages = [
    "assets/images/new_pic1.jpg",
    "assets/images/new_pic2.jpg",
    "assets/images/new_pic3.jpg",
    "assets/images/new_pic4.jpg",
    "assets/images/new_pic5.jpg",
    "assets/images/new_pic22.jpg",
    "assets/images/new_pic6.jpg",
    "assets/images/new_pic7.jpg",
    "assets/images/new_pic8.jpg",
    "assets/images/new_pic9.jpg",
    "assets/images/new_pic10.jpg",
    "assets/images/new_pic11.jpg",
    "assets/images/new_pic12.jpg",
    "assets/images/new_pic13.jpg",
    "assets/images/new_pic14.jpg",
    "assets/images/new_pic15.jpg",
    "assets/images/new_pic16.jpg",
    "assets/images/new_pic17.jpg",
    "assets/images/new_pic18.jpg",
    "assets/images/new_pic19.jpg",
    "assets/images/new_pic20.jpg",
    "assets/images/new_pic21.jpg",
  ];

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
        body: Container(
          color: background,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15 , top: 45),
                    child: SvgPicture.asset("assets/svgImages/Friendzy.svg"),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15 , top: 40),
                    child: SvgPicture.asset("assets/svgImages/notification.svg"),
                  ),

                ],
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.pinkAccent,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                    AssetImage(arrImages[index]),
                                  ),
                                  // radius: 40,
                                  // backgroundImage:
                                  //     AssetImage("assets/images/new_pic1.jpg"),

                                ),
                              ),
                            ),

                            Text(arrNames[index])
                          ],
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: arrImages.length),
              ),
              Expanded(
                  flex: 5,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: background,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                    child: CircleAvatar(
                                      backgroundImage:
                                      AssetImage(arrImages[index]),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(arrNames[index] , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                                        Text("N_E_W_Y_O_R_K  C_I_T_Y"),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Icon(Icons.more_horiz_outlined),
                                  ),
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Image(image: AssetImage(arrImages[index])),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left : 20 , top:8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svgImages/love.svg",
                                      height: 30,
                                      width: 30,
                                      color: pink,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/bnvIcons/cooments1.svg",
                                      height: 30,
                                      width: 30,
                                      color: pink,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/bnvIcons/social.svg",
                                      height: 30,
                                      width: 30,
                                      color: pink,
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        "assets/svgImages/saveInstagram.svg",
                                        height: 30,
                                        width: 30,
                                        color: pink,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("#Friendzy , #chat , #love" , style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15 ,right: 10),
                                child: Text(
                                    "If you could live anywhere in the world , where would you pick?"),
                              ),
                              SizedBox(height: 15,)
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: arrImages.length,
                  )),
            ],
          ),
        ));
  }
}

