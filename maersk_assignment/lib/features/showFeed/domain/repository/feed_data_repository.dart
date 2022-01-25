import 'package:dartz/dartz.dart';
import 'package:maersk_assignment/core/error/failures.dart';
import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';
import 'package:maersk_assignment/features/showFeed/domain/entity/feed_model_entity.dart';

abstract class FeedDataRepository {
  Future<Either<Failure, FeedModelEntity>> getFeedData();

  Future<Either<Failure, FeedModelEntity>> addData(feedModelEntity);

  Future<Either<Failure, List<FeedDataModel>>> getFeedWithSearch(
      String searchValue);
}
