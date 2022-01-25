import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maersk_assignment/features/showFeed/domain/entity/feed_model_entity.dart';
import 'package:maersk_assignment/features/showFeed/presentation/new_bloc/feed_data_bloc.dart';

class AddFeedDataWidget extends StatefulWidget {
  const AddFeedDataWidget({Key? key}) : super(key: key);

  @override
  _AddFeedDataWidgetState createState() => _AddFeedDataWidgetState();
}

class _AddFeedDataWidgetState extends State<AddFeedDataWidget> {
  TextEditingController newTitleController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedDataBloc, FeedDataState>(builder: (context, state) {
      //   print('Therapist List State :{$state}');
      if (state is FeedDataStateInitial) {}
      if (state is LoadingState) {
        return Center(child: CircularProgressIndicator());
      }
      if (state is NewDataAddedState) {
      } else {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "You have not booked any sessions so far.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        );
      }

      return CircularProgressIndicator();
    });
  }

  Widget showWidgets() {
    return Container(
      margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 48.0),
      child: Column(
        children: [
          Container(
              child: TextField(
            controller: newTitleController,
          )),
          Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: newTitleController,
              )),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            alignment: Alignment.center,
            height: 300.0,
            child: Column(
              children: [
                Container(
                  child: TextButton(
                    onPressed: null,
                    child: Text("Please select medi here"),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Save"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
