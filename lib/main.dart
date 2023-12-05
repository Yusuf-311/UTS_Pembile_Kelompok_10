import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: Text('TFT'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _openDrawer(); // Open Menu
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Account
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 120,
                color: Colors.blue,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.home,
                  size: 28,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 28,
                ),
                title: Text(
                  "Profil",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.category,
                  size: 28,
                ),
                title: Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  size: 28,
                ),
                title: Text(
                  "Favorite",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  size: 28,
                ),
                title: Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.history,
                  size: 28,
                ),
                title: Text(
                  "Order History",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 28,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  size: 28,
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 28,
                ),
                title: Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: HeroWidget(), // Use the HeroWidget at the top
          ),
        ],
      ),
    );
  }
}

class HeroWidget extends StatefulWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15.0),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Home,',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 8), // Adding some space between texts
          Text(
            'Customer',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 40.0,
            ),
          ),

          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
