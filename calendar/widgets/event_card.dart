import 'package:flutter/material.dart';
import '../models/event.dart' as local_event;

class EventCard extends StatelessWidget {
  final local_event.Event event;
  final VoidCallback? onAddToCalendar;

  const EventCard({
    Key? key,
    required this.event,
    this.onAddToCalendar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(event.title),
        subtitle: Text('${event.description}\n${event.location}\n${event.start} - ${event.end}'),
        trailing: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: onAddToCalendar, 
        ),
      ),
    );
  }
}
