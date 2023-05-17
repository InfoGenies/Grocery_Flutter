import 'package:grocery_app/model/category.dart';
import 'package:hive/hive.dart';

class LocalCategoryService {
  late Box<Category> _popularCategoryBox;
  late Box<Category> _categoryBox;

  Future<void> init() async {
    _popularCategoryBox = await Hive.openBox<Category>('PopularCategories'); // Creation box and OPen it
    _categoryBox = await Hive.openBox<Category>("Categories");
  }
  Future<void> assignAllPopularCategories({required List<Category> popularCategories}) async{
   await _popularCategoryBox.clear();
   await _popularCategoryBox.addAll(popularCategories) ;

  }
  Future<void> assignAllCategories({required List<Category> categories}) async{
    await _categoryBox.clear();
    await _categoryBox.addAll(categories);
  }
List<Category> getPopularCategories()=> _popularCategoryBox.values.toList();
List<Category> categories()=> _categoryBox.values.toList();
}
