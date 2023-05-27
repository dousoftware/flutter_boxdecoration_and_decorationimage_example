import 'package:flutter/material.dart';

class BoxDecorationDecorationImageExample extends StatelessWidget {
  const BoxDecorationDecorationImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return decorationimageOrnegi();
  }

  Center decorationimageOrnegi() {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // Container'ın kenarlığı üzerinde işlem yapar
          borderRadius: BorderRadius.circular(25),
          // Container'ın kenarlık rengini ve genişliğini ayarlar
          // border: Border.all(width: 2, color: Colors.black),
          // decoration parametresi varsa color'ı burada kullanmak zorundayım, yoksa hata verir
          // color: Colors.blue,
          image: const DecorationImage(
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/2000px-Flag_of_Turkey.svg.png'),
              fit: BoxFit.fill),
        ),
      ),
    );
  }

  Center boxdecorationOrnegi() {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        // Child'daki widget'ı ekranın ortasına yaslar
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // Container'ın kenarlığı üzerinde işlem yapar
          borderRadius: BorderRadius.circular(25),
          // Container'ın kenarlık resmini ve genişliğini ayarlar
          border: Border.all(width: 2, color: Colors.black),
          // decoration kullanıyorsam color'ı Container içerisinde değil decoration içerisinde kullanmak zorundayım
          color: Colors.blue,
        ),
        child: const Text(
          "BoxDecoration Örneği",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
