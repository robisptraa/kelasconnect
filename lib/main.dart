import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  runApp(Mylogo());
}


class Mylogo extends StatelessWidget {
  const Mylogo({super.key});

  @override
  Widget build(BuildContext context) {
    
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan logo
            Image.asset(
              'assets/images/logo.png', // Path dari logo
              width: 150, // Lebar logo
              height: 150, // Tinggi logo
            );
            
            }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 177, 221),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'kelasconnect',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
  SizedBox(height: 20),
            
          ElevatedButton(
  onPressed: () {
    // Tambahkan logika untuk login di sini
  },
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0), // Padding vertikal untuk menambah tinggi
    child: Text(
      'Log In',
      style: TextStyle(
        fontSize: 18, // Ukuran teks pada tombol
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.purple, // Warna latar tombol
    minimumSize: Size(double.infinity, 50), // Membuat tombol memanjang mengikuti lebar layar
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30), // Membuat sudut tombol membulat
    ),
    padding: EdgeInsets.symmetric(horizontal: 24), // Padding horizontal
  ),
),

    SizedBox(height: 60),
            
            TextButton(
              onPressed: () {
                // Add sign up logic here
              },
              child: Text("Don't have an account? Sign Up"),
            ),
            SizedBox(height: 20),
            Text('or sign in with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () {
                    // Add Google sign-in logic here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () {
                    // Add Facebook sign-in logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
