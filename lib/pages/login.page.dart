import 'package:flutter/material.dart';
import 'package:dartstudio_flutter/pages/reset.passwordpage.dart';
import 'package:dartstudio_flutter/pages/signup.page.dart';
import 'package:dartstudio_flutter/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 45.0, left: 40.0, right: 40.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 130.0,
              height: 130.0,
              child: Image.asset("assets/dartstudio.png"),

            ),
            SizedBox(
              height: 0.0,
            ),
            Container(
              child: Text("Dart Studio", style: TextStyle(fontSize: 35,),
                textAlign: TextAlign.center,),
            ),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            Container(
              height: 40.0,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 50.0,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.2, 1.0],
                    colors: [
                      Color(0xFF000000),
                      Color(0XFFF434343),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50.0,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login com Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/fb-icon.png"),
                          height: 28.0,
                          width: 28.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                  child: Text(
                    "Cadastre-se", style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ),
                    );
                  }

              ),
            )
          ],
        ),
      ),
    );
  }
}
