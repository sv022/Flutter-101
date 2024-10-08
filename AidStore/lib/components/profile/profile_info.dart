import 'package:flutter/material.dart';
import 'package:aidstore/models/user.dart';


class ProfileInfo extends StatelessWidget {
const ProfileInfo({ super.key });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://avatars.githubusercontent.com/u/83920644?s=400&u=0d424933b73f12366cc94dcb7dccedf30f85bbfb&v=4',
              width: 320,
            ),
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(width: 8),
                  Text(
                    currentUser.username,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              
              Row(
                children: [
                  const Icon(Icons.mail),
                  const SizedBox(width: 8),
                  Text(
                    currentUser.email,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(width: 8),
                  Text(
                    currentUser.phone,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  const Icon(Icons.location_city),
                  const SizedBox(width: 8),
                  Text(
                    currentUser.city,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}