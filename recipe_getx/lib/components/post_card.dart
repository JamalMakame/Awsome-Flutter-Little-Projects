import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 41,
                height: 41,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/loading/chefs-hat-23436_1280.png',
                    ),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(11),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Calcum Lewis',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: kMainTextClr,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/pancake.jpg'),
                ),
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 22,
                    right: 22,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: Color.fromRGBO(
                          255,
                          255,
                          255,
                          0.2,
                        ),
                      ),
                      child: GestureDetector(
                        child: isLiked == false
                            ? const Icon(
                                Icons.favorite_outline,
                                color: Colors.white,
                                size: 20,
                              )
                            : const Icon(
                                Icons.favorite,
                                color: kSecondaryClr,
                                size: 20,
                              ),
                        onTap: () {
                          if (isLiked == false) {
                            setState(() {
                              isLiked = true;
                            });
                          } else {
                            setState(() {
                              isLiked = false;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Pancake',
            style: GoogleFonts.inter(
              color: kMainTextClr,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Food >60 mins',
            style: GoogleFonts.inter(
              color: kSecondaryTextClr,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}



//  
//           SizedBox(
//             width: 151,
//             height: 151,
//             
//           ),