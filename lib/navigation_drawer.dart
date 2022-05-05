import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'e_subscriptions/e_subscriptions.dart';
import 'search_book/search_book.dart';
import 'my_attendence/my_attendence.dart';
import 'grades/grades.dart';
import 'schedule.dart';
import 'resources.dart';
import 'saved.dart';
import 'projects.dart';
import 'exam_parers.dart';
import 'liked.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.cyan[900],
              foregroundImage: AssetImage('assets/images/profile.jpg'),
              child: Text("G"),
            ),
            accountName: Text("Tirumalla Guru sai shreeesh"),
            accountEmail: Text("guru.sai.shreesh@gmail.com"),
          ),
          ListTile(
            title: Text("Dashboard"),
            leading: Icon(Icons.dashboard_customize_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/homescreen"),
                  builder: (context) => HomeScreen(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("E-Subscriptions"),
            leading: Icon(Icons.subscriptions_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/e_subscriptions"),
                  builder: (context) => ESubscriptions(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("Search Books"),
            leading: Icon(Icons.search_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/search_book"),
                  builder: (context) => SearchBook(),
                ),
              )
            },
          ),
          Divider(),
          ListTile(
            title: Text("My Attendence"),
            leading: Icon(Icons.person_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/my_attendence"),
                  builder: (context) => MyAttendence(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("Grades"),
            leading: Icon(Icons.person_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/grades"),
                  builder: (context) => Grades(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("Schedule"),
            leading: Icon(Icons.calendar_month_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/schedule"),
                  builder: (context) => Schedule(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("Resources"),
            leading: Icon(Icons.video_library_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/resorces"),
                  builder: (context) => Resources(),
                ),
              )
            },
          ),
          Divider(),
          ListTile(
            title: Text("Saved"),
            leading: Icon(Icons.bookmark_outline_rounded),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/saved"),
                  builder: (context) => Saved(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("Projects"),
            leading: Icon(Icons.book_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/projects"),
                  builder: (context) => Projects(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("Exam Papers"),
            leading: Icon(Icons.book_outlined),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/exam_papers"),
                  builder: (context) => ExamPapers(),
                ),
              )
            },
          ),
          ListTile(
            title: Text("Liked"),
            leading: Icon(Icons.favorite),
            onTap: () => {
              Navigator.of(context).popUntil(ModalRoute.withName("/")),
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: "/liked"),
                  builder: (context) => Liked(),
                ),
              )
            },
          ),
          Divider(),
          ListTile(
            title: Text("Logout"),
            trailing: Icon(Icons.logout),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
