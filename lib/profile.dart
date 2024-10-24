import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Profil',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Mengubah warna tombol back
        ),
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage:
                  AssetImage('assets/image/1.jpg'), // Perbaikan disini
            ),
            SizedBox(height: 40),
            Text('Nama: Nobel Rahmat Sani'),
            Text('NIM: 362358302075'),
            Text('Kelas: 2A TRPL'),
            Text('Mata Kuliah: Pemrograman Perangkat Bergerak'),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
              },
              child: Text('Log Out',
              style: TextStyle(
                color: Colors.white),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
