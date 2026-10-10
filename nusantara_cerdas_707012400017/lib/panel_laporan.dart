import 'package:flutter/material.dart';

class PanelLaporanWarga extends StatefulWidget {
  const PanelLaporanWarga({super.key});

  @override
  State<PanelLaporanWarga> createState() => _PanelLaporanWargaState();
}

class _PanelLaporanWargaState extends State<PanelLaporanWarga> {
  int _jumlahLaporan = 0;

  void _laporanMasuk() {
    setState(() {
      _jumlahLaporan++;
    });
  }

  void _laporanSelesai() {
    if (_jumlahLaporan == 0) return;
    setState(() {
      _jumlahLaporan--;
    });
  }

  void _resetHarian() {
    setState(() {
      _jumlahLaporan = 0;
    });
  }

  String get _statusPelayanan {
    if (_jumlahLaporan < 5) {
      return 'Pelayanan Lancar';
    } else if (_jumlahLaporan <= 10) {
      return 'Pelayanan Sibuk';
    } else {
      return 'Perlu Penambahan Petugas';
    }
  }

  Color get _statusWarna {
    if (_jumlahLaporan < 5) {
      return Colors.green;
    } else if (_jumlahLaporan <= 10) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Laporan Masuk Hari Ini',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: _statusWarna.withAlpha(30),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: _statusWarna),
                  ),
                  child: Text(
                    _statusPelayanan,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: _statusWarna,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '$_jumlahLaporan',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1),
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton.icon(
                  onPressed: _laporanMasuk,
                  icon: const Icon(Icons.add),
                  label: const Text('Laporan Masuk'),
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF0D47A1),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: _laporanSelesai,
                  icon: const Icon(Icons.check),
                  label: const Text('Laporan Selesai'),
                ),
                OutlinedButton.icon(
                  onPressed: _resetHarian,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset Harian'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
