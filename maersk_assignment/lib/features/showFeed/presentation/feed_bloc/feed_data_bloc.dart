import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maersk_assignment/core/constant/string_constant/string_constant.dart';
import 'package:maersk_assignment/core/error/failures.dart';
import 'package:maersk_assignment/core/use_case/usecase.dart';
import 'package:maersk_assignment/features/showFeed/data/model/feed_data_model.dart';
import 'package:maersk_assignment/features/showFeed/domain/usecase/feed_data_usecase.dart';

part 'feed_data_event.dart';

part 'feed_data_state.dart';

class FeedDataBloc extends Bloc<FeedDataEvent, FeedDataState> {
  final FeedDataUseCase feedDataUseCase;

  FeedDataBloc({required this.feedDataUseCase}) : super(FeedDataStateInitial());

  FeedDataState get initialState => FeedDataStateInitial();

  @override
  Stream<FeedDataState> mapEventToState(FeedDataEvent event) async* {
    if (event is FeedGetDataEvent) {
      yield LoadingState();
      final result = await feedDataUseCase(NoParams());
      yield result.fold(
          (failure) => ErrorState(message: _mapFailureToMessage(failure)),
          (feedData) => LoadedState(dataModel: feedData));
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
