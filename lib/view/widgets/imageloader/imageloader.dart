import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/imageconstants.dart';

// ignore: must_be_immutable
class ImageLoader extends StatelessWidget {
  ///to display a network image
  final String? imageUrl;

  /// to display image from local
  final String? imagePath;

  /// to display an svg image file
  final String? svgPath;

  ///to display an image from file
  final File? file;

  ///to display an image in bytes
  Uint8List? bytes;
  double? imageHeight;
  double? imageWidth;
  Color? color;
  BoxFit? fit;
  String placeHolder;
  VoidCallback? onTap;
  BorderRadius? radius;

  ImageLoader(
      {super.key,
      this.imageUrl,
      this.imagePath,
      this.svgPath,
      this.file,
      this.bytes,
      this.imageHeight,
      this.imageWidth,
      this.color,
      this.fit,
      this.placeHolder = ImageClass.vintapayLogoBlack,
      this.onTap,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return _buildCircleImage();
  }

  ///build asset image from local
  Widget _buidAssetImage() {
    return Image.asset(
      imagePath ?? placeHolder,
      fit: fit,
      height: imageHeight,
      color: color,
    );
  }

  ///build image from url
  _buildNetworkImage() {
    return Image.network(
      imageUrl!,
      fit: fit,
      height: imageHeight,
      color: color,
    );
  }

  ///build image from file
  _buildImageFromFile() {
    return Image.file(
      file!,
      height: imageHeight,
      color: color,
      fit: fit,
    );
  }

  ///build image from memory [bytes]
  _buildMemoryImage() {
    return Image.memory(
      bytes!,
      fit: fit,
      color: color,
      height: imageHeight,
    );
  }

  ///build image from svg path
  _buildSvgImage() {
    return SvgPicture.asset(
      svgPath!,
      height: imageHeight,
      fit: fit!,
    );
  }

  ///build the image with border radius
  _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  /// determines the image view to display
  _buildImageView() {
    if (imagePath != null) {
      return _buidAssetImage();
    } else if (imagePath == null && imageUrl != null) {
      return _buildNetworkImage();
    } else if (imageUrl == null && file != null) {
      return _buildImageFromFile();
    } else if (file == null && bytes != null) {
      return _buildMemoryImage();
    } else if (svgPath != null) {
      return _buildSvgImage();
    } else {
      return _buidAssetImage();
    }
  }
}
