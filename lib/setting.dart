import 'package:flutter/material.dart';

import 'class.dart';

class Settings extends StatelessWidget {
  const Settings({super.key,required this.idx});
  final int idx;


  @override
  Widget build(BuildContext context) {
    final person = People().person[idx];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 35,
            color: Color.fromARGB(255, 21, 21, 21),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Done",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 177, 224, 82),
                      radius: 45,
                      child: Text(
                        person['name']![0],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                  Text(
                    person['name']!,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold,color: Colors.black),
                  ),

                  Container(
                    padding: EdgeInsets.all(20), // Adjust padding for spacing inside the ellipse
                    decoration: BoxDecoration(
                      color: Colors.black12, // Background color of the ellipse
                      borderRadius: BorderRadius.circular(50), // Rounded corners (controls the curvature of the ellipse)
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min, // Ensures the row wraps its content tightly
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock, color: Colors.black), // Display the icon
                        SizedBox(width: 8), // Add spacing between the icon and the text
                        Text(
                          'End-to-end encrypted', // Display the text
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Text color
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // First circle with the call icon and text below it
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 50, // Set the width of the circle
                        height: 50, // Set the height of the circle
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.call, color: Colors.black), // Call Icon
                            SizedBox(height: 4), // Space between icon and text
                            const Text(
                              'Audio ', // Text below the icon
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8), // Space between circles
                      // Second circle with the video call icon and text below it
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 50, // Set the width of the circle
                        height: 50, // Set the height of the circle
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.video_call, color: Colors.black), // Video Icon
                            SizedBox(height: 4), // Space between icon and text
                            const Text(
                              ' Video ', // Text below the icon
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8), // Space between circles
                      // Third circle with the person icon and text below it
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 50, // Set the width of the circle
                        height: 50, // Set the height of the circle
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.person, color: Colors.black), // Person Icon
                            SizedBox(height: 4), // Space between icon and text
                            const Text(
                              ' Profile ', // Text below the icon
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8), // Space between circles
                      // Fourth circle with the volume mute icon and text below it
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 50, // Set the width of the circle
                        height: 50, // Set the height of the circle
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.volume_mute, color: Colors.black), // Mute Icon
                            SizedBox(height: 4), // Space between icon and text
                            const Text(
                              ' Mute', // Text below the icon
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8), // Space between circles
                    ],
                  ),


           const SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 255, 255, 255)
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft, // Align to the left
                      child: Text(
                        'Customization',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black12, // Section header color
                        ),
                      ),
                    ),
                  ),


                  const ListTile(
                    leading: Icon(Icons.color_lens,color: Colors.blue,),
                    title: Text("Theme",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),

                  const ListTile(
                    leading: Icon(Icons.emoji_emotions,color: Colors.blue,),
                    title: Text("Quick reaction",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),


                  const ListTile(
                    leading: Icon(Icons.abc,color: Colors.blue,),
                    title: Text("Nicknames",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.style,color: Colors.blue,),
                    title: Text("Word effects",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),

                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft, // Align to the left
                      child: Text(
                        'More actions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black12, // Section header color
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.image,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "View media, files & links",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const Divider(
                    height: 5,
                    indent: 55,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),

                  const ListTile(
                    leading: Icon(
                      Icons.file_download,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Save photos & videos",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),

                  const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Search in conversation",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),

                  const ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Notifications & sounds",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),

                  ListTile(
                    leading: const Icon(
                      Icons.group,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Create group chat with ", semanticsLabel: person['name']!,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Share contact ",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft, // Align to the left
                      child: Text(
                        'Privacy & support',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black12, // Section header color
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.lock,color: Colors.blue,),
                    title: Text("Verify end-to-end encryption",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),

                  const ListTile(
                    leading: Icon(Icons.visibility_off,color: Colors.blue,),
                    title: Text("Disappearing message",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),

                  const ListTile(
                    leading: Icon(Icons.check,color: Colors.blue,),
                    title: Text("Read receipts",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.no_accounts,color: Colors.blue,),
                    title: Text("Restrict",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.block,color: Colors.blue,),
                    title: Text("Block",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.report,color: Colors.blue,),
                    title: Text("Report",style: TextStyle(color: Colors.black,fontSize: 18),),
                    trailing: Icon(Icons.chevron_right,color: Colors.white,size: 28,),
                  ),
                ],
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
