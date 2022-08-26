import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:in_app_review/in_app_review.dart';

ValueNotifier<bool> onpressed = ValueNotifier(false);
ValueNotifier<double> raTing = ValueNotifier(0.0);

class RatingDialog extends StatelessWidget {
  const RatingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      unratedColor: darkGrey,
      initialRating: 0,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return const Icon(
              Icons.sentiment_very_dissatisfied,
              color: Colors.red,
            );
          case 1:
            return const Icon(
              Icons.sentiment_dissatisfied,
              color: Colors.redAccent,
            );
          case 2:
            return const Icon(
              Icons.sentiment_neutral,
              color: Colors.amber,
            );
          case 3:
            return const Icon(
              Icons.sentiment_satisfied,
              color: Colors.lightGreen,
            );
          case 4:
            return const Icon(
              Icons.sentiment_very_satisfied,
              color: Colors.green,
            );
          default:
            return Container();
        }
      },
      onRatingUpdate: (rating) {
        if (rating > 0) {
          raTing.value = rating;
          onpressed.value = true;
        } else {
          onpressed.value = false;
        }
      },
      updateOnDrag: true,
    );
  }
}

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: darkColour,
      title: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ListTile(
              horizontalTitleGap: 0,
              title: const Text(
                "Rate Us",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: white,
                    fontSize: 17,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w500),
              ),
              leading: IconButton(
                onPressed: (() => goback(context)),
                icon: const Icon(
                  Icons.close,
                  color: white,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 160,
                height: 160,
                child: Image.asset(
                    "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png"),
              ),
            ),
            const Text(
              "How Was Your Experience?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: white,
                  fontSize: 17,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      children: [
        const Center(child: RatingDialog()),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: ValueListenableBuilder(
              valueListenable: onpressed,
              builder: (context, bool onPressed, _) {
                return ElevatedButton(
                    onPressed: onPressed
                        ? () async {
                            if (raTing.value > 3) {
                              final InAppReview inAppReview =
                                  InAppReview.instance;
                              if (await inAppReview.isAvailable()) {
                                inAppReview.openStoreListing();
                              } else {
                                goback(context);
                              }
                            } else {
                              goback(context);
                            }
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      primary: orange,
                      onSurface: orange,
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      padding:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: onPressed ? Colors.transparent : orange),
                      ),
                    ),
                    child: const Text(
                      "Submit",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: white,
                          fontSize: 17,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w500),
                    ));
              }),
        )
      ],
    );
  }
}
