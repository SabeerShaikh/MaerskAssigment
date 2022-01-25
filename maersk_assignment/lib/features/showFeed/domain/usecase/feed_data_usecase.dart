import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:maersk_assignment/core/error/failures.dart';

import 'package:maersk_assignment/core/use_case/usecase.dart';
import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';
import 'package:maersk_assignment/features/showFeed/domain/repository/feed_data_repository.dart';

class FeedDataUseCase
    implements UseCase<FeedDataModel, NoParams> {
  final FeedDataRepository feedDataRepository;

  FeedDataUseCase(this.feedDataRepository);

  @override
  Future<Either<Failure, FeedDataModel>> call(
      NoParams params) async {
    return await feedDataRepository.getFeedData();
  }
}
