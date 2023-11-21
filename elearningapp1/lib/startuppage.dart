
import 'package:elearningapp1/pages/login/login.dart';
import 'package:flutter/material.dart';

import 'common/values/colors.dart';


class StartUp extends StatefulWidget {
  const StartUp({super.key});

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/startbg.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: AppColors.buttonBg,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        color: AppColors.fieldbg,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.secondbuttonColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
