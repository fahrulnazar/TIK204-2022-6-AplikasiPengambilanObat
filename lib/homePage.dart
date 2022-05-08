import 'package:aplikasi_pengambilan_obat/antrianPage.dart';
import 'package:aplikasi_pengambilan_obat/dokterPage.dart';
import 'package:aplikasi_pengambilan_obat/profilePage.dart';
import 'package:aplikasi_pengambilan_obat/resepPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Image(
                        width: 36,
                        image: AssetImage('assets/menu.png'),
                      ),
                      iconSize: 30,
                    ),
                    Container(
                        child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image(
                              width: 30,
                              image: AssetImage('assets/notif.png'),
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProfilePage();
                            }));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            foregroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1629086163308-4edcb13f1eed?ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60'),
                            radius: 26,
                          ),
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Halo,",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Inara kalea",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, top: 8),
                  height: 55,
                  margin: EdgeInsets.only(bottom: 20, top: 15),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade300),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Cari disini'),
                  ),
                ),
                Text(
                  "Apa yang ingin anda lakukan ?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DokterPage();
                      }));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dokter",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3347c4)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Temukan dokter dan pilih jadwal\nuntuk berkonsultasi",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/dokter.png'),
                            width: 40,
                            color: Color(0xff3347c4),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ResepPage();
                      }));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Resep Obat",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3347c4)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Kirim resep obat ke apoteker untuk\nsegera disiapkan",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/resep.png'),
                            width: 40,
                            color: Color(0xff3347c4),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AntrianPage();
                      }));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ambil Obat",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3347c4)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Antri untuk mengambil obat di\napoteker",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/obat.png'),
                            width: 40,
                            color: Color(0xff3347c4),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pesan Obat",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3347c4)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Beli obat darimana saja dan kapan\nsaja",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/deliver.png'),
                            width: 40,
                            color: Color(0xff7d93f2),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
