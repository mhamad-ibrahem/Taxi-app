class RidesModel {
  final String price;
  final String name;
  final String paymentMethod;
  final String time;
  final String distance;
  final String date;
  final String serviceType;
  final String tripType;
  final String tripTime;
  final String source;
  final String sourceDetails;
  final String destinationDetails;
  final String destination;
  RidesModel(
      {required this.source,
      required this.sourceDetails,
      required this.destinationDetails,
      required this.destination,
      required this.tripTime,
      required this.price,
      required this.name,
      required this.paymentMethod,
      required this.time,
      required this.distance,
      required this.date,
      required this.serviceType,
      required this.tripType});
}
