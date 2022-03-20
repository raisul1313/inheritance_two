class Location {
  late num lat, lng; //instance variables

  Location(this.lat, this.lng); //constructor
  Location.create(this.lat, this.lng); //named constructor
}

class ElevatedLocation extends Location {
  ElevatedLocation(num lat, num lng) : super(lat, lng);
}

class ElevatedLocationTwo extends Location {
  var address;

  ElevatedLocationTwo(num lat, num lng, this.address)
      : super.create(lat,
            lng); // add variable added, to binding, we use this. Named constructor called from parent
  @override
  String toString() {
    var result = "$lat $lng $address";
    return result;
  }
}

void main(List<String> arguments) {
  var elevated = ElevatedLocation(23.5, -234.6);
  var elevatedTwo = ElevatedLocationTwo(67.4, -56.8, 'Dhaka');

  print("Constructor: ${elevated.lat}, ${elevated.lng}");
  print("Named Constructor: ${elevatedTwo.lat}, ${elevatedTwo.lng}, ${elevatedTwo.address}");
  print(elevatedTwo.toString()); // with override toString()
  print(elevatedTwo); // with override toString(), didn't call
}
