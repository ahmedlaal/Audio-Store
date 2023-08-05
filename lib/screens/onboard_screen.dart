import 'package:audiostore/reusable%20classes%20or%20widgets/onboarding_data.dart';
import 'package:audiostore/screens/home_screen.dart';
import 'package:audiostore/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("STS Store"),
      // ),
      body: SafeArea(
        child: PageView.builder(
            itemCount: content.length,
            itemBuilder: (_, i) {
              return Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Get.to(const MyHome());
                        },
                        child: const Text(
                          "Skip",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xffC6AB59)),
                        )),
                  ),
                  SizedBox(
                    height: size.height * 0.6,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                            top: 10,
                            right: 0,
                            child: Image.asset(
                              'assets/yelloval.png',
                              width: 140,
                            )),
                        Center(child: Image.asset('assets/ovalimg1.png')),
                        Positioned(
                            top: 250, child: Image.asset('assets/oval.png'))
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 60,
                  // ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Text(
                    content[i].title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      content[i].des,
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  Container(
                    width: size.width * 0.8,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(const SignIn());
                        },
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
              );
            }),
      ),
    );
  }
}
