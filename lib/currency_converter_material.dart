import 'package:flutter/material.dart';

class CurrencyConverterMaterial extends StatefulWidget {
  const CurrencyConverterMaterial({super.key});

  @override
  State<CurrencyConverterMaterial> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterial> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Currency Converter",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 216, 64, 64),
        ),
        backgroundColor: const Color.fromARGB(255, 37, 32, 32),
        body: Center(
          child: ColoredBox(
            color: const Color.fromARGB(255, 216, 64, 64),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "TK ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 252, 251, 251)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: textEditingController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  style: const TextStyle(fontSize: 25),
                  decoration: const InputDecoration(
                      hintText: "Dollar to Taka",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 91, 88, 88),
                          fontWeight: FontWeight.normal),
                      prefixIcon: Icon(Icons.monetization_on),
                      prefixIconColor: Color.fromARGB(255, 68, 64, 64),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 6),
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(12),
                            left: Radius.circular(12)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 234, 146, 13),
                          width: 5,
                          // strokeAlign: BorderSide.strokeAlignInside,
                        ),
                        borderRadius:
                            // BorderRadius.only(topRight: Radius.circular(60)),
                            // BorderRadius.only(topLeft: Radius.circular(60)),
                            // BorderRadius.horizontal(left: Radius.circular(60)),
                            // BorderRadius.circular(60),
                            BorderRadius.horizontal(
                                right: Radius.circular(12),
                                left: Radius.circular(12)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  onPressed: () {
                    // print(textEditingController.text);
                    setState(() {
                      result =
                          double.parse(textEditingController.text) * 109.82;
                    });

                    // return result;
                  },
                  // style: const ButtonStyle(
                  //     elevation: MaterialStatePropertyAll(15),
                  //     backgroundColor: MaterialStatePropertyAll(Colors.black),
                  //     foregroundColor: MaterialStatePropertyAll(
                  //         Color.fromARGB(255, 247, 245, 245)),
                  //     minimumSize:
                  //         MaterialStatePropertyAll(Size(double.infinity, 50)),
                  //     shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.horizontal(
                  //           right: Radius.circular(12),
                  //           left: Radius.circular(12)),
                  //     ))),
                  style: TextButton.styleFrom(
                      elevation: 15,
                      backgroundColor: Colors.black,
                      foregroundColor: const Color.fromARGB(255, 247, 245, 245),
                      minimumSize: const Size(double.infinity, 50),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(12),
                        left: Radius.circular(12),
                      ))),
                  child: const Text("Check",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterial_P extends StatelessWidget {
//   const CurrencyConverterMaterial_P({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
