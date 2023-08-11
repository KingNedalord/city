import 'package:city/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registration_Form extends StatefulWidget {
  const Registration_Form({super.key});

  @override
  State<Registration_Form> createState() => _Registration_FormState();
}

class _Registration_FormState extends State<Registration_Form> {
  TextEditingController login_cont = TextEditingController();
  TextEditingController password_cont = TextEditingController();
  String real_login = "admin";
  String real_password = "admin";

  write() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogged", true);
  }

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
              onPressed: () {
                if (login_cont == real_login &&
                    password_cont == real_password) {
                  write();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyApp()));
                }
              },
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
