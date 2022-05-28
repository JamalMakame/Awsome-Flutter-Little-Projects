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
      height: 220,
      width: MediaQuery.of(context).size.width - 20,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: projectClr,
        gradient: const LinearGradient(
          begin: Alignment(0.0374455489218235, 0.7739855647087097),
          end: Alignment(-0.7739855647087097, 0.06429413706064224),
          colors: [
            Color.fromRGBO(156, 44, 243, 1),
            Color.fromRGBO(58, 72, 248, 1)
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Image(
                image: AssetImage(
                  'assets/svg/Group 36.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Project $projectNumber',
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 33,
                  height: 1.5,
                ),
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
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
              fontSize: 27,
              height: 1.5,
            ),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Project $projectDate',
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 24,
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
