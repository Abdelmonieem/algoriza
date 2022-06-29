import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/onBoarding.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  decoration: BoxDecoration(),
                  child: CircleAvatar(
                    backgroundColor: Colors.black87.withOpacity(0.7),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'welcom to Fashion Daily',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Help',
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.help,
                                color: Colors.blue,
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Email'),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Eg.example@email.com',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Phone'),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Eg.0100845555',
                      border: OutlineInputBorder(),
                      prefixIcon: CountryPickerDropdown(
                        isDense: false,
                        isExpanded: false,
                        onValuePicked: (value) {
                          print(value);
                        },
                        initialValue: 'EG',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Password'),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: 'Eg.example@email.com',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Sign In'))),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(child: Text('Or')),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(),
                    child: SignInButton(
                      shape: OutlineInputBorder(),
                      Buttons.Google,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('Has An account ?'),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Sign In Here'))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
