import 'package:flutter/material.dart';
import 'package:nectar_ui/components/inputs/custom_text_form_field.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/home/model/category_model.dart';
import 'package:nectar_ui/feature/home/widgets/category_list.dart';

class CategorySearchScreen extends StatelessWidget {
  const CategorySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Find Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.Darktextxolor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Search Store'),
                  floatingLabelStyle: TextStyle(
                    fontSize: 16,
                    color: AppColors.greytextxcolor,
                    fontWeight: FontWeight.w600,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20), // rounded edges
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 200,
                  ),

                  itemBuilder: (BuildContext context, int index) {
                    var CategoryModel = categories[index];
                    var category_color = border_color[index];
                    return CategoryList(
                      category_model: CategoryModel,
                      Container_Color: category_color,
                    );
                  },
                  itemCount: categories.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
