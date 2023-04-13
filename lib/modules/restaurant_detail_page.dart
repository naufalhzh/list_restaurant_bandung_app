part of 'restaurant_page.dart';

class RestaurantDetailPage extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailPage({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Image.network(
                  restaurant.pictureId,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
                Positioned(
                  top: 16.0,
                  left: 8.0,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          restaurant.name,
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      const Icon(Icons.star, color: Colors.orange),
                      Text(
                        restaurant.rating.toString(),
                        style: const TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: .0),
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
                        style:
                            const TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    restaurant.description,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Menus',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Foods:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: restaurant.menus.foods
                            .map((food) => Text(
                                  '- ${food.name}',
                                  style: const TextStyle(fontSize: 16.0),
                                ))
                            .toList(),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Drinks:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: restaurant.menus.drinks
                            .map((drink) => Text(
                                  '- ${drink.name}',
                                  style: const TextStyle(fontSize: 16.0),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
