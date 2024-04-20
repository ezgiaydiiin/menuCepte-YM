import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/appBarfoto.jpg',
            height: 200,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Grey background covering the entire screen
          Positioned.fill(
            child: Container(
              color: Colors.grey[200],
            ),
          ),

          Positioned(
            top: 20.0, // Adjust position as needed
            left: MediaQuery.of(context).size.width / 2 -
                100, // Center horizontally
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  150.0), // Adjust corner radius as needed
              child: Container(
                width: 200.0,
                height: 200.0,
                child: Image.asset(
                  'assets/bodyfoto.jpg',
                  fit: BoxFit.fill, // Adjust image fit as needed
                ),
              ),
            ),
          ),
          // Red bottom section with full width
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: MediaQuery.of(context).size.height *
                  1 /
                  3, // Adjust height as needed
              color: Colors.red,
            ),
          ),
          // Centered buttons within a Column
          Positioned(
            top: (MediaQuery.of(context).size.height / 2), // Center vertically
            left: (MediaQuery.of(context).size.width / 2) -
                75, // Center horizontally
            child: Column(
              mainAxisSize: MainAxisSize.min, // Avoid unnecessary space
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add navigation to "Menu Ekle" screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHome()), // SecondPage'e yönlendirme
                    );
                  },
                  child: Text('MENU EKLE'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Add navigation to "Menu Görüntüle" screen
                    // Navigate to SecondPage when "MENU GÖRÜNTÜLE" button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondPage()), // SecondPage'e yönlendirme
                    );
                  },
                  child: Text('MENU GÖRÜNTÜLE'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
