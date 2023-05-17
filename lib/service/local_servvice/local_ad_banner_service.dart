
import 'package:grocery_app/model/ad_banner.dart';
import 'package:hive/hive.dart';

class LocalAdBannerService{
  late Box<AdBanner> _adBannerBox;

  Future<void> init() async {
    _adBannerBox = await Hive.openBox<AdBanner>('AdBanners');
  }
// before u use database ( insert ou update or remouve) u should open box first
  Future<void> assignAllAdBanners({required List<AdBanner> adBanners}) async {
    await _adBannerBox.clear();
    await _adBannerBox.addAll(adBanners);
  }

  List<AdBanner> getAdBanners() => _adBannerBox.values.toList();

}