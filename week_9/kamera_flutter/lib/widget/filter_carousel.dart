import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/widget/filter_selector.dart';

@immutable
class PhotoFilterCarousel extends StatefulWidget {
  final CameraDescription camera;

  const PhotoFilterCarousel({super.key, required this.camera});

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
          (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        // Anda bisa ganti dengan foto Anda sendiri
        // return Image.network(
        //   'https://docs.flutter.dev/cookbook/img-files/effects/instagram-buttons/millennial-dude.jpg',
        //   color: color.withOpacity(0.5),
        //   colorBlendMode: BlendMode.color,
        //   fit: BoxFit.cover,
        // );
        return Stack(
          fit: StackFit.expand,
          children: [
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),

            // Filter warna di atas kamera
            Container(
              color: color.withValues(alpha: 0.3), // kamu bisa ubah opasitas sesuai selera
            ),
          ],
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}
