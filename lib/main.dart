import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 25, 25),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey Young,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$ 1,500.00',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Button(
                        text: 'Transfer',
                        bgColor: Colors.amber,
                        textColor: Colors.black),
                    const SizedBox(
                      width: 20,
                    ),
                    Button(
                        text: 'Request',
                        bgColor: Colors.grey.withOpacity(0.2),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  order: 0,
                  currencyName: 'Euro',
                  code: 'EUR',
                  amount: '5,436',
                  icon: Icons.euro_sharp,
                  isInverted: false,
                ),
                const CurrencyCard(
                  order: 1,
                  currencyName: 'Bitcoin',
                  code: 'BTC',
                  amount: '936',
                  icon: Icons.currency_bitcoin_sharp,
                  isInverted: true,
                ),
                const CurrencyCard(
                  order: 2,
                  currencyName: 'Dollar',
                  code: 'USD',
                  amount: '132,936',
                  icon: Icons.attach_money_sharp,
                  isInverted: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
