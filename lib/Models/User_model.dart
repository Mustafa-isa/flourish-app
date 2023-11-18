class User_model {
  Map<String, String> Info = {'name': '', 'Password': '', 'E-mail': ''};
  void addName(String Name) {
    Info['name'] = Name;
  }
  void addPassword(String password) {
    Info['Password'] = password;
  }

  void addE(String E) {
    Info['E-mail'] = E;
  }
  
}
