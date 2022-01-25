import 'package:dartz/dartz.dart';
import 'package:maersk_assignment/core/error/failures.dart';
import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';
import 'package:maersk_assignment/features/showFeed/domain/repository/feed_data_repository.dart';

class FeedDataRepositoryImpl extends FeedDataRepository {
  @override
  Future<Either<Failure, FeedDataModel>> getFeedData() {
    // TODO: implement getFeedData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<FeedDataModel>>> getFeedWithSearch(
      String searchValue) {
    // TODO: implement getFeedWithSearch
    throw UnimplementedError();
  }
}
