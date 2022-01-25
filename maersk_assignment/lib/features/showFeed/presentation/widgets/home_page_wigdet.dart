import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maersk_assignment/features/showFeed/presentation/new_bloc/feed_data_bloc.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedDataBloc, FeedDataState>(
        builder: (context, state) {
          //   print('Therapist List State :{$state}');
          if (state is FeedDataStateInitial) {}
          if (state is LoadingState) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is LoadedState) {


          } else {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "You have not booked any sessions so far.",
                  textAlign: TextAlign.center,
                  style: Theme
                      .of(context)
                      .textTheme
                      .subtitle1,
                ),
              ),
            );
          }



    return CircularProgressIndicator();
  }

  );
}

}
