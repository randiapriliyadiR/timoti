import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/product1.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skin Care',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'cleanser',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Rp 213.330',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
