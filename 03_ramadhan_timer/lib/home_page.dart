import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a73e8),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ramadhan\nKareem',
              style: TextStyle(
                fontFamily: 'Google Sans',
                fontSize: 50,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 230,
                      width: 160,
                      child: Card(
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.sunny),
                              trailing: Switch(
                                value: false,
                                onChanged: (bool value) {},
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              '18:28',
                              style: TextStyle(
                                fontSize: 37,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              'Iftar Alert',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 230,
                      width: 160,
                      child: Card(
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.sunny),
                              trailing: Switch(
                                value: false,
                                onChanged: (bool value) {},
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              '4:10',
                              style: TextStyle(
                                fontSize: 37,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              'Sehar Alert',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 530,
                      width: 200,
                      child: Card(
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.sunny),
                              trailing: Switch(
                                value: false,
                                onChanged: (bool value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO 1: To impliment the UI from 'dribbble.com/shots/11243495-Ramadan-Timer-App-Concept/attachments/2851252?mode=media'