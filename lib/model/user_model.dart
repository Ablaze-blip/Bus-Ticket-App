class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? phoneNumber;
  String? password;

  UserModel({this.uid, this.email, this.firstName, this.secondName, this.phoneNumber, this.password});

  //data from server
factory UserModel.fromMap(map)
{

  return UserModel(
    uid: map['uid'],
    email: map['email'],
    firstName: map['email'],
    secondName: map['secondName'],
    phoneNumber: map['phoneNumber'],
    password: map['password']
  );
}
Map<String, dynamic> toMap() {
  return {
    'uid': uid,
    'email':email,
    'firstName': firstName,
    'secondName': secondName,
    'phoneNumber': phoneNumber,
    'password':password
  };

}

}