import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Firestore extends StatefulWidget {
  @override
  _FirestoreState createState() => _FirestoreState();
}

class _FirestoreState extends State<Firestore> {
  final _firestore = FirebaseFirestore.instance;
  TextEditingController AdSoyadController = TextEditingController();
  TextEditingController OgrNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference bilgiRef = _firestore.collection('Bilgiler');
    //var bilgiRef = bilgiRef.doc('Baba');

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Firestore CRUD İşlemleri')),
      body: Center(
        child: Container(
          child: Column(
            children: [
              /*ElevatedButton(
                child: Text('GET QUERYSNAPSHOT'),
                onPressed: () async {
                  var response = await bilgiRef.get();
                  var list = response.docs;
                  /// QuerySnaphot ??
                  ///
                  /// List içinde neler var?
                  print(list[2].data());
                },
              ),*/
              StreamBuilder<QuerySnapshot>(
                /// Neyi dinlediğimiz bilgisi, hangi streami
                stream: bilgiRef.snapshots(),

                /// Streamden her yerni veri aktığında, aşağıdaki metodu çalıştır
                builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                  if (asyncSnapshot.hasError) {
                    return Center(
                        child: Text('Bir Hata Oluştu, Tekrar Deneyiniz'));
                  } else {
                    if (asyncSnapshot.hasData) {
                      List<DocumentSnapshot> listOfDocumentSnap =
                          asyncSnapshot.data.docs;
                      return Flexible(
                        child: ListView.builder(
                          itemCount: listOfDocumentSnap.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                title: Text(
                                    '${listOfDocumentSnap[index].data()}',
                                    style: TextStyle(fontSize: 24)),
                                subtitle: Text(
                                    '${listOfDocumentSnap[index].data()}',
                                    style: TextStyle(fontSize: 16)),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () async {
                                    await listOfDocumentSnap[index]
                                        .reference
                                        .delete();
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 200),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: AdSoyadController,
                        decoration: InputDecoration(
                            hintText: 'Adınızı ve Soyadınızı Giriniz'),
                      ),
                      TextFormField(
                        controller: OgrNoController,
                        decoration: InputDecoration(
                            hintText: 'Öğrenci Numaranızı Giriniz'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Ekle'),
        onPressed: () async {
          print(AdSoyadController.text);
          print(OgrNoController.text);

          /// Text alanlarındaki veriden bir map oluşturulması
          Map<String, dynamic> bilgiData = {
            'AdSoyad': AdSoyadController.text,
            'OgrNo': OgrNoController.text
          };

          /// Veriyi yazmak istediğimiz refeansa ulaşacağız ve ilgili metodu çağıracağız
          //await bilgiRef.doc(adSoyad.text).update({'year': '2012'});
          await bilgiRef.doc(AdSoyadController.text).set(bilgiData);
        },
      ),
    );
  }
}
