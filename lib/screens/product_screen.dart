import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsDisplay extends StatelessWidget {
  const ProductsDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 230, 243),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28,
                        )),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag, size: 28),
                    ),
                  ],
                ),
                SizedBox(height: 400),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: size.width * 0.6,
                  height: size.height * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Speaker"),
                      SizedBox(height: 10),
                      Text(
                        "Beosound\nBalance",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 27,
                          color: Color(0xff171717),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "From",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xff171717),
                        ),
                      ),
                      Text(
                        "16,00",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Color(0xff171717),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Available Colors",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xff171717),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      "Wireless, smart home speaker",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff171717),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff171717),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(16),
                              textStyle: TextStyle(),
                              backgroundColor: Color(0xffC6AB59),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward)
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 75,
              // right: 1,
              bottom: 220,
              child: Container(
                height: size.height * 0.42,
                child: Image.asset(
                  'assets/inputimage.png',
                ), // Replace with your image path
              ),
            ),
          ],
        ),
      ),
    );
  }
}
