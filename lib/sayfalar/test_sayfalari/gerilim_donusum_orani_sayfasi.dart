import 'package:flutter/material.dart';
import '../../sabitler/snack_bar_gosterimleri/snack_bar_gosterimleri.dart';
import '../../widgetlar/gerilim_orani_girisi.dart';

class GerilimDonusumOrani extends StatefulWidget {String title;
   GerilimDonusumOrani({Key? key, required this.title}) : super(key: key);

  @override
  State<GerilimDonusumOrani> createState() => _GerilimDonusumOraniState();
}

class _GerilimDonusumOraniState extends State<GerilimDonusumOrani> {
  final _test1FormKey = GlobalKey<FormState>();
  int kademeSayisi= 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Kullanıcı Adı"),
              ],
            ),
          ),
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
          child: Column(
            children: [
              Text(widget.title),
              const Text(
                "1600 kVA - 1222",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        ///Test1 Formu
        child: Form(
          key: _test1FormKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "1- Gerilim Çevirme Oranının Ölçülmesi ve Faz Farkının Kontrolü",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("KADEME"),
                    Text("U-V/u-n"),
                    Text("V-W/v-n"),
                    Text("W-U/w-n"),
                  ],
                ),

                ///Veri giriş alanı///
                ///1. kademe
                const GerilimOraniGirisi(
                  kademeNo: "1",
                  paddingDegeri: 5,
                ),

                ///2. kademe
                const GerilimOraniGirisi(
                  kademeNo: "2",
                  paddingDegeri: 5,
                ),

                ///3. kademe
                const GerilimOraniGirisi(
                  kademeNo: "3",
                  paddingDegeri: 5,
                ),

                ///4. kademe
                const GerilimOraniGirisi(
                  kademeNo: "4",
                  paddingDegeri: 5,
                ),

                ///5. kademe
                const GerilimOraniGirisi(
                  kademeNo: "5",
                  paddingDegeri: 5,
                ),

                ///6. kademe
                kademeSayisi > 5
                    ? const GerilimOraniGirisi(
                  kademeNo: "6",
                  paddingDegeri: 5,
                )
                    : const SizedBox(
                  height: 1,
                ),

                ///7. kademe
                kademeSayisi > 6
                    ? const GerilimOraniGirisi(
                  kademeNo: "7",
                  paddingDegeri: 5,
                )
                    : const SizedBox(
                  height: 1,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_test1FormKey.currentState!.validate()) {
                            // If the form is valid, display a Snackbar.
                            ScaffoldMessenger.of(context).showSnackBar(snackBar1);
                            ScaffoldMessenger.of(context).showSnackBar(snackBar2);
                          }
                        },
                        child: const Text('GÖNDER'),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}