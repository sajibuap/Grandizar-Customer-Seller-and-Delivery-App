import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grandizar_customer_v2/presentation/constants/svg_constants.dart';

class RatingBar extends StatelessWidget {
  final double? rating;
  final double? size;
  final int? ratingCount;
  RatingBar(
      {@required this.rating, @required this.ratingCount, this.size = 18});

  @override
  Widget build(BuildContext context) {
    List<Widget> _starList = [];

    int realNumber = rating!.floor();
    int partNumber = ((rating! - realNumber) * 10).ceil();

    for (int i = 0; i < 5; i++) {
      if (i < realNumber) {
        // _starList.add(Icon(Icons.star,
        //     color: Color(0xffE00B00), size: size));
        _starList.add(SvgPicture.asset(SvgConstants.statFill,width: 10,height: 10,));

      } else if (i == realNumber) {
        _starList.add(SizedBox(
          height: size,
          width: size,
          child: Stack(
            fit: StackFit.expand,
            children: [
              //Icon(Icons.star, color: Colors.grey[200], size: size),
              SvgPicture.asset(SvgConstants.statFill,width: 10,height: 10,),
              ClipRect(
                clipper: _Clipper(part: partNumber),
                //child: Icon(Icons.star, color: Colors.grey[200], size: size),
                child: SvgPicture.asset(SvgConstants.statFill,width: 10,height: 10,),
              )
            ],
          ),
        ));
      } else {
        //_starList.add(Icon(Icons.star, color: Colors.grey[200], size: size));
        _starList.add(SvgPicture.asset(SvgConstants.statFill,width: 10,height: 10,));
      }
    }
    // ratingCount != null
    //     ? _starList.add(Padding(
    //         padding: EdgeInsets.only(left:5),
    //         child: Text(
    //             ratingCount == 0
    //                 ? '(No reviews yet)'
    //                 : '( $ratingCount ${ratingCount! > 1 ? 'ratings' : 'rating'})',
    //             // style: robotoRegular.copyWith(
    //             //     fontSize: size * 0.7,
    //             //     color: Theme.of(context).disabledColor)
    //         ),
    //       ))
    //     : SizedBox();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _starList,
    );
  }
}

class _Clipper extends CustomClipper<Rect> {
  final int? part;

  _Clipper({@required this.part});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(
      (size.width / 10) * part!,
      0.0,
      size.width,
      size.height,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}
