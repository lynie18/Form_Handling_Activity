import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage());
  }
}
class FirstPage extends StatelessWidget {
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Login"),
            backgroundColor: Colors.cyan,
            leading: Icon(Icons.code)
        ),
        body: Form(
            child: ListView(
                padding: EdgeInsets.all(20),
                children:[
                  TextFormField(
                    controller: emailAddressController,
                    decoration: InputDecoration(
                      labelText: "Email Address",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    controller: PasswordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        print(emailAddressController.text);
                        print(PasswordController.text);
                      },
                      child:
                      const Text ("Submit"))
                ]
            )
        )
    );
  }
}
