import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});
  // Future getCurrentWeather() async{
  //   http.get(Uri.parse(uri),
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'SkyCast☁️',
          style: TextStyle(
            fontFamily: 'CustomFont',
            color: Color.fromARGB(255, 235, 232, 232),
            fontSize: 36,
          ),
        ),
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
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '🌧️',
                        style: TextStyle(fontSize: 45),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rain',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'CustomFont',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Weather Forecast',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WeatherInfoCard(
                    time: '09:00',
                    emoji: '🌧️',
                    description: 'Rain',
                  ),
                  WeatherInfoCard(
                    time: '12:00',
                    emoji: '🌦️',
                    description: 'Drizzle',
                  ),
                  WeatherInfoCard(
                    time: '15:00',
                    emoji: '☁️',
                    description: 'Cloudy',
                  ),
                  WeatherInfoCard(
                    time: '18:00',
                    emoji: '☀️',
                    description: 'Sunny',
                  ),
                  WeatherInfoCard(
                    time: '21:00',
                    emoji: '🌕',
                    description: 'Clear',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Additional Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoCard(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '94',
                ),
                AdditionalInfoCard(
                  icon: Icons.air,
                  label: 'Wind Speed',
                  value: '7.67',
                ),
                AdditionalInfoCard(
                  icon: Icons.beach_access,
                  label: 'Pressure',
                  value: '1006',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherInfoCard extends StatelessWidget {
  final String time;
  final String emoji;
  final String description;

  const WeatherInfoCard({
    super.key,
    required this.time,
    required this.emoji,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 100,
        child: Card(
          shadowColor: Colors.blueAccent,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  emoji,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 17,
                    fontFamily: 'CustomFont',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdditionalInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const AdditionalInfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 17)),
      ],
    );
  }
}
