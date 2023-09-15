import 'package:flutter/material.dart';

import '../sabitler/snack_bar_gosterimleri/snack_bar_gosterimleri.dart';

class SigninSayfasi extends StatefulWidget {
  const SigninSayfasi({Key? key}) : super(key: key);

  @override
  State<SigninSayfasi> createState() => _SigninSayfasiState();
}

class _SigninSayfasiState extends State<SigninSayfasi> {
  final _globalFormKey = GlobalKey<FormState>();
  final textFormFieldEmail = TextFormField();
  final textFormFieldPassword = TextFormField();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalFormKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Lütfen bir değer giriniz";
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          Expanded(child: ElevatedButton(onPressed: (){
            if(_globalFormKey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(snackBar3);
            }
          }, child: Text("GİRİŞ YAP"),),),
        ],
      ),
    );
  }
}
