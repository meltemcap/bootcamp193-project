import 'package:disleksi_app/providers/base.dart';
import 'package:get/get.dart';

class UserProvider extends BaseProvider {
  @override
  String getBaseUrl() => '${BaseProvider.serverBaseUrl}/users';

  Future<Response> getUsers() async {
    // Get chats response
    return fget<List<dynamic>>('');
  }

  Future<Response> createUser({required String userName, required String email}) async {
    // Create payload
    final body = {'name': userName, 'email': email};

    // Create chat response
    return post<ApiObject>('', body);
  }
}
