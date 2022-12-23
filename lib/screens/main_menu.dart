import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcqtest/screens/quizz_screen.dart';
import 'package:mcqtest/ui/shared/color.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 48.0,
          horizontal: 18.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(58.0),
                child: Text(
                  "Kaun Banega Crorepati",
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 171, 5),
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 270,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: "Your Name",
                  labelText: "Enter your Name",
                  labelStyle: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 237, 231, 231)),
                  border: InputBorder.none,
                  fillColor: Color.fromARGB(70, 170, 106, 223),
                  filled: true),
              obscureText: false,
              maxLength: 30,
            ),
            Expanded(
              child: Center(
                child: RawMaterialButton(
                  onPressed: () {
                    //Navigating the the Quizz Screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizzScreen(),
                        ));
                  },
                  shape: const StadiumBorder(),
                  fillColor: AppColor.secondaryColor,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      "Lets begin",
                      style: TextStyle(
                        color: Color.fromARGB(255, 231, 197, 5),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                "All Copyrights reserved | Mitt Arv",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 238, 176, 5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
