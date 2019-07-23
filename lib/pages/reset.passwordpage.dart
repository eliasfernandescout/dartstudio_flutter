import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 120.0,
              height: 120.0,
              child: Image.asset("assets/cadeado-segundo.png"),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Esqueceu sua senha?",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Por favor, informe o E-mail associado a sua conta que enviaremos um link com instruções.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(fontSize: 20.0, color: Colors.deepOrange),
            ),
            SizedBox(
              height: 20.0,
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
                        "Enviar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
