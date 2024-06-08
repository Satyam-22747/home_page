import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_page/uiHelper/colors.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  var arrNames = ['Vivek kumar','Anil','Pranjal','raj_veer','indu','suraj', 'zakir',
    'vivek','Anil','priya','raj_veer','indu','suraj', 'zakir',
    'vivek','Anil','priya','raj_veer','indu','suraj', 'zakir','Noor'];

  List arrImages = [
    "assets/images/new_pic3.jpg",
    "assets/images/new_pic2.jpg",
    "assets/images/new_pic1.jpg",
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
      backgroundColor: main_purple,
      body: ListView.separated(separatorBuilder: (context, index) {
        return Divider(height: 25,thickness: 2,);
      },
        itemBuilder: (context, index) {
          return Stack(alignment: Alignment.center,children: [

            // SizedBox(height: 50,),
            Image.asset(
              arrImages[index],
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 40),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 40),
                      child: Text(
                        "Reels",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 40),
                      child: SvgPicture.asset(
                        "assets/svgIcons/camera.svg",
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height : 290),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child:
                              SvgPicture.asset("assets/svgIcons/Like.svg"),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 14, top: 14),
                          child:
                              SvgPicture.asset("assets/svgIcons/Comment.svg"),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 14, top: 14),
                          child:
                              SvgPicture.asset("assets/svgIcons/More.svg"),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "@"+arrNames[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 70,
                      height: 25,
                      child: Center(
                          child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),
                    ),
                    // OutlinedButton(
                    //   onPressed: () {},
                    //   child: Text("Follow"),
                    //   style: OutlinedButton.styleFrom(foregroundColor: Colors.white,
                    //       side: BorderSide(color: Colors.white , width: 1)),
                    // )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The most satisfying job",
                            style: TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "#fyb #satisfying #roadmarking",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svgIcons/music.svg"),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Roddy Roundich",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Spacer(),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 30, right: 4),
                        child: SvgPicture.asset(
                          "assets/svgIcons/music.svg",
                          width: 15,
                          height: 15,
                        ),
                      ),
                      Stack(alignment: Alignment.center, children: [
                        SvgPicture.asset("assets/svgIcons/disk.svg" , height: 70 , width: 70,),
                        SvgPicture.asset("assets/svgIcons/yellow.svg" ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 30, bottom: 20),
                          child: Icon(
                            Icons.music_note_rounded,
                            color: Colors.grey[300],
                          ),
                        )
                      ]),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ]);
        },
        itemCount: arrImages.length,
      ),
    );
  }
}