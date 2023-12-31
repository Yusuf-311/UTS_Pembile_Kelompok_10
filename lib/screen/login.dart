import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget myLayoutWidget() {
    return Container(
      height: 200.0,
      margin: new EdgeInsets.symmetric(vertical: 200.0),
      alignment: Alignment.center,
      child: Column(children: [
        new Container(
          width: 300,
          height: 60,
          margin: new EdgeInsets.symmetric(vertical: 20.0),
          child: new Text(
            'Welcome to thrifing clotes App',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Color.fromARGB(255, 64, 61, 61)),
          ),
        ),
        new Container(
          width: 300,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
            child: Text(
              'login',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 25.0,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: myLayoutWidget(),
      ),
    );
  }
}
