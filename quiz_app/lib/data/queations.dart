import '../models/quiz_queations.dart';

const questions = [
  QuizQuestion(
    'What is the primary programming language used in Flutter development?',
    [
      'Dart',
      'Java',
      'Swift',
      'JavaScript',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a button in Flutter?',
    [
      'RaisedButton',
      'TextField',
      'Container',
      'FloatingActionButton',
    ],
  ),
  QuizQuestion(
    'What is the purpose of a StatefulWidget in Flutter?',
    [
      'To manage and update mutable state',
      'To create stateless UI components',
      'To handle user input events',
      'To navigate between different screens',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'Which command is used to run a Flutter application?',
    [
      'flutter run',
      'flutter start',
      'flutter build',
      'flutter launch',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Which package is used for making HTTP requests in Flutter?',
    [
      'http',
      'json_serializable',
      'dio',
      'retrofit',
    ],
  ),
];
