import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  /// FIrestore instance
  final db = FirebaseFirestore.instance;

  ///firestore Data Stream
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? streamSubscription;

  ///constructor
  UserBloc() : super(const UserState()) {
    ///User Fetch
    on<UsersFetch>(((event, emit) {
      ///collection
      final col = db.collection('users');

      ///listen to change
      streamSubscription = col.snapshots().listen((data) {
        add(UsersUpdated(users: data.docs.map((e) => e.data()).toList()));
      });
    }));
    on<UsersAdded>((event, emit) async {
      ///add document user to collection useres
      await db
          .collection('users')
          .add({"nama": event.nama, "umur": event.umur});
    });

    ///users updated
    on<UsersUpdated>(
      (event, emit) {
        emit(UserState(users: event.users));
      },
    );
  }
  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
