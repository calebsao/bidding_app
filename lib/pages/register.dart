import 'package:bidding_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:bidding_app/widgets/my_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery width helper
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: width < 600
          ? Column(
              children: [
                Image.asset(
                  'assets/images/Illustrations.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.surface,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sold out on asking! get the\nBest price after BID',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Get the Best Quality Used Cars in the UAE.\nHassle-Free, No Fuss. Buy Smart, Buy Bid Bros!\nQuality Cars Delivered to Your Doorstep,',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 17),
                          MyButton(
                            context,
                            'Start bidding',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            ),
                            borderColor: false,
                            color: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Image.asset(
                  'assets/images/Illustrations.png',
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    color: Theme.of(context).colorScheme.surface,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sold out on asking! get the\nBest price after BID',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Get the Best Quality Used Cars in the UAE.\nHassle-Free, No Fuss. Buy Smart, Buy Bid Bros!\nQuality Cars Delivered to Your Doorstep,',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 17),
                          MyButton(
                            context,
                            'Start bidding',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            ),
                            borderColor: false,
                            color: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
