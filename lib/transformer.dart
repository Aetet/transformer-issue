library transformer_example.hello_transformer;
import 'package:barback/barback.dart';

import 'dart:async';

class HelloTransformer extends Transformer {

  HelloTransformer.asPlugin();

  String get allowedExtensions => ".md";

  Future apply(Transform transform) async {
    throw 'hom';
    var content = await transform.primaryInput.readAsString();

    var id = transform.primaryInput.id.changeExtension(".hello");

    var newContent = "Hello, " + content;
    transform.addOutput(new Asset.fromString(id, newContent));
  }
}