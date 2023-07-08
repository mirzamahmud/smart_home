class Schedule {
  String title, details, start, end, image1, image2;

  Schedule(
      {required this.title,
      required this.image1,
      required this.image2,
      required this.details,
      required this.start,
      required this.end});
}

List<Schedule> mySchedule = [
  Schedule(
      title: "Smart Lamp",
      image1: "assets/images/on.png",
      image2: "assets/images/lamp2.png",
      details: "Dining Room  |  Tue Thu",
      start: "8 pm",
      end: "8 am"),
  Schedule(
      title: "Smart Lamp",
      image1: "assets/images/on.png",
      image2: "assets/images/lamp2.png",
      details: "Dining Room  |  Tue Thu",
      start: "8 pm",
      end: "8 am"),
  Schedule(
      title: "Smart Lamp",
      image1: "assets/images/on.png",
      image2: "assets/images/lamp2.png",
      details: "Dining Room  |  Tue Thu",
      start: "8 pm",
      end: "8 am"),
];

class PowerUsed {
  String title, details, unit1, unit2, icon, image;
  double number, count;
  String percent;

  PowerUsed(
      {required this.title,
      required this.details,
      required this.unit1,
      required this.unit2,
      required this.image,
      required this.count,
      required this.number,
      required this.icon,
      required this.percent});
}

List<PowerUsed> powerList = [
  PowerUsed(
      title: "Lamp",
      details: "Kitchen - Bedroom",
      unit1: "8 Unit",
      unit2: "12 Jam",
      image: "assets/images/lamp3.png",
      count: 1000,
      number: -11.2,
      icon: "assets/images/down.png",
      percent: " kw/h"),
  PowerUsed(
      title: "Air Conditioner",
      details: "Kitchen - Living Room",
      unit1: "8 Unit",
      unit2: "12 Jam",
      image: "assets/images/air.png",
      count: 1000,
      number: -10.2,
      icon: "assets/images/up.png",
      percent: " kw/h"),
  PowerUsed(
      title: "Wireless Speaker",
      details: "Bedroom",
      unit1: "2 Unit",
      unit2: "3 Jam",
      image: "assets/images/speaker.png",
      count: 1090,
      number: -10.2,
      icon: "assets/images/up.png",
      percent: " kw/h"),
  PowerUsed(
      title: "Television",
      details: "Living Room",
      unit1: "1 Unit",
      unit2: "12 Jam",
      image: "assets/images/television.png",
      count: 1000,
      number: -100.2,
      icon: "assets/images/down.png",
      percent: " kw/h"),
  PowerUsed(
      title: "Wifi",
      details: "Kitchen - Bedroom",
      unit1: "2 Unit",
      unit2: "22 Jam",
      image: "assets/images/wifi.png",
      count: 22,
      number: -20.2,
      icon: "assets/images/down.png",
      percent: " kb/s"),
];

class SmartModel {
  String title, details, image1, image2, start, end;

  SmartModel(
      {required this.title,
      required this.details,
      required this.image1,
      required this.image2,
      required this.start,
      required this.end});
}

List<SmartModel> smartModel = [
  SmartModel(title: "Smart Lamp", details: "Dining Room  |  Tue Thu", image1: "assets/images/on.png", image2: "assets/images/lamp2.png", start: "8 pm", end: "8 am"),
  SmartModel(title: "Air Conditioner", details: "Dining Room  |  Tue Thu", image1: "assets/images/off.png", image2: "assets/images/air.png", start: "10 pm", end: "11 am"),
  SmartModel(title: "Smart Lamp", details: "Bedroom2  |  Fri", image1: "assets/images/off.png", image2: "assets/images/lamp2.png", start: "8 pm", end: "8 am"),
  SmartModel(title: "Television", details: "Living Room  |  Tue Thu", image1: "assets/images/on.png", image2: "assets/images/television.png", start: "8 pm", end: "8 am"),
];
