import 'package:get/get.dart';
import 'en.dart';
import 'fr.dart';
import 'ar.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,
    'fr': fr,
    'ar': ar,
  };
}
