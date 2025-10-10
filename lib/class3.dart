void main()
{

  // void info(String name,int age,String education,String gender)
  // {
  //   print('Name is $name');
  //   print('Age is $age');
  //   print('Education is $education');
  //   print('Gender is $gender');
  //
  // }
  // info('Nazia',20,'Graduation','Male');


  void Information(
      {required String fullName, String gender='Male', String? education, int salary=20000})
  {
    print('Fullname is $fullName');
    print('Gender is $gender');
    print("Education is $education");
    print('Salary is $salary');

  }

  Information(fullName: "Reshma",gender: "Female",education: "Graduation");




}