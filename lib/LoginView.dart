import 'package:flutter/material.dart';
import 'package:login_flutter_app_test/button.dart';
import 'package:login_flutter_app_test/signup.dart';
import 'package:login_flutter_app_test/sociallogin.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.network(
                      "https://cdni.iconscout.com/illustration/premium/thumb/woman-login-into-banking-app-5194430-4341049.png"),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Login your Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Email Input
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email or Username",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(
                  height: 10,
                ),

                // Password Input
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      tooltip:
                          isPasswordVisible ? 'Hide Password' : 'Show Password',
                    ),
                  ),
                  obscureText: !isPasswordVisible,
                ),

                SizedBox(height: 10),
                Button(),
                SizedBox(height: 25),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create a New Account?",
            ),
            SizedBox(
              width: 3,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SignUp();
                }));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
