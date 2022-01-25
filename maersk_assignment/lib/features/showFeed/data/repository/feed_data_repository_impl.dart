import 'package:dartz/dartz.dart';
import 'package:maersk_assignment/core/error/exceptions.dart';
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
  Future<Either<Failure, FeedDataModel>> getFeedData() async {
    // TODO: implement getFeedData
    FeedDataModel feedDataModel =
        new FeedDataModel("1", "Saber", "", "1", true, true);
    if (feedDataModel != null) {
      return Right(feedDataModel);
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<FeedDataModel>>> getFeedWithSearch(
      String searchValue) async {
    List<FeedDataModel> list = [];
    try {
      return Right(list);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FeedModelEntity>> addData(feedModelEntity) async {
    // TODO: implement AddData
    throw UnimplementedError();
  }
}
