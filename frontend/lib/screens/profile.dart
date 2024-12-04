import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Bagian atas profil
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/ProfilePicture.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC831E),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      "97/100",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 56),
            // Informasi Profil
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF002647),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileInfoItem(
                      label: "NIM",
                      value: "235150207111062",
                    ),
                    ProfileInfoItem(
                      label: "Nama",
                      value: "Muhammad Rafly Ash Shiddiqi",
                    ),
                    ProfileInfoItem(
                      label: "Angkatan",
                      value: "2023",
                    ),
                    ProfileInfoItem(
                      label: "E-mail",
                      value: "rafly@student.ub.ac.id",
                    ),
                    ProfileInfoItem(
                      label: "Fakultas",
                      value: "Ilmu Komputer",
                    ),
                    ProfileInfoItem(
                      label: "Jurusan",
                      value: "Teknik Informatika",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoItem({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 16,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
