import 'package:flutter/material.dart';
import 'ChatPage.dart';
import 'MarketPlacePage.dart';
import 'Message_requests.dart';
import 'Archive.dart';
import 'Frind_request.dart';
import 'Channel_invites.dart';
import 'Create_community.dart';
import 'Facebook_group.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Page Flutter App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            titleLarge: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}


class HomePageState extends State<HomePage>{
  int _selectedDrawerIndex = 0;

  String appBarTitle = "Home Page";

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new ChatPage();
      case 1:
        return new MarketPlacePage();
      case 2:
        return new Message_requests();
      case 3:
        return new Archive();
      case 4:
        return new Frind_request();
      case 5:
        return new Channel_invites();
      case 6:
        return new Create_community();
      case 7:
        return new Facebook_group();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
      if(index==0){
        appBarTitle = "Chat";
      }
      else if (index == 1){
        appBarTitle = "Marketplace";
      }
      else if (index == 2){
        appBarTitle = "Message requests";
      }
      else if (index == 3){
        appBarTitle = "Archive";
      }
      else if (index == 4){
        appBarTitle = "Frind request";
      }
      else if (index == 5){
        appBarTitle = "Channel invites";
      }
      else if (index == 6){
        appBarTitle = "Create community";
      }
      else if (index == 7){
        appBarTitle = "Facebook group";
      }

    });
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(appBarTitle, style: const TextStyle(fontSize: 18.0),),
          elevation: 12.0,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white, // Background color for the header
                ),
                child: Row(
                  children: [
                    // Circular Image
                    const CircleAvatar(
                      radius: 30, // Size of the circle
                      backgroundImage: AssetImage('assets/PXL_20241114_170509663.PORTRAIT.jpg'), // Path to your image
                    ),
                    const SizedBox(width: 10), // Space between image and text
                    // Text next to the image
                    const Text(
                      "Raj Shuvo",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),

                    ),
                    const Spacer(),
                    // Settings Icon
                    IconButton(
                      icon: const Icon(Icons.settings),
                      color: Colors.black,
                      onPressed: () {
                        // Handle Settings icon tap
                        // For example, navigate to a settings page
                        print("Settings pressed");
                      },
                    ),
                  ],
                ),

              ),

              ListTile(
                leading: const Icon(Icons.chat),
                title: Text("Chats"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: (){
                  _onSelectItem(0);
                },
              ),
              ListTile(
                leading: const Icon(Icons.store),
                title: Text("Marketplace"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: () {
                  _onSelectItem(1);
                },
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: Text("Message requests"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: () {
                  _onSelectItem(2);
                },
              ),
              ListTile(
                leading: const Icon(Icons.archive),
                title: Text("Archive"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: () {
                  _onSelectItem(3);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'More',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent, // Section header color
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person_add),
                title: Text("Frind request"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: (){
                  _onSelectItem(4);
                },
              ),
              ListTile(
                leading: const Icon(Icons.group_add),
                title: Text("Channel invites"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: () {
                  _onSelectItem(5);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Communities',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent, // Section header color
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.group_add),
                title: Text("Create community"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: () {
                  _onSelectItem(6);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Facebook group',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent, // Section header color
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.group_add),
                title: Text("Facebook group"),
                titleTextStyle: TextStyle(color: Colors.black),
                onTap: () {
                  _onSelectItem(7);
                },
              ),
            ],
          ),
        ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                // Implement search functionality here
                print('Search query: $value');
              },
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          // Content based on the selected drawer item
          Expanded(
            child: _getDrawerItemWidget(_selectedDrawerIndex),
          ),
        ],
      ),
    );
  }

  }
