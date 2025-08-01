import 'package:get/get.dart';

typedef ApiObject = Map<String, dynamic>;

abstract class BaseProvider extends GetConnect {
  // Base URL for all requests
  static const String serverBaseUrl = "https://disleksi.dimscorp.com";

  /// Override this method to set
  /// the base url for your provider
  String getBaseUrl() => serverBaseUrl;

  @override
  void onInit() {
    // Set base url for all requests
    httpClient.baseUrl = getBaseUrl();
    httpClient.timeout = const Duration(seconds: 20);
  }

  Future<Response<T>> fget<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
  }) async {
    // Return response
    return await get(url, headers: headers, contentType: contentType, decoder: decoder);
  }
}
