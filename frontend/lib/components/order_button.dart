import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final String? selectedDevice;
  final String? selectedTime;

  const OrderButton({
    super.key,
    required this.selectedDevice,
    required this.selectedTime,
  });

  bool get _canPlaceOrder => selectedDevice != null && selectedTime != null;

  void _placeOrder(BuildContext context) {
    if (!_canPlaceOrder) return;

    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48), // Sudut luar dialog
        ),
        child: SizedBox(
          height: 448, // Anda dapat menyesuaikan tinggi di sini
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal:68, vertical: 64),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 64,
                      color: Color(0xFFFF9800), // Warna oranye
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Pemesanan Berhasil!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF002647), // Warna biru tua
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF002647),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48),
                      bottomLeft: Radius.circular(48),
                      bottomRight: Radius.circular(48),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Selamat! Anda telah berhasil memesan sesi Game Corner.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF9800), // Warna oranye
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: const Size(double.infinity, 48),
                        ),
                        child: const Text(
                          "Kembali",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _canPlaceOrder ? () => _placeOrder(context) : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: _canPlaceOrder
            ? const Color(0xFFEC831E) // Oranye jika aktif
            : const Color(0xFFBDBDBD), // Abu-abu jika tidak aktif
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: const Text(
        "Pesan sekarang",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
