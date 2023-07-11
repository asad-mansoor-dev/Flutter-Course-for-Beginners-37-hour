import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/material.dart';

@immutable // any of the properties of this class and its subclasses are immutable means cannot be changed.
// Also for immutability you need const constructor.
class AuthUser {
  final String id;
  final String email;
  final bool isEmailVerfied;
  const AuthUser({
    required this.id,
    required this.email,
    required this.isEmailVerfied,
  });

  factory AuthUser.fromFirebase(User user) => AuthUser(
        id: user.uid,
        email: user.email!,
        isEmailVerfied: user.emailVerified,
      );
}
