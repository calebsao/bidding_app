import 'package:bidding_app/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:bidding_app/widgets/my_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  final String appName = 'bid bros';

  @override
  Widget build(BuildContext context) {
    // Here we are getting the width of the device immediately as we build
    final width = MediaQuery.of(context).size.width;

    // Here is the function that builds
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: width < 600
              ? Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Star.svg',
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.surface,
                            BlendMode.difference,
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/Logo.png'),
                            const SizedBox(height: 10),
                            Text(
                              appName.toUpperCase(),
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 35),
                    MyButton(
                      context,
                      'Sign In',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      ),
                      borderColor: false,
                      color: true,
                    ),
                    const SizedBox(height: 10),
                    MyButton(
                      context,
                      'Sign Up',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      ),
                      borderColor: true,
                      color: false,
                    ),
                  ],
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Star.svg',
                              colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.surface,
                                BlendMode.difference,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/Logo.png'),
                                const SizedBox(height: 10),
                                Text(
                                  appName.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Now the buttons in an expanded widget
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            context,
                            'Sign In',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ),
                            ),
                            borderColor: false,
                            color: true,
                          ),
                          const SizedBox(height: 10),
                          MyButton(
                            context,
                            'Sign Up',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ),
                            ),
                            borderColor: true,
                            color: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
