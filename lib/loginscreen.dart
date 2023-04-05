import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'login',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: (InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: ('Enter your Email'),
                labelText: ('Enter your Email'),
                border: OutlineInputBorder(),
              )),
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: (InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(Icons.lock),
                hintText: ('Enter your password'),
                labelText: ('Enter your password'),
                border: OutlineInputBorder(),
              )),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.blue,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  print(email.text);
                  print(password.text);
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('don\'t have account'),
                TextButton(
                  onPressed: () {},
                  child: Text('Creat account'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
