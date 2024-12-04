import 'package:flutter/material.dart';

class DeviceCarousel extends StatelessWidget {
  final String? selectedDevice;
  final Function(String, List<Map<String, String>>) onDeviceSelected;

  const DeviceCarousel({
    super.key,
    required this.selectedDevice,
    required this.onDeviceSelected,
  });

  @override
  Widget build(BuildContext context) {
    // Data game untuk setiap perangkat TV
    final Map<String, List<Map<String, String>>> deviceGames = {
      'TV 1': [
        {'image': 'assets/images/Game1.png', 'title': 'It Takes Two'},
        {'image': 'assets/images/Game2.png', 'title': 'Halo Infinite'},
      ],
      'TV 2': [
        {'image': 'assets/images/Game3.png', 'title': 'Forza Horizon 5'},
        {'image': 'assets/images/Game1.png', 'title': 'Minecraft'},
      ],
      'TV 3': [
        {'image': 'assets/images/Game2.png', 'title': 'Call of Duty'},
        {'image': 'assets/images/Game3.png', 'title': 'Overwatch'},
      ],
      // Tambahkan data untuk TV lainnya jika perlu
    };

    final List<String> devices = deviceGames.keys.toList();

    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: devices.length,
        itemBuilder: (context, index) {
          final device = devices[index];
          final isSelected = selectedDevice == device;

          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 24 : 8,
              right: index == devices.length - 1 ? 24 : 8,
            ),
            child: OutlinedButton(
              onPressed: () => onDeviceSelected(device, deviceGames[device]!),
              style: OutlinedButton.styleFrom(
                backgroundColor: isSelected ? const Color(0xFFEC831E) : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide(
                  color: isSelected ? const Color(0xFFEC831E) : const Color(0xFF002647),
                ),
              ),
              child: Text(
                device,
                style: TextStyle(
                  color: isSelected ? Colors.white : const Color(0xFF002647),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
