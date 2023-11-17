import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "Or Continue with",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              // Facebook
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    "assets/images/facebook.svg",
                    height: 25,
                  ),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              // Google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    "assets/images/google.svg",
                    height: 25,
                  ),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              // Twitter
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    "assets/images/twitter.svg",
                    height: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
