import 'package:flutter/material.dart';
import 'package:restaurant_app/model/restaurant_model.dart';
import 'package:restaurant_app/modules/restaurant_page.dart';

void main() {
  // Create an instance of RestaurantModel with some sample data
  final restaurantData = RestauranModel(
    restaurants: [
      Restaurant(
        id: '1',
        name: 'Iga Bakar Si Jangkung',
        description:
            'Salah satu agenda yang tak boleh dilewatkan saat ke Bandung adalah wisata kuliner. Salah satu menu yang jadi favorit sejak dulu adalah Iga Bakar Si Jangkung.',
        pictureId:
            'https://klikalamat.com/wp-content/uploads/2016/08/Iga-Bakar-Si-Jangkung-Bandung-Masih-Mendidih.jpg',
        city: 'Pasteur, Kota Bandung',
        rating: 4.4,
        menus: Menus(
          foods: [
            Drink(name: 'Iga Bakar Kambing'),
            Drink(name: 'Iga Bakar Kambing Spesial')
          ],
          drinks: [Drink(name: 'Teh Hangat'), Drink(name: 'Es Teh Manis')],
        ),
      ),
      Restaurant(
        id: '2',
        name: 'Warung Nasi Ibu Imas',
        description:
            'Hidangan tradisional Sunda disajikan bersama sambal pedas di tempat simpel ini.',
        pictureId:
            'https://2.bp.blogspot.com/-1SwyJexDpu8/XNqGca5k6RI/AAAAAAAAedc/bARGAE3oCIoHG6GABiwSoM6ynqZUi_CygCLcBGAs/s1600/warung%2Bnasi%2Bibu%2Bimas%2Bbandung%2Bfoto%2Bkaterina%2Btravelerien%2B%252816%2529%2B-%2BCopy.jpg',
        city: 'Regol, Kota Bandung',
        rating: 4.5,
        menus: Menus(
          foods: [Drink(name: 'Ayam Bakar'), Drink(name: 'Ayam Goreng')],
          drinks: [Drink(name: 'Es Jeruk'), Drink(name: 'Es Teh Manis')],
        ),
      ),
      Restaurant(
        id: '3',
        name: 'Dapoer Pandan Wangi',
        description:
            'Rumah makan yang nyaman dan bersih ini menyajikan aneka masakan khas Sunda berkualitas.',
        pictureId: 'https://www.garnesia.com/images/vendor/v4931.jpg',
        city: 'Lengkong, Kota Bandung',
        rating: 4.5,
        menus: Menus(
          foods: [Drink(name: 'Terong Raos'), Drink(name: 'Lontong Kari')],
          drinks: [Drink(name: 'Es Teh Manis'), Drink(name: 'Es Teh Tawar')],
        ),
      ),
      Restaurant(
        id: '4',
        name: 'Dimsum Sembilan Ayam',
        description: 'Resto dimsum halal terenak dan murah di Bandung',
        pictureId:
            'https://assets-pergikuliner.com/zpn_peEVTpaGrYq4BWAmBocAUUk=/fit-in/1366x768/smart/filters:no_upscale()/https://assets-pergikuliner.com/uploads/image/picture/2398519/picture-1641454336.jpg',
        city: 'Pasir Kaliki, Kota Bandung',
        rating: 4.5,
        menus: Menus(
          foods: [
            Drink(name: 'Bakpao Telur Asin'),
            Drink(name: 'Cheong Fun Seafood'),
            Drink(name: 'Siomay 9 Ayam'),
          ],
          drinks: [Drink(name: 'Es Milo Dino'), Drink(name: 'Madu Lemon')],
        ),
      ),
      Restaurant(
        id: '5',
        name: 'Bebeke Om Aris',
        description:
            'Kedai outdoor klasik dengan menu khas bebek goreng & hidangan tradisional di tempat simpel.',
        pictureId:
            'https://d1sag4ddilekf6.cloudfront.net/compressed_webp/items/IDITE2020081016455300809/detail/menueditor_item_109c26221a7a4b5b921659c8806a67fd_1654933003427929063.webp',
        city: 'Dipatiukur, Kota Bandung',
        rating: 4.6,
        menus: Menus(
          foods: [
            Drink(name: 'Bebek Goreng'),
            Drink(name: 'Bebek Geprek'),
            Drink(name: 'Bebek Mozarella')
          ],
          drinks: [Drink(name: 'Es Teh Manis'), Drink(name: 'Teh Tawar')],
        ),
      ),
    ],
  );

  runApp(MaterialApp(home: RestaurantPage(restaurantData: restaurantData)));
}
