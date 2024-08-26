String getGreeting() {
  final hour = DateTime.now().hour;

  if (hour >= 0 && hour < 12) {
    return "Selamat Pagi";
  } else if (hour >= 12 && hour < 18) {
    return "Selamat Sore";
  } else {
    return "Selamat Malam";
  }
}
