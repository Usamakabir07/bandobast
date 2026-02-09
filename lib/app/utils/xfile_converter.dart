import 'package:image_picker/image_picker.dart';

class XFileConverter {
  const XFileConverter();

  static XFile fromJson(String json) {
    return XFile(json);
  }

  static String toJson(XFile file) {
    return file.path;
  }
}
