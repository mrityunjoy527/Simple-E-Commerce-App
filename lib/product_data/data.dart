import 'data_model.dart';

class Data {
  static final _shared = Data._sharedInstance();

  Data._sharedInstance();

  factory Data() => _shared;

  static const _data = {
    "clothing_items": [
      {
        "id": 1,
        "name": "Cotton T-shirt",
        "description": "Comfortable cotton T-shirt for everyday wear.",
        "price": 19.99,
        "images": [
          "https://5.imimg.com/data5/SELLER/Default/2023/3/DY/TV/VD/57349599/men-poly-cotton-t-shirt.jpg",
          "https://faso.in/file/wp-content/uploads/2021/07/1-FS-4001-AQUAGREENMARL.jpg"
        ]
      },
      {
        "id": 2,
        "name": "Denim Jeans",
        "description": "Classic denim jeans for a casual look.",
        "price": 39.99,
        "images": [
          "https://d4kuloxg8pkbr.cloudfront.net/media/catalog/product/cache/dd0f1f9b707d425fb8871468a820dcef/1/_/1_mft-29078-r-166-indigo-blue_1.jpg",
          "https://img0.junaroad.com/uiproducts/16293144/zoom_0-1630073663.jpg"
        ]
      },
      {
        "id": 3,
        "name": "Hooded Sweatshirt",
        "description": "Warm and stylish hoodie for chilly days.",
        "price": 49.99,
        "images": [
          "https://storage.sg.content-cdn.io/cdn-cgi/image/width=1000,height=1333,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSS00153LS-Blue_01.jpg",
          "https://turtle.in/cdn/shop/products/40081-1001-1001_1_M.jpg?v=1637911922"
        ]
      },
      {
        "id": 4,
        "name": "Formal Dress Shirt",
        "description": "Elegant dress shirt for formal occasions.",
        "price": 29.99,
        "images": [
          "https://www.aristobrat.in/cdn/shop/products/ClassicShirt_FrenchBlue1.jpg?v=1667207840&width=2048",
          "https://assets.ajio.com/medias/sys_master/root/20220614/7plz/62a7884caeb26921af1fd405/-1117Wx1400H-440971113-ltgrey-MODEL.jpg"
        ]
      },
      {
        "id": 5,
        "name": "Sporty Sneakers",
        "description": "Sporty sneakers for a comfortable stride.",
        "price": 59.99,
        "images": [
          "https://img0.junaroad.com/uiproducts/20241835/zoom_0-1693054342.jpg",
          "https://cdn.staticans.com/image/tr:e-sharpen-01,h-1100,w-1300,cm-pad_resize/data/Regal-Shoes/8-june-2023/8697276_3.jpg"
        ]
      },
      {
        "id": 6,
        "name": "Flowy Skirt",
        "description": "Flowy skirt for a feminine and trendy look.",
        "price": 34.99,
        "images": [
          "https://m.media-amazon.com/images/I/81QbTnSesWL._SL1500_.jpg",
          "https://www.graceandlace.com/cdn/shop/files/WildFieldsMaxiDress-AutumnFloral-6.jpg?v=1692129169"
        ]
      },
      {
        "id": 7,
        "name": "Stylish Jacket",
        "description": "Stylish jacket to stay warm in colder weather.",
        "price": 79.99,
        "images": [
          "https://www.soosi.co.in/cdn/shop/products/WhatsAppImage2021-09-24at22.02.50_1024x1024@2x.jpg?v=1632502520",
          "https://img.freepik.com/premium-photo/stylish-guy-standing-street-denim-jacket-against-men-s-looks_94707-3120.jpg?w=2000"
        ]
      },
      {
        "id": 8,
        "name": "Comfortable Sweatpants",
        "description": "Comfortable sweatpants for lounging or workouts.",
        "price": 24.99,
        "images": [
          "https://time.com/shopping/static/2608e86f59275bdc5c95b169c3eecc82/57e17/best-sweatpants-for-men.jpg",
          "https://www.stirlingsports.co.nz/productimages/magnify/1/101866_608485_84621.jpg"
        ]
      },
      {
        "id": 9,
        "name": "Chic Blouse",
        "description": "Chic blouse for a polished and sophisticated look.",
        "price": 44.99,
        "images": [
          "https://www.shaadidukaan.com/vogue/wp-content/uploads/2022/11/latest-saree-blouse-back-designs-3-819x1024.jpg",
          "https://m.media-amazon.com/images/I/71RDewPWpSL._AC_UY1100_.jpg"
        ]
      },
      {
        "id": 10,
        "name": "Casual Cap",
        "description": "Casual cap for a sporty and laid-back style.",
        "price": 14.99,
        "images": [
          "https://m.media-amazon.com/images/I/71s8EMnU0NL._AC_UY1100_.jpg",
          "https://m.media-amazon.com/images/I/9158A+dKfhL._AC_UY1100_.jpg"
        ]
      },
      {
        "id": 11,
        "name": "Cozy Sweater",
        "description": "Cozy sweater for warmth and comfort.",
        "price": 54.99,
        "images": [
          "https://thefibreco.com/wp-content/uploads/2022/10/Always-Cosy-Sweater-by-Julia-Disini-The-Fibre-Co-Arranmore-Light-7-ws.jpg",
          "https://s3.amazonaws.com/media.dressupbuttercup.com/uploads/2017/11/Dress-Up-Buttercup-1-of-8.jpg"
        ]
      },
      {
        "id": 12,
        "name": "Leather Jacket",
        "description": "Stylish leather jacket for a bold fashion statement.",
        "price": 99.99,
        "images": [
          "https://5.imimg.com/data5/SELLER/Default/2022/11/JD/QB/QS/164341513/men-leather-jackets.jpg",
          "https://imgmedia.lbb.in/media/2023/07/64b8d8e65758625afe7bf6cb_1689835750343.jpg"
        ]
      }
    ]
  };

  final List<ProductDataModel> _products =
      _data["clothing_items"]!.map((product) {
    return ProductDataModel(
      id: product["id"] as int,
      name: product["name"] as String,
      description: product["description"] as String,
      price: product["price"] as double,
      images: product["images"] as List<String>,
      isCarted: false,
      isWishlisted: false,
    );
  }).toList();

  final Set<ProductDataModel> _cartProducts = {};
  final Set<ProductDataModel> _wishlistProducts = {};

  void addCartProducts(ProductDataModel product) {
    _cartProducts.add(product);
  }

  void addWishlistProducts(ProductDataModel product) {
    _wishlistProducts.add(product);
  }

  Set<ProductDataModel> getCartProducts() {
    return _cartProducts;
  }

  Set<ProductDataModel> getWishlistProducts() {
    return _wishlistProducts;
  }

  List<ProductDataModel> getProducts() {
    return _products;
  }
}
