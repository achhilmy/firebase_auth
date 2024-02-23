import 'package:firebase_authentication/logic/images_cubit/images_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class MateriFirebaseStorage extends StatefulWidget {
  const MateriFirebaseStorage({super.key});

  @override
  State<MateriFirebaseStorage> createState() => _MateriFirebaseStorageState();
}

class _MateriFirebaseStorageState extends State<MateriFirebaseStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Materi Firebase Storage"),
      ),
      body: Center(
        child: BlocBuilder<ImagesCubit, ImagesState>(
          builder: (context, state) {
            return Column(
              children: [
                /// Gambar
                Visibility(
                  visible: state.linkGambar != null,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                      state.linkGambar ?? '',
                      loadingBuilder: (context, child, chunk) {
                        final loaded = (chunk?.cumulativeBytesLoaded ?? 0);
                        final expected = (chunk?.expectedTotalBytes ?? 0);

                        /// Jika gambar belum sepenuhnya termuat, tampilkan loading indicator
                        if (loaded < expected) {
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: CircularProgressIndicator(
                              value: loaded / expected,
                            ),
                          );
                        }

                        /// Jika sudah termuat, kemalikan child (gambar asli)
                        return child;
                      },
                    ),
                  ),
                ),

                /// Button Pilih Gambar
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    child: state.isLoading
                        ? CircularProgressIndicator(
                            value: state.uploadProgress,
                            backgroundColor: Colors.grey,
                          )
                        : ElevatedButton.icon(
                            onPressed: () async {
                              await pickImage();
                            },
                            icon: const Icon(Icons.image_rounded),
                            label: const Text("Upload Gambar"),
                          ),
                  ),
                ),

                /// Link Hasil Upload
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SelectableText.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: "Link Hasil Upload : "),
                        TextSpan(
                          text: state.linkGambar ?? '-',
                          style: TextStyle(
                            color: Colors.blue.shade800,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    /// Inisialisasi Image Picker
    final ImagePicker picker = ImagePicker();

    /// Pilih Image dari Sumber Galery
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    /// Kembalikan path dari gambar
    if (image?.path != null) {
      context.read<ImagesCubit>().uploadImage(path: image!.path);
    }
  }
}
