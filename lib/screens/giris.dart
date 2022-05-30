import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class giris extends StatefulWidget {
  const giris({ Key? key }) : super(key: key);

  @override
  State<giris> createState() => _girisState();
}
bool _kullaniciKaydet=false;
class _girisState extends State<giris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconButton(icon: Icon(Icons.add),onPressed: (){
        _googleilegiris(context);
      },),
    );
  }
}
_googleilegiris(BuildContext context) async {
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  GoogleSignInAccount? googleKullanici = await googleSignIn.signIn();
  if (googleKullanici != null) {
    GoogleSignInAuthentication googleKimlik =
        await googleKullanici.authentication;
    AuthCredential dogrulamaKimligi = GoogleAuthProvider.credential(
      accessToken: googleKimlik.accessToken,
      idToken: googleKimlik.idToken,
    );
    UserCredential kullaniciKimligi =
        await FirebaseAuth.instance.signInWithCredential(dogrulamaKimligi);
    User? kullanici = kullaniciKimligi.user;
    if (kullanici != null) {
      Query<Map<String, dynamic>> sorgu = FirebaseFirestore.instance
          .collection('kullanicilar')
          .where("id", isEqualTo: kullanici.uid);
      QuerySnapshot<Map<String, dynamic>> snapshot = await sorgu.get();

      if (snapshot.docs.isEmpty) {
          createUser(
          id: kullanici.uid,
          name: kullanici.displayName.toString(),
          email: kullanici.email.toString(),
        );
        if(_kullaniciKaydet==true){
          Navigator.pushNamed(context, '/anasayfa');
        }
      }
      else{
        Navigator.pushNamed(context, '/anasayfa');
      }
      
    }
  }
}
Future createUser({
  required String id,
  required String name,
  required String email,
}) async {
  final docUser = FirebaseFirestore.instance.collection('kullanicilar').doc(id);
    final kullanici = KullaniciFirebase(
      id: id,
      name: name,
      email: email,
    );
    await docUser.set(kullanici.toJson());
    _kullaniciKaydet=true;
  }
  
class KullaniciFirebase{

  
  final String id;
  final String name;
  final String email;

  KullaniciFirebase({
    required this.id,
    required this.name,
    required this.email,

  });

  Map<String,dynamic> toJson() =>{ //Mape Dönüştür
    'id':id,
    'name':name,
    'email':email,
  };

  static KullaniciFirebase fromJson(Map<String,dynamic> json)=> //Mapten oluştur
  KullaniciFirebase(
    id:json['id'],
    name: json['name'],
    email: json['email'],
  );
}

