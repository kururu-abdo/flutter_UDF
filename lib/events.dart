class HomeEvents {
  HomeEvents._();

  factory HomeEvents.changeTitle(String foo) = ChangeTitleEvents;
    factory HomeEvents.changeImage(String foo) = ChangeImageEvent;

  factory HomeEvents.setBusy() = SetBusyEvent;
}

class ChangeTitleEvents extends HomeEvents {
  final String? newTitle;
  ChangeTitleEvents(this.newTitle): super._();

}

class SetBusyEvent extends HomeEvents {
  SetBusyEvent(): super._();


}

class ChangeImageEvent extends HomeEvents {
  ChangeImageEvent(this.newImage): super._();

  final String? newImage;
}