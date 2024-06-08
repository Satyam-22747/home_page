import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
 final _formKey = GlobalKey<FormState>();
  late String _name, _username, _bio, _email, _phoneNumber, _password;
  String? _profilePicture;



   @override
  Widget build(BuildContext context) {
  return Scaffold(
       appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Color.fromRGBO(75, 22, 76, 1),
            fontFamily: 'AbrilFatface',
            fontSize: 30,
          ),
        ),
      ),
        body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  // Open image picker dialog
                  final pickedImage = await showDialog<String>(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Choose an image'),
                        children: [
                          SimpleDialogOption(
                            child: const Text('Gallery'),
                            onPressed: () {
                              Navigator.pop(context, 'gallery');
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text('Camera'),
                            onPressed: () {
                              Navigator.pop(context, 'camera');
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context, null);
                            },
                          ),
                        ],
                      );
                    },
                  );

                  if (pickedImage != null) {
                    setState(() {
                      _profilePicture = pickedImage;
                    });
                  }
                },
                child: _profilePicture == null
                    ? CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  ),
                )
                    : CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(_profilePicture!),
                ),
              ),
              SizedBox(height: 20),
              _buildTextField(
                labelText: 'Name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Name';
                  }
                  return null;
                },
                onSaved: (value) => _name = value!,
              ),
              _buildTextField(
                labelText: 'Username',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                onSaved: (value) => _username = value!,
              ),
              _buildTextField(
                labelText: 'Bio',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your bio';
                  }
                  return null;
                },
                onSaved: (value) => _bio = value!,
              ),
              _buildTextField(
                labelText: 'Email',
                validator: (value) {
                  if (value!.isEmpty ||!value!.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) => _email = value!,
              ),
              _buildTextField(
                labelText: 'Phone Number',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) => _phoneNumber = value!,
              ),
              _buildTextField(
                labelText: 'Password',
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    try {
                      // Save changes to database or API
                      print('Changes saved successfully!');
                    } catch (e) {
                      print('Error saving changes: $e');
                    }
                  }
                },
                child: Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }

    Widget _buildTextField({
    required String labelText,
    required String? Function(String?) validator,
    required void Function(String?) onSaved,
    bool obscureText = false,
  }) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText),
      validator: validator,
      onSaved: onSaved,
      obscureText: obscureText,
    );
  }

  }
