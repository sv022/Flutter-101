import 'package:flutter/material.dart';
import '../components/listing_card.dart';
import '../models/listing.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://raw.githubusercontent.com/sv022/MusicTrade/refs/heads/main/images/guitar_logo.png',
          height: 50,
          width: double.infinity,
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: listings.length,
        itemBuilder: (BuildContext context, int index) {
          return ListingCard(listing: listings[index]);
        },
      ),
    );
  }
}