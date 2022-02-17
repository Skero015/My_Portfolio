
class Validators {

  //This is for validating the Email
  static String? validateEmail(String? value) {
    Pattern pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern.toString());

    if(value!.trim().isEmpty){
      return 'This field cannot be left empty.';
    }else if (!regex.hasMatch(value.trim())) {
      return 'Please enter a valid email address.';
    } else {
      return null;
    }

  }

  //This is for validating the Name
  static String? validateName(String? value) {
    Pattern pattern = r"^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}$";
    RegExp regex = RegExp(pattern.toString());

    if (value!.trim().isEmpty){
      return 'Please enter a name.';
    }else if(!regex.hasMatch(value!.trim())){
      return 'Name must have 4 or more characters';
    } else{
      return null;
    }

  }

  //This is for validating other fields
  static String? validateField(String? value) {

    if (value!.trim().isEmpty) {
      return 'Field cannot be empty.';
    } else {
      return null;
    }
  }
}