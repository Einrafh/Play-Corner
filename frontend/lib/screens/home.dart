import 'package:flutter/material.dart';
import 'package:play_corner/components/credit_score_and_slot_card.dart';
import 'package:play_corner/components/navbar.dart';
import 'package:play_corner/components/device_carousel.dart';
import 'package:play_corner/components/game_carousel.dart';
import 'package:play_corner/screens/history.dart';
import 'package:play_corner/screens/profile.dart';

import '../components/available_time.dart';
import '../components/order_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const History(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedDevice;
  String? _selectedTime;
  List<Map<String, String>> _selectedGames = [];

  void _onDeviceSelected(String device, List<Map<String, String>> games) {
    setState(() {
      _selectedDevice = device;
      _selectedGames = games;
    });
  }

  void _onTimeSelected(String time) {
    setState(() {
      _selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    "Game Corner",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Image.asset(
                    'assets/images/ProfilePicture.png',
                    height: 96,
                    width: 96,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Muhammad Rafly Ash Shiddiqi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Teknik Informatika",
                    style: TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const CreditScoreAndSlotCard(),
                  if (_selectedDevice != null) ...[
                    const SizedBox(height: 24),
                    GameCarousel(games: _selectedGames),
                  ],
                  const SizedBox(height: 24),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: const Text(
                      'Device',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF002647),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  DeviceCarousel(
                    selectedDevice: _selectedDevice,
                    onDeviceSelected: _onDeviceSelected,
                  ),
                  const SizedBox(height: 24),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: const Text(
                      'Waktu yang tersedia',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF002647),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  AvailableTime(
                    selectedTime: _selectedTime,
                    onTimeSelected: _onTimeSelected,
                  ),
                  const SizedBox(height: 96),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: OrderButton(
              selectedDevice: _selectedDevice,
              selectedTime: _selectedTime,
            ),
          ),
        ],
      ),
    );
  }
}
