extension Validation on String ? {
  bool isEmptyOrNull(){
    return this == null || this !.isEmpty;

  }

  bool isDigitString(){
    return this!.runes.every((element) => element>=48 && element<=57);
  }

  bool isCellPhone(){
    return this!.isDigitString() && this!.length>=11 && this!.length<=14;
  
  }

 
    bool isValidEmail() {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this!);
  }
}