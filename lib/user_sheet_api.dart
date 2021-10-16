import 'package:gsheets/gsheets.dart';
import 'package:mean_calcultion/user.dart';
//import 'Payusers.dart';

class expenseManagerSheetApi {
  static const _credentials = r'''
 {
  "type": "service_account",
  "project_id": "expensemanagerapp",
  "private_key_id": "99f5b6762f1cdecac0ebf1788a025ed6a8200f5a",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDtWimVFr0fJeSC\naxhMIZs+F4AlAFXIhfUOhqNBAPcrIFpEEdA+v82smsk1G7iKQRWGoD7BQOkCjvsI\nKGJOoirP6Edxvui55HqueklPL6NvYI5laFXvb+BRvTxzOTNDc7Cq31/q8xRxtZNe\n3oL8wgE1bGsco8yhGTt1kM549vK9Lbz5Gv5LJ1E4AbQ8vXIfqRWrqBqOsvJLNIaV\nvy6eOvSmvHKE5hN8CeQSlVPS52CtzOEd9H6Nengd9dHT9yTe0roFn5kgHRBIHZwr\ng1GS9MceBQgMaxaxrmPcV5Jo3W+/PwNSYghO5ybna81delOjF8aY9JKWY9fjMP1F\nfzz08BELAgMBAAECggEATkKhXVg/CYsr+linjUqzbli/VvPyVQjeUWjRYXiZBu5G\n9RTOjjId9eCfoVQ/l85384jYyE3HxqEwYnM2XukXpq/XBslE4S5VyTvm+iYiBHJY\n4VTyqN1BoJH94ZwlrAL0aJL4hHab8hZFvk0t8XtifKP/+VSE/0VblpsliTsbtIZC\npcQSRHLtD8aKQDdHriYuqOhFHcX1IM/a3KycBCV+1ZKGO9S1VVMRrU/Y4n6VCFbt\nZc+178ZY57DiXycEYOvrO4EbGXTynALhp8xHU+/Rg/qp1It1rI3vQrP9ogKiIaSV\nQfR4UDNgHzTLmu/MavVvYms36J33u7xqjdLhgAixQQKBgQD7+aSPtVOIDiMdvFc9\nSQEezdTasTk3+3pZN3XdMJx9FxwmvZyUS9pzWJM3LbiWhsI6dFg8T9CPNxNEQFb7\nHFldqEtJS+255kG5Id8GWT8vkK81tDWzNVq4FGhnNlsqCxRQKe+tBqoVyEQ1liC3\nuU8W2y5qmTfE4rQmu78pvYyhIQKBgQDxJLl5KIyOW+das4MsX+2OLJum0Hd6YFlC\n723hnrHZTBs4zq4lcowGIqhegpKI0VRjq9wp/AdHc6D6x/XwurX3wWuAPZMTaYGX\n97HJNv6ifTuwivgaGAYNXkrWELrsLGF+NS90MDRwQeQLQ/+dnDZKQynF5gBFo54v\nBRVYZ0JwqwKBgDVvSXCYWXB+3v+NU0rR0oT/zWXbM3ElyVpmIn6XsnfskLG+gBgK\nxfa0D/QhpAV36nSO+68+ldHpMhLFOiziZCkyaVTP30gPBl0GS8+C2Z1yp1VSNBke\n9XAYE9PfeRG/a71cR1GAGk2oPJ7IiYOsrpMARCWi/GqqUN3t7qohYlNBAoGACWp0\nr41sx5ZBF2KRCaeJQBbv0Pis4aNneNyefsPSj/iPy40OcbniS88IogAZNqxtziKE\ny0LjCeAy9ffe25J+znjH+M7uskBZZhSu5Xt3P+MB9KfIfkRX4CfBZlBq7BPjjqkG\n/FNxiLyZ6fKyxXW3DPlIZUjQ0+dKou1g4v3NM1cCgYAMYoUvoEwOtGyVEmlU9JeL\n1vVysyMiZzA/ssOwk5/0p316jytFxT9ixt7eFNN/Yti/4aMxQMvPm7N3MMgmyTqe\nh9v1M5d7M4egPaOc3KJVss0uUhyynEPf50DtBptA9en2odawVLUjylL+3qv+OcRc\nNAb4g8+u0v+P9hlVZrtjWA==\n-----END PRIVATE KEY-----\n",
  "client_email": "meanclapppk@expensemanagerapp.iam.gserviceaccount.com",
  "client_id": "102456845875639226034",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/meanclapppk%40expensemanagerapp.iam.gserviceaccount.com"
}

''';
  static final _spreadSheetId = '1i0f3ufaNFEq9mh2JWvdVASdRv_XN7RAiteanbdzyzbg';
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