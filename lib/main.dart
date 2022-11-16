import 'package:card_portfolio/page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242424),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/photo.jpg'),
              ),
              Divider(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                'Italo Gonçalves',
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xffF0F0F0),
                  fontFamily: 'Kalam',
                ),
              ),
              const Text(
                'DESENVOLVEDOR MOBILE',
                style: TextStyle(
                  letterSpacing: 3.0,
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w200,
                ),
              ),
               /* const Divider(
                height: 2.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                height: 1,
                color: Colors.white,
              ), */
              const Divider(
                height: 40.0,
              ),
              GestureDetector(
                onTap: () => _launcherLink('https://github.com/italogoncalvesl'),
                child: Card(
                  shape: RoundedRectangleBorder(
                    // side: const BorderSide(color: Colors.white70, width: 1,),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 10,
                  color: const Color(0xff2C2C2C),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            Image.asset('assets/github.png',
                              width: 38,
                              fit: BoxFit.fill,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.07,
                            ),
                                const Text(
                                  'GitHub',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 32,
                                    color: Colors.white,
                                  ),
                                ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05,
                            ),
                          ],
                        ),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () => _launcherLink('https://www.linkedin.com/in/italo-gon%C3%A7alves/'),
                child: Card(
                  shape: RoundedRectangleBorder(
                    // side: const BorderSide(color: Colors.white70, width: 1,),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 10,
                  color: const Color(0xff2C2C2C),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          Image.asset('assets/linkedin.png',
                            width: 38,
                            fit: BoxFit.fill,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          const Text(
                            'Linkedin',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProjetosPage()));},
                child: Card(
                  shape: RoundedRectangleBorder(
                    // side: const BorderSide(color: Colors.white70, width: 1,),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 10,
                  color: const Color(0xff2C2C2C),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          Image.asset('assets/flutter.png',
                            width: 34,
                            fit: BoxFit.fill,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          const Text(
                            'Projetos',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 32,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
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

Future<void> _launcherLink(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
  await launchUrl(Uri.parse(url));
  } else {
    }
  }

