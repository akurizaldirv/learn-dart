import "mixin.dart";

class Video extends Multimedia with Playable, Stoppable {}

class Audio extends Multimedia with Playable, Stoppable {}

// class Radio with Playable, Stoppable {} // error: cause not implement Multimedia
