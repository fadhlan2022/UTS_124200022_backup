import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/menu.dart';
import 'package:flutter_login_ui/pages/persegi.dart';
import 'package:flutter_login_ui/pages/trapesium.dart';
import 'package:flutter_login_ui/pages/segitiga.dart';
import 'package:flutter_login_ui/pages/lingkaran.dart';
import 'widgets/header_widget.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuPage();
  }
}

class _MenuPage extends State<MenuPage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),

                  SafeArea(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        margin: EdgeInsets.fromLTRB(
                            20, 10, 20, 10),
                        child: Column(
                          children: [
                            Text(
                              'Menu',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20.0),
                            Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    SizedBox(height: 0.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(35, 10, 35, 10),
                                          child: Text(
                                            'Trapesium'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Trapesium()));
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(45, 10, 45, 10),
                                          child: Text(
                                            'Segitiga'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Segitiga()));
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(35, 10, 35, 10),
                                          child: Text(
                                            'Lingkaran'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Lingkaran()));
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(50, 10, 50, 10),
                                          child: Text(
                                            'Persegi'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Persegi()));
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(45, 10, 45, 10),
                                          child: Text(
                                            'Sign Out'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginPage()));
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
      ListTile(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text("\n "
            "Nama : Fadhlan Hisyam\n"
            "NIM  : 124200022\n"
            "TTL  : Tangerang, 7 Februari 2002\n"
            "Hobby: Mendengarkan Musik\n"
      ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Theme.of(context).primaryColor,
                    Theme.of(context).accentColor,
                  ])),
        ),
      ),
      body: widgets [currentIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Beranda'),
          TabItem(icon: Icons.lightbulb, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i){
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
