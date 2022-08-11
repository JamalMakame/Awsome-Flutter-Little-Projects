import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/models/ingredient_model.dart';
import 'package:recipe_getx/services/http_sercive.dart';
import 'package:recipe_getx/services/ingredient_scrapper.dart';

class DetailRecipe extends StatefulWidget {
  const DetailRecipe({Key? key}) : super(key: key);

  @override
  State<DetailRecipe> createState() => _DetailRecipeState();
}

class _DetailRecipeState extends State<DetailRecipe> {
  Column _customDivider({
    required String nameText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16.h,
        ),
        Divider(
          color: kOutlineClr,
          thickness: 1.h,
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          nameText,
          style: GoogleFonts.inter(
            color: kMainTextClr,
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }

  bool isLoading = false;

  List<IngredientModel> list = [];

  Future<void> getIngredientData() async {
    isLoading = true;
    setState(() {});
    debugPrint(Get.arguments['recipeUrl']);
    final html = await HttpService.get(Get.arguments['recipeUrl']);
    if (html != null) {
      list = await IngredientScapper.getIngredientList(html);
    } else{
      debugPrint('Something wrong with the html call of line 61');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getIngredientData(),
        builder: (context, data) {
          if (data.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.network(
                          Get.arguments['dishPicture'],
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                      leading: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 24.sp,
                        ),
                      ),
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(300.h),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32.r),
                              topRight: Radius.circular(32.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 16.h),
                            child: Divider(
                              color: kOutlineClr,
                              thickness: 5,
                              indent: 190.w,
                              endIndent: 190.w,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 34.h,
                          left: 24.w,
                          right: 24.w,
                          bottom: 27.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Get.arguments['dishName'],
                              style: GoogleFonts.inter(
                                color: kMainTextClr,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'Posted time',
                              style: GoogleFonts.inter(
                                color: kOutlineClr,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              'Posted by: Author',
                              style: GoogleFonts.inter(
                                color: kMainTextClr,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            _customDivider(
                              nameText: 'Description',
                            ),
                            Text(
                              '''
      Lorem ipsum dolor sit amet. Non corporis corporis quo quas repellendus est voluptas dolores  voluptatem odit qui dolore voluptatem non eveniet nemo. Ad vero repellat est fuga adipisci qui voluptatibus unde. Eos consequatur quidem et cumque reprehenderit rem perspiciatis ipsam ad adipisci internos sit voluptatem nihil cum quia libero qui laborum quod. Id necessitatibus repellat qui dolorem accusantium non error voluptas et sapiente exercitationem cum delectus nemo. Eos error sapiente aut accusantium nulla aut enim magni. Qui officia iure ut modi minus eos autem consequatur et voluptas omnis. Sit quasi quia   veniam sit magni placeat vel soluta praesentium At quibusdam voluptas in excepturi possimus. Est harum dignissimos sed minus rerum qui obcaecati nemo et nihil consequuntur At deleniti molestiae.
    ''',
                              style: GoogleFonts.inter(
                                color: kOutlineClr,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            _customDivider(
                              nameText: 'Ingredient',
                            ),
                            Text(
                              'List of Ingredients',
                              style: GoogleFonts.inter(
                                color: kOutlineClr,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            _customDivider(
                              nameText: 'Steps',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          } else {
            return const Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
