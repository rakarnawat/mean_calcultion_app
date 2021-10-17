import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mean_calcultion/Reports.dart';
import'Reports.dart';
import 'user_sheet_api.dart';
import 'user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await expenseManagerSheetApi.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mean Calculation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var now = DateTime.now();
  var now1 = DateFormat("dd/MM/yyyy").format(DateTime.now());
 // int _counter = 0;
  TextEditingController quantityController1 = TextEditingController();
  TextEditingController rateController1 = TextEditingController();
  TextEditingController quantityController2 = TextEditingController();
  TextEditingController rateController2 = TextEditingController();
  TextEditingController quantityController3 = TextEditingController();
  TextEditingController rateController3 = TextEditingController();
  TextEditingController quantityController4 = TextEditingController();
  TextEditingController rateController4 = TextEditingController();
  TextEditingController quantityController5 = TextEditingController();
  TextEditingController rateController5 = TextEditingController();
  TextEditingController quantityController6 = TextEditingController();
  TextEditingController rateController6 = TextEditingController();
  TextEditingController quantityController7 = TextEditingController();
  TextEditingController rateController7 = TextEditingController();
  TextEditingController quantityController8 = TextEditingController();
  TextEditingController rateController8 = TextEditingController();
  TextEditingController quantityController9 = TextEditingController();
  TextEditingController rateController9 = TextEditingController();
  TextEditingController quantityController10 = TextEditingController();
  TextEditingController rateController10 = TextEditingController();
  TextEditingController quantityController11 = TextEditingController();
  TextEditingController rateController11 = TextEditingController();
  TextEditingController quantityController12 = TextEditingController();
  TextEditingController rateController12 = TextEditingController();

  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int value4 = 0;
  int value5 = 0;
  int value6 = 0;
  int value7 = 0;
  int value8 = 0;
  int value9 = 0;
  int value10 = 0;
  int value11 = 0;
  int value12 = 0;

  int rvalue1 = 0;
  int rvalue2 = 0;
  int rvalue3 = 0;
  int rvalue4 = 0;
  int rvalue5 = 0;
  int rvalue6 = 0;
  int rvalue7 = 0;
  int rvalue8 = 0;
  int rvalue9 = 0;
  int rvalue10 = 0;
  int rvalue11 = 0;
  int rvalue12 = 0;

  bool rbvalue = false;
  int _value=1;
  var name = 'NA';


printData() async {
    //Future insertUsers() async{
      //final users = [
        //User(id: 1, name: "Soya Bin",quantity: quantityController, rate: rateController,),
      //];
      //final jsonUsers = users.map((user) => user.toJson()).toList();
      //await expenseManagerSheetApi.insert(jsonUsers);
    //};

   /* print("Quantity : ${quantityController1.text}  "
            "Rate: ${rateController1.text}\n"
        "Quantity : ${quantityController2.text}  "
        "Rate: ${rateController2.text}");*/
}
 /* void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
        child : Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10)),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                         Text("Enter The Data",
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18),
                          textAlign: TextAlign.start,),
                        const Padding(padding: EdgeInsets.all(5),),
                        Text(
                          'Row Count : 12 ',textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                       alignment: Alignment.centerLeft,
                        child:Row(children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  //print("Soya Bin is selected");
                                  _value=(value) as int;
                                });
                              },
                            ),
                            const SizedBox(width: 3.0,),
                            const Text("Soya Bin"),
                            Radio(
                              value: 2,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                //print("Toor is selected");
                                _value=(value) as int;
                              });},
                            ),
                            const SizedBox(width: 3.0,),
                            const Text("Toor"),
                            Radio(
                              value: 3,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  //print("Moong is selected");
                                  _value=(value) as int;
                                });
                              },
                            ),
                            const SizedBox(width: 3.0,),
                            const Text("Moong"),
                          Radio(
                            value: 4,
                            groupValue: _value,
                            onChanged: (value){setState(() {
                              //print("Chana is selected");
                              _value=(value) as int;
                            });},
                          ),
                          const SizedBox(width: 3.0,),
                          const Text("Chana"),
                          Radio(
                            value: 5,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                //print("Bajra is selected");
                                _value=(value) as int;
                              });
                            },
                          ),
                          const SizedBox(width: 3.0,),
                          const Text("Bajara"),
                          ],)),
                        ),
                  const Padding(padding: EdgeInsets.all(5)),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  width: width*0.95,
                  height: height * 0.65,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.all(5)),
                              const Text("1.", style: TextStyle(
                                  fontSize: 18,
                              //    fontWeight: FontWeight.bold
                              ),),
                              const Padding(padding: EdgeInsets.all(5)),
                              Flexible(child:
                              TextFormField(
                                controller: quantityController1,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
                                decoration: const InputDecoration(
                                  hintText: "Enter Quantity",
                                  labelText: "Quantity",
                                  border: OutlineInputBorder(),
                                ),
                              ),

                              ),
                              const Padding(padding: EdgeInsets.all(5),),
                              Flexible(child: TextFormField(
                                controller: rateController1,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
                                decoration: const InputDecoration(
                                  hintText: "Enter Rate",
                                  labelText: "Rate",
                                  border: OutlineInputBorder(),
                                ),
                              ),),
                              const Padding(padding: EdgeInsets.all(10),)
                            ],
                          ),


                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("2.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController2,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController2,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("3.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController3,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController3,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("4.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController4,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController4,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("5.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController5,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController5,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("6.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController6,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController6,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("7.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController7,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController7,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("8.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController8,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController8,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("9.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController9,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController9,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("10.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController10,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController10,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("11.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController11,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController11,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text("12.", style: TextStyle(
                            fontSize: 18,
                            //    fontWeight: FontWeight.bold
                          ),),
                          const Padding(padding: EdgeInsets.all(5)),
                          Flexible(child:
                          TextFormField(
                            controller: quantityController12,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(5),),
                          Flexible(child: TextFormField(
                            controller: rateController12,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: "Enter Rate",
                              labelText: "Rate",
                              border: OutlineInputBorder(),
                            ),
                          ),),
                          const Padding(padding: EdgeInsets.all(10),)
                        ],
                      ),
                      ],
                    ),
                  ),
                ),
              ),



                  /*Container(
                    width: width * 0.95,
                    height: height * 0.56,
                    child: Column(children: <Widget>[
                      Flexible(child: ListView.builder(
                        itemCount: listDynamic.length,
                          itemBuilder: (_, index)=> listDynamic[index]))
                    ],),
                  ),*/
                  const Padding(padding: EdgeInsets.all(5)),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                width: width * 0.45,
                                height: height * 0.06,
                                child: const Text("Submit",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                ),
                              ),
                          onTap: () async {
                            printData();
                            if(_value == 1){
                              name = 'Soya Bin';
                            } else if (_value == 2){
                              name = 'Toor';
                            }else if (_value == 3){
                              name = 'Moong';
                            }else if (_value == 4){
                              name = 'Jawari';
                            }else if (_value == 5){
                              name = 'Bajra';
                            }else{
                              name ='NA';
                            }
                            //insertUsers();
                            //print("-----------");
                            //print(quantityController1.text);
                            //print(int.parse(quantityController1.text));
                            //print("-----------");

                            if(quantityController1.text == ''){
                              //print("crt qvalue1");
                              value1 =0;
                            }
                            else{
                              //print("qvalue1 not  null\n");
                            value1= int.parse(quantityController1.text);
                            //print("---success-----");
                            }
                            if(rateController1.text == ''){
                              //print("crt rvalue1");
                              rvalue1 = 0;
                            }
                            else{//print("rvalue1 not  null\n");
                            rvalue1 = int.parse(rateController1.text); }

                            if(quantityController2.text == ''){
                              //print("crt qvalue2");
                               value2 =0;
                            }
                            else{//print("qvalue2 not  null\n");
                             value2 = int.parse(quantityController2.text);
                            }
                            if(rateController2.text == ""){
                              //print("crt rvalue2");
                              rvalue2 = 0;
                            }
                            else{//print("rvalue2 not  null\n");
                             rvalue2 = int.parse(rateController2.text); }
                            if(quantityController3.text == ''){
                              //print("crt value");
                              value3 =0;
                            }
                            else{//print("value2 not  null\n");
                            value3 = int.parse(quantityController3.text);
                            }
                            if(rateController3.text == ''){
                              //print("crt value2");
                              rvalue3 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue3 = int.parse(rateController3.text); }
                            if(quantityController4.text == ''){
                              //print("crt value");
                              value4 =0;
                            }
                            else{//print("value2 not  null\n");
                            value4 = int.parse(quantityController4.text);
                            }
                            if(rateController4.text == ''){
                              //print("crt value2");
                              rvalue4 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue4 = int.parse(rateController4.text); }
                            if(quantityController5.text == ''){
                              //print("crt value");
                              value5 =0;
                            }
                            else{//print("value2 not  null\n");
                            value5 = int.parse(quantityController5.text);
                            }
                            if(rateController5.text == ''){
                              //print("crt value2");
                              rvalue5 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue5 = int.parse(rateController5.text); }
                            if(quantityController6.text == ''){
                              //print("crt value");
                              value6 =0;
                            }
                            else{//print("value2 not  null\n");
                            value6 = int.parse(quantityController6.text);
                            }
                            if(rateController6.text == ''){
                              //print("crt value2");
                              rvalue6 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue6 = int.parse(rateController6.text); }
                            if(quantityController7.text == ''){
                              //print("crt value");
                              value7 =0;
                            }
                            else{//print("value2 not  null\n");
                            value7 = int.parse(quantityController7.text);
                            }
                            if(rateController7.text == ''){
                              //print("crt value2");
                              rvalue7 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue7= int.parse(rateController7.text); }
                            if(quantityController8.text == ''){
                              //print("crt value");
                              value8 =0;
                            }
                            else{//print("value2 not  null\n");
                            value8 = int.parse(quantityController8.text);
                            }
                            if(rateController8.text == ''){
                              //print("crt value2");
                              rvalue8 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue8 = int.parse(rateController8.text); }
                            if(quantityController9.text == ''){
                              //print("crt value");
                              value9 =0;
                            }
                            else{//print("value2 not  null\n");
                            value9 = int.parse(quantityController9.text);
                            }
                            if(rateController9.text == ''){
                              //print("crt value2");
                              rvalue9 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue9 = int.parse(rateController9.text); }
                            if(quantityController10.text == ''){
                              //print("crt value");
                              value10 =0;
                            }
                            else{//print("value2 not  null\n");
                            value10= int.parse(quantityController10.text);
                            }
                            if(rateController10.text == ''){
                              //print("crt value2");
                              rvalue10 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue10 = int.parse(rateController10.text); }
                            if(quantityController11.text == ''){
                              //print("crt value");
                              value11 =0;
                            }
                            else{//print("value2 not  null\n");
                            value11 = int.parse(quantityController11.text);
                            }
                            if(rateController11.text == ''){
                              //print("crt value2");
                              rvalue11 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue11 = int.parse(rateController11.text); }
                            if(quantityController12.text == ''){
                              //print("crt value");
                              value12 =0;
                            }
                            else{//print("value2 not  null\n");
                            value12 = int.parse(quantityController12.text);
                            }
                            if(rateController12.text == ''){
                              //print("crt value2");
                              rvalue12 = 0;
                            }
                            else{//print("value2 not  null\n");
                            rvalue12 = int.parse(rateController12.text); }
                            //print(value1);
                            final users = [
                              User(id: 1,
                                  name: name,
                                  quantity: int.parse(value1.toString()),
                                  rate: int.parse(rvalue1.toString()),
                                  date: now1,
                                  price: int.parse(value1.toString())*int.parse(rvalue1.toString())),
                              User(id: 2,
                                name: name,
                                quantity: int.parse(value2.toString()),
                                  rate: int.parse(rvalue2.toString()),
                                date: now1,
                                price: int.parse(value2.toString())*int.parse(rvalue2.toString())),

                              User(id: 3,
                                  name: name,
                                  quantity: int.parse(value3.toString()),
                                  rate: int.parse(rvalue3.toString()),
                                  date: now1,
                                  price: int.parse(value3.toString())*int.parse(rvalue3.toString())),
                              User(id: 4,
                                  name: name,
                                  quantity: int.parse(value4.toString()),
                                  rate: int.parse(rvalue4.toString()),
                                  date: now1,
                                  price: int.parse(value4.toString())*int.parse(rvalue4.toString())),

                              User(id: 5,
                                  name: name,
                                  quantity: int.parse(value5.toString()),
                                  rate: int.parse(rvalue5.toString()),
                                  date: now1,
                                  price: int.parse(value5.toString())*int.parse(rvalue5.toString())),
                              User(id: 6,
                                  name: name,
                                  quantity: int.parse(value6.toString()),
                                  rate: int.parse(rvalue6.toString()),
                                  date: now1,
                                  price: int.parse(value6.toString())*int.parse(rvalue6.toString())),

                              User(id: 7,
                                  name: name,
                                  quantity: int.parse(value7.toString()),
                                  rate: int.parse(rvalue7.toString()),
                                  date: now1,
                                  price: int.parse(value7.toString())*int.parse(rvalue7.toString())),
                              User(id: 8,
                                  name: name,
                                  quantity: int.parse(value8.toString()),
                                  rate: int.parse(rvalue8.toString()),
                                  date: now1,
                                  price: int.parse(value8.toString())*int.parse(rvalue8.toString())),

                              User(id: 9,
                                  name: name,
                                  quantity: int.parse(value9.toString()),
                                  rate: int.parse(rvalue9.toString()),
                                  date: now1,
                                  price: int.parse(value9.toString())*int.parse(rvalue9.toString())),
                              User(id: 10,
                                  name: name,
                                  quantity: int.parse(value10.toString()),
                                  rate: int.parse(rvalue10.toString()),
                                  date: now1,
                                  price: int.parse(value10.toString())*int.parse(rvalue10.toString())),

                              User(id: 11,
                                  name: name,
                                  quantity: int.parse(value11.toString()),
                                  rate: int.parse(rvalue11.toString()),
                                  date: now1,
                                  price: int.parse(value11.toString())*int.parse(rvalue11.toString())),
                              User(id: 12,
                                  name: name,
                                  quantity: int.parse(value12.toString()),
                                  rate: int.parse(rvalue12.toString()),
                                  date: now1,
                                  price: int.parse(value12.toString())*int.parse(rvalue12.toString())),
                            ];
                            final jsonUsers = users.map((user) => user.toJson()).toList();
                            await expenseManagerSheetApi.insert(jsonUsers);
                            quantityController1.clear();
                            quantityController2.clear();
                            quantityController3.clear();
                            quantityController4.clear();
                            quantityController5.clear();
                            quantityController6.clear();
                            quantityController7.clear();
                            quantityController8.clear();
                            quantityController9.clear();
                            quantityController10.clear();
                            quantityController11.clear();
                            quantityController12.clear();
                            rateController1.clear();
                            rateController2.clear();
                            rateController3.clear();
                            rateController4.clear();
                            rateController5.clear();
                            rateController6.clear();
                            rateController7.clear();
                            rateController8.clear();
                            rateController9.clear();
                            rateController10.clear();
                            rateController11.clear();
                            rateController12.clear();
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Data Updated Successfully")));

                            },
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                            InkWell(
                              child: Container(
                            alignment: Alignment.center,
                            width: width * 0.45,
                            height: height * 0.06,
                                child: const Text("Reports",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                          ),
                          onTap: () async {
                            printData();
                            //insertUsers();
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Reports()),);
                          },
                        ),
                          //Padding(padding: EdgeInsets.all(10)),
                          ],),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          /*floatingActionButton: FloatingActionButton(
            splashColor: Colors.redAccent,
            backgroundColor: Colors.green,
            focusElevation: 10,
            onPressed : addDynamic,//_incrementCounter,
            child: Icon(Icons.add),
          ),*/ // This trailing comma makes auto-formatting nicer for build methods.
        ),
    );
  }

}


/*class DynamicWidget extends StatelessWidget{
  TextEditingController quantityController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(5)),
          Flexible(child:
          //Padding(padding: EdgeInsets.all(5)),
            TextField(
              controller: quantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Quantity",
                labelText: "Quantity",
                border: OutlineInputBorder(),
              ),
            ),),
            //Padding(padding: EdgeInsets.all(5),),
            Flexible(child: TextField(
              controller: rateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Rate",
                labelText: "Rate",
                border: OutlineInputBorder(),
              ),
            ),),
          Padding(padding: EdgeInsets.all(10),)
        ],
      ),
    );
  }
}*/
