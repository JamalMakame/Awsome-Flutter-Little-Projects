import 'package:parcel_delivery_app/utils/component.dart';

class SendParcelDetailScreen extends StatelessWidget {
  const SendParcelDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send Parcel',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17, bottom: 11),
                child: Text(
                  'Delivery method',
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
              ),
              ExpansionTile(
                tilePadding: const EdgeInsets.all(0),
                trailing: const SizedBox.shrink(),
                backgroundColor: Theme.of(context).backgroundColor,
                title: Container(
                  height: 120,
                  width: 470,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(
                                  'assets/illustration/Parcel center.png'),
                            ),
                            const SizedBox(
                              width: 38,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'From door to parcel center',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText2,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '1 - 2 days',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1,
                    color: kGreyLightColor,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.all(16).copyWith(top: 0, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recipient Info',
                          style: Theme.of(context).primaryTextTheme.headline6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 11, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Name',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline3,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  border: Theme.of(context)
                                      .inputDecorationTheme
                                      .border,
                                  focusedBorder: Theme.of(context)
                                      .inputDecorationTheme
                                      .focusedBorder,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 11, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Email',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline3,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  border: Theme.of(context)
                                      .inputDecorationTheme
                                      .border,
                                  focusedBorder: Theme.of(context)
                                      .inputDecorationTheme
                                      .focusedBorder,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Phone number',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline3,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    border: Theme.of(context)
                                        .inputDecorationTheme
                                        .border,
                                    focusedBorder: Theme.of(context)
                                        .inputDecorationTheme
                                        .focusedBorder,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Address',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline3,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    border: Theme.of(context)
                                        .inputDecorationTheme
                                        .border,
                                    focusedBorder: Theme.of(context)
                                        .inputDecorationTheme
                                        .focusedBorder,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                tilePadding: const EdgeInsets.all(0),
                trailing: const SizedBox.shrink(),
                backgroundColor: Theme.of(context).backgroundColor,
                title: Container(
                  height: 120,
                  width: 470,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(
                                  'assets/illustration/Door delivery.png'),
                            ),
                            const SizedBox(
                              width: 38,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'From door to door',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText2,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '2 - 3 days',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1,
                    color: kGreyLightColor,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.all(16).copyWith(top: 0, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recipient Info',
                          style: Theme.of(context).primaryTextTheme.headline6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 11, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Name',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline3,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  border: Theme.of(context)
                                      .inputDecorationTheme
                                      .border,
                                  focusedBorder: Theme.of(context)
                                      .inputDecorationTheme
                                      .focusedBorder,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 11, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Email',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline3,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  border: Theme.of(context)
                                      .inputDecorationTheme
                                      .border,
                                  focusedBorder: Theme.of(context)
                                      .inputDecorationTheme
                                      .focusedBorder,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Phone number',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline3,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    border: Theme.of(context)
                                        .inputDecorationTheme
                                        .border,
                                    focusedBorder: Theme.of(context)
                                        .inputDecorationTheme
                                        .focusedBorder,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Address',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline3,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    border: Theme.of(context)
                                        .inputDecorationTheme
                                        .border,
                                    focusedBorder: Theme.of(context)
                                        .inputDecorationTheme
                                        .focusedBorder,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
