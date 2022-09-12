import 'package:flutter/material.dart';
import 'package:mini_feed_project/components/auth/base_form.dart';
import 'package:mini_feed_project/components/auth/custom_fields.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key, required this.onBottomTextButtonPressed})
      : super(key: key);

  final void Function() onBottomTextButtonPressed;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? _username;
  String? _password;
  DateTime? _birthDate;

  @override
  Widget build(BuildContext context) {
    return AuthForm(
        title: "Sign Up",
        bottomText: "Already have an account? Log In!",
        onSubmitButtonPressed: () {
          print("SignUp: $_username | $_password | $_birthDate");
        },
        formFields: [
          WrappedTitle(
              title: "Username",
              child: UsernameFormField(
                onValidation: (username) => _username = username,
              )),
          WrappedTitle(
              title: "Password",
              child: PasswordFormField(
                onValidation: (password) => _password = password,
              )),
          WrappedTitle(
              title: "Birthday",
              child: DateFormField(
                onValidation: (birthDate) => _birthDate = birthDate,
              ))
        ],
        onBottomTextButtonPressed: widget.onBottomTextButtonPressed);
  }
}
