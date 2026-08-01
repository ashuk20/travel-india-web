import 'package:travel_india/features/home/data/models/destination_model.dart';

class DestinationData {
  static const List<DestinationModel> trending = [
    DestinationModel(
      title: 'Mumbai',
      subtitle:
          "Mumbai, the city of dreams. Mumbai, the city that never sleeps.",
      location: 'Mumbai',
      rating: 5.0,
      image: 'destinations/mumbai.jfif',
    ),
    DestinationModel(
      title: 'Lonavala',
      subtitle:
          "Lonavala is a hill station surrounded by green valleys in western India near Mumbai.",
      location: 'Pune',
      rating: 4.8,
      image: 'destinations/lonavala1.jpg',
    ),

    DestinationModel(
      title: 'Mahabaleshwar',
      subtitle:
          "Lonavala is a hill station surrounded by green valleys in western India near Mumbai.",
      location: 'Pune',
      rating: 4.8,
      image: 'destinations/Mahabaleshwar.jpeg',
    ),
    DestinationModel(
      title: 'Alibag',
      subtitle:
          "Located just below the border of Mumbai, Alibag is a little coastal town in the state of Maharashtra.",
      location: 'Raigad',
      rating: 4.8,
      image: 'destinations/alibag.jpg',
    ),
  ];
}
