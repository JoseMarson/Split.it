import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;
  @override
  void initState() {
    controller = LoginController(
        service: LoginServiceImpl(),
        onUpdate: () {
          if (controller.state is LoginStateSucess) {
            final user = (controller.state as LoginStateSucess).user;
            Navigator.pushReplacementNamed(context, "/home", arguments: user);
          } else {
            setState(() {});
          }
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.colors.backgroundPrimary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Container(
                    width: 256,
                    child: Text(
                      "Divida suas contas com seus amigos",
                      style: GoogleFonts.montserrat(
                          color: AppTheme.colors.title,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: ListTile(
                    leading: Image.asset("assets/images/emoji.png"),
                    title: Container(
                        width: 236,
                        child: Text(
                          "Faça seu login com uma das contas abaixo",
                          style: GoogleFonts.inter(
                              color: AppTheme.colors.button,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                if (controller.state is LoginStateLoading) ...[
                  CircularProgressIndicator(),
                ] else if (controller.state is LoginStateFailure) ...[
                  Text((controller.state as LoginStateFailure).mensage)
                ] else
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              AppTheme.colors.backgroundPrimary)),
                      onPressed: () {
                        controller.googleSignIn();
                      },
                      icon: Image.asset("assets/images/google.png"),
                      label: Text("Entrar com Google",
                          style: GoogleFonts.inter(
                              color: AppTheme.colors.button,
                              fontSize: 16,
                              fontWeight: FontWeight.w400))),
                SizedBox(
                  height: 12,
                ),
                // ElevatedButton.icon(
                //     style: ButtonStyle(
                //         backgroundColor: MaterialStateProperty.all(
                //             AppTheme.colors.backgroudPrimary)),
                //     onPressed: () {},
                //     icon: Image.asset("assets/images/apple.png"),
                //     label: Text("Entrar com Apple",
                //         style: GoogleFonts.inter(
                //           color: AppTheme.colors.button,
                //           fontSize: 16,
                //         )))
              ],
            )
          ],
        ));
  }
}
