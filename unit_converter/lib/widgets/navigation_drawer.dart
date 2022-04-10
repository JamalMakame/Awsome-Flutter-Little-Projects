import 'package:flutter/material.dart';
import 'package:unit_converter/model/navigation_item.dart';
import 'package:unit_converter/widgets/drawer_tile_widget.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'CONVERSION',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const MyTile(
                    icon: Icons.currency_exchange_outlined,
                    title: 'Currency',
                    item: NavigationItem.currency,
                  ),
                  const MyTile(
                    icon: Icons.straighten_outlined,
                    title: 'Length',
                    item: NavigationItem.length,
                  ),
                  const MyTile(
                    icon: Icons.thermostat_outlined,
                    title: 'Temperature',
                    item: NavigationItem.temperature,
                  ),
                  const MyTile(
                    icon: Icons.speed_outlined,
                    title: 'Speed',
                    item: NavigationItem.speed,
                  ),
                  const MyTile(
                    icon: Icons.timer_outlined,
                    title: 'Time',
                    item: NavigationItem.time,
                  ),
                  const MyTile(
                    icon: Icons.scale_outlined,
                    title: 'Weight',
                    item: NavigationItem.weight,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.white70,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'CALCULATOR',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const MyTile(
                    icon: Icons.add_box_outlined,
                    title: 'Basic',
                    item: NavigationItem.basic,
                  ),
                  const MyTile(
                    icon: Icons.subscript_outlined,
                    title: 'Scientific',
                    item: NavigationItem.scientific,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
