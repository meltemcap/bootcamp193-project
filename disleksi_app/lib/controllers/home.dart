import 'dart:convert';
import 'package:disleksi_app/models/paragraph.dart';
import 'package:disleksi_app/providers/base.dart';
import 'package:disleksi_app/providers/paragraph.dart';
import 'package:disleksi_app/providers/reading.dart';
import 'package:disleksi_app/services/auth.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class HomeController extends GetxController {
  // User sentence
  RxString text = ''.obs;
  // Listening state
  RxBool isListening = false.obs;

  SpeechToText stt = SpeechToText();

  ParagraphProvider paragraphsProvider = Get.find<ParagraphProvider>();
  ReadingProvider readingProvider = Get.find<ReadingProvider>();
  AuthService get authService => Get.find<AuthService>();

  List<Paragraph> paragraphs = [];

  Rx<Paragraph?> selectedParagraph = Rx<Paragraph?>(null);

  @override
  void onInit() {
    super.onInit();
    getParagraphs();
    _initSpeech();
  }

  @override
  void onClose() {
    super.onClose();
    stt.stop();
  }

  void _initSpeech() async {
    await stt.initialize();
  }

  // Start listening to the user's speech and if audio is playing, stop it
  void startListening() async {
    isListening.value = true;
    text.value = '';
    stt.listen(
      listenOptions: SpeechListenOptions(autoPunctuation: true, partialResults: true),
      onResult: (result) {
        text.value = result.recognizedWords;
        if (stt.isNotListening && isListening.value) {
          stopListening();
        }
      },

      localeId: 'tr_TR',
      // listenFor: const Duration(seconds: 30),
      // pauseFor: const Duration(seconds: 10),
    );
  }

  void stopListening() async {
    isListening.value = false;
    await stt.stop();
    await createReading();
  }

  String get message => text.value;

  Future<void> getParagraphs() async {
    final response = await paragraphsProvider.getParagraphs();

    if (!response.isOk) {
      Get.snackbar('Error', 'Bir Hata Oluştu', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    var data = jsonDecode(response.bodyString!);

    paragraphs.addAll(Paragraph.fromList(List<ApiObject>.from(data)));

    // randomly select a paragraph
    if (paragraphs.isNotEmpty) {
      // use random library to select a random paragraph
      paragraphs.shuffle();
      selectedParagraph.value = paragraphs.first;
    } else {
      Get.snackbar('Error', 'No paragraphs found', snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> createReading() async {
    final response = await readingProvider.createReading(
      paragraphId: selectedParagraph.value!.id,
      userId: authService.user.id,
      readText: text.value,
    );

    if (!response.isOk) {
      Get.snackbar('Error', 'Bir Hata Oluştu', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    Get.snackbar('Success', 'Okuma Başarıyla Kaydedildi', snackPosition: SnackPosition.BOTTOM);
    await Future.delayed(const Duration(seconds: 1));
    paragraphs.shuffle();
    selectedParagraph.value = paragraphs.first;
    text.value = '';
  }
}
