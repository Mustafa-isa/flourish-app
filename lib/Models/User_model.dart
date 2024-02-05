// import 'package:flourish/Models/Product_model.dart';

class User_model {
  Map<String, String> Info = {'name': '', 'Password': '', 'E-mail': ''};
  Map<int,String> ids ={};

  void addName(String Name) {
    Info['name'] = Name;
  }

  void addPassword(String password) {
    Info['Password'] = password;
  }

  void addE(String E) {
    Info['E-mail'] = E;
  }

  void addToCart(int id , String m){
    ids[id]=m;
  }
}
