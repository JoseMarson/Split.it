import 'package:split_it/modules/home/models/dahboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(send: 100, receive: 50);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
        created: DateTime.now(),
        title: "Churrasco",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco",
        value: -20,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco",
        value: -90,
        people: 2,
      )
    ];
  }
}
