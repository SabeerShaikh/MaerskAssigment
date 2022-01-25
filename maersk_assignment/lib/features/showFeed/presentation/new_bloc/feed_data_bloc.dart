import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maersk_assignment/core/constant/string_constant/string_constant.dart';
import 'package:maersk_assignment/core/error/failures.dart';
import 'package:maersk_assignment/core/use_case/usecase.dart';
import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';
import 'package:maersk_assignment/features/showFeed/domain/entity/feed_model_entity.dart';
import 'package:maersk_assignment/features/showFeed/domain/usecase/add_feed_data_usecase.dart';
import 'package:maersk_assignment/features/showFeed/domain/usecase/feed_data_usecase.dart';

part 'feed_data_state.dart';

part 'feed_data_event.dart';

class FeedDataBloc extends Bloc<FeedDataEvent, FeedDataState> {
  final FeedDataUseCase feedDataUseCase;
  final AddFeedDataUseCase addFeedDataUseCase;

  FeedDataBloc({
    required this.feedDataUseCase,
    required this.addFeedDataUseCase,
  }) : super(FeedDataStateInitial());

  FeedDataStateInitial get initialState => FeedDataStateInitial();

  @override
  Stream<FeedDataState> mapEventToState(FeedDataEvent event) async* {
    if (event is FeedGetDataEvent) {
      yield LoadingState();
      final result = await feedDataUseCase(NoParams());
      yield result.fold(
          (failure) => ErrorState(message: _mapFailureToMessage(failure)),
          (feedData) => LoadedState(dataModel: feedData));
    }
    if (event is AddFeedDataEvent) {
      yield LoadingState();
      final result = await addFeedDataUseCase(
          FeedDataParam(feedModelEntity: event.feedModelEntity));
      yield result.fold(
          (failure) => ErrorState(message: _mapFailureToMessage(failure)),
          (addedData) => NewDataAddedState(dataModel: addedData));
    }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return STRING_SERVER_FAILURE_MESSAGE;
      default:
        return STRING_GENERAL_UNEXPECCTED_ERROR;
    }
  }
}
