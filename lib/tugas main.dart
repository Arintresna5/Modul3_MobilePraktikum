import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      home: const WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 35),

            // Nama kota
            const Text(
              'Malang',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 45),

            // Suhu utama
            const Text(
              '25°',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),

            const Spacer(),

            // Informasi cuaca
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Minggu
                Column(
                  children: [
                    const Text(
                      'Minggu',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Icon(
                      Icons.sunny,
                      size: 32,
                      color: Colors.black,
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      '20°C',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                // Senin
                Column(
                  children: [
                    const Text(
                      'Senin',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Icon(
                      Icons.cloudy_snowing,
                      size: 32,
                      color: Colors.black,
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      '23°C',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                // Selasa
                Column(
                  children: [
                    const Text(
                      'Selasa',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Icon(
                      Icons.cloud,
                      size: 32,
                      color: Colors.black,
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      '22°C',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
