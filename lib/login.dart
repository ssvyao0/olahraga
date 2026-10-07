import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputSandi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MASUK ADMIN"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              width: 400,
              child: Column(
                children: [ 
                  // TextFormField 1: Nama Pengguna
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Nama Pengguna',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    controller: inputNama,
                    onFieldSubmitted: (values) {
                      inputNama.text = values;
                    },
                  ),
                  SizedBox(height: 15),
                  // TextFormField 2: Kata Sandi
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Kata Sandi',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    controller: inputSandi,
                    onFieldSubmitted: (values) {
                      inputSandi.text = values;
                    },
                  ),
                ],
              ),
            ),
          ),
          // untuk kasih jarak antar widget
          Padding(
            padding: EdgeInsets.all(16),
          ),
          // Tombol
          ElevatedButton(
            child: Text("MASUK"),
            onPressed: () {
              print(inputNama.text);
              print(inputSandi.text);
            },
          ),
        ],
      ),
    );
  }
}