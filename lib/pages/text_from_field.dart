import 'package:flutter/material.dart';

class TextFromField extends StatefulWidget {
  TextFromField({Key? key}) : super(key: key);

  @override
  _TextFromFieldState createState() => _TextFromFieldState();
}

class _TextFromFieldState extends State<TextFromField> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(Icons.margin),

        ],
        title: const Text("Text Form Field"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (input) =>
                    !input!.contains("@") ? "Please enter a valid email" : null,
                onSaved: (input) => _email = input!,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
                validator: (input) =>
                    input!.length < 6 ? "Must be at least 6 characters" : null,
                onSaved: (input) => _password = input!,
              ),
            ),
            MaterialButton(
              onPressed: _doSignIn,
              child: Text("Sign In"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
