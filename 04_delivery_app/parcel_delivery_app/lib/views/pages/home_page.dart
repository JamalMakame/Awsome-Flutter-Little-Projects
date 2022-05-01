import 'package:parcel_delivery_app/utils/component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: kYellowColor,
          expandedHeight: 426,
          title: const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Track parcel',
              style: kTextStyle,
            ),
          ),
          floating: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: CircleAvatar(
                child: Image.asset('assets/images/img00.png'),
              ),
            ),
          ],
          flexibleSpace: const FlexibleSpaceBar(
            stretchModes: [],
          ),
        )
      ],
    );
  }
}
