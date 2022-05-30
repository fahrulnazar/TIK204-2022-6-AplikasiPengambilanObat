import 'package:aplikasi_pengambilan_obat/authentication_services.dart';
import 'package:aplikasi_pengambilan_obat/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, User? user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? name;

    String? email;
    String? alamat;
    final auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      name = auth.currentUser!.displayName;
      email = auth.currentUser!.email;
      alamat = auth.currentUser!.photoURL;
    }
    final User? user;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    alignment: Alignment.centerLeft,
                    iconSize: 28,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
              SizedBox(
                height: 80,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nama'),
                              Text(
                                '$name',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300),
                            child: Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nomor HP'),
                              Text(
                                '$alamat',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade300),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email'),
                              Text(
                                '$email',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 100),
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff3347c4)),
                          child: TextButton(
                            onPressed: () async {
                              await AuthServices.signOut().then((value) =>
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              LoginPage()))));
                            },
                            child: Text(
                              'Keluar',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
