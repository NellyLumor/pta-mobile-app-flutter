import 'package:flutter/material.dart';
import 'package:pta_mobile_app/screens/home_screen.dart';
import 'package:pta_mobile_app/screens/staff_screen.dart';
import 'package:pta_mobile_app/screens/admin_sign_up.dart';
import 'package:pta_mobile_app/screens/admin_account_screen.dart';

class AdministratorPage extends StatefulWidget {
  const AdministratorPage({super.key});

  @override
  State<AdministratorPage> createState() => _AdministratorPageState();
}

class _AdministratorPageState extends State<AdministratorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF674AEF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "eSkul Client",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Here...",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height, // "/ 0.45"
                        decoration: const BoxDecoration(
                          color: Color(0xFF674AEF),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
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
                              "Administrator",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                wordSpacing: 2,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Text(
                                "Sign into your account",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Email Address"),
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Password"),
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            Material(//here>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    color: const Color(0xFF674AEF),
                                   // borderRadius: BorderRadius.circular(10),
                                    child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const AdminAccount(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 17,
                                        horizontal: 80,
                                      ),
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ),
                                  Column(//want a column for the login and the sign up
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 20, top: 40),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const AdminSignUpPage()),
                                          );
                                        },
                                        child: const Text('Sign Up',
                                          style: TextStyle(
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xFF674AEF),
                                          ),
                                        ),
                                      ),
                                ),
                              ],
                            ),
                                ],
                              )
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100, right: 20, top: 40),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => HomePage()),
                                          );
                                        },
                                        child: const Text('Parents',
                                          style: TextStyle(
                                            fontSize: 15,
                                            letterSpacing: 1,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xFF674AEF),
                                          ),
                                        ),
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 20, top: 40),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const StaffPage()),
                                          );
                                        },
                                        child: const Text('Staff',
                                          style: TextStyle(
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xFF674AEF),
                                          ),
                                        ),
                                      ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: const Color(0xFF674AEF),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 18,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: "Direct Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}