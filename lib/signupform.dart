import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('First Name', false),
        buildInputForm('Last Name', false),
        buildInputForm('Email or Phone Number', false),
        buildInputForm('Password', true),
        buildInputForm('Confirm Password', true),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? isObsecure : false,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          suffixIcon: pass
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: Icon(
                    isObsecure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blue,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
