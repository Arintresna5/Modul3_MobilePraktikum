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
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF7FF),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 55),

              // Nama kota
              const Text(
                'Malang',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 70),

              // Suhu utama
              Transform.translate(
                offset: const Offset(8, 0),
                child: const Text(
                  '25°',
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),

              const Spacer(),

              // Cuaca 3 hari
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  WeatherItem(
                    hari: 'Minggu',
                    icon: Icons.sunny,
                    suhu: '20°C',
                  ),
                  WeatherItem(
                    hari: 'Senin',
                    icon: Icons.cloudy_snowing,
                    suhu: '23°C',
                  ),
                  WeatherItem(
                    hari: 'Selasa',
                    icon: Icons.cloud,
                    suhu: '22°C',
                  ),
                ],
              ),

              const SizedBox(height: 55),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherItem extends StatelessWidget {
  final String hari;
  final IconData icon;
  final String suhu;

  const WeatherItem({
    super.key,
    required this.hari,
    required this.icon,
    required this.suhu,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          hari,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 10),

        Icon(
          icon,
          size: 32,
          color: Colors.black,
        ),

        const SizedBox(height: 10),

        Text(
          suhu,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
