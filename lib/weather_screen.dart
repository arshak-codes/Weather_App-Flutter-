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
              // Implement your refresh logic here
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Weather Content Here',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}