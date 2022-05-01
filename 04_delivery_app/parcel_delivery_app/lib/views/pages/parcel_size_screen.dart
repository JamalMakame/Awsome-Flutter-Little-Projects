import 'package:parcel_delivery_app/utils/component.dart';

class SendParcelScreen extends StatelessWidget {
  const SendParcelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 24,
      ),
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
              'Parcel Size',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ),
          Container(
            height: 150,
            width: 420,
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
                            'assets/illustration/Envelope.png'),
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
                              'Small\nMax. 25kg, 8 x 38 x 64 cm',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              'Fits in an envelope',
                              style:
                                  Theme.of(context).primaryTextTheme.headline6,
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
          const SizedBox(height: 16,),
          Container(
            height: 150,
            width: 420,
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
                            'assets/illustration/small box.png'),
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
                              'Medium\nMax. 25kg, 19 x 38 x 64 cm',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              'Fits in an show box',
                              style:
                                  Theme.of(context).primaryTextTheme.headline6,
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
          const SizedBox(height: 16,),
          Container(
            height: 150,
            width: 420,
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
                            'assets/illustration/Ski/Asset/illustration/Big box.png'),
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
                              'Large\nMax. 25kg, 41 x 38 x 64 cm',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              'Fits in an show box',
                              style:
                                  Theme.of(context).primaryTextTheme.headline6,
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
          const SizedBox(height: 16,),
          Container(
            height: 150,
            width: 420,
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
                            'assets/illustration/Ski/Asset/illustration/Custom parcel.png'),
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
                              'Custom\nMax. 30kg or 300 cm',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              'Fits in an show box',
                              style:
                                  Theme.of(context).primaryTextTheme.headline6,
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
          
        ],
      ),
    );
  }
}
