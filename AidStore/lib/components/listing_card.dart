import 'package:flutter/material.dart';
import '../pages/listing_page.dart';
import '../models/listing.dart';


class ListingCard extends StatefulWidget {
  const ListingCard({super.key, required this.listing});
  final Listing listing;
  @override
  ListingCardState createState() => ListingCardState();
}

class ListingCardState extends State<ListingCard> {  
  @override
  Widget build(BuildContext context){
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListingPage(listing: widget.listing),
            )
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
                      'https://raw.githubusercontent.com/sv022/MockDB/refs/heads/main/MusicTrade/img/${widget.listing.img[0]}.png',
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
                      height: 80,
                      child: Text(
                        widget.listing.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Text(
                          '${widget.listing.price}₽',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 55, 55, 55),
                          ),
                        ),
                        const SizedBox(width: 100,),
                        IconButton(onPressed: () {
                          setState(() {
                            if (widget.listing.isCart) {
                              listingCart.remove(widget.listing);
                            } else {
                              listingCart.add(widget.listing);
                            }
                            widget.listing.isCart = !widget.listing.isCart;
                          });
                        }, 
                        icon: widget.listing.isCart ? 
                          const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 183, 108, 51)) : 
                          const Icon(Icons.shopping_cart_outlined) 
                        ),
                        IconButton(onPressed: () {
                          setState(() {
                            if (widget.listing.isFavorite) {
                              favoriteListings.remove(widget.listing);
                            } else {
                              favoriteListings.add(widget.listing);
                            }
                            widget.listing.isFavorite = !widget.listing.isFavorite;
                          });
                        }, 
                        icon: widget.listing.isFavorite ? 
                          const Icon(Icons.favorite, color: Color.fromARGB(255, 183, 108, 51)) : 
                          const Icon(Icons.favorite_border_outlined) 
                        )
                      ],
                    ),
                    const SizedBox(height: 10),

                    Row(
                    children: [
                      Text(
                        widget.listing.adress,
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
