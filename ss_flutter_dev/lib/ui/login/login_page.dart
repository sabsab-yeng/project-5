import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/home/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //Initially password is obscure show password
  bool _obScureText = true;

  String password;

  //handle the password show status
  void _handlePassword(){
    setState(() {
      _obScureText = !_obScureText;
      //! ບໍເທົ່າກັບ
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/user.png",
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: _obScureText,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(
                    _obScureText ? Icons.visibility : Icons.visibility_off,),
                  onPressed: _handlePassword,
                ),
                
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
