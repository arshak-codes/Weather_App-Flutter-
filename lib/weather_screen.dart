import "package:flutter/material.dart";

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('SkyCast☁️',
        style: TextStyle(fontFamily: 'CustomFont',color: Color.fromARGB(255, 235, 232, 232),fontSize: 36),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/refresh_icon.png', // Replace with your custom icon path
              width: 24,  // Adjust size as needed
              height: 24,
            ),
            onPressed: () {
              print('refresh');
            },
          ),
        ],
      ),
      body: const Padding(
  padding: EdgeInsets.all(16.0),
  child: Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: Card(
          shadowColor: Colors.blueAccent,
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  '26°C',
                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold), // Adjust font size as needed
                ),
                SizedBox(height: 8),
                Text('🌧️',
                style: TextStyle(fontSize: 45),),
                SizedBox(height: 8),
                Text('Rain',
                style: TextStyle(fontSize: 32,fontFamily: 'CustomFont'),),
                // Other content inside your main card
              ],
            ),
          ),
        ),
      ),

      SizedBox(height: 25),
      Align(
        alignment: Alignment.centerLeft,
        child: Text('Weather Forecast',
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      SizedBox(height: 8),
      // Weather forecast card
      Card(
        child: Placeholder(
          fallbackHeight: 150,
        ),
      ),
      SizedBox(height: 25),
      // Additional info card
      Card(
        child: Placeholder(
          fallbackHeight: 150,
        ),
      ),
    ],
  ),
),


    );
  }
}