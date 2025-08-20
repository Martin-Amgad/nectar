import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_btn.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';

class ProductDetialsScreen extends StatefulWidget {
  const ProductDetialsScreen({super.key, required this.model});
  final ProductsModel model;

  @override
  State<ProductDetialsScreen> createState() => _ProductDetialsScreenState();
}

class _ProductDetialsScreenState extends State<ProductDetialsScreen> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: customBtn(
            BtnLabel: 'Add To Cart',
            width: 365,
            onPressed: () {
              setState(() {
                widget.model.amount = amount;
                final index = cart.indexWhere((item) {
                  return item.name == widget.model.name;
                });
                if (index != -1) {
                  cart[index].amount += amount;
                } else if (index == -1 && widget.model.amount > 0) {
                  cart.add(widget.model);
                }
              });
            },
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.file_upload_outlined),
                    ),
                  ],
                ),
                Image.asset(
                  widget.model.AppAssets,
                  width: 150,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.model.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Darktextxolor,
                      ),
                    ),
                    IconButton(
                      icon: widget.model.favorite
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(Icons.favorite_border),
                      onPressed: () {
                        setState(() {
                          widget.model.favorite = !widget.model.favorite;
                          final index = Favorite.indexWhere((item) {
                            return item.name == widget.model.name;
                          });
                          if (index == -1) {
                            Favorite.add(widget.model);
                          }
                          String message;

                          if (widget.model.favorite) {
                            message =
                                "${widget.model.name} were added to your favorites!";
                          } else {
                            message =
                                "${widget.model.name} were removed from your favorites.";
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message),
                              duration: Duration(seconds: 1),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: EdgeInsets.all(12),
                            ),
                          );
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  widget.model.description,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greytextxcolor,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: AppColors.greytextxcolor,
                          ),
                          onPressed: () {
                            setState(() {
                              if (amount > 0) {
                                amount--;
                              }
                            });
                          },
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: AppColors.greytextxcolor),
                          ),
                          child: Text(
                            amount.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.Darktextxolor,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add, color: AppColors.primarycolor),
                          onPressed: () {
                            setState(() {
                              amount++;
                            });
                          },
                        ),
                      ],
                    ),
                    Text(
                      '\$ ${widget.model.price}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Darktextxolor,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Detail',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Darktextxolor,
                      ),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nutrition',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Darktextxolor,
                      ),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Review',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Darktextxolor,
                      ),
                    ),
                    SizedBox(width: 140),
                    Row(
                      children: [
                        Icon(Icons.star, color: AppColors.carrotolor),
                        Icon(Icons.star, color: AppColors.carrotolor),
                        Icon(Icons.star, color: AppColors.carrotolor),
                        Icon(Icons.star, color: AppColors.carrotolor),
                        Icon(Icons.star, color: AppColors.carrotolor),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
