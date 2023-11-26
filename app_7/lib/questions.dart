import 'quiz-questions.dart';

const questions = [
  QuizQuestions('2x+8=58. x=? ', ['25', '45', '12']),
  QuizQuestions('0!=?', ['1', '0', 'doesn/t exist']),
  QuizQuestions('5!*2!=?', ['240', '10', '120']),
  QuizQuestions('ln(1)=?', ['0', '1', 'doesn/t exist']),
  QuizQuestions('(2x+3)' '=?', ['0', '2', '2x']),
  QuizQuestions(
      'We have 5 chairs and 5 students. How many ways are there for them to sit?',
      ['120', '25', '3125']),
  QuizQuestions(
      'We tossed a coin twice. What is the probability for getting 2 heads?',
      ['0.25', '1', '0.0625']),
  QuizQuestions(
      'In a deck, what is the probability of drawing a red card or a face card (king, queen, or jack)?',
      ['0.61', '0.32', '0.87']),
  QuizQuestions('What is pythagorean theorem?',
      ['c^2=a^2+b^2', 'c^2=a^2*b^2', 'c^2=a^2-b^2']),
  QuizQuestions('What is the formula used to find the volume of a room?',
      ['l*w*h', '(l*w)/h)', 'l+w+h']),
];
