
part of 'feed_data_bloc.dart';

abstract class FeedDataState extends Equatable {
  const FeedDataState();

  @override
  List<Object> get props => [];
}

class FeedDataStateInitial extends FeedDataState {}

class LoadingState extends FeedDataState {}

class LoadedState extends FeedDataState {
  final FeedModelEntity dataModel;

  LoadedState({required this.dataModel});

  @override
  List<Object> get props => [dataModel];
}

class NewDataAddedState extends FeedDataState {
  final FeedModelEntity dataModel;

  NewDataAddedState({required this.dataModel});

  @override
  List<Object> get props => [dataModel];
}

class ErrorState extends FeedDataState {
  final String message;

  ErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
