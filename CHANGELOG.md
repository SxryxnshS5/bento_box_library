# Changelog

## 1.1.1

- Fixed typos and improved clarity in the README.

## 1.1.0

- Added support for custom colors in `BentoBox`.
  - Users can now set `boxColor`, `titleColor`, and `subtitleColor`.
  - Default colors are applied if custom colors are not provided.
- Updated `BentoBoxWithImage` to support both local asset paths and network URLs.
  - Added a single `imagePath` parameter that automatically determines if the input is an asset path or a URL.
  - Local assets (e.g., `'assets/image.png'`) are handled using `AssetImage`.
  - Network URLs (e.g., `'https://via.placeholder.com/150'`) are handled using `NetworkImage`.

## 1.0.0

- Initial release.
- Added `BentoBox` widget for displaying a title and subtitle in a rounded container.
- Added `BentoBoxWithImage` widget for displaying an image in a rounded container.
