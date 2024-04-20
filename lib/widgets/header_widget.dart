import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 70, top: 30, right: 70, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text('부원소개'),
              SizedBox(width: 30),
              Text('지원하기'),
              SizedBox(width: 30),
              Text('QnA'),
              SizedBox(width: 30),
              Text('활동기록'),
              SizedBox(width: 30),
              Text('질문하기'),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/img/logo.png'),
            ],
          ),
        ],
      ),
    );
    // header;
  }
}
