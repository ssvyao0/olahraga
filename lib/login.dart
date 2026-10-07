import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk menyimpan teks input
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputSandi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MASUK ADMIN"),
        backgroundColor: Color.fromRGBO(0, 50, 145, 145),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('asset/login.png'),
             width:200,
             height:200,
            ),
            ),
            SizedBox(height:15),
                  // Input 1: Nama Pengguna
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.orange,
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

                  // Input 2: Kata Sandi
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.orange,
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
                
              
          
        

          Padding(
            padding: EdgeInsets.all(16),
          ),

          // Tombol MASUK (Warna Hijau Sesuai Figma)
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: Text(
              "MASUK",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              print("Nama: ${inputNama.text}");
              print("Sandi: ${inputSandi.text}");
            },
          ),
        ],
      ),
    );
  }
}