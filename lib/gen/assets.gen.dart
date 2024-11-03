/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  /// Directory path: lib/app
  $LibAppGen get app => const $LibAppGen();
}

class $LibAppGen {
  const $LibAppGen();

  /// Directory path: lib/app/images
  $LibAppImagesGen get images => const $LibAppImagesGen();
}

class $LibAppImagesGen {
  const $LibAppImagesGen();

  /// File path: lib/app/images/Emi_Zap.jpeg
  AssetGenImage get emiZap =>
      const AssetGenImage('lib/app/images/Emi_Zap.jpeg');

  /// File path: lib/app/images/apple.png
  AssetGenImage get apple => const AssetGenImage('lib/app/images/apple.png');

  /// File path: lib/app/images/calendar.png
  AssetGenImage get calendar =>
      const AssetGenImage('lib/app/images/calendar.png');

  /// File path: lib/app/images/f1.png
  AssetGenImage get f1 => const AssetGenImage('lib/app/images/f1.png');

  /// File path: lib/app/images/google.png
  AssetGenImage get google => const AssetGenImage('lib/app/images/google.png');

  /// File path: lib/app/images/icon_app.jpg
  AssetGenImage get iconApp =>
      const AssetGenImage('lib/app/images/icon_app.jpg');

  /// File path: lib/app/images/loading_splash.json
  String get loadingSplash => 'lib/app/images/loading_splash.json';

  /// File path: lib/app/images/loading_splash2.json
  String get loadingSplash2 => 'lib/app/images/loading_splash2.json';

  /// File path: lib/app/images/logo_tesoreria.png
  AssetGenImage get logoTesoreria =>
      const AssetGenImage('lib/app/images/logo_tesoreria.png');

  /// File path: lib/app/images/mi_app_icon.png
  AssetGenImage get miAppIcon =>
      const AssetGenImage('lib/app/images/mi_app_icon.png');

  /// File path: lib/app/images/perfil.png
  AssetGenImage get perfil => const AssetGenImage('lib/app/images/perfil.png');

  /// File path: lib/app/images/usuario.png
  AssetGenImage get usuario =>
      const AssetGenImage('lib/app/images/usuario.png');

  /// List of all assets
  List<dynamic> get values => [
        emiZap,
        apple,
        calendar,
        f1,
        google,
        iconApp,
        loadingSplash,
        loadingSplash2,
        logoTesoreria,
        miAppIcon,
        perfil,
        usuario
      ];
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
