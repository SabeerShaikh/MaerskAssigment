import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maersk_assignment/features/showFeed/presentation/new_bloc/feed_data_bloc.dart';
import 'package:maersk_assignment/features/showFeed/presentation/widgets/home_page_wigdet.dart';
import 'package:maersk_assignment/injection_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight,
      child: SafeArea(
        child: Container(
          child: buildBody(context),
        ),
      ),
    );
  }

  BlocProvider<FeedDataBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FeedDataBloc>(),
      child: Column(
        children: <Widget>[
          //Center widget
          Container(
            child: HomeWidget(),
          )
        ],
      ),
    );
  }
}
