import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:flutter/cupertino.dart';
import 'package:recipe_getx/models/ingredient_model.dart';

class IngredientScapper {
  static List<IngredientModel> getIngredientList(String html) {
    try {
      List<IngredientModel> packages = [];
      List<IngredientLists> ingredientPackages = [];
      List<Preparations> preparationPackages = [];
      late String description;
      final soup = BeautifulSoup(html);

      final items = soup
          .find(
            'div',
            class_: 'recipe__main-content',
          )!
          .children;

      for (var item in items) {
        description = item
                .find(
                  'div',
                  class_: 'container--body-inner',
                )
                ?.text ??
            '';

        var ingredientList = item
            .find(
              'div',
              class_: 'List-Xtjuf hIqrKk',
            )!
            .children;

        for (var ingredientz in ingredientList) {
          var value = IngredientLists(
            quantity: ingredientz
                    .find(
                      'p',
                      class_:
                          'BaseWrap-sc-UABmB BaseText-fETRLB Amount-WAmkd hkSZSE kBLSTT bGuCpx',
                    )
                    ?.text ??
                '',
            ingredient: ingredientz
                    .find(
                      'div',
                      class_:
                          'BaseWrap-sc-UABmB BaseText-fETRLB Description-dTsUqb hkSZSE kBLSTT gmvWnL',
                    )
                    ?.text ??
                '',
          );
          ingredientPackages.add(value);
        }

        var preparationContents = item
            .find(
              'div',
              class_: 'InstructionGroupWrapper-hmyafp bJfiL',
            )!
            .children;
        for (var preparation in preparationContents) {
          var value = Preparations(
            step: preparation
                    .find(
                      'h3',
                      class_:
                          'BaseWrap-sc-UABmB BaseText-fETRLB InstructionHed-cyOAbc InstructionHedSmall-jlDnbf cExidw fmGcps',
                    )
                    ?.text ??
                '',
            description: preparation
                    .find(
                      'div',
                      class_:
                          'BaseWrap-sc-UABmB BaseText-fETRLB InstructionBody-huDCkh hkSZSE hJquu eCKSnz',
                    )
                    ?.text ??
                '',
          );
          preparationPackages.add(value);
        }
      }

      var author = soup
              .find(
                'a',
                class_:
                    'BaseWrap-sc-UABmB BaseText-fETRLB BaseLink-hawaGs BylineLink-eZTiUA hkSZSE CIqPU fIOBZL cLVBoH byline__name-link button',
              )
              ?.text ??
          '';
      var postDate = soup
              .find(
                'time',
                class_: 'SplitScreenContentHeaderPublishDate-fBJZno cWFvtE',
              )
              ?.text ??
          '';

      packages.add(
        IngredientModel(
          author: author,
          postDate: postDate,
          description: description,
          ingredient: ingredientPackages,
          preparation: preparationPackages,
        ),
      );
      for (var package in packages) {
        debugPrint(package.toString());
      }
      return packages;
    } catch (error) {
      debugPrint('IngredientService Error Message: $error');
    }
    return [];
  }
}
