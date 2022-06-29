import 'package:algoriza/views/register_screen.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/onBoarding.png',
                ),
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0,),
              Text('Sign In',style: TextStyle(fontSize: 30.0,),),
              SizedBox(height: 20.0,),
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
              SizedBox(height: 20.0,),
              Container(
                width: double.infinity,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text('Sign In'))),
              SizedBox(height: 20.0,),
              Center(child: Text('Or')),
              SizedBox(height: 20.0,),
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                ),
                child: SignInButton(
                  shape: OutlineInputBorder(),
                  Buttons.Google,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Text('dosn\'t has any account? '),
                  SizedBox(width: 20.0,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                  }, child: Text('Register')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
