# grocery_app

A new Flutter project.

## Screenshots

  HomePage1                 |   HomePage2        |  CetegoryPage |   SearchPage | ProfilPage        
:-------------------------:|:-------------------------:|:-------------------------: | :-------------------------:|:-------------------------:|
![](https://firebasestorage.googleapis.com/v0/b/shopappflutter-73fe5.appspot.com/o/Screen_Grrocery_Flutter%2FScreenshot_20230517-121722.jpg?alt=media&token=eea08a4c-e305-4f2c-908d-757eca70bd53)|![](https://firebasestorage.googleapis.com/v0/b/shopappflutter-73fe5.appspot.com/o/Screen_Grrocery_Flutter%2FScreenshot_20230517-140929.jpg?alt=media&token=acb0203e-7b1a-41c0-aab8-29725dc9e571)|![](https://firebasestorage.googleapis.com/v0/b/shopappflutter-73fe5.appspot.com/o/Screen_Grrocery_Flutter%2FScreenshot_20230517-122304.jpg?alt=media&token=e4a48146-e74e-490b-808a-8bdd555e2e56) | ![](https://firebasestorage.googleapis.com/v0/b/shopappflutter-73fe5.appspot.com/o/Screen_Grrocery_Flutter%2FScreenshot_20230517-122317.jpg?alt=media&token=3a34d9a5-89ee-413a-a3e4-3b9da7c33451)|![](https://firebasestorage.googleapis.com/v0/b/shopappflutter-73fe5.appspot.com/o/Screen_Grrocery_Flutter%2FScreenshot_20230517-122325.jpg?alt=media&token=47ef779d-9aad-4770-b138-7bd92ac0cc09)|

## Directory Structure
```
lib
│───constant.dart
│───main.dart
│───service
│    │──local_servie
│    │   │──local_ad_banner_service.dart
|    │   │──local_category_service.dart 
│    │   └──local_product_service.dart
│    |──remote_service
│            │──remote_banner_service.dart
│            │──remote_popular_category_service.dart
│            │──remote_popular_product_service.dart
│            └──remote_product_service.dart     
|───controller 
│    │──controllers.dart
│    │──dashboard_controller.dart
│    │──home_controller.dart
│    └──product_controller.dart     
│    
└───extension
│    │──color_extension.dart
│    └──string_extension.dart
└───helper
│    └──binding.dart
│
└───route
│    │──app_page.dart
│    └──app_route.dart
└───model
│    │──ad_banner.dart
│    │──ad_banner.g.dart
│    │──category.dart
│    │──category.g.dart
│    │──product.dart
     │──product.g.dart
│    └──tag.dart   
└───views
│    │──account
│    │   └──account_screen.dart   
│    │──category
│    │   └──category_screen.dart
│    │ 
│    │ 
│    │──dashboard
│    │   │──dashboard_binding.dart
│    │   └──dashboard_screen.dart
│    │ 
│    │──home
│    │   │──component
│    │   │   │──carousel_slider
│    │   │   │   │──banner_card.dart
│    │   │   │   │──carousel_loading.dart 
│    │   │   │   └──carousel_slider_view.dart 
│    │   │   │──popular_category
│    │   │   │   │──popular_category.dart
│    │   │   │   │──popular_category_card.dart
│    │   │   │   │──popular_category_loading.dart 
│    │   │   │   └──popular_category_loading_card.dart 
│    │   │   │──popular_product  
│    │   │   │   │──popular_product.dart
│    │   │   │   │──popular_category_card.dart 
│    │   │   │   └──popular_category_loading.dart   
│    │   │   └──section_tittle.dart
│    │   └──home_screen.dart
│    │ 
│    │──product    
│    │   │──component
│    │   │   │──product_card.dart
│    │   │   │──product_grid.dart
│    │   │   └──product_loading_grid.dart
│    │   └──product_screen.dart   
│    │ 
│    │──product_details
│        └──product_detail_screen.dart
│     
│─theme   
   └──app_theme.dart 

> If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a cup of 
