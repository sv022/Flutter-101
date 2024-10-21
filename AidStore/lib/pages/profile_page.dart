import 'package:aidstore/models/user.dart';
import 'package:flutter/material.dart';
import '../components/bottom_menu.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Container(),
      ),
      bottomNavigationBar: BottomMenu(selectedIndex: selectedIndex),
    );
  }
}
