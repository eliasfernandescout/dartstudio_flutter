import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10.0, left: 40.0, right: 40.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage("assets/dartninja.png"),
                    fit: BoxFit.fitHeight,
                  )),
              child: Container(
                height: 56.0,
                width: 56.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1.0],
                      colors: [
                        Color(0xFFfc4a1a),
                        Color(0xFFf7b733),
                      ],
                    ),
                    border: Border.all(
                      width: 4.0,
                      color: const Color(0xFFFFFFFF),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(96))),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon(
                      Icons.assignment,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              autofocus: true,
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
              style: TextStyle(
                fontSize: 20.0,
              ),
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
                        "Cadastrar",
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
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 40.0,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            )


          ],
        ),
      ),
    );
  }
}
