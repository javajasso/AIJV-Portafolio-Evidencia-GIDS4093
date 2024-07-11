import 'package:ddi_phone/domain/entities/user.dart';
import 'package:ddi_phone/domain/repositories/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser(this.repository);

  Future<User> call(String id) async {
    return await repository.getUser(id);
  }
}