import 'package:split_it/modules/home/models/dahboard_model.dart';
import 'package:split_it/shared/models/event_model.dart';

abstract class HomeRepository {
  Future<List<EventModel>> getEvents();
  Future<DashboardModel> getDashboard();
}
