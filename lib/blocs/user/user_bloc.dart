import 'package:base_project_flutter/services/user/user_api.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../models/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserAPI _userAPI = UserAPI();
  UserBloc() : super(UserLoading()) {
    on<LoadUser>(_onLoadUser);
  }

  void _onLoadUser(LoadUser event, Emitter<UserState> emit) async {
    // final User? user;
    {
      try {
        emit(UserLoading());
        final mList = await _userAPI.fetchUser();
        emit(UserLoaded(mList));
      } catch (e) {
        throw Exception(e);
      }
    }
  }
}
