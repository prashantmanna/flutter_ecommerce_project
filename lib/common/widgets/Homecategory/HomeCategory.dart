import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/shimmer/CategoryShimmer.dart';
import 'package:flutter_ecommerce_project/features/shop/controllers/category_controller.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/sub_category/sub_category.dart';
import 'package:get/get.dart';

import '../product/VerticalTextImage.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Obx(

      () {
        if(controller.reloading.value) return const CategoryShimmer();
        if(controller.featuredCategory.isEmpty){
          return Center(
            child: Text("No Data Found",style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
          );
        }
          return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.featuredCategory.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final item = controller.featuredCategory[index];
              return  VerticalImageText(
                image: item.image,
                title: item.name,
                onTap: ()=>Get.to(const SubCategory()),
              );
            }),
      );}
    );
  }
}


