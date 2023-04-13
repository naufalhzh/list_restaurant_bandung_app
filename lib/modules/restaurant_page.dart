import 'package:flutter/material.dart';
import 'package:restaurant_app/model/restaurant_model.dart';
part 'restaurant_detail_page.dart';

class RestaurantPage extends StatelessWidget {
  final RestauranModel restaurantData;

  const RestaurantPage({Key? key, required this.restaurantData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Bandung Restaurant',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('List of best restaurant that you can visit in Bandung',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: restaurantData.restaurants.length,
                itemBuilder: (BuildContext context, int index) {
                  final restaurant = restaurantData.restaurants[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                RestaurantDetailPage(restaurant: restaurant),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                child: Image.network(
                                  restaurant.pictureId,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      restaurant.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 16.0,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          restaurant.city,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_border,
                                          size: 16.0,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          restaurant.rating.toString(),
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
