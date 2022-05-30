import 'package:aplikasi_pengambilan_obat/antrianPage.dart';
import 'package:aplikasi_pengambilan_obat/listDokter.dart';
import 'package:aplikasi_pengambilan_obat/profilePage.dart';
import 'package:aplikasi_pengambilan_obat/kunjunganPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, User? user}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String irmawan = 'Senin (30 Mei 2022)';
  String susan = 'Senin (30 Mei 2022)';
  String syukri = 'Senin (30 Mei 2022)';
  String jamirmawan = '08:00 - 10:00';
  String jamsusan = '08:00 - 10:00';
  String jamsyukri = '08:00 - 10:00';
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
    User? user;
    user = FirebaseAuth.instance.currentUser!;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.only(right: 15),
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProfilePage(
                              user: user,
                            );
                          }));
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 34,
                          child:
                              Icon(Icons.person, color: Colors.white, size: 40),
                        ),
                      ),
                      Text(
                        '$name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black),
                      ),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return KunjunganPage();
                        }));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff3347c4)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.schedule,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Jadwal",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AntrianPage();
                        }));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff3347c4)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.vaccines,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Ambil Obat",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Pilih Dokter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            size: 36,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr.Irmawan Syuhada',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Spesialis Mata',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xff3347c4),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 20),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return AlertDialog(
                                    insetPadding: EdgeInsets.zero,
                                    actionsPadding: EdgeInsets.only(
                                        bottom: 10, right: 15, left: 15),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Batal',
                                            style: TextStyle(
                                                color: Color(0xff3347c4)),
                                          )),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 40),
                                            backgroundColor: Color(0xff3347c4)),
                                        onPressed: () {
                                          kunjungan.add(Jadwal(
                                              name: 'Dr. Irmawan Syuhada',
                                              spesialis: 'Spesialis Mata',
                                              hari: irmawan,
                                              jam: jamirmawan));
                                          Navigator.pop(context);
                                        },
                                        child: Text('Buat',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      )
                                    ],
                                    title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Hari',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              DropdownButton(
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                  underline: SizedBox(),
                                                  value: irmawan,
                                                  icon: Icon(
                                                      Icons.arrow_drop_down),
                                                  items: [
                                                    'Senin (30 Mei 2022)',
                                                    'Selasa (31 Mei 2022)',
                                                    'Rabu (1 Juni 2022)',
                                                    'Kamis (2 Juni 2022)',
                                                    'Jumat (3 Juni 2022)',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      irmawan = newValue!;
                                                    });
                                                  }),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Jam',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              DropdownButton(
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                  underline: SizedBox(),
                                                  value: jamirmawan,
                                                  icon: Icon(
                                                      Icons.arrow_drop_down),
                                                  items: [
                                                    '08:00 - 10:00',
                                                    '11:00 - 13:00',
                                                    '14:00 - 16:00',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      jamirmawan = newValue!;
                                                    });
                                                  }),
                                            ],
                                          )
                                        ]),
                                  );
                                });
                              });
                        },
                        child: Text(
                          'Buat Janji',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            size: 36,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr.Susan Eviani',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Spesialis Kulit',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xff3347c4),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 20),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return AlertDialog(
                                    insetPadding: EdgeInsets.zero,
                                    actionsPadding: EdgeInsets.only(
                                        bottom: 10, right: 15, left: 15),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Batal',
                                            style: TextStyle(
                                                color: Color(0xff3347c4)),
                                          )),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 40),
                                            backgroundColor: Color(0xff3347c4)),
                                        onPressed: () {
                                          kunjungan.add(Jadwal(
                                              name: 'Dr. Susan Eviani',
                                              spesialis: 'Spesialis Kulit',
                                              hari: susan,
                                              jam: jamsusan));
                                          Navigator.pop(context);
                                        },
                                        child: Text('Buat',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      )
                                    ],
                                    title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Hari',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              DropdownButton(
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                  underline: SizedBox(),
                                                  value: susan,
                                                  icon: Icon(
                                                      Icons.arrow_drop_down),
                                                  items: [
                                                    'Senin (30 Mei 2022)',
                                                    'Selasa (31 Mei 2022)',
                                                    'Rabu (1 Juni 2022)',
                                                    'Kamis (2 Juni 2022)',
                                                    'Jumat (3 Juni 2022)',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      susan = newValue!;
                                                    });
                                                  }),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Jam',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              DropdownButton(
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                  underline: SizedBox(),
                                                  value: jamsusan,
                                                  icon: Icon(
                                                      Icons.arrow_drop_down),
                                                  items: [
                                                    '08:00 - 10:00',
                                                    '11:00 - 13:00',
                                                    '14:00 - 16:00',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      jamsusan = newValue!;
                                                    });
                                                  }),
                                            ],
                                          )
                                        ]),
                                  );
                                });
                              });
                        },
                        child: Text(
                          'Buat Janji',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            size: 36,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr.Syukri Mustafa',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Spesialis Saraf',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xff3347c4),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 20),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return AlertDialog(
                                    insetPadding: EdgeInsets.zero,
                                    actionsPadding: EdgeInsets.only(
                                        bottom: 10, right: 15, left: 15),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Batal',
                                            style: TextStyle(
                                                color: Color(0xff3347c4)),
                                          )),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 40),
                                            backgroundColor: Color(0xff3347c4)),
                                        onPressed: () {
                                          kunjungan.add(Jadwal(
                                              name: 'Dr. Syukri Mustafa',
                                              spesialis: 'Spesialis Saraf',
                                              hari: syukri,
                                              jam: jamsyukri));
                                          Navigator.pop(context);
                                        },
                                        child: Text('Buat',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      )
                                    ],
                                    title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Hari',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              DropdownButton(
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                  underline: SizedBox(),
                                                  value: syukri,
                                                  icon: Icon(
                                                      Icons.arrow_drop_down),
                                                  items: [
                                                    'Senin (30 Mei 2022)',
                                                    'Selasa (31 Mei 2022)',
                                                    'Rabu (1 Juni 2022)',
                                                    'Kamis (2 Juni 2022)',
                                                    'Jumat (3 Juni 2022)',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      syukri = newValue!;
                                                    });
                                                  }),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Jam',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              DropdownButton(
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                  underline: SizedBox(),
                                                  value: jamsyukri,
                                                  icon: Icon(
                                                      Icons.arrow_drop_down),
                                                  items: [
                                                    '08:00 - 10:00',
                                                    '11:00 - 13:00',
                                                    '14:00 - 16:00',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      jamsyukri = newValue!;
                                                    });
                                                  }),
                                            ],
                                          )
                                        ]),
                                  );
                                });
                              });
                        },
                        child: Text(
                          'Buat Janji',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
