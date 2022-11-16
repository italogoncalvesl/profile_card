import 'package:flutter/material.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff242424),
      body: (SafeArea(
        child: Center(
            child: Text( "Projetos em desenvolvimento...",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xffF0F0F0),
                fontFamily: 'Kalam',
            ),
          ),
        ),
      )),
    );
  }
}
