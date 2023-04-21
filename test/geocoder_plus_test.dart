import 'package:flutter_test/flutter_test.dart';
import 'package:geocoder_plus/geocoder_plus.dart';

void main() {
  String apiKey = "--YOUR-API-KEY--";
  test('adds one to input values', () async {
    GoogleGeocoding geocoding = GoogleGeocoding(
      apiKey,
      language: 'en',
    );
    List<Address> list = await geocoding.findAddressesFromQuery(
      "1600 Amphitheatre Parkway, Mountain View, CA",
    );
    expect(list.isNotEmpty, true);
    expect(
      list.first.addressLine,
      "Google Building 40, 1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA",
    );
  });
}
