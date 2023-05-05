// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:pta_mobile_app/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/student.png",
                      scale: 0.6,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: const BoxDecoration(
                  color: Color(0xFF674AEF),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Learning is Everything",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600, 
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal : 40),
                      child: Text(
                        "Learning with pleasure with eSkul technology wherever you are.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                    Material(
                      color: const Color(0xFF674AEF),
                      borderRadius:  BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, 
                            MaterialPageRoute(
                              builder: (context) => HomePage(), 
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 80,
                          ),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),

                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
