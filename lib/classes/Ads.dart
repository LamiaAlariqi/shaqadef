class Ads {
  String advertisename;
  String advertiseDesc;
  String AdsLink;
  double TotalPrice;
  String dayOfStart;
  String dayOfEnd;

  Ads(
      {required this.AdsLink,
      required this.TotalPrice,
      required this.advertiseDesc,
      required this.advertisename,
      required this.dayOfEnd,
      required this.dayOfStart});
}
