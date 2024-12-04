import 'package:flutter/material.dart';

class AvailableTime extends StatelessWidget {
  final String? selectedTime;
  final Function(String) onTimeSelected;

  const AvailableTime({
    super.key,
    required this.selectedTime,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> times = [
      '10:00 - 11:00',
      '11:00 - 12:00',
      '12:00 - 13:00',
      '13:00 - 14:00',
      '14:00 - 15:00',
      '15:00 - 16:00',
      '16:00 - 17:00',
      '17:00 - 18:00',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 4,
        ),
        itemCount: times.length,
        itemBuilder: (context, index) {
          final isSelected = selectedTime == times[index];
          return OutlinedButton(
            onPressed: () => onTimeSelected(times[index]),
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
              times[index],
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFF002647),
              ),
            ),
          );
        },
      ),
    );
  }
}
