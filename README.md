# geocoder plus

Forward and reverse geocoding.

# Usage

Import `package:geocoder_plus/geocoder.dart`, and use the `Geocoder.local` to access geocoding services provided by the device system.

Example:

```dart
import 'package:geocoder_plus/geocoder.dart';

// settup api key
String apiKey = "--- aquí key ---"
// From a query
final query = "1600 Amphiteatre Parkway, Mountain View";
var addresses = GoogleGeocoding googleService = GoogleGeocoding(
  apiKey,
  language: 'en',
);
await googleService.findAddressesFromQuery(query);
var first = addresses.first;
print("${first.featureName} : ${first.coordinates}");

// From coordinates
final coordinates = new Coordinates(1.10, 45.50);
addresses = await googleService.findAddressesFromCoordinates(coordinates);
first = addresses.first;
print("${first.featureName} : ${first.addressLine}");
```

You can alternatively use `Geocoder.google` member for requesting distant data from google services instead of native ones.

You will find links to the API docs on the [pub page](https://pub.dartlang.org/packages/geocoder_plus).

## Getting Started

For help getting started with Flutter, view our online
[documentation](http://flutter.io/).

For help on editing plugin code, view the [documentation](https://flutter.io/platform-plugins/#edit-code).
