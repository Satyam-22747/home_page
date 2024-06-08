import 'package:flutter/material.dart';
import 'package:home_page/view/discover_screen/FriendRequest/friendrequest.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading:false,

        toolbarHeight: 60,
        title: Text(
          'Discover',
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
    MaterialPageRoute(builder: (context) => const FriendRequest()),
  );},
            icon: Icon(
              Icons.hail_outlined),
            iconSize: 30,
            color: Color.fromRGBO(75, 22, 76, 1),
          ),
        ],
      ),
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: DiscoverCard(
                      imageUrl:NetworkImage('https://www.pexels.com/collections/beauty-industry-bt3skq5/'),
                      distance: '16 Km away',
                      name: 'SHILPA',
                      location: 'HIMACHAL',
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: DiscoverCard(
                      imageUrl:NetworkImage ('https://www.pexels.com/photo/full-moon-on-a-daybreak-884788/'),
                      distance: '4.4 Km away',
                      name: 'RAJ',
                      location: 'CHANDIGARH',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Interest',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  InterestChip(label: 'Football'),
                  InterestChip(label: 'Nature'),
                  InterestChip(label: 'Language'),
                  InterestChip(label: 'Photography'),
                  InterestChip(label: 'Music'),
                  InterestChip(label: 'Writing'),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Around me',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'People with "Music" interest around you',
                style: TextStyle(color: Colors.purple),
              ),
              SizedBox(height: 16),
              Container(
                child: Image(
              image: AssetImage('assets/images/new_pic7.jpg'),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
                height: 200,
        
              ),
            ],
          ),
        ),
      ),
    );
     }
}
class DiscoverCard extends StatelessWidget {
  final NetworkImage imageUrl;
  final String distance;
  final String name;
  final String location;

  DiscoverCard({
    required this.imageUrl,
    required this.distance,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            child: Image(
              image: AssetImage('assets/images/new_pic8.jpg'),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  distance,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class InterestChip extends StatelessWidget {
  final String label;

  InterestChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[200],
    );
  }
}