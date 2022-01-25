import 'package:maersk_assignment/features/showFeed/domain/entity/feed_model_entity.dart';

class FeedDataModel extends FeedModelEntity {
  String id;
  String name;
  String imgUrl;
  String likeCount;
  bool isLike;
  bool isFav;

  FeedDataModel(
      this.id, this.name, this.imgUrl, this.likeCount, this.isLike, this.isFav)
      : super(
            id: id,
            name: name,
            imgUrl: imgUrl,
            isFav: isFav,
            isLike: isLike,
            likeCount: likeCount);
}
