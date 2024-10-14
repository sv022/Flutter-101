import 'package:aidstore/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../models/listing.dart';


class AddListingPage extends StatelessWidget {
  const AddListingPage({super.key});

  @override
  Widget build(BuildContext context) {
  final TextEditingController descController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController adressController = TextEditingController();

  var localId = 10000;
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавить объявление'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      labelText: 'Название',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),

                  TextField(
                    controller: priceController,
                    decoration: const InputDecoration(
                      labelText: 'Стоимость',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 32),

                  TextField(
                    controller: descController,
                    decoration: const InputDecoration(
                      labelText: 'Описание',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 16),

                  TextField(
                    controller: adressController,
                    decoration: const InputDecoration(
                      labelText: 'Адрес',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 64),

                  TextButton(
                    onPressed: () {
                      var newListing = Listing(
                        localId, 
                        titleController.text, 
                        int.parse(priceController.text), 
                        'empty', 
                        descController.text, 
                        adressController.text, 
                        [], 
                        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).toString(), 
                        ['placeholder'], 
                        false,
                        false,
                      );

                      listings.add(newListing);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      
                      localId++;
                    },
                    child: const Text(
                      'Сохранить',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 55, 55, 55),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
