import '../cachehandler/cachekey.dart';
import '../../core/constants/imageconstants.dart';

///get image based on current theme
getImageByTheme(String theme) {
  switch (theme) {
    case CacheData.lightMode:
      return ImageClass.v3;
    case CacheData.darkMode:
      return ImageClass.v2;
  }
}
