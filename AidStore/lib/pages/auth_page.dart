import 'package:aidstore/models/user.dart';
import 'package:aidstore/pages/profile_page.dart';
import 'package:flutter/material.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вход в аккаунт'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 64),
              FilledButton(
                onPressed: () {
                  currentUser = User(
                    1,
                    "svo0",
                    "svo0@mail.com",
                    "pass1",
                    "msk",
                    "+7 (937) 915 24-12",
                    "2024-05-27"
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfilePage())
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(165, 192, 91, 1), 
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'Вход',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              OutlinedButton(
                onPressed: () {
                  1 + 1;
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color.fromRGBO(165, 192, 91, 1)),
                ),
                child: const Text(
                  'Регистрация',
                  style: TextStyle(
                    color:Color.fromRGBO(165, 192, 91, 1),
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
