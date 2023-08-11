import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration_Form extends StatefulWidget {
  const Registration_Form({super.key});

  @override
  State<Registration_Form> createState() => _Registration_FormState();
}

class _Registration_FormState extends State<Registration_Form> {
  TextEditingController login_cont = TextEditingController();
  TextEditingController password_cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            controller: login_cont,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            controller: password_cont,
          ),
          MaterialButton(
              onPressed: () {},
              color: CupertinoColors.systemPink,
              child: Text(
                "Continue",
                style: TextStyle(fontFamily: "EB Garamond"),
              ))
        ],
      ),
    );
  }
}
