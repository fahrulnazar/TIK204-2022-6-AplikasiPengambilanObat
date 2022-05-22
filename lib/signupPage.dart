import 'package:flutter/material.dart';

void main() {
  runApp(SignupPage());
}

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
<<<<<<< HEAD
        backgroundColor: Colors.grey.shade200,
=======
        backgroundColor: Colors.white,
>>>>>>> 2004111010084
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Create a New Account',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3347c4)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
<<<<<<< HEAD
                    'Create an account so you can manage your personal health',
=======
                    'Create an account so you can manage your personal finances',
>>>>>>> 2004111010084
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    decoration: BoxDecoration(
<<<<<<< HEAD
                        color: Colors.white,
=======
                        color: Color(0xfff5f6f8),
>>>>>>> 2004111010084
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Username'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
<<<<<<< HEAD
                        color: Colors.white,
=======
                        color: Color(0xfff5f6f8),
>>>>>>> 2004111010084
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Email'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
<<<<<<< HEAD
                        color: Colors.white,
=======
                        color: Color(0xfff5f6f8),
>>>>>>> 2004111010084
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Password'),
                    ),
                  ),
                  CheckboxListTile(
                      title: Text(
                          'I agree to the Terms of Service and Privacy Policy'),
                      value: false,
                      onChanged: (value) {}),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff3347c4))),
                        onPressed: () {},
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I already have an account!',
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: Color(0xff5766ce),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
