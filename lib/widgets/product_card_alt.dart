import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';

class ProductCardAlt extends StatelessWidget {
  const ProductCardAlt({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 140),
          margin: EdgeInsets.only(
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/product1.png',
                width: 130,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'make puff brush make up make puff brush make up make puff brush make up',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Rp 150.000',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
