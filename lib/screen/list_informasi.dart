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
        title: Text('INPUT DATA'),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selamat Datang di input data TFT',
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
        SizedBox(height: 40),
        Text(
          'Nama Produk',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        SizedBox(height: 8), // Add some space between label and text field
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            // labelText: 'Enter your text',
          ),
        ),
        SizedBox(height: 16), // Space between forms
        Text(
          'Deskripsi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8), // Add some space between label and text field
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            // labelText: 'Enter your text',
          ),
        ),
        SizedBox(height: 16), // Space between forms
        Text(
          'Harga',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8), // Add some space between label and text field
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            // labelText: 'Enter your text',
          ),
        ),
        SizedBox(height: 16), // Space between forms

        Text(
          'Kategori',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            // labelText: 'Enter your text',
          ),
        ),
        SizedBox(height: 16), // Space between forms

        Text(
          'Stok',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            // labelText: 'Enter your text',
          ),
        ),

        SizedBox(height: 20),

        Center(
          child: ElevatedButton(
            onPressed: () {
              // Define what happens when the button is pressed
            },
            style: ElevatedButton.styleFrom(
              // Set the background color
              primary: Colors.purple[300], // Change this to your desired color

              // Set the minimum size of the button
              minimumSize: Size(500, 50),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10.0), // Adjust the value to change the border radius
              ),
              // Change these values for width and height
            ),
            child: Text('Submit'),
          ),
        ),
      ],
    );
  }
}
