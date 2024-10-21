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
  'Олег',
  'olegka@mail.ru',
  '228228',
  'Хабаровск',
  '+7-(937)-954-42-18',
  '21.10.2024'
);