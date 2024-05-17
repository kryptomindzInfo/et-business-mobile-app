class HomeScreenArgs {
  final String? firstName;
  final String? lastName;
  HomeScreenArgs({this.firstName, this.lastName});
}

class GetCardScreenArgs {
  final Function() onOrderPressed;
  GetCardScreenArgs({
    required this.onOrderPressed,
  });
}
