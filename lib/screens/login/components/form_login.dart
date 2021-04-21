import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors_style.dart';
import 'package:food_delivery_app/screens/login/components/custom_textfield.dart';

class FormLogin extends StatefulWidget {
  @required
  final int index;
  FormLogin({this.index});

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.44,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.index == 1
                    ? Column(
                        children: [
                          CustomTextField(
                            lable: 'Your name',
                            nameController: userNameController,
                          ),
                          CustomTextField(
                            lable: 'Your phone',
                            nameController: phoneController,
                            keyboardType: TextInputType.phone,
                          ),
                        ],
                      )
                    : SizedBox(),
                CustomTextField(
                  lable: 'Email address',
                  nameController: emailController,
                ),
                SizedBox(height: 12.0),
                CustomTextField(
                  lable: 'Password',
                  isPassword: true,
                  nameController: passwordController,
                ),
                SizedBox(height: 32.0),
                widget.index == 1
                    ? SizedBox()
                    : Text(
                        'Forgot passcode?',
                        style: TextStyle(
                          color: BrandColors.colorPrimary,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )
              ],
            ),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(widget.index == 0 ? 'Login' : 'Sign-up'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
