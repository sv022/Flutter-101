import 'package:aidstore/models/services.dart';
import 'package:flutter/material.dart';


class ServiceCartCard extends StatefulWidget {
  const ServiceCartCard({super.key, required this.service});
  final Service service;
  @override
  ServiceCartCardState createState() => ServiceCartCardState();
}

class ServiceCartCardState extends State<ServiceCartCard> {  
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
            Text(
              '${widget.service.price} ₽',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Text(
                    '${widget.service.patientCount} пациент',
                    style: const TextStyle(
                      fontSize: 14, 
                      color: Color.fromARGB(255, 147, 147, 150)
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (widget.service.patientCount == 1){
                          serviceCart.remove(widget.service);
                        }
                        widget.service.patientCount -= 1;
                      });
                    },
                    icon: const Icon(Icons.remove),
                    color: const Color.fromARGB(255, 147, 147, 150),
                    iconSize: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.service.patientCount += 1;
                      });
                    },
                    icon: const Icon(Icons.add),
                    color: const Color.fromARGB(255, 147, 147, 150),
                    iconSize: 20,
                  ),
              ],
            )
            ],
          )
        ],
      ),
    );
  }
}
