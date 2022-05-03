import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcel_delivery_app/utils/component.dart';

class ParcelCenterScreen extends StatefulWidget {
  const ParcelCenterScreen({Key? key}) : super(key: key);

  @override
  State<ParcelCenterScreen> createState() => _ParcelCenterScreenState();
}

class _ParcelCenterScreenState extends State<ParcelCenterScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: CustomScrollView(
          slivers: [
            Text(
              'Parcel Centers',
              style: Theme.of(context).primaryTextTheme.headline1,
            ),
            const SizedBox(
              height: 17,
            ),
            Container(
              width: 327,
              height: 221,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
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
        ),
      ),
    );
  }
}
