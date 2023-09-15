import 'package:eren_lab_test_form/sayfalar/test_sayfalari/gerilim_donusum_orani_sayfasi.dart';
import 'package:eren_lab_test_form/sayfalar/signin_sayfasi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class KarsilamaSayfasi extends StatefulWidget {
  const KarsilamaSayfasi({Key? key}) : super(key: key);

  @override
  State<KarsilamaSayfasi> createState() => _KarsilamaSayfasiState();
}

class _KarsilamaSayfasiState extends State<KarsilamaSayfasi> {
  bool? girisYapidiMi;

  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if(user==null){
        girisYapidiMi = false;
      }else{
        girisYapidiMi = true;
      }
    });
    setState(() {
      girisYapidiMi;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return girisYapidiMi == true ? GerilimDonusumOrani(title: "başlık"): SigninSayfasi();
  }
}
