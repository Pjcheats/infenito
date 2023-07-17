import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infenito/main_screen.dart';
import 'package:infenito/widgets/gradient_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Background Image
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background-image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Blurred Container at Center
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 150,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade600)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset("assets/logo.png"),
                            Text(
                              'Swift',
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 54,
                              ),
                            ),
                            Text(
                              'Café',
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                height: 0.6,
                                fontSize: 34,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    blurRadius: 8, color: const Color.fromARGB(255, 90, 90, 90))
                              ]),
                              child: Text(
                                '"Latte but never late"',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            const TextField(
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              cursorColor: Colors.brown,
                              decoration: InputDecoration(
                                hintText: "    User Name",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              cursorColor: Colors.brown,
                              decoration: InputDecoration(
                                hintText: "    Password",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            const Spacer(),
                            GradientTextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>const  MainScreen(),));
                              },
                              width: MediaQuery.of(context).size.width * 0.6,
                              colors: const [
                                Color(0xff4D2B1A),
                                Color(0xffA7745A),
                              ],
                              shadows: true,
                              radius: 100,
                              child:  Text(
                                "Login",
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            GradientTextButton(
                              onPressed: () {},
                              width: MediaQuery.of(context).size.width * 0.6,
                              borderColor: Colors.white,
                              radius: 100,
                              child: Text(
                                "Sign up",
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Privacy Policy",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            // CustomGradientSwitch(color1: Color(0xff198133), color2: Color(0xff37AD54)),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}

