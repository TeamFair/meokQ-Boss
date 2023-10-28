import 'package:meokq_boss/data/model/user.dart';

abstract class IntefaceUser {
  Future<User?> getUser();

  Future<void> setUser(User user);
}
