import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mean_calcultion/main.dart';
import 'user_sheet_api.dart';
import 'user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await expenseManagerSheetApi.init();

  runApp(
      const MaterialApp(home: Reports()));
}

class Reports extends StatefulWidget {
  //const Reports({Key? key}) : super(key: key);
  final User?user;
  const Reports({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  var now = DateTime.now();
  var now1 = DateFormat("dd/MM/yyyy").format(DateTime.now());
  late TextEditingController _totalMeanController;
  late TextEditingController _totalQuantityController;
  late TextEditingController _totalPriceController;

  User?user;
  @override
  void initState(){
    super.initState();

    getusers();
    initusers();
  }
  @override
  void didUpdateWidget(covariant Reports oldWidget){
    super.didUpdateWidget(oldWidget);
    initusers();
  }
  void initusers(){
    final totalMean = widget.user == null ? 0 : widget.user!.todaysMeanPrice;
    final totalQuantity = widget.user == null ? 0 : widget.user!.todaysQuantity;
    final totalPrice = widget.user == null ? 0 : widget.user!.todayPrice;

    _totalMeanController = TextEditingController(text: totalMean.toString());
    _totalQuantityController = TextEditingController(text: totalQuantity.toString());
    _totalPriceController = TextEditingController(text: totalPrice.toString());
  }
  Future getusers() async{
    final user = await expenseManagerSheetApi.getByID(9999999);
    print(user?.toJson());
    //print(user.totalEmployees);
    //print(user.Emp2RSalary);
    //print(user.Emp1RSalary);

    setState((){
      this.user = user;
    });
  }
  // This widget is the root of your application.
  @override

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: "Reports",
      home: Scaffold(
        primary: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 1,
          title: Row(
            mainAxisAlignment : MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Reports ",
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold),),
            Text("(Date: $now1)",style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold),textAlign: TextAlign.end, ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10.0),),
              Container(
                width: width * 0.95,
                height: height * 0.15,
                child: Column(children: [
                  Padding(padding: EdgeInsets.all(10.0)),
                  const Text("Today's Total Mean", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ), textAlign: TextAlign.center,),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text("${user?.todaysMeanPrice.toString()}", style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ), textAlign: TextAlign.center,),
                ],),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(10.0,10.0,0.0,10.0),),
                  Container(
                    width: width * 0.46,
                    height: height * 0.245,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10.0)),
                        Text("Today's Total\nQuantity",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),textAlign: TextAlign.center,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Text("${user?.todaysQuantity.toString()}",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),textAlign: TextAlign.center,)
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(10.0,10.0,0.0,10.0),),
                  Container(
                    width: width * 0.46,
                    height: height * 0.245,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),),
                        const Text("Today's Total\nPrice", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),textAlign: TextAlign.center,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Text("${user?.todayPrice.toString()}",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),textAlign: TextAlign.center,)
                      ],
                    ),

                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0.0,10.0,10.0,10.0),),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(10.0,10.0,0.0,10.0),),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          //alignment: Alignment.center,
                          width: width * 0.95,
                          height: height * 0.3,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20.0,5.0,5.0,5.0),),
                                const Text("Summary\n", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),textAlign: TextAlign.left,
                                ),
                                const Padding(padding: EdgeInsets.fromLTRB(20.0,5.0,5.0,5.0),),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1. Total Rate : ${user?.rate.toString()}",
                                      style:  const TextStyle(
                                        fontSize: 20,
                                        //fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Padding(padding: EdgeInsets.fromLTRB(20.0,5.0,5.0,5.0),),
                                        Text("2. Total Quantity : ${user?.quantity.toString()}",
                                          style:  const TextStyle(
                                            fontSize: 20,
                                            //fontWeight: FontWeight.bold
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Padding(padding: EdgeInsets.fromLTRB(20.0,5.0,5.0,5.0),),
                                        Text("3. Total Price : ${user?.price.toString()}",
                                          style:  const TextStyle(
                                            fontSize: 20,
                                            //fontWeight: FontWeight.bold
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],),
                                  ],),
                              ]),
                          color: Colors.grey.shade400,
                        ),),
                      Padding(padding: EdgeInsets.all(10.0)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: width * 0.95,
                          height: height * 0.3,
                        color: Colors.grey.shade400,
                      ),),
                      Padding(padding: EdgeInsets.all(10.0)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: width * 0.95,
                          height: height * 0.3,
                        color: Colors.grey.shade400,
                      ),),
                    ],),
                    ),
                  ),
            Padding(padding: EdgeInsets.all(10),),
            InkWell(
              child: Container(
                width :width *0.80,
                height: height*0.05,
                child: Icon(Icons.home_filled),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                ),
              ),
                onTap:(){
                  Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                }
            ),
            ],),
        ),
            ),
    );
  }
}
