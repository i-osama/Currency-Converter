import 'package:flutter/material.dart';

class CurrencyConverterMaterial extends StatelessWidget {
  CurrencyConverterMaterial({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 37, 32, 32),
        body: Center(
          child: ColoredBox(
            color: Color.fromARGB(255, 216, 64, 64),
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
              TextField(
                style: const TextStyle(fontSize: 25),
                decoration: InputDecoration(
                    hintText: "Enter the dollar",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 91, 88, 88),
                        fontWeight: FontWeight.normal),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Color.fromARGB(255, 68, 64, 64),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey, width: 6),
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
            ]),
          ),
        ),
      ),
    );
  }
}
