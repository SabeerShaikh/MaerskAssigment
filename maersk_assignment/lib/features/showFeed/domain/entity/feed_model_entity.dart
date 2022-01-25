import 'package:equatable/equatable.dart';

class FeedModelEntity extends Equatable {
  String id;
  String name;
  String imgUrl;
  String likeCount;
  bool isLike;
  bool isFav;

  FeedModelEntity(
      {required this.id,
      required this.name,
      required this.imgUrl,
      required this.likeCount,
      required this.isLike,
      required this.isFav});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
