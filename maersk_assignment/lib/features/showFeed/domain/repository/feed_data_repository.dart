import 'package:dartz/dartz.dart';
import 'package:maersk_assignment/core/error/failures.dart';
import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';

abstract class FeedDataRepository {
  Future<Either<Failure, FeedDataModel>> getFeedData();

  Future<Either<Failure, List<FeedDataModel>>> getFeedWithSearch(
      String searchValue);
}
