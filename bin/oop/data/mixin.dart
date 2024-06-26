abstract class Multimedia {}

mixin Playable on Multimedia{ // can only use by class inherit to multimedia
  String? name;

  void play() {
    print("Play $name");
  }
}

mixin Stoppable on Multimedia{ // just like Playable
  String? name;

  void stop() {
    print("Stop $name");
  }
}