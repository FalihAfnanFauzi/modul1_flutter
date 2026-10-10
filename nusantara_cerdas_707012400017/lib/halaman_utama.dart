import 'package:flutter/material.dart';
import 'kepala_kota.dart';
import 'kartu_pilar.dart';
import 'panel_laporan.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  static const List<Map<String, dynamic>> daftarPilar = [
    {
      'nama': 'Smart Governance',
      'ikon': Icons.account_balance,
      'deskripsi': 'Pelayanan birokrasi dan administrasi publik berbasis digital yang transparan dan akuntabel.',
      'warna': Colors.blue,
    },
    {
      'nama': 'Smart Economy',
      'ikon': Icons.trending_up,
      'deskripsi': 'Mendorong pertumbuhan ekosistem wirausaha dan transaksi nontunai di masyarakat.',
      'warna': Colors.amber,
    },
    {
      'nama': 'Smart Living',
      'ikon': Icons.health_and_safety,
      'deskripsi': 'Mewujudkan hunian sehat, fasilitas kesehatan cepat tanggap, dan keamanan lingkungan.',
      'warna': Colors.redAccent,
    },
    {
      'nama': 'Smart Mobility',
      'ikon': Icons.directions_bus,
      'deskripsi': 'Pengembangan transportasi publik ramah lingkungan dan terintegrasi secara cerdas.',
      'warna': Colors.deepOrange,
    },
    {
      'nama': 'Smart Environment',
      'ikon': Icons.eco,
      'deskripsi': 'Optimalisasi tata kelola sampah, energi terbarukan, dan pelestarian ruang terbuka hijau.',
      'warna': Colors.green,
    },
    {
      'nama': 'Smart People',
      'ikon': Icons.people_alt,
      'deskripsi': 'Peningkatan literasi teknologi dan inklusi pendidikan bagi seluruh lapisan warga.',
      'warna': Colors.purple,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        title: const Text('Nusantara Cerdas'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0D47A1),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const KepalaKota(),
            const SizedBox(height: 20),
            const Text(
              'Panel Pengaduan & Laporan Warga',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const PanelLaporanWarga(),
            const SizedBox(height: 24),
            const Text(
              'Enam Pilar Smart City',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            ...daftarPilar.map((pilar) => KartuPilar(
                  namaPilar: pilar['nama'] as String,
                  ikon: pilar['ikon'] as IconData,
                  deskripsi: pilar['deskripsi'] as String,
                  warnaAksen: pilar['warna'] as Color,
                )),
          ],
        ),
      ),
    );
  }
}
