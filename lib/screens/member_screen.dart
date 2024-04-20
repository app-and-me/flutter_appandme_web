import 'package:flutter/material.dart';

import '../widgets/header_widget.dart';

class MemeberScreen extends StatelessWidget {
  const MemeberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // header
          HeaderWidget(),
        ],
      ),
    );
  }
}
