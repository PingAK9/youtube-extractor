import 'package:youtube_extractor/models/media-streams/container.dart';

/// Metadata associated with a certain [MediaStream].
abstract class MediaStreamInfo {
  /// Unique tag that identifies the properties of the associated stream.
  int iTag;

  /// URL of the endpoint that serves the associated stream.
  String url;

  /// Container type of the associated stream.
  Container container;

  /// Content length (bytes) of the associated stream.
  BigInt size;

  MediaStreamInfo(this.iTag, this.url, this.size) {
    container = ITagHelper.GetContainer(this.iTag);
  }

  @override
  String toString() => '$iTag ($container)';
}