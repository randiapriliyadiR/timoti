import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: 16,
        right: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor6,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage("assets/product1.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Makeup Puff",
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Rp 34.000 ',
                      style: priceTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.add_circle,
                      size: 19,
                      color: priceColor,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "5",
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.remove_circle,
                      size: 19,
                      color: alertColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_remove.png',
                  width: 10,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Remove',
                  style: alertTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
