import 'package:aidstore/pages/cart_page.dart';
import 'package:aidstore/pages/favorites_page.dart';
import 'package:aidstore/pages/home_page.dart';
import 'package:aidstore/pages/profile_page.dart';
import 'package:aidstore/pages/auth_page.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';


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
            MaterialPageRoute(builder: (context) => const FavoritesPage()),
        );
      }
      else if (index == 2){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CartPage()),
        );
      }
      else if (index == 3){
        if (currentUser.id == 0){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AuthPage()),
          );
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
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
