import 'package:flutter/material.dart';
import "package:bappa01/class.dart";
import 'chat_details.dart';


class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  get decoration => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: People().person.length,
        itemBuilder: (context, index) {
          final person = People().person[index];
          return GestureDetector(
            onTap: () =>
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatDetails(idx: index),
                  ),
                ),
            child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 79, 176, 255),
          ),
          child: Row(
          children: [
          CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 177, 224, 82),
          radius: 25,
          child: Text(person['name']![0], style: const TextStyle(fontWeight: FontWeight.bold),),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(person['name']!, style: const TextStyle(fontSize: 19),),
          Text(person['Last Message']!, style: const TextStyle(fontSize: 15),),
          ],
          )


          ],
          )),
          );

        });
  }
}
  