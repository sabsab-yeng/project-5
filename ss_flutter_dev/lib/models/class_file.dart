main(List<String> arguments){
  //Object
  var micro = new Microphone("Iphone 11 pro", "Silver gray",123456789);
//   micro.name= "Iphone 11 pro";
//   micro.color = "Silver gray";
//   micro.model = 123456789;
  
  micro.setName = " New Iphone 9";
  micro.setColor = "Black";
  micro.model = 0987654;
  
  //Output
  
  print("Iphone name: ${micro.name} " + "Color: ${micro.color} " + "Model number: ${micro.model}");
  micro.isOff();
  micro.isOn();
}

//class micropone
class Microphone{
  String name;
  String color;
  int model = 123433543;
  
  Microphone(this.name, this.color, this.model);
//   Microphone(String name, String color, int model){
//     this.name = name;
//     this.color = color;
//     this.model = model;
//   }
  String get getName => name;
  set setName(String value) => name = value;
  
  String get getColor => color;
  set setColor(String colors) => color = colors;
  
  int get getModel => model;
  set setModel(int modelNumber) => model = modelNumber;
  
  
  
  void isOff() => print("$name is Off");
  
  void isOn() => print("$name is On");
}