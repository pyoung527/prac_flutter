import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  const CurrencyCard(
      {super.key,
      required this.order,
      required this.currencyName,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * (-20)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : Colors.grey.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currencyName,
                    style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          fontSize: 20,
                          color: isInverted ? Colors.black : Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          fontSize: 18,
                          color: isInverted
                              ? Colors.black
                              : Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(0, 10),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
