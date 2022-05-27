import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/screens/home.dart';

class KayitFormu extends StatefulWidget {
  const KayitFormu({Key? key}) : super(key: key);

  @override
  State<KayitFormu> createState() => _KayitFormuState();
}

String? kullaniciAdi, email, parola;
bool kayitDurumu = false;

class _KayitFormuState extends State<KayitFormu> {
  var _dogrulamaAnahtari = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _dogrulamaAnahtari,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    height: 150,
                    child: Text("MyDictionary", style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),),
                  ),
                ),
                if (!kayitDurumu)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (alinanAd) {
                        kullaniciAdi = alinanAd;
                      },
                      validator: (alinanAd) {
                        return alinanAd!.isEmpty
                            ? "Kullanici Adi bos birakilamaz!"
                            : null;
                      },
                      decoration: InputDecoration(
                        labelText: "Kullanici Adi : ",
                        border: OutlineInputBorder(), 
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (alinanEmail) {
                      email = alinanEmail;
                    },
                    validator: (alinanEmail) {
                      return alinanEmail!.contains("@")
                          ? null
                          : "Gecersiz email girdiniz!";
                    },
                    decoration: InputDecoration(
                      labelText: "Email : ",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (alinanParola) {
                      parola = alinanParola;
                    },
                    validator: (alinanParola) {
                      return alinanParola!.length >= 6
                          ? null
                          : "Parolanız en az 6 karakter olmalıdır! ";
                    },
                    decoration: InputDecoration(
                      labelText: "Parola : ",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      child: ElevatedButton(
                        child: kayitDurumu
                            ? Text("Giris Yap", style: TextStyle(fontSize: 24, color: Colors.black))
                            : Text("Kayit Ol", style: TextStyle(fontSize: 24, color: Colors.black)),
                        onPressed: () {
                          kayitEkle();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyStatelessWidget()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shadowColor: Colors.black,
                        ),
                      ),
                    )),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: ()  {
                      setState(() {
                        kayitDurumu = !kayitDurumu; // Durum degistiriyoruz.
                      });
                    },
                    child: kayitDurumu
                        ? Text("Hesabim Yok", style: TextStyle(color: Colors.white),)
                        : Text("Zaten Hesabım Var",style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void kayitEkle() {
    if (_dogrulamaAnahtari.currentState!.validate()) {
      FormuTestEt(kullaniciAdi!, email!, parola!);
    }
  }

  void FormuTestEt(String kullaniciAdi, String email, String parola) async {
    final yetki = FirebaseAuth.instance;
    AuthCredential? yetkiSonucu;

    if (kayitDurumu) {
      yetkiSonucu = (await yetki.signInWithEmailAndPassword(
          email: email,
          password: parola)) as AuthCredential; // Kullanici varsa giris yap.
    } else {
      yetkiSonucu = (await yetki.createUserWithEmailAndPassword(
              email: email, password: parola))
          as AuthCredential; // Kullanici kayitli degilse kayit yap.
    }

    String uidTutucu = yetkiSonucu.toString();
    await FirebaseFirestore.instance
        .collection("Kullanicilar")
        .doc(uidTutucu)
        .set({
      "KullaniciAdi": kullaniciAdi,
      "email": email,
    });
  }
}
