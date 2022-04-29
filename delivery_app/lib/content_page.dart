
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    int _currentIndex  = 0;
    return
      Scaffold(
        body: Container(
          padding: const EdgeInsets.only( top:70),
          color:const Color(0xFFc5e5f3),
          child: Column(
            children: [
              //james smith
              Container(
                width: width,
                height: 100,
                margin: const EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:const Color(0xFFebf8fd),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius:40,
                        backgroundImage: AssetImage(
                            "assets/img/background.jpg"
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "James Smith",
                            style: TextStyle(
                                color:Color(0xFF3b3f42),
                                fontSize: 18,
                                decoration: TextDecoration.none
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Top Level",
                            style: TextStyle(
                                color:Color(0xFFfdebb2),
                                fontSize: 12,
                                decoration: TextDecoration.none
                            ),
                          ),

                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:const Color(0xFFf3fafc)
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.notifications,
                            color:Color(0xFF69c5df),
                            size: 30,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              //popular contest
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    const Text(
                      "Popular Contest",
                      style: TextStyle(
                          color:Color(0xFF1f2326),
                          fontSize: 20,
                          decoration: TextDecoration.none
                      ),
                    ),
                    Expanded(child: Container()),
                    const Text(
                      "Show all",
                      style: TextStyle(
                          color:Color(0xFFcfd5b3),
                          fontSize: 15,
                          decoration: TextDecoration.none
                      ),
                    ),

                    const SizedBox(width: 5,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFfdc33c)
                      ),
                      child: GestureDetector(

                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              //list
              SizedBox(
                height: 220,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.88),
                    itemCount: 4,
                    itemBuilder: (_, i){
                      return GestureDetector(


                        child: Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          height: 220,
                          width: MediaQuery.of(context).size.width-20,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:i.isEven?const Color(0xFF69c5df):const Color(0xFF9294cc)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                      color:Colors.white
                                    ),
                                  ),
                                  Expanded(child: Container())
                                ],
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: width,
                                child: const Text(
                                  "Text",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:Color(0xFFb8eefc)
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Divider(thickness: 1.0,),
                              Row(
                                  children:[for(int i=0; i<4; i++)
                                    SizedBox(

                                      width: 50,
                                      height: 50,
                                      child: Container(

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/img/background.jpg"
                                                ),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                      ),
                                    )
                                  ]



                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 30,),
              //recent contests
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    const Text(
                      "Recent Contests",
                      style: TextStyle(
                          color:Color(0xFF1f2326),
                          fontSize: 20,
                          decoration: TextDecoration.none
                      ),
                    ),
                    Expanded(child: Container()),
                    const Text(
                      "Show all",
                      style: TextStyle(
                          color:Color(0xFFcfd5b3),
                          fontSize: 15,
                          decoration: TextDecoration.none
                      ),
                    ),

                    const SizedBox(width: 5,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFfdc33c)
                      ),
                      child: GestureDetector(

                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Expanded(
               child:   MediaQuery.removePadding(context: context,
                      removeTop: true,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (_, i){
                            return Container(
                              width: width,
                              height: 100,
                              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:const Color(0xFFebf8fd),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius:40,
                                      backgroundImage: AssetImage(
                                          "assets/img/background.jpg"
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Status",
                                          style: TextStyle(
                                              color:Color(0xFFfdebb2),
                                              fontSize: 12,
                                              decoration: TextDecoration.none
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        SizedBox(
                                          width: 170,
                                          child: Text(
                                            "Text",

                                            style: TextStyle(
                                                color:Color(0xFF3b3f42),
                                                fontSize: 18,
                                                decoration: TextDecoration.none
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    const SizedBox(
                                      width: 70,
                                      height: 70,

                                      child: Text(
                                        "Time",
                                        style: TextStyle(
                                            fontSize: 10,
                                            decoration: TextDecoration.none,
                                            color:Color(0xFFb2b8bb)
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            );
                          })

                  )

              ),
            ],
          ),
        ),
      );


  }
}
