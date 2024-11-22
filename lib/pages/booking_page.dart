import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  // Controller untuk TextField
  final TextEditingController _dateController = TextEditingController();

  // Fungsi untuk menampilkan Date Picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000), // Tanggal awal yang diizinkan
      lastDate: DateTime(2101), // Tanggal akhir yang diizinkan
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Layanan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Formulir Pemesanan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Alamat",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _dateController, // Controller untuk menampilkan tanggal
              readOnly: true, // Input hanya bisa melalui Date Picker
              decoration: InputDecoration(
                labelText: "Tanggal Pemesanan",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today), // Ikon kalender
              ),
              onTap: () => _selectDate(context), // Panggil Date Picker saat field di-tap
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Booking berhasil!")),
                );
              },
              child: Text("Booking Sekarang"),
            ),
          ],
        ),
      ),
    );
  }
}
