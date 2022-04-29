import 'package:parcel_delivery_app/utils/component.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: kYellowColor,
            centerTitle: true,
            expandedHeight: 426,
            flexibleSpace: Container(),
            title: const Text('Track Parcel'),
            actions: const [
              CircleAvatar(
                child: ClipOval(),
              )
            ],
          )
        ],
      );
  }
}
