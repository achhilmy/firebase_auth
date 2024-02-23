import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_storage/firebase_storage.dart';

part 'images_state.dart';

class ImagesCubit extends Cubit<ImagesState> {
  ImagesCubit() : super(ImagesState());

  //upload image method
  Future<void> uploadImage({required String path}) async {
    ///Image Reference pada storage
    final imageRef = FirebaseStorage.instance.ref().child("images");

    try {
      //generate loading stet
      emit(const ImagesState(isLoading: true));

      //generate Random ID
      final randomID = "${Random().nextInt(99) * 256}";

      ///upload Task unutk gambar dengan Random ID
      final uploadTask = imageRef.child(randomID).putFile(File(path));

      ////Lakukan dengan listen untuk gambar dengan random ID
      uploadTask.snapshotEvents.listen((event) {
        switch (event.state) {
          case TaskState.running:
            final progress = 100 * (event.bytesTransferred / event.totalBytes);

            ///emit loading and the upload progress
            emit(ImagesState(isLoading: true, uploadProgress: progress / 100));
            break;
          case TaskState.success:

            ///Ambil donwload link dari gamabr
            event.ref.getDownloadURL().then((value) =>
                emit(ImagesState(isLoading: false, linkGambar: value)));
            break;
          case TaskState.error:
            emit(ImagesState(errorMessage: e.toString()));
            break;
          case TaskState.canceled || TaskState.paused:
            break;
        }
      });
    } catch (e) {}
  }
}
