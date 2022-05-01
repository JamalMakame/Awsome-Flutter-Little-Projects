import 'package:parcel_delivery_app/utils/component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          expandedHeight: 426,
          title: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Track parcel',
              style: Theme.of(context).primaryTextTheme.headline1,
            ),
          ),
          floating: true,
          pinned: true,
          snap: false,
          shadowColor: Colors.transparent,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: CircleAvatar(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/Avatar/Small.png'),
                ),
              ),
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 200,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter parcel number or scan QR code',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7, bottom: 40),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                    decoration: const InputDecoration(
                                      hintText: 'tracking number',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 49,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: const SvgIcon('assets/Icon/QR Code.svg'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 64,
                          ),
                          child: SizedBox(
                            height: 48,
                            width: double.infinity,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Track parcel',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              ),
                              style: Theme.of(context).textButtonTheme.style,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(
            left: 24,
            top: 32,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Parcel',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                ],
              ),
            ),
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 24,
                ),
                child: Container(
                  height: 190,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
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
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 22,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '00359007738060313786',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText2,
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 5.81,
                                  horizontal: 9,
                                ),
                                child: const Image(
                                  image: AssetImage(
                                      'assets/images/amazon-logo.jpg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'In Transit',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText2,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Last update: 3 hours ago',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline6,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2.5),
                                child: const LinearProgressIndicator(
                                  backgroundColor: kGreyColor,
                                  color: kYellowDarkColor,
                                  value: 0.7,
                                ),
                              ),
                              MaterialButton(
                                autofocus: true,
                                onPressed: () {},
                                child: const SvgIcon(
                                  'assets/Element/Link/Active.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 4,
          ),
        ),
      ],
    );
  }
}
