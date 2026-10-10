import 'package:flutter/material.dart';

class KartuPilar extends StatelessWidget {
  const KartuPilar({
    super.key,
    required this.namaPilar,
    required this.ikon,
    required this.deskripsi,
    this.warnaAksen = Colors.blue,
  });

  final String namaPilar;
  final IconData ikon;
  final String deskripsi;
  final Color warnaAksen;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: warnaAksen.withAlpha(30),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(ikon, color: warnaAksen, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaPilar,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    deskripsi,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
