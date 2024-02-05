import 'package:split_it/modules/home/models/dahboard_model.dart';

abstract class AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateSucess extends AppBarState {
  DashboardModel dashbord;
  AppBarStateSucess({
    required this.dashbord,
  });
}

class AppBarStateFailure extends AppBarState {
  String message;
  AppBarStateFailure({
    required this.message,
  });
}

class AppBarStateLoading extends AppBarState {}
