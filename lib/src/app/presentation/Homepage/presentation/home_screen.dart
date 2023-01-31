import 'package:flutter/material.dart';
import 'package:shary/src/core/extension/color_extension.dart';
import 'package:shary/src/core/themes/appcolors.dart';
import 'package:shary/src/core/themes/appstyles.dart';

import 'main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // Good Morning Text

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Good Morning",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.goodMorning),
              ),
              SizedBox(height: 13),
              Text(
                "Shree Krishna Shrestha ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.goodMorning),
              ),
            ],
          ),
        ),

        // Continue Button
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width - 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF7472E0)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) {
                            return const MainScreen();
                          })));
                        },
                        child: Text("Continue", style: AppStyles.text18Px.white)))),
            const SizedBox(height: 60),
          ],
        ),
      ]),
    );
  }
}
