import 'package:aidstore/pages/cart_page.dart';
import 'package:aidstore/pages/home_page.dart';
import 'package:aidstore/pages/profile_page.dart';
import 'package:flutter/material.dart';


class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key, required this.selectedIndex});
  final int selectedIndex;

  @override
  BottomMenuState createState() => BottomMenuState();
}

class BottomMenuState extends State<BottomMenu> {  
  
  void _onItemTapped(int index) {
    setState(() {
      if (index == 0){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
        );

      }
      else if (index == 1){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CartPage()),
        );
      }
      else if (index == 2){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
        // if (currentUser.id == 0){
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const AuthPage()),
        //   );
        // } else {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const ProfilePage()),
        //   );
        // }
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Профиль',
          ),
          
        ],
        unselectedItemColor: Colors.grey,
        currentIndex: widget.selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 32, 100, 156),
        onTap: _onItemTapped,
      );
  }
}
