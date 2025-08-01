import 'package:disleksi_app/providers/base.dart';
import 'package:get/get.dart';

class ReadingProvider extends BaseProvider {
  @override
  String getBaseUrl() => '${BaseProvider.serverBaseUrl}/readings';

  Future<Response> getReadings() async {
    // Get chats response
    return await fget<List<ApiObject>>('');
  }

  Future<Response> createReading({required int paragraphId, required int userId, required String readText}) async {
    // Create payload
    final body = {'paragraph_id': paragraphId, 'user_id': userId, 'read_text': readText};

    // Create reading response
    return post<ApiObject>('', body);
  }

  Future<Response> updateReading({required int readingID, required double accuracyScore}) async {
    final body = {'accuracy_score': accuracyScore};
    // Get reading by id response
    return put<ApiObject>('', body);
  }
}
