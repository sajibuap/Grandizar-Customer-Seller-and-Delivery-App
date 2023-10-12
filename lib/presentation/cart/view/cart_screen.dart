import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:grandizar_customer_v2/presentation/constants/svg_constants.dart';

import '../../check_out/view/check_out_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int cartListSize = 3;
  List<CartProductModel> cartList = [];

  @override
  void initState() {
    cartList.add(CartProductModel(quantity: 1));
    cartList.add(CartProductModel(quantity: 2));
    cartList.add(CartProductModel(quantity: 3));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: Colors.grey,
        // appBar: CustomAppBar(
        //   title: 'Cart',
        // ),
        body: cartListSize > 0
            ? Container(
                padding: EdgeInsets.all(20.0),
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Order Items'),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF2FAE62), width: 0.50),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text('Add Items'),
                              )
                            ],
                          ),
                          Container(
                            height: 300,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: cartListSize,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              child: Image.network(
                                                "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                                width: width / 4.5,
                                                height: width / 4.5,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text('Chicken skewers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                                                  Text.rich(TextSpan(text: '', children: [
                                                    TextSpan(
                                                      text: 'Medium Spicy',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.normal),
                                                    ),
                                                    TextSpan(
                                                      text: ' (+\$50)',
                                                      style: TextStyle(
                                                          fontSize: 9,color: Color(0xff00B528)
                                                          ),
                                                    ),
                                                  ])),
                                                  Text.rich(TextSpan(text: '', children: [
                                                    TextSpan(
                                                      text: 'Family Size',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.normal),
                                                    ),
                                                    TextSpan(
                                                      text: ' (+\$70)',
                                                      style: TextStyle(
                                                          fontSize: 9,color: Color(0xff00B528)
                                                      ),
                                                    ),
                                                  ])),
                                                  //Text('Medium Spicy (+\$50) \nFamily Size (+\$70)',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),),
                                                ],
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              padding: EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  left: 8,
                                                  right: 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xFF000000),
                                                    width: 0.50),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      InkWell(
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(3.0),
                                                          child: SvgPicture.asset(
                                                            SvgConstants.cartMinus,
                                                            height: 2,
                                                            width: 2,
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          onQuantityDecrease(index);
                                                        },
                                                      ),
                                                      Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 10,
                                                                  right: 10),
                                                          child: Text(cartList[index].quantity.toString())),
                                                      InkWell(
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(3.0),
                                                          child: SvgPicture.asset(
                                                            SvgConstants.cartPlus,
                                                            height: 10,
                                                            width: 10,
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          onQuantityIncrease(index);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 4.0, right: 8.0),
                                              child: SvgPicture.asset(
                                                SvgConstants.trash,
                                                height: 25,
                                                width: 25,
                                              ),
                                            )
                                          ],
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            //padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text.rich(TextSpan(text: '', children: [
                                  TextSpan(
                                    text: 'Estimated Delivery Time',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text: ' 20 mins',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ])),
                                Image.asset(
                                  PngConstants.delivery,
                                  height: 80,
                                  width: 80,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            height: 5,
                            color: Color(0xffF7F7F7),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      SvgConstants.call24,
                                      height: 40,
                                      width: 40,
                                    ),
                                    Text('100% Satisfaction',style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      SvgConstants.call24,
                                      height: 40,
                                      width: 40,
                                    ),
                                    Text('24/7 Support',style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      SvgConstants.payment,
                                      height: 40,
                                      width: 40,
                                    ),
                                    Text('Secure Payment',style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            height: 5,
                            color: Color(0xffF7F7F7),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Order Summary',style: TextStyle(fontSize: 12, color: Colors.black),),
                              Text('\$384',style: TextStyle(fontSize: 12, color: Colors.black),)],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Sub Total',style: TextStyle(fontSize: 12, color: Colors.black),),
                                  Text(
                                    ' (Including Vat)',style: TextStyle(fontSize: 10, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Text('\$384',style: TextStyle(fontSize: 12, color: Colors.black),)
                            ],
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Delivery Fee',style: TextStyle(fontSize: 12, color: Colors.black),),
                              Text('\$384',style: TextStyle(fontSize: 12, color: Colors.black),)],
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Promo & Discount',style: TextStyle(fontSize: 12, color: Colors.black),),
                              Text('\$384',style: TextStyle(fontSize: 12, color: Colors.black),)],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DottedLine(
                            dashLength: 2,
                            dashGapLength: 2,
                            lineThickness: 2,
                            dashColor: Colors.grey,
                            dashGapColor: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Total Bill',style: TextStyle(fontSize: 12, color: Colors.black),),
                              Text('\$384',style: TextStyle(fontSize: 12, color: Colors.black),)],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context)=> CheckOutScreen())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 10, bottom: 0),
                              alignment: Alignment.center,
                              width: width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xffEB1933),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Check Out',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgConstants.cartEmpty),
                  //SizedBox(height: 100,),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.all(40),
                      alignment: Alignment.center,
                      width: width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffEB1933),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Start Shopping',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ));
  }
  onQuantityIncrease(int item_index) {
    //cartList[item_index].quantity++;
    if (cartList[item_index].quantity! <
        100) {
      cartList[item_index].quantity = cartList[item_index].quantity!+1;
      //getSetCartTotal();
      setState(() {});
    } else {
      // ToastComponent.showDialog(
      //     "${AppLocalizations.of(context).cart_screen_cannot_order_more_than} ${cartList[item_index].quantity} ${AppLocalizations.of(context).cart_screen_items_of_this}",
      //     gravity: Toast.center,
      //     duration: Toast.lengthLong);
    }
  }
  onQuantityDecrease(int item_index) {
    if (cartList[item_index].quantity! >
        0) {
      cartList[item_index].quantity = cartList[item_index].quantity! - 1;
      //getSetCartTotal();
      setState(() {});
    } else {
      // ToastComponent.showDialog(
      //     "${AppLocalizations.of(context).cart_screen_cannot_order_more_than} ${_shopList[seller_index].cart_items[item_index].lower_limit} ${AppLocalizations.of(context).cart_screen_items_of_this}",
      //     gravity: Toast.center,
      //     duration: Toast.lengthLong);
    }
  }
}

class CartProductModel {
  String? productName;
  int? quantity;

  CartProductModel({this.productName, this.quantity});
}
