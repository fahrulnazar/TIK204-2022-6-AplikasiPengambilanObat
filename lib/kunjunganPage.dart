import 'package:flutter/material.dart';

class Jadwal {
  String? name;
  String? spesialis;
  String? hari;
  String? jam;

  Jadwal({this.name, this.spesialis, this.hari, this.jam});
}

List kunjungan = [];

class KunjunganPage extends StatefulWidget {
  const KunjunganPage({Key? key}) : super(key: key);

  @override
  State<KunjunganPage> createState() => _KunjunganPageState();
}

class _KunjunganPageState extends State<KunjunganPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  iconSize: 28,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Text('Jadwal Kunjungan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: kunjungan.length,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hari',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    kunjungan[index].hari,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jam',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    kunjungan[index].jam,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    kunjungan[index].name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    kunjungan[index].spesialis,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xff3347c4),
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size(50, 24),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      kunjungan.removeAt(index);
                                    });
                                  },
                                  child: Text(
                                    'Batalkan',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
