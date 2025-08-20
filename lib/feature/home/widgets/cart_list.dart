import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/feature/home/model/product_model.dart';

class CartList extends StatefulWidget {
  const CartList({super.key, required this.Cart_Products});
  final ProductsModel Cart_Products;

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  int amount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
      width: double.infinity,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(widget.Cart_Products.AppAssets),
            width: 70,
            height: 65,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.Cart_Products.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Darktextxolor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        widget.Cart_Products.amount = 1;
                        cart.remove(widget.Cart_Products);
                      },
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  widget.Cart_Products.description,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greytextxcolor,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FloatingActionButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                            side: BorderSide(color: Colors.grey),
                          ),

                          mini: true,
                          onPressed: () {
                            setState(() {
                              if (widget.Cart_Products.amount < 0) {
                                widget.Cart_Products.amount = 0;
                              } else {
                                widget.Cart_Products.amount--;
                              }
                            });
                          },
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.remove,
                            color: AppColors.greytextxcolor,
                          ),
                        ),
                        Text(
                          '${widget.Cart_Products.amount}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.Darktextxolor,
                          ),
                        ),
                        FloatingActionButton(
                          heroTag: UniqueKey(),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                            side: BorderSide(color: Colors.grey),
                          ),

                          mini: true,
                          onPressed: () {
                            setState(() {
                              widget.Cart_Products.amount++;
                            });
                          },
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add, color: AppColors.primarycolor),
                        ),
                      ],
                    ),

                    Text('\$ ${widget.Cart_Products.price}'),
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
