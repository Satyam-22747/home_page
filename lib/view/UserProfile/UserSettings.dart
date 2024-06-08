import 'package:flutter/material.dart';
import 'package:home_page/view/UserProfile/EditProfile.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({super.key});

  @override
  State<UserSettings> createState() => _UserSettings();
}

class _UserSettings extends State<UserSettings> {

  bool _notificationsEnabled = true;
  bool _activitiesEnabled = true;
  bool _privacyEnabled = true;
  bool _securityEnabled = true;


  @override
  Widget build(BuildContext context) {
  return Scaffold(
       appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Color.fromRGBO(75, 22, 76, 1),
            fontFamily: 'AbrilFatface',
            fontSize: 30,
          ),
        ),

      ),
       body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const EditProfile()),
  );
            },
            leading: Icon(Icons.person),
            title: Text('Edit Profile'),
          ),
          SwitchListTile(
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
            title: Text('Notifications'),
          ),
          SwitchListTile(
            value: _activitiesEnabled,
            onChanged: (value) {
              setState(() {
                _activitiesEnabled = value;
              });
            },
            title: Text('Activities'),
          ),
          SwitchListTile(
            value: _privacyEnabled,
            onChanged: (value) {
              setState(() {
                _privacyEnabled = value;
              });
            },
            title: Text('Privacy'),
          ),
          SwitchListTile(
            value: _securityEnabled,
            onChanged: (value) {
              setState(() {
                _securityEnabled = value;
              });
            },
            title: Text('Security'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Logins'),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add or switch accounts'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log out'),
            onTap: () {
              // Handle logout functionality here
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log out all accounts'),
            onTap: () {
              // Handle logout all accounts functionality here
            },
          ),
        ],
      ),
  );
  }
}
