// lib/features/user/home/presention/manger/bloc/bestcars_event.dart

abstract class GetBestCarsEvent {
  const GetBestCarsEvent();
}

class Started extends GetBestCarsEvent {
  final int? page;
  final int? limit;

  const Started({this.page, this.limit});
}