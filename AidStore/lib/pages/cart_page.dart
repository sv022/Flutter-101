import 'package:aidstore/models/services.dart';
import 'package:flutter/material.dart';
import '../components/service_cart_card.dart';
import '../components/bottom_menu.dart';


List<Service> getUniqueServices(){
    List<Service> uniqueServices = [];

    for (Service l in serviceCart){
      if (!uniqueServices.contains((l))){
        uniqueServices.add(l);
      }
    }
    return uniqueServices;
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  final int selectedIndex = 1;
  List<Service> uniqueServices = getUniqueServices();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 128.0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Корзина',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: uniqueServices.length,
          itemBuilder: (BuildContext context, int index) {
            return ServiceCartCard(service: uniqueServices[index]);
          },
        ),
      ),
      bottomNavigationBar: BottomMenu(selectedIndex: selectedIndex),
    );
  }
}