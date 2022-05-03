import 'package:parcel_delivery_app/utils/component.dart';

class SendParcelCheckOutScreen extends StatelessWidget {
  const SendParcelCheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Checkout',
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image(
                    image: AssetImage('assets/Element/Credit Card/Yellow.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kGreyLightColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Summary',
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage('assets/Element/Link/Active.png'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23.0),
                child: Text(
                  'Name : Jamal Makame',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  'Email : jamal.abdalla@student.jkuat.ac.ke',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  'ID : 01698 852695',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  'Address : 11 Rosemount Meadows, Glasgow, G71 8EL',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Parcel Size : Medium',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  'Delivery method : From door to door',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {},
                  height: 48,
                  elevation: 2,
                  textColor: kWhiteColor,
                  color: kBlackColor,
                  child: Text(
                    'Pay Ksh 3,085',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
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
