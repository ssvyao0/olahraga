import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("MASUK ADMIN"),
      backgroundColor:Color(0XFFFFFF),
    ),
    backgroundColor:Color(0XFFFFFF),
      body:Column(
        children: [
          Center(
            child: Container(
            width: 400,
            // height: 400,
              color: Color(0XFFFFFF), 
              child:TextField(
                // Dekorasi untuk Petunjuk Pengisian dan Garis
                decoration:InputDecoration(
                  hintText: 'Masukan Nama Kamu',
                  border: OutlineInputBorder(),
                ),
                //kontroller untuk
            controller: inputNama,
            // Ketika Dikirim nanti
            onSubmitted: (values) {
              //syafa
              inputNama.text = values;
            },
          ), // Text Field
         ), // Container
       ), // Center
          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed: () {
            print(inputNama.text);
          },
        ),
      ],
     ),
   );
  }
}