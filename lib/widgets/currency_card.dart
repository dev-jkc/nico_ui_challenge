import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, amount, code;
  final IconData icon;
  // final bool isInverted;
  final int order;

  final Color grayColor = const Color(0xFF1F2123);
  final Color whiteColor = const Color(0xFFFAFAFA);
  final Color blackColor = const Color(0xFF181818);

  // 내가 했던 방식. 더 나은걸 찾아서 주석으로 변경 1
  // double currecyCardOrder(order) {
  //   double result;
  //   double offsetVertical = -24;
  //   if (order == 1) {
  //     result = offsetVertical;
  //   } else if (order == 2) {
  //     result = offsetVertical * 2;
  //   } else {
  //     result = 0;
  //   }
  //   return result;
  // }

  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    // required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    final Color cardColor = order % 2 == 0 ? grayColor : whiteColor;
    final Color cardTextColor = order % 2 == 0 ? whiteColor : blackColor;
    final Color cardIconColor = order % 2 == 0 ? whiteColor : blackColor;

    return Transform.translate(
      offset: order == 0 ? const Offset(0, 0) : Offset(0, (order * -24)),
      // 내가 했던 방식. 더 나은걸 찾아서 주석으로 변경 2
      // Offset(0, currecyCardOrder(order)),
      child: Container(
        // Container의 크기를 넘어서는 부분을(overflow) 잘라낸다.
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          // color: isInverted ? whiteColor : grayColor,
          color: cardColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      // color: isInverted ? blackColor : whiteColor,
                      color: cardTextColor,
                      fontSize: 34,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          // color: isInverted ? blackColor : whiteColor,
                          color: cardTextColor,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          // color: isInverted ? blackColor.withOpacity(0.4) : whiteColor.withOpacity(0.4),
                          color: cardTextColor.withOpacity(0.4),
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                // scale(배율)을 조절할 수 있게 한다.
                scale: 2,
                child: Transform.translate(
                  // Offset을 통해서 좌표를 지정할 수 있게 한다.
                  offset: const Offset(0, 16),
                  child: Icon(
                    icon,
                    color: cardIconColor,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
