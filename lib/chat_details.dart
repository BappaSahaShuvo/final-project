import 'package:bappa01/class.dart';
import 'package:bappa01/setting.dart';
import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({super.key, required this.idx});
  final int idx;

  @override
  Widget build(BuildContext context) {
    final person = People().person[idx];
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 109, 163, 255),
        title: Text(
          person['name'] ?? 'Details',
          style: const TextStyle(
            fontSize: 23,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  Settings(idx: idx),
                  ),
                );
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
        elevation: 12,
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 177, 224, 82),
              radius: 35,
              child: Text(
                person['name']![0],
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Text(
              "Name: ${person['name']}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Text(
              "Occupation: ${person['occupation']}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Text(
              "Age: ${person['age']}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Text(
              "City: ${person['city']}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Text(
              "Gender: ${person['Gender']}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Text(
              "Last Message: ${person['Last Message']}",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
