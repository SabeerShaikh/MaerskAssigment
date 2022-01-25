import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';

abstract class FeedDataSource {
  Future<FeedDataModel> getAllFeedData();
}

class FeedDataSourceImpl implements FeedDataSource {
  //final ApiClient client;

  FeedDataSourceImpl();

  @override
  Future<FeedDataModel> getAllFeedData() {
    // TODO: implement getAllFeedData
    throw UnimplementedError();
  }
}
