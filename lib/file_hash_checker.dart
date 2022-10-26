import 'dart:io';
import 'package:crypto/crypto.dart' as c;

void checkFileHash() async {
  final dir = '...';
  final fileName = '...';
  final file = File('$dir$fileName');

  final hash = c.md5.bind(file.openRead());

  hash.listen((event) {
    print(event);
  });
}
