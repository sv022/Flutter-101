import 'package:flutter/material.dart';
import '../pages/listing_page.dart';
import '../models/listing.dart';



class ListingCard extends StatelessWidget {
  final Listing listing;
  const ListingCard({super.key, required this.listing});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListingPage(listing: listing)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://raw.githubusercontent.com/sv022/MockDB/refs/heads/main/MusicTrade/img/${listing.img[0]}.png',
                      width: 340,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Text(
                        listing.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      '${listing.price}₽',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 55, 55, 55),
                      ),

                    ),
                    const SizedBox(height: 4),

                    Row(
                    children: [
                      Text(
                        listing.adress,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
