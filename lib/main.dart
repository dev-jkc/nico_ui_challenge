import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

// StatelessWidget: core Widget중 하나로 화면에 표시하는 단순한 역할을 수행
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 색상 코드로 색을 정하는 방법 중 하나
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            // 수평 패딩을 16px만큼 적용
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // Column은 children을 가진다.
              children: [
                // SizedBox 위젯으로 박스를 만든다.
                const SizedBox(
                  height: 50,
                ),
                Row(
                  // Row의 MainAxis이므로 수평정렬
                  mainAxisAlignment: MainAxisAlignment.end,
                  // Row도 children을 가진다.
                  children: [
                    Column(
                      // Column의 crossAxis이므로 수평정렬
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Color(0xFFFAFAFA),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'welcome back',
                          style: TextStyle(
                            color: const Color(0xFFFAFAFA).withOpacity(0.6),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: const Color(0xFFFAFAFA).withOpacity(0.6),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$5 194 382',
                  style: TextStyle(
                    color: Color(0xFFFAFAFA),
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Button(
                        btnText: 'Transfer',
                        btnBgColor: Color(0xFFF2B33A),
                        btnTextColor: Color(0xFF181818),
                        btnTextSize: 20,
                        btnPaddingHorizontal: 16,
                        btnPaddingVertical: 20,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Button(
                        btnText: 'Request',
                        btnBgColor: Color(0xFF1F2123),
                        btnTextColor: Color(0xFFFAFAFA),
                        btnTextSize: 20,
                        btnPaddingHorizontal: 16,
                        btnPaddingVertical: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Color(0xFFFAFAFA),
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Button(
                      btnText: 'View All',
                      btnBgColor: const Color(0xFF181818),
                      btnTextColor: const Color(0xFFFAFAFA).withOpacity(0.6),
                      btnTextSize: 18,
                      btnPaddingVertical: 4,
                      btnPaddingHorizontal: 4,
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  amount: '6 428',
                  code: 'EUR',
                  icon: Icons.euro_symbol_sharp,
                  // isInverted: false,
                  order: 0,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  amount: '55 622',
                  code: 'USD',
                  icon: Icons.attach_money_sharp,
                  // isInverted: true,
                  order: 1,
                ),
                const CurrencyCard(
                  name: 'Rupee',
                  amount: '28 981',
                  code: 'INR',
                  icon: Icons.currency_rupee_sharp,
                  // isInverted: false,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
