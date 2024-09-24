import 'package:flutter/material.dart';
import '../models/listing.dart';


class ListingPage extends StatelessWidget {
  final Listing listing;

  const ListingPage({super.key, required this.listing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(listing.title),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://raw.githubusercontent.com/sv022/MockDB/refs/heads/main/MusicTrade/img/${listing.img[0]}.png',
                  width: 360,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listing.title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    listing.category,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    '${listing.price}₽',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 55, 55, 55),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    listing.description,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 55, 55, 55),
                    ),
                  ),

                  const SizedBox(height: 32),
                  
                  Text(
                    listing.adress,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
