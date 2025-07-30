enum Role {CE , DCE, C, TL}

class Event {
 
 final String id;
 final String title;
 final String description;
 final DateTime start;
 final DateTime end;
 final String location;
 final List<Role> participants;

 Event({
 required this.id,
 required this.title,
 required this.description,
 required this.start,
 required this.end,
 required this.location,
 required this.participants,


 });
 



}
