import 'dart:convert';

class UserFields{
  static final String id = 'Id';
  static final String name = 'Name';
  static final String rate = 'Rate';
  static final String quantity = 'Quantity';
  static final String price = 'Price';
  static final String date = 'Date';
  static final String todaysMeanPrice = "Todays Mean Price";
  static final String todayPrice = "Today Price";
  static final String todaysQuantity = "Today's Quantity";
  static final String todays_Mean_Price = "Today's Mean Price";

  static List<String> getFields() => [
    id, name, rate,quantity,price,date,
    todaysMeanPrice,todayPrice,todaysQuantity,todays_Mean_Price
    //sTotal
  ];
}
class User{
  final int? id;
  final String name;
  final int? rate;
  final int? quantity;
  final int? price;
  final String date;
  final int? todaysMeanPrice;
  final int? todayPrice;
  final int? todaysQuantity;
 // final double? todays_Mean_Price;

  const User({
    this.id,
    required this.name,
    this.rate,
    this.quantity,
    this.price,
    required this.date,
    this.todaysMeanPrice,
    this.todayPrice,
    this.todaysQuantity,
   // this.todays_Mean_Price,
    });

  static User fromJson(Map<String, dynamic> json) => User(
    id: jsonDecode(json[UserFields.id]),
    name: json[UserFields.name],
    rate: jsonDecode(json[UserFields.rate]),
    quantity: jsonDecode(json[UserFields.quantity]),
    price: jsonDecode(json[UserFields.price]),
    date: json[UserFields.date],
    todaysMeanPrice: jsonDecode(json[UserFields.todaysMeanPrice]),
    todayPrice: jsonDecode(json[UserFields.todayPrice]),
    todaysQuantity: jsonDecode(json[UserFields.todaysQuantity]),
    //todays_Mean_Price: jsonDecode(json[UserFields.todays_Mean_Price]),
    );

  Map<String, dynamic> toJson()=>{
    UserFields.id : id,
    UserFields.name: name,
    UserFields.rate: rate,
    UserFields.quantity:quantity,
    UserFields.price: price,
    UserFields.date: date,
    UserFields.todaysMeanPrice: todaysMeanPrice,
    UserFields.todayPrice: todayPrice,
    UserFields.todaysQuantity : todaysQuantity,
    //UserFields.todays_Mean_Price: todays_Mean_Price,
  };
}
