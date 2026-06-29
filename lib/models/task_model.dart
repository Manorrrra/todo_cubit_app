// Model بتمثل الـ Task الواحدة
class Task {
  String title;      // عنوان الـ task
  bool isCompleted;  // هل اتعملت ولا لأ

  Task({
    required this.title,
    this.isCompleted = false, // افتراضياً مش مكتملة
  });
}