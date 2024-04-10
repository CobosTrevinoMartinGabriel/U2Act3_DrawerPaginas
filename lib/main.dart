import 'package:flutter/material.dart';
import 'package:cobosdrawer/privacy_policy.dart';
import 'package:cobosdrawer/send_feedback.dart';
import 'package:cobosdrawer/settings.dart';
import 'package:cobosdrawer/contacts.dart';
import 'package:cobosdrawer/aterrizaje.dart';
import 'package:cobosdrawer/events.dart';
import 'package:cobosdrawer/my_drawer_header.dart';
import 'package:cobosdrawer/notes.dart';
import 'package:cobosdrawer/notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = AterrizajePag();
    } else if (currentPage == DrawerSections.contacts) {
      container = const ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffffafa),
        title: const Text(
          "PaginasDrawer Martin G. Cobos T. 0342",
          textScaleFactor: 0.70,
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Aterrizaje", Icons.flight_land_rounded,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contenedor superior", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Contenedor con diseño", Icons.design_services,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Algunas esquinas redondeadas", Icons.rounded_corner,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Circulo", Icons.circle_notifications_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Fondo Graduado", Icons.gradient_sharp,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "C. padre e hijo", Icons.family_restroom,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Sombras", Icons.dark_mode,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
