import 'package:disleksi_app/providers/base.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class ParagraphProvider extends BaseProvider {
  @override
  String getBaseUrl() => '${BaseProvider.serverBaseUrl}/paragraphs';

  Future<Response> getParagraphs() => fget<List<dynamic>>('');
}
