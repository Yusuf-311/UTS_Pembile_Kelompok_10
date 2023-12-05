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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: Text('TFT'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            //Open Menu
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //Account
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
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
            'Moh Yusuf',
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
