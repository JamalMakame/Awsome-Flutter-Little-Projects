import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/models/post_card_model.dart';
import 'package:recipe_getx/services/card_scrapper.dart';
import 'package:recipe_getx/services/http_sercive.dart';
import 'package:recipe_getx/views/screens/detail_recipe.dart';

const String baseUrl = 'https://www.bonappetit.com/ingredient/rice';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;
  bool isLoading = false;
  List<PostCardModel> list = [];

  Future<void> getPostCardData() async {
    isLoading = true;
    setState(() {});
    final html = await HttpService.get(baseUrl);
    if (html != null) {
      list = PostCardScrapper.postCard(html);
    }
  }

  Column customGrillTile(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 31.w,
              height: 31.h,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/loading/chefs-hat-23436_1280.png',
                  ),
                ),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(11.r),
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Calcum Lewis',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: kMainTextClr,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
          onTap: () {
            Get.to(
              () => const DetailRecipe(),
              arguments: {
                'dishPicture': list[index].image,
                'dishName': list[index].name,
                'recipeUrl': list[index].recipeUrl,
              },
            );
          },
          child: Stack(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.r),
                  ),
                  child: Image.network(
                    list[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 22.h,
                right: 22.w,
                child: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.r),
                    ),
                    color: const Color.fromRGBO(
                      255,
                      255,
                      255,
                      0.2,
                    ),
                  ),
                  child: GestureDetector(
                    child: isLiked == false
                        ? Icon(
                            Icons.favorite_outline,
                            color: kMainTextClr,
                            size: 20.sp,
                          )
                        : Icon(
                            Icons.favorite,
                            color: kSecondaryClr,
                            size: 20.sp,
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
        SizedBox(
          height: 16.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              list[index].name,
              style: GoogleFonts.inter(
                color: kMainTextClr,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Food >60 mins',
              style: GoogleFonts.inter(
                color: kSecondaryTextClr,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPostCardData(),
      builder: (context, data) {
        if (data.connectionState == ConnectionState.done) {
          return GridView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return GridTile(
                child: customGrillTile(index),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25.w,
              childAspectRatio: 0.52,
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
