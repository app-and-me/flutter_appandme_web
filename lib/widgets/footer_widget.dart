import 'package:flutter/material.dart';
import '../theme/color.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: footerColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/img/logo2.png'),
                  const SizedBox(width: 20),
                  const Text(
                    'App&Me',
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/img/instagram.png'),
                  const SizedBox(width: 30),
                  Image.asset('assets/img/github.png'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 13),
          const Text('문의전화 : 010-0000-0000'),
          const SizedBox(height: 13),
          const Text('이메일 : abcde@fghijk.com'),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey),
              ),
            ),
            margin: const EdgeInsets.only(top: 30.0),
            padding: const EdgeInsets.only(top: 30.0),
            child: const Center(child: Text('©Team App&Me')),
          ),
        ],
      ),
    );
  }
}
