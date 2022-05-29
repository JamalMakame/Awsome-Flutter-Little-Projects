import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';

Widget customCards({
  required BuildContext context,
  required String projectNumber,
  required String projectTitle,
  required String projectDate,
  required Color projectClr,
}) {
  return GestureDetector(
    child: Container(
      padding: const EdgeInsets.only(left: 20, top: 20),
      width: MediaQuery.of(context).size.width - 20,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: projectClr,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Image(
                height: 40,
                image: AssetImage(
                  'assets/svg/Group 36.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    'Project $projectNumber',
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20,
                      height: 1.5,
                    ),
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Project $projectTitle',
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 20,
              height: 1.5,
            ),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Project $projectDate',
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 20,
              height: 1,
            ),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
