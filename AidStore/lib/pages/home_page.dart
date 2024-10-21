import 'package:aidstore/models/services.dart';
import 'package:flutter/material.dart';
import '../components/service_card.dart';
import '../components/bottom_menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 128.0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Каталог услуг',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (BuildContext context, int index) {
            return ServiceCard(service: services[index]);
          },
        ),
      ),
      bottomNavigationBar: BottomMenu(selectedIndex: selectedIndex),
    );
  }
}