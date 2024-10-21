import 'package:aidstore/models/user.dart';
import 'package:flutter/material.dart';
import '../components/bottom_menu.dart';
import '../components/profile/menu_icon_item.dart';

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentUser.username,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  currentUser.phone,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 147, 147, 150),
                    fontSize: 15.0
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  currentUser.email,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 147, 147, 150),
                    fontSize: 15.0
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuIconItem(
                  icon: '1.png', 
                  text: 'Мои заказы'
                ),
                MenuIconItem(
                  icon: '2.png', 
                  text: 'Медицинские карты'
                ),
                MenuIconItem(
                  icon: '3.png', 
                  text: 'Мои адреса'
                ),
                MenuIconItem(
                  icon: '4.png', 
                  text: 'Мои адреса'
                ),
              ],
            ),
            const SizedBox(height: 64.0),
            const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ответы на вопросы',
                    style: TextStyle(
                      color: Color.fromARGB(224, 224, 224, 224),
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Text(
                    'Политика конфиденциальности',
                    style: TextStyle(
                      color: Color.fromARGB(224, 224, 224, 224),
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Text(
                    'Пользовательское соглашение',
                    style: TextStyle(
                      color: Color.fromARGB(224, 224, 224, 224),
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Text(
                    'Выход',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(selectedIndex: selectedIndex),
    );
  }
}
