import 'package:flutter/material.dart';

class CurrencyConverterMaterial extends StatelessWidget {
  const CurrencyConverterMaterial({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 37, 32, 32),
        body: Center(
          child: ColoredBox(
            color: const Color.fromARGB(255, 216, 64, 64),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'Ganja ganja....',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 252, 251, 251)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  style: const TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      hintText: "Enter the dollar",
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 91, 88, 88),
                          fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(Icons.monetization_on),
                      prefixIconColor: const Color.fromARGB(255, 68, 64, 64),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 6),
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(12),
                            left: Radius.circular(12)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 206, 54, 244),
                          width: 5,
                          strokeAlign: BorderSide.strokeAlignInside,
                        ),
                        borderRadius:
                            // BorderRadius.only(topRight: Radius.circular(60)),
                            // BorderRadius.only(topLeft: Radius.circular(60)),
                            // BorderRadius.horizontal(left: Radius.circular(60)),
                            BorderRadius.circular(60),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  onPressed: () {
                    debugPrint("Button pressed on level 1");
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
