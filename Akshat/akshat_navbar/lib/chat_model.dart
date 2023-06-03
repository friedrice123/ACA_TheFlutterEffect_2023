class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel(
      {this.name = '', this.message = '', this.time = '', this.avatarUrl = ''});
}

List<ChatModel> dummyData = [
  ChatModel(
    name: "Joey",
    message: "How you doin?",
    time: "15:30",
    avatarUrl:
        "https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg",
  ),
  ChatModel(
    name: "Monica",
    message: "I KNOW!",
    time: "15:30",
    avatarUrl:
        "https://upload.wikimedia.org/wikipedia/en/d/d0/Courteney_Cox_as_Monica_Geller.jpg",
  ),
  ChatModel(
    name: "Chandler",
    message: "Hi, I'm Chandler. I make jokes when I'm uncomfortable.",
    time: "15:30",
    avatarUrl:
        "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person-370x207.jpg",
  ),
  ChatModel(
    name: "Rachel",
    message: "How do you expect me to grow if you won't let me blow?",
    time: "15:30",
    avatarUrl:
        "https://pyxis.nymag.com/v1/imgs/47c/71a/130bf1e557e534b3f2be3351afc2ecf952-17-rachel-green-jewish.rsquare.w700.jpg",
  ),
  ChatModel(
    name: "Ross",
    message: "We were on a break!",
    time: "15:30",
    avatarUrl:
        "https://upload.wikimedia.org/wikipedia/en/6/6f/David_Schwimmer_as_Ross_Geller.jpg",
  ),
  ChatModel(
    name: "Phoebe",
    message: "Hey",
    time: "15:30",
    avatarUrl:
        "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person-370x207.jpg",
  ),
  ChatModel(
    name: "Mike",
    message: "Hey",
    time: "15:30",
    avatarUrl:
        "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person-370x207.jpg",
  ),
  ChatModel(
    name: "Gunther",
    message: "Hey",
    time: "15:30",
    avatarUrl:
        "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person-370x207.jpg",
  ),
  ChatModel(
    name: "Janice",
    message: "OH MY GOD!",
    time: "15:30",
    avatarUrl:
        "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person-370x207.jpg",
  ),
  ChatModel(
    name: "Estelle",
    message: "Hey",
    time: "15:30",
    avatarUrl:
        "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person-370x207.jpg",
  ),
  ChatModel(
    name: "Richard",
    message: "Hey",
    time: "15:30",
    avatarUrl:
        "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person-370x207.jpg",
  ),
];
