
import 'package:get_storage/get_storage.dart';

class OnBoardServices{
  final _box = GetStorage();
  final _isViewed = true;
  final _isViewedKey = 'onBoard';



  saveIsView() => _box.write(_isViewedKey, _isViewed);

  bool loadOnBoardFromBox() => _box.read(_isViewedKey) ?? false;
}