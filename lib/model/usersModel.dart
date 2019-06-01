class UsersModel {

  final int id;
  final String name;
  final String username;
  final String email;

  UsersModel({this.id, this.name, this.username, this.email});

  factory UsersModel.fromJson(Map <String, dynamic> json){
    return UsersModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }

  

}