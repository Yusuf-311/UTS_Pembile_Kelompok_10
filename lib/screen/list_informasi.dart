import 'package:flutter/material.dart';
import 'package:uts_pembile/main.dart';

class ListInformasi extends StatelessWidget {
  const ListInformasi({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: Text('LIST KATALOG'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListKatalog(),
        ),
      ),
    );
  }
}

class ListKatalog extends StatelessWidget {
  const ListKatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Image.asset("../../assets/baju (1).jpg"),
          ),
        ],
      ),
    );
  }
}
