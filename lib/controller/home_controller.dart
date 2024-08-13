import 'package:get/get.dart';
import 'package:traval_app/constants/app_images.dart';

class HomeController extends GetxController {
  RxBool isHome = true.obs;
  RxBool isSearch = false.obs;
  RxBool isSave = false.obs;
  RxBool isDownload = false.obs;
  RxBool isProfile = false.obs;
  RxBool isEpisode = true.obs;
  RxBool isSimilar = false.obs;
  RxBool isAbout = false.obs;
  RxBool isGogle = true.obs;
  RxBool isApple = false.obs;
  RxBool isOther = false.obs;
  customInit() {
    categoriesList = ["All", "Action", "Comedy", "Romance", "Horor"];
    selectCategory = [true, false, false, false, false];
    mostPopular = [DefaultImages.c1, DefaultImages.c2, DefaultImages.c3];
    latestMovie = [DefaultImages.c4, DefaultImages.c5, DefaultImages.c6];
    swiperList = [
      DefaultImages.categoryBackground,
      DefaultImages.c1,
      DefaultImages.s1,
      DefaultImages.s2
    ];
    comedy = [
      DefaultImages.cd1,
      DefaultImages.cd2,
      DefaultImages.cd3,
      DefaultImages.cd4,
      DefaultImages.cd5,
      DefaultImages.cd6,
      DefaultImages.cd7,
      DefaultImages.cd8,
      DefaultImages.cd9,
      DefaultImages.cd10,
      DefaultImages.cd11,
      DefaultImages.cd12,
    ];
    isHome.value = true;
    isSearch.value = false;
    isSave.value = false;
    isDownload.value = false;
    isProfile.value = false;
  }

  List<String> mostPopular = List<String>.empty().obs;
  List<String> latestMovie = List<String>.empty().obs;
  List<String> categoriesList = List<String>.empty().obs;
  List<String> swiperList = List<String>.empty().obs;
  List<bool> selectCategory = List<bool>.empty().obs;
  List<String> comedy = List<String>.empty().obs;
}
