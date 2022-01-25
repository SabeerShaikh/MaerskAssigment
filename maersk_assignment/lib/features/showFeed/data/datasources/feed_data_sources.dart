import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';
import 'package:maersk_assignment/features/showFeed/domain/entity/feed_model_entity.dart';

abstract class FeedDataSource {
  Future<FeedDataModel> getAllFeedData();

  Future<FeedDataModel> addFeedData(FeedModelEntity feedModelEntity);
}

class FeedDataSourceImpl implements FeedDataSource {
  //final ApiClient client;

  FeedDataSourceImpl();

  @override
  Future<FeedDataModel> getAllFeedData() {
    // TODO: implement getAllFeedData
    throw UnimplementedError();
  }

  @override
  Future<FeedDataModel> addFeedData(FeedModelEntity feedModelEntity) {
    // TODO: implement addFeedData
    throw UnimplementedError();
  }
}
