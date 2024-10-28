import 'package:aidstore/api/service.dart';
import 'package:aidstore/pages/add_listing_page.dart';
import 'package:flutter/material.dart';
import '../components/listing_card.dart';
import '../components/bottom_menu.dart';
import '../models/listing.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final int selectedIndex = 0;

  late Future<List<Listing>> _listings;

  @override
  void initState() {
    super.initState();
    _listings = ApiService().getProducts();
  }

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
        child: FutureBuilder<List<Listing>>(
          future: _listings, 
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No products found'));
            }

            // final listings = snapshot.data!;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.25 / 2,
                mainAxisSpacing: 2,
              ),
              itemCount: listingsOld.length,
              itemBuilder: (BuildContext context, int index) {
                return ListingCard(listing: listingsOld[index]);
              },
            );
          }
        )
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