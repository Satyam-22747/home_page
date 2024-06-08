import 'package:flutter/material.dart';
import 'package:home_page/view/UserProfile/UserSettings.dart';

class ScreenFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading:false,
        toolbarHeight: 60,
        title: Text(
          'My Account',
          style: TextStyle(
            color: Color.fromRGBO(75, 22, 76, 1),
            fontFamily: 'AbrilFatface',
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const UserSettings()),
  );},
            icon: Icon(
              Icons.settings),
            iconSize: 30,
            color: Color.fromRGBO(75, 22, 76, 1),
          ),
        ],
      ),
            body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/man.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Positioned(
                  bottom: 10,
                  left: 20, // Adjust this value to move the avatar slightly to the center
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/nature.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Text(
              'ROHIT KUMAR',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
            ),
            Text('@rohitdogra20', style: TextStyle(color: Colors.purple)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('10', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                    Text('Following', style: TextStyle(color: Colors.purple)),
                  ],
                ),
                Column(
                  children: [
                    Text('55K', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                    Text('Followers', style: TextStyle(color: Colors.purple)),
                  ],
                ),
                Column(
                  children: [
                    Text('6', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                    Text('Posts', style: TextStyle(color: Colors.purple)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/nature.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 100,
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              color: Colors.purple,
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              child: Text(
                                '4:40',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Daily Activity', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                            Text('3 Hours ago', style: TextStyle(color: Colors.purple)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),

    );
  }
    
}