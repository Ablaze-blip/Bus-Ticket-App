import 'package:bus_pedal/Screens/Navigation%20Pages/my_tickets.dart';
import 'package:bus_pedal/Screens/Navigation%20Pages/settings_page.dart';
import 'package:bus_pedal/Screens/Navigation%20Pages/trip_plan.dart';
import 'package:bus_pedal/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  int currentIndex = 0;
  final screens = [
    TripPlanPage(),
    MyTicketsPage(),
    SettingsPage(),

  ];

//Firebase
  @override
  void initstate() {
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user!.uid)
    .get()
    .then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

//navigation bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      //Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        selectedFontSize: 16,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home_outlined)),

          BottomNavigationBarItem(label: 'My Tickets',icon: Icon(Icons.confirmation_number_outlined)),

          BottomNavigationBarItem(label: 'Settings',icon: Icon(Icons.account_circle)),
        ],
      ),
    );

  }
}
