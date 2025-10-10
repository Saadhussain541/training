// var dynamic const final

void main()
{
  var a1=10;
  var a2='abc';
  var a3=true;
  var a4=3.34;
  print('a1 value is $a1 and datatype is ${a1.runtimeType}');
  print('a2 value is $a2 and datatype is ${a2.runtimeType}');
  print('a3 value is $a3 and datatype is ${a3.runtimeType}');
  print('a4 value is $a4 and datatype is ${a4.runtimeType}');

  // a1='20';

  dynamic b1=20;
  b1='33';

  dynamic b3;


}


class Human
{
  String? name;
  int? age;
  String? gender;

  void info()
  {
    print(this.name);
    print(this.age);
    print(this.gender);
  }

}
