import 'package:elearningapp1/pages/home/bloc/homeevents.dart';
import 'package:elearningapp1/pages/home/bloc/homestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBlocs extends Bloc<HomePageEvents, HomePageState>{
  HomePageBlocs():super( HomePageState()){
    on<HomePageDots>(homePageDots);
  }

  void homePageDots(HomePageDots event, Emitter<HomePageState>emit){
    emit(state.copyWith(index: event.index));
  }

}