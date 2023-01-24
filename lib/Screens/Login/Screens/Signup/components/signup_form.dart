import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /*   TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: kPrimaryColor,
                onSaved: (email) {},
                decoration: InputDecoration(
                  hintText: "Your email",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.person),
                  ),
                ),
              ), */
          const signTextField(
              hintText: "Username",
              icon: Icon(Icons.person),
              type: TextInputType.name),
          const signTextField(
            hintText: "Email",
            icon: Icon(Icons.email_outlined),
            type: TextInputType.emailAddress,
          ),
          const signTextField(
              hintText: "Phone",
              icon: Icon(Icons.numbers_outlined),
              type: TextInputType.phone),
          const signTextField(
              hintText: "Password",
              icon: Icon(Icons.block),
              type: TextInputType.visiblePassword),
          const signTextField(
              hintText: "Password again",
              icon: Icon(Icons.block),
              type: TextInputType.visiblePassword),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {},
            child: Text("Sign Up".toUpperCase()),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class signTextField extends StatelessWidget {
  const signTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.type,
  }) : super(key: key);
  final String hintText;
  final Icon icon;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: TextFormField(
        keyboardType: type,
        //onSaved: (savedname),
        textInputAction: TextInputAction.done,
        //obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: icon,
          ),
        ),
      ),
    );
  }
}
