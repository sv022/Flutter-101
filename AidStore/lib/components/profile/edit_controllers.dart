import 'package:flutter/material.dart';
import 'package:aidstore/models/user.dart';


final TextEditingController nameController = TextEditingController(text: currentUser.username);
final TextEditingController emailController = TextEditingController(text: currentUser.email);
final TextEditingController phoneController = TextEditingController(text: currentUser.phone);
final TextEditingController cityController = TextEditingController(text: currentUser.city);