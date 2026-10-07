import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final TextEditingController inputNama = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  
  @override
  void dispose() {
    inputNama.dispose();
    inputPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MASUK ADMIN"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  // TextFormField 1: Nama Pengguna
                  TextFormField(
                    controller: inputNama,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Nama Pengguna',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),

                  // Gunakan SizedBox untuk jarak
                  const SizedBox(height: 15),

                  // TextFormField 2: Kata Sandi
                  TextFormField(
                    controller: inputPassword,
                    obscureText: true, // Untuk menyembunyikan karakter password
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Kata Sandi',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Jarak sebelum tombol
          const SizedBox(height: 16),

          // Tombol Masuk
          ElevatedButton(
            child: const Text("MASUK"),
            onPressed: () {
              print("Nama: ${inputNama.text}");
              print("Password: ${inputPassword.text}");
            },
          ),
        ],
      ),
    );
  }
}