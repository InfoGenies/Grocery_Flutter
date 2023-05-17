
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PopularProductLoading extends StatelessWidget {
  const PopularProductLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 220,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) =>   popularProductLoadingCard()),
    );
  }

}

 Widget popularProductLoadingCard() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
    child: Material(
      elevation: 8,
      shadowColor: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(10),
      child: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey.shade300,
        child: Container(
          margin: const EdgeInsets.all(10),
          width: 120,
          child: Column(
            children: [
              AspectRatio(aspectRatio: 0.9,
                child: Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 25
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Container(
                  height: 15,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
