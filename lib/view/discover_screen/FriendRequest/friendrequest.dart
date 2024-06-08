import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_page/uiHelper/colors.dart';

class FriendRequest extends StatefulWidget {
  const FriendRequest({super.key});

  @override
  State<FriendRequest> createState() => _FriendRequestState();
}

class _FriendRequestState extends State<FriendRequest> {
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
          appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          'Friend Requests',
          style: TextStyle(
            color: Color.fromRGBO(75, 22, 76, 1),
            fontFamily: 'AbrilFatface',
            fontSize: 30,
          ),
        ),
actions: [
          IconButton(
onPressed: () {},
            icon: Icon(
              Icons.sort),
            iconSize: 30,
            color: Color.fromRGBO(75, 22, 76, 1),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  "Your Matches",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: main_purple),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "45",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: pink),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: main_purple,
                          image: DecorationImage(
                              image: AssetImage(arrImages[index]) , fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: pink),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    'Followed by 18',
                                    style: TextStyle(fontSize : 12 ,color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Spacer(),

                          ElevatedButton(onPressed: (){}, child: Text("1.6 Km Away"
                            ,style: TextStyle(fontSize: 14,color: Colors.white),),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),),

                          Text(arrNames[index] , style: TextStyle(color: Colors.white , fontSize: 20 ),),
                          Text("ALASKA" , style: TextStyle(color: Colors.grey[200] , fontSize: 10),),
                          SizedBox(height: 4,)
                        ],
                      ),
                    ],
                  ),
                );
              },itemCount: arrNames.length,
            ),
          )
        ],
      ),
    );
  }
}