import '../screenutil/screenutil.dart';

extension SizeExtension on num {
  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get sp => ScreenUtil().setSp(this);

  double detailTabHeight() {
    return (this / 2).round() * 75.h;
  }
}
