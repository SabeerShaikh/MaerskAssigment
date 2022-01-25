
part of 'feed_data_bloc.dart';

abstract class FeedDataEvent extends Equatable {
  const FeedDataEvent();

  @override
  List<Object> get props => [];
}

class FeedGetDataEvent extends FeedDataEvent {
  FeedGetDataEvent();

  @override
  List<Object> get props => [];
}
