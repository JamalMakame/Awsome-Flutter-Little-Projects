import "package:beautiful_soup_dart/beautiful_soup.dart";
import 'package:flutter/cupertino.dart';

import '../models/post_card_model.dart';

class PostCardScrapper {
  static Future<List<PostCardModel>> postCard(String html) async {
    try {
      final soup = BeautifulSoup(html);
      final items = soup.findAll(
        'div',
        class_: 'StackedRatingsCardWrapper-TYwYZ lgZqBt',
      );
      List<PostCardModel> packages = [];
      for (var item in items) {
        PostCardModel model = PostCardModel(
          image: item
                  .find(
                    'img',
                    class_:
                        'ResponsiveImageContainer-dmuwLx fydubv responsive-image__image',
                  )
                  ?.getAttrValue('src') ??
              '',
          name: item
                  .find(
                    'h2',
                    class_:
                        'BaseWrap-sc-UABmB BaseText-fETRLB Hed-jlHISD hkSZSE gzzSSh cZfrgP',
                  )
                  ?.text ??
              '',
          recipeUrl: 'https://www.bonappetit.com${item.find(
                'a',
                class_:
                    'BaseWrap-sc-UABmB BaseText-fETRLB BaseLink-hawaGs Link-kyVlxg hkSZSE hJquu hqkpZb',
              )?.getAttrValue('href') ?? ''}',
        );
        packages.add(model);
      }
      return packages;
    } catch (error) {
      debugPrint('ScrapperService : $error');
    }
    return [];
  }
}
