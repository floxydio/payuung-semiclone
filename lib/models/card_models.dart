class CardVoucher {
  final String title;
  final String price;
  final String imageName;
  final bool isPromo;
  final String promoText;
  final String pricePromo;

  CardVoucher(this.title, this.price, this.imageName,
      {this.isPromo = false, this.promoText = '', this.pricePromo = ''});
}

List<CardVoucher> homeCardExplore = [
  CardVoucher(
      'Voucher Digital Grab Rp10.000', 'Rp10.000', 'assets/icons/grab.svg'),
  CardVoucher(
      'Voucher Digital Grab Rp50.000', 'Rp50.000', 'assets/icons/grab.svg'),
  CardVoucher(
      'Voucher Digital Grab Rp100.000', 'Rp100.000', 'assets/icons/grab.svg'),
  CardVoucher(
      'Voucher Digital Grab Rp200.000', 'Rp200.000', 'assets/icons/grab.svg',
      isPromo: true, promoText: '50% OFF', pricePromo: 'Rp100.000'),
  CardVoucher(
      'Voucher Digital Grab Rp500.000', 'Rp500.000', 'assets/icons/grab.svg',
      isPromo: true, promoText: '20% OFF', pricePromo: 'Rp400.000'),
];
