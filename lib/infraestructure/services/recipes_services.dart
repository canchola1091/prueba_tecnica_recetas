
import 'package:http/http.dart' as http;
import 'package:prueba_tecnica_recetas/config/utils/my_utils.dart';

class RecipesServices {

  // static Future<Map<String, dynamic>> getCategoriesService() async {
  static Future<void> getCategoriesService() async {
    try {
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/list.php?c=list'));
      MyUtils.msginfo('RESPOSNSE: ${response.statusCode}');
      MyUtils.msginfo('RESPOSNSE: ${response.body}');
    } catch (e) {
      MyUtils.msgerror("Error: $e");
    }
  }

  static Future<void> getRecipesByCategorieService() async {
    try {
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian'));
      MyUtils.msginfo('RESPOSNSE: ${response.statusCode}');
      MyUtils.msginfo('RESPOSNSE: ${response.body}');
    } catch (e) {
      MyUtils.msgerror("Error: $e");
    }
  }

  static Future<void> getDetailRecipeService() async {
    try {
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/lookup.php?i=52965'));
      MyUtils.msginfo('RESPOSNSE: ${response.statusCode}');
      MyUtils.msginfo('RESPOSNSE: ${response.body}');
    } catch (e) {
      MyUtils.msgerror("Error: $e");
    }
  }

}