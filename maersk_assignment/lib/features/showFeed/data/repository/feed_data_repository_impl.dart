import 'package:dartz/dartz.dart';
import 'package:maersk_assignment/core/error/failures.dart';
import 'package:maersk_assignment/features/showFeed/data/datasources/feed_data_sources.dart';
import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';
import 'package:maersk_assignment/features/showFeed/domain/entity/feed_model_entity.dart';
import 'package:maersk_assignment/features/showFeed/domain/repository/feed_data_repository.dart';

class FeedDataRepositoryImpl extends FeedDataRepository {
  final FeedDataSource dataSource;

  //final NetworkInfo networkInfo;

  FeedDataRepositoryImpl({
    required this.dataSource,
  });

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

  @override
  Future<Either<Failure, FeedModelEntity>> addData(feedModelEntity) {
    // TODO: implement AddData
    throw UnimplementedError();
  }
}
