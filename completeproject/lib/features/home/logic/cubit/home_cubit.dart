import 'package:completeproject/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  void getSpecializaiton() async {
    emit(const HomeState.specializationsLoading());
    final respone = await homeRepo.getSpecializations();
    respone.when(success: (specializationResponeModel) async {
      emit(HomeState.specializationsSuccess(specializationResponeModel));
    }, failure: (error) {
      emit(HomeState.specializationsError(error));
    });
  }
}
