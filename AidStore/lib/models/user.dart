class User {
  int id;
  String username;
  String email;
  String password;
  String city;
  String phone;
  String signupdate;

  User(this.id, this.username, this.email, this.password, this.city, 
  this.phone, this.signupdate);
}

User currentUser = User(
  0,
  '',
  '',
  '',
  '',
  '',
  ''
);