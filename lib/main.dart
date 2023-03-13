import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String pilihanMobil = 'Brio';
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> listMobil = [];
    var itm1 = const DropdownMenuItem<String>(
      value: "Brio",
      child: Text("Brio"),
    );
    var itm2 = const DropdownMenuItem<String>(
      value: "Civic",
      child: Text("Civic"),
    );
    listMobil.add(itm1);
    listMobil.add(itm2);

    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: const FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: const Text('Quiz Flutter'),
            actions: const <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 605,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      // decoration: BoxDecoration(border: Border.all()),
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Mobil Saya',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Image.asset(
                                  'images/mobil1.png',
                                  width: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.grey),
                                    child: const Text('Detail')),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      DropdownButton(
                                          value: pilihanMobil,
                                          items: listMobil,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              if (newValue != null) {
                                                pilihanMobil = newValue;
                                              }
                                            });
                                          }),
                                      IconButton(
                                          onPressed: () {},
                                          color: Colors.red,
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          )),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  pilihanMobil,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Nomor Rangka: XXXXXXXX',
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text('Nomor Mesin: XXXXXXXX',
                                    textAlign: TextAlign.start),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text('Garansi Berlaku: XXXXXXXX',
                                    textAlign: TextAlign.start),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text('Free Service',
                                    style: TextStyle(color: Colors.red),
                                    textAlign: TextAlign.start),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.grey),
                                        onPressed: () {},
                                        child: const Text(
                                          '1',
                                          style: TextStyle(color: Colors.red),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.grey),
                                        onPressed: () {},
                                        child: const Text('2',
                                            style:
                                                TextStyle(color: Colors.red))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.red),
                                        onPressed: () {},
                                        child: const Text('3')),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Product Update : 0',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Extra Care : ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'STNK : 28-07-2021',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: Row(
                        children: [
                          Text('Product Update : 0'),
                          Text('Edit Care'),
                          Text('STNK: 28-07-2021')
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2)),
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            const Text('Katalog Produk'),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Image.network(
                                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                    height: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Image.network(
                                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                    height: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Image.network(
                                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                                    height: 150,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Nama Kelompok'),
            content: const Text('Nama (email) ; Nama (email)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text('Kami berjanji  ...'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
