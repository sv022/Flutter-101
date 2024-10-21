import 'package:flutter/material.dart';
import '../models/services.dart';




class ServiceCard extends StatefulWidget {
  const ServiceCard({super.key, required this.service});
  final Service service;

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {  

  bool isAdded() {
    return serviceCart.contains(widget.service);
  }

  @override
  Widget build(BuildContext context){
    return Container(
      height: 136,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(224, 224, 224, 224)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.service.title,
            style: const TextStyle(fontSize: 16),
          ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    widget.service.duration,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 147, 147, 150),
                    ),
                  ),
                  Text(
                    '${widget.service.price} ₽',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                // ignore: dead_code
                backgroundColor: isAdded() ? Colors.green : const Color.fromRGBO(26, 111, 238, 1), 
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                if (!isAdded()){
                  setState(() {
                    widget.service.patientCount = 1;
                    serviceCart.add(widget.service);
                  });
                } else {
                  setState(() {
                    widget.service.patientCount = 0;
                    serviceCart.removeWhere((s) => s == widget.service);
                  });
                }
              }, 
              child: Text(
                  // ignore: dead_code
                  isAdded() ? 'Добавлено!' : 'Добавить',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ), 
              )
            ],
          )
        ],
      ),
    );
  }
}
