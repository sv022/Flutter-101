import 'package:aidstore/pages/add_listing_page.dart';
import 'package:flutter/material.dart';
import '../components/listing_card.dart';
import '../components/bottom_menu.dart';
import '../models/listing.dart';


class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<FavoritesPage> {
  final int selectedIndex = 1;

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
          itemCount: favoriteListings.length,
          itemBuilder: (BuildContext context, int index) {
            return ListingCard(listing: favoriteListings[index]);
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