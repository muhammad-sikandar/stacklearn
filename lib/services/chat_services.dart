import 'package:cloud_firestore/cloud_firestore.dart';
import 'messagepoe.dart';

class ChatService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _messagesCollection =
  FirebaseFirestore.instance.collection('messages');

  Stream<List<Message>> getMessages() {
    return _messagesCollection
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Message(
          text: data['text'],
          isMe: data['isMe'],
          senderEmail: data['senderEmail'],
        );
      }).toList();
    });
  }

  Future<void> sendMessage(Message message) async {
    await _messagesCollection.add({
      'text': message.text,
      'isMe': message.isMe,
      'senderEmail': message.senderEmail,
      'timestamp': Timestamp.now(),
    });
  }
}