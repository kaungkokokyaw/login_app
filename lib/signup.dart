import 'package:flutter/material.dart';
import 'package:login_flutter_app_test/LoginView.dart';
import 'package:login_flutter_app_test/SignUpButton.dart';
import 'package:login_flutter_app_test/checkbox.dart';
import 'package:login_flutter_app_test/signupform.dart';
import 'package:login_flutter_app_test/sociallogin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Create Account?",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Already Member?",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return LoginView();
                        }));
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SignUpForm(),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckBox('Agree to terms and conditions.'),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckBox('I have at least 18 years old.'),
                ),
                SizedBox(
                  height: 10,
                ),
                SignUpButton(),
                SizedBox(
                  height: 10,
                ),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
