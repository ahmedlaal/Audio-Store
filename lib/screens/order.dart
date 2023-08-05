import 'package:audiostore/reusable classes or widgets/cart_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 28,
                  )),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz, size: 28),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView.builder(
                // shrinkWrap: true,
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: size.width * 0.8,
                    height: size.height * 0.1,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.9,
                          color: const Color.fromARGB(255, 211, 230, 243)),
                      boxShadow: [],
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Text(
                          cart[index]['name'],
                          style: GoogleFonts.dmSans(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          cart[index]['price'].toString(),
                          style: GoogleFonts.dmSans(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: size.width * 0.8,
            height: size.height * 0.1,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            decoration: BoxDecoration(
              border: Border.all(
                  width: 0.9, color: const Color.fromARGB(255, 211, 230, 243)),
              boxShadow: [
                // BoxShadow(
                //   color: Colors.grey.withOpacity(0.5),
                //   spreadRadius: 2,
                //   blurRadius: 5,
                //   offset: Offset(
                //       0, 0.01), // changes the position of the shadow
                // ),
              ],
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Shipping',
                      style: GoogleFonts.dmSans(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      shipp[0].u_delivery.toString(),
                      style: GoogleFonts.dmSans(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_downward),
            ]),
          ),
          Container(
            height: size.height * 0.3,
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(width: 0.4))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "1100",
                        style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: TextButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(16),
                            textStyle: const TextStyle(),
                            backgroundColor: const Color(0xffC6AB59),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Row(
                          children: [
                            Text(
                              'CHECKOUT',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward)
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
