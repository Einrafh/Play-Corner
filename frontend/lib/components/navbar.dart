import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
            child: SvgPicture.asset(
              selectedIndex == 0
                  ? 'assets/svgs/homeOnclick.svg'
                  : 'assets/svgs/home.svg',
              height: 24,
              width: 24,
            ),
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
            child: SvgPicture.asset(
              selectedIndex == 1
                  ? 'assets/svgs/historyOnclick.svg'
                  : 'assets/svgs/history.svg',
              height: 24,
              width: 24,
            ),
          ),
          label: 'Riwayat',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
            child: SvgPicture.asset(
              selectedIndex == 2
                  ? 'assets/svgs/profileOnclick.svg'
                  : 'assets/svgs/profile.svg',
              height: 24,
              width: 24,
            ),
          ),
          label: 'Profil',
        ),
      ],
      selectedItemColor: const Color(0xFFEC831E),
      unselectedItemColor: const Color(0xFF002647),
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    );
  }
}
