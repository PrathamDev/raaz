import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';

class SignUpTab extends StatefulWidget {
  const SignUpTab({Key? key}) : super(key: key);

  @override
  State<SignUpTab> createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: Text(
                    "Create an account",
                    style: GoogleFonts.poppins(
                      color: AppColors.brown,
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: 55,
              child: TextField(
                style: GoogleFonts.poppins(),
                decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: GoogleFonts.poppins(),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 15,
                    bottom: 15,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                      width: 0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: GoogleFonts.poppins(),
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: GoogleFonts.poppins(),
                contentPadding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                  bottom: 15,
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   CupertinoPageRoute(
                //     builder: (context) {
                //       return SignUpTab();
                //     },
                //   ),
                // );
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
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  overlayColor: MaterialStateProperty.all(AppColors.orange)),
              child: Text(
                "Create an Account",
                style: GoogleFonts.poppins(
                  color: AppColors.brown,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Already have an account?",
              style: GoogleFonts.poppins(
                color: AppColors.brown,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
