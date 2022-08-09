import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../../bloc/auth/auth_bloc.dart';

class GoogleSigninButton extends StatelessWidget {
  const GoogleSigninButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RoundedLoadingButtonController controller =
        RoundedLoadingButtonController();
    return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: RoundedLoadingButton(
            valueColor: orange,
            color: white,
            controller: controller,
            onPressed: () async {
              BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signin());
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/google-color-icon.png",
                    height: 35.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sign in with Google',
                      style: TextStyle(
                        letterSpacing: 0.75,
                        fontSize: 20,
                        color: Color.fromARGB(198, 0, 0, 0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
