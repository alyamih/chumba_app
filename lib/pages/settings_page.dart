import 'package:chumba_app/pages/show_screen.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/menu.png'))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: Color(0xFFC4A0FF),
                    ),
                    Text(
                      'Menu',
                      style: TextStyle(
                          fontFamily: 'IBMPlexSansHebrew',
                          color: Color(0xFFC4A0FF),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: Row(
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontFamily: 'IBMPlexSansHebrew',
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                      child: Image.asset('assets/rate.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                      child: Row(
                        children: [
                          Text(
                            'Game settings',
                            style: TextStyle(
                                fontFamily: 'IBMPlexSansHebrew',
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ReadTermsOrPrivacyScreenView(
                                      link: 'google.com',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                              color: Color(0xFF301A60),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7),
                                  topRight: Radius.circular(7))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Privacy policy',
                                style: TextStyle(
                                    fontFamily: 'IBMPlexSansHebrew',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ReadTermsOrPrivacyScreenView(
                                      link: 'google.com',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Color(0xFF301A60),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Terms & Conditions',
                                style: TextStyle(
                                    fontFamily: 'IBMPlexSansHebrew',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 2),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                            color: Color(0xFF301A60),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(7),
                                bottomRight: Radius.circular(7))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Support page',
                              style: TextStyle(
                                  fontFamily: 'IBMPlexSansHebrew',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
