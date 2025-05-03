import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba_login/src/widgets/column_login.dart';
import 'package:prueba_login/src/widgets/column_register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController establecimientoController =
      TextEditingController();

  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1D0),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Image.asset('assets/QuickBites_Logo.png', height: 180),
                      const SizedBox(height: 15),

                      // CONTENEDOR LOGIN
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFF5A25D).withValues(alpha: 0.4),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.6),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: isActive ? ColumnLogin() : ColumnRegister()
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      // LÍNEAS + TEXTO "O"
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Color(0xFFf03c0f),
                              thickness: 1.5,
                              indent: 30,
                              endIndent: 10,
                            ),
                          ),
                          Text(
                            'Ó',
                            style: TextStyle(
                              color: Color(0xFF6e2c13),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFFf03c0f),
                              thickness: 1.5,
                              indent: 10,
                              endIndent: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // ÍCONOS GOOGLE Y CREAR CUENTA
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.redAccent,
                                size: 28,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              isActive = !isActive;
                              setState(() {
                                
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Icon(
                                Icons.person_add_alt_rounded,
                                color: Color(0xFF5B2C1B),
                                size: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
