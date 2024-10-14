import 'package:aidstore/pages/add_listing_page.dart';
import 'package:flutter/material.dart';
import '../components/listing_cart_card.dart';
import '../components/bottom_menu.dart';
import '../models/listing.dart';


List<Listing> getUniqueListings(){
    List<Listing> uniqueListings = [];

    for (Listing l in listingCart){
      if (!uniqueListings.contains((l))){
        uniqueListings.add(l);
      }
    }
    return uniqueListings;
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  final int selectedIndex = 2;
  List<Listing> uniqueListings = getUniqueListings();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://raw.githubusercontent.com/sv022/MusicTrade/refs/heads/main/images/guitar_logo.png',
          height: 50,
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.45 / 2,
            mainAxisSpacing: 2,
          ),
          itemCount: uniqueListings.length,
          itemBuilder: (BuildContext context, int index) {
            return ListingCartCard(listing: uniqueListings[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddListingPage()),
          )
        },
        tooltip: 'Add Note',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomMenu(selectedIndex: selectedIndex),
    );
  }
}