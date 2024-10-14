import 'package:aidstore/components/profile/profile_edit.dart';
import 'package:aidstore/components/profile/profile_info.dart';
import 'package:aidstore/models/user.dart';
import 'package:flutter/material.dart';
import '../components/bottom_menu.dart';
import '../components/profile/edit_controllers.dart';

// import '../models/listing.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final int selectedIndex = 2;
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isEditing ? const ProfileEdit() : const ProfileInfo(),
                  const SizedBox(height: 32,),
                  Center(
                    child: FilledButton(
                      onPressed: () {
                        currentUser.username = nameController.text;
                        currentUser.email = emailController.text;
                        currentUser.phone = phoneController.text;
                        currentUser.city = cityController.text;
                        setState(() {
                          isEditing = !isEditing;
                        });
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(165, 192, 91, 1), 
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        isEditing ? 'Сохранить' : 'Редактировать',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(selectedIndex: selectedIndex),
    );
  }
}
