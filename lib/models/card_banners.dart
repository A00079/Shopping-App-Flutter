class CardBanners {
  var bannerImage;

  CardBanners(this.bannerImage);
}

List<CardBanners> cardBanners = cardBannersDetails
    .map(
      (e) => CardBanners(e['bannerImage']),
    )
    .toList();

var cardBannersDetails = [
  {'bannerImage': 'banner1.PNG'},
  {'bannerImage': 'banner3.PNG'},
  {'bannerImage': 'banner2.PNG'}
];
