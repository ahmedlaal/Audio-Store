import 'package:audiostore/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 20),
        child: ListView(
          padding: const EdgeInsets.all(10),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 34,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Perth, Western Australia",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Getting Started",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Create an account to continue!"),
            const SizedBox(
              height: 20,
            ),
            const Text("Email"),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "abcexmaple123@gmail.com",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  suffixIcon: Icon(Icons.email)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Username"),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "abcexample",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  suffixIcon: Icon(Icons.person_4_outlined)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Password"),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: ".......",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  prefixIcon: Icon(Icons.remove_red_eye),
                  suffixIcon: Icon(Icons.lock_outline_rounded)),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: size.width * 0.8,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(const MyHome());
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      textStyle: const TextStyle(),
                      backgroundColor: const Color(0xffC6AB59),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Row(
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
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Get.to(const MyHome());
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                const SizedBox(height: 25),
              ],
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.facebook),
                label: const Text(
                  "Sign Up with Facebook",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ))
          ],
        ),
      ),
    );
  }
}
