import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odevler/renkler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override

  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double  ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran yüksekliği : $ekranYuksekligi");
    print("Ekran genişliği : $ekranGenisligi");
    return Scaffold(
      backgroundColor: arkaPlan,
      appBar: AppBar(
          title: const Text("Lezzetli Yemekler", style: TextStyle(fontFamily:"IndieFlower",fontSize:38,color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
          backgroundColor: appbar,
          centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: "Vejeteryan"),
                Chip(icerik: "Glutensiz"),
                Chip(icerik: "Diyabetik"),
                Chip(icerik: "Laktozsuz"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/800),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("resimler/makarna2.png"),
                    Text("Makarna",style: TextStyle(fontSize: 25,color: yaziRenk2,fontFamily: "IndieFlower",fontWeight: FontWeight.bold)),
                    Text("45.99 ₺",style: TextStyle(fontSize: 16,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                    SizedBox(width: 80,height: 20,
                      child: TextButton(onPressed: (){},
                          child: Text("Satın Al",style: TextStyle(color: yaziRenk1,fontSize: 18),),
                          style: TextButton.styleFrom(
                            backgroundColor: yaziRenk3,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 45)),
                            ),
                          ),

                      ),
                    ),
                  ],
                ),
                  Column(
                  children: [
                    Image.asset("resimler/salata1.png"),
                    Text("Salata",style: TextStyle(fontSize: 25,color: yaziRenk2,fontFamily: "IndieFlower",fontWeight: FontWeight.bold)),
                    Text("49.99 ₺",style: TextStyle(fontSize: 16,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                    SizedBox(width: 80,height: 20,
                      child: TextButton(onPressed: (){},
                        child: Text("Satın Al",style: TextStyle(color: yaziRenk1,fontSize: 18),),
                        style: TextButton.styleFrom(
                          backgroundColor: yaziRenk3,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 45)),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/620),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Column(
                  children: [
                    Image.asset("resimler/biftek1.png"),
                    Text("Biftek",style: TextStyle(fontSize: 25,color: yaziRenk2,fontFamily: "IndieFlower",fontWeight: FontWeight.bold)),
                    Text("95.99 ₺",style: TextStyle(fontSize: 16,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                    SizedBox(width: 80,height: 20,
                      child: TextButton(onPressed: (){},
                        child: Text("Satın Al",style: TextStyle(color: yaziRenk1,fontSize: 18),),
                        style: TextButton.styleFrom(
                          backgroundColor: yaziRenk3,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 45)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("resimler/balik1.png"),
                    Text("Balık",style: TextStyle(fontSize: 25,color: yaziRenk2,fontFamily: "IndieFlower",fontWeight: FontWeight.bold)),
                    Text("59.99 ₺",style: TextStyle(fontSize: 16,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                    SizedBox(width: 80,height: 20,
                      child: TextButton(onPressed: (){},
                        child: Text("Satın Al",style: TextStyle(color: yaziRenk1,fontSize: 18),),
                        style: TextButton.styleFrom(
                          backgroundColor: yaziRenk3,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 45)),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
        child: Text(icerik,style: TextStyle(color: yaziRenk1)),
        style: TextButton.styleFrom(
          backgroundColor: yaziRenk3,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: const Radius.circular(40.0),
              bottomRight: const Radius.circular(40.0)))
      ),
    );
  }
}
