import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';
import 'package:raaz/pages/auth_tabs/sign_in_tab.dart';
import 'package:raaz/pages/auth_tabs/sign_up_tab.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/logo.png',
                width: MediaQuery.of(context).size.width * 0.9,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Hey! Welcome",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height * 0.03,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Text(
              "Tell me something to remember and I will never forget it. By the way, they call me a great secret keeper.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Colors.grey.shade700,
                fontSize: MediaQuery.of(context).size.height * 0.02,
              ),
            ),
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return SignUpTab();
                  },
                ),
              );
            },
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width * 0.9, 50),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.orange,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                overlayColor: MaterialStateProperty.all(AppColors.orange)),
            child: Text(
              "Get Started",
              style: GoogleFonts.poppins(
                color: AppColors.brown,
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return SignInTab();
                  },
                ),
              );
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width * 0.9, 50),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                    color: AppColors.brown,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            child: Text(
              "I already have a account",
              style: GoogleFonts.poppins(
                color: AppColors.brown,
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
