import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_detail_page.dart';

class RecentContest extends StatefulWidget {
  const RecentContest({Key? key}) : super(key: key);

  @override
  State<RecentContest> createState() => _RecentContestState();
}

class _RecentContestState extends State<RecentContest> {
  List info = [];

  @override
  void initState() {
    super.initState();
    _readData();
  }

  _readData() async {
    await DefaultAssetBundle.of(context)
        .loadString('assets/json/detail.json')
        .then((value) {
      setState(() {
        info = jsonDecode(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbe6f6),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xff69c5df),
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) {
                  return Column(
                    children: [
                      for (int i = 0; i < info.length; i++)
                        Container(
                          height: 250,
                          margin: const EdgeInsets.only(bottom: 30),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                const DetailPage(),
                                arguments: {
                                  'title': info[i]['title'].toString(),
                                  'text': info[i]['text'].toString(),
                                  'name': info[i]['name'].toString(),
                                  'img': info[i]['img'].toString(),
                                  'time': info[i]['time'].toString(),
                                  'prize': info[i]['prize'].toString(),
                                },
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              height: 220,
                              width: MediaQuery.of(context).size.width - 20,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: i.isEven
                                      ? const Color(0xFF69c5df)
                                      : const Color(0xFF9294cc)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        info[i]['title'],
                                        style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Expanded(child: Container())
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      info[i]['text'],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFb8eefc)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Divider(
                                    thickness: 1.0,
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 4; i++)
                                        SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    info[i]['img'],
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                },
                childCount: info.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
