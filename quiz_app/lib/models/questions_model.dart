class QuestionsModel {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuestionsModel({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

List<QuestionsModel> questions = [
  QuestionsModel(
    question: 'What is the capital of France?',
    options: ['Paris', 'London', 'Berlin', 'Madrid'],
    correctAnswer: 'Paris',
  ),
  QuestionsModel(
    question: 'What is the Best Programming Language?',
    options: ['Python', 'Dart', 'JavaScript', 'Java', 'C++', 'C#'],
    correctAnswer: 'Dart',
  ),
  QuestionsModel(
    question: 'What is Delcious Food?',
    options: ['Pizza', 'Burger', 'Sandwich', 'Pasta'],
    correctAnswer: 'Pizza',
  ),
];
