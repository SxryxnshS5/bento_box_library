x# BentoBox Library

A Flutter package providing customizable Bento-style widgets for creating modular, responsive, and visually appealing UI components.

## Features

- **BentoBox**: A reusable widget for displaying a title and subtitle in a rounded container.
  - **Customizable Colors**: Users can set custom colors for the box, title, and subtitle. Defaults are applied if no colors are specified.
- **BentoBoxWithImage**: A widget for displaying an image in a rounded container, perfect for profile pictures or media grids.
  - **Dynamic Image Source**: Supports both local asset paths (e.g., `'assets/image.png'`) and network URLs.
- Fully customizable dimensions, colors, and text styles.
- Responsive design for dynamic layout across different screen sizes.

## Getting Started

### Prerequisites
- Ensure you have Flutter installed. Follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install) if needed.

### Installation
Add this package to your project by including it in your `pubspec.yaml` file:
```yaml
dependencies:
  bento_box_library: ^1.1.0
```

Then, run:
```bash
flutter pub get
```

## Usage

### Import the Library
```dart
import 'package:bento_box_library/bento_box_library.dart';
```

### Examples
#### BentoBox
```dart
BentoBox(
  height: 100,
  width: 200,
  title: "Title",
  subtitle: "This is a subtitle",
  boxColor: Colors.blue, // Custom box color
  titleColor: Colors.white, // Custom title color
  subtitleColor: Colors.grey, // Custom subtitle color
)
```

#### BentoBoxWithImage (Network Image)
```dart
BentoBoxWithImage(
  height: 150,
  width: 150,
  imagePath: 'https://via.placeholder.com/150', // Network URL
)
```

#### BentoBoxWithImage (Local Asset)
```dart
BentoBoxWithImage(
  height: 150,
  width: 150,
  imagePath: 'assets/image.png', // Local asset path
)
```

### Complete Example
```dart
import 'package:flutter/material.dart';
import 'package:bento_box_library/bento_box_library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('BentoBox Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BentoBox(
                height: 120,
                width: 200,
                title: "Hello",
                subtitle: "This is a BentoBox",
                boxColor: Colors.blueAccent,
                titleColor: Colors.white,
                subtitleColor: Colors.white70,
              ),
              const SizedBox(height: 16),
              BentoBoxWithImage(
                height: 150,
                width: 150,
                imagePath: 'https://via.placeholder.com/150',
              ),
              const SizedBox(height: 16),
              BentoBoxWithImage(
                height: 150,
                width: 150,
                imagePath: 'assets/image.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Additional Information

### Contributing
We welcome contributions! If you have suggestions or encounter any issues, feel free to open an issue or create a pull request on [GitHub](https://github.com/yourusername/bento_box_library).

### Issues
For any bugs or feature requests, visit the [issue tracker](https://github.com/yourusername/bento_box_library/issues).

### License
This package is distributed under the MIT License. See [LICENSE](LICENSE) for more information.