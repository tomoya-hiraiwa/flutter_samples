class Events {
  String eventId;
  String eventTitle;
  String eventText;

  Events({required this.eventId, required this.eventTitle, required this.eventText});

  factory Events.fromJson(Map<String, dynamic> json) {
    return Events(
      eventId: json['eventId'],
      eventTitle: json['eventTitle'],
      eventText: json['eventText'],
    );
  }

  @override
  String toString() {
    return 'Events{eventId: $eventId, eventTitle: $eventTitle, eventText: $eventText}';
  }
}