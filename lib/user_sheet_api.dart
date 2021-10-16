import 'package:gsheets/gsheets.dart';
import 'package:mean_calcultion/user.dart';
//import 'Payusers.dart';

class expenseManagerSheetApi {
  static const _credentials = r'''
 {
  //Your gsheet credentials
  }

''';
  static final _spreadSheetId = '//Your gsheet credentials
';
  static final _gSheets = GSheets(_credentials);
  static Worksheet? _usersheet;
  //static Worksheet? _usersheet2;
  static Future init() async {
    try {
      final spreadsheet = await _gSheets.spreadsheet(_spreadSheetId);
      _usersheet = await _getWorkSheet(spreadsheet, title: 'MeanCalculatorPK');
      final firstRow = UserFields.getFields();
      _usersheet!.values.insertRow(1, firstRow);


    } catch (e) {
      print("Init Error: $e");
    }
  }
  static Future<Worksheet> _getWorkSheet(
      Spreadsheet spreadsheet, {
        required String title,
      }) async {
    try{
      return await spreadsheet.addWorksheet(title);
    } catch (e){
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future<User?> getByID(int id) async{
    if (_usersheet == null) return null;
    final json = await _usersheet!.values.map.rowByKey(id, fromColumn: 1);
    return json == null? null : User.fromJson(json);
  }

  static Future insert(List<Map<String, dynamic>> rowList) async{
    if(_usersheet == null) return;
    _usersheet!.values.map.appendRows(rowList);
    //if(_usersheet2 == null) return;
    //_usersheet2!.values.map.appendRows(rowList);

  }
}
