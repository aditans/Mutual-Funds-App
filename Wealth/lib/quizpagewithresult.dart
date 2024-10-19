import 'package:flutter/material.dart';
import 'quizzes.dart';

class QuizPage extends StatefulWidget {
  final List<Map<String, Object>> questions; // Accept questions as a parameter

  QuizPage({Key? key, required this.questions}) : super(key: key); // Update constructor

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestion = 0;
  int score = 0;
  int correctAnswers = 0;
  int incorrectAnswers = 0;
  int unattemptedQuestions = 0;
  int lastSelectedAnswer = -1;

  List<bool> isSelected;
  bool hasAnswered = false;

  _QuizPageState() : isSelected = List.filled(4, false);

  void _selectOption(int index) {
    setState(() {
      if (isSelected[index]) {
        isSelected[index] = false;
        if (lastSelectedAnswer == widget.questions[currentQuestion]['correctAnswer']) {
          correctAnswers--;
          score--;
        } else {
          incorrectAnswers--;
        }
        hasAnswered = false;
        unattemptedQuestions++;
        lastSelectedAnswer = -1;
      } else {
        for (int i = 0; i < isSelected.length; i++) {
          isSelected[i] = i == index;
        }

        if (hasAnswered) {
          if (lastSelectedAnswer == widget.questions[currentQuestion]['correctAnswer']) {
            correctAnswers--;
            score--;
          } else {
            incorrectAnswers--;
          }
        }

        if (index == widget.questions[currentQuestion]['correctAnswer']) {
          correctAnswers++;
          score++;
        } else {
          incorrectAnswers++;
        }

        lastSelectedAnswer = index;
        hasAnswered = true;
        unattemptedQuestions = unattemptedQuestions > 0 ? unattemptedQuestions - 1 : 0;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      if (!hasAnswered) {
        unattemptedQuestions++;
      }

      if (currentQuestion < widget.questions.length - 1) {
        currentQuestion++;
        isSelected = List.filled(4, false);
        hasAnswered = false;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultsPage(
              score: score,
              totalQuestions: widget.questions.length,
              correctAnswers: correctAnswers,
              incorrectAnswers: incorrectAnswers,
              unattemptedQuestions: unattemptedQuestions,
            ),
          ),
        );
      }
    });
  }

  void _showQuestionGrid() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1,
            ),
            itemCount: widget.questions.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentQuestion = index;
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.grey[300],
                  child: Center(
                    child: Text('${index + 1}'),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: Colors.green,
        actions: [
          GestureDetector(
            onTap: _showQuestionGrid,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  '${currentQuestion + 1}/${widget.questions.length}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Text(
              'Your Question Title',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),*/
            SizedBox(height: 20),
            Text(
              widget.questions[currentQuestion]['question'] as String,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            for (int i = 0; i < 4; i++)
              GestureDetector(
                onTap: () => _selectOption(i),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: isSelected[i] ? Colors.green[100] : Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    (widget.questions[currentQuestion]['options'] as List<String>)[i],
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: _nextQuestion,
                  child: Text(currentQuestion==widget.questions.length -1?'FINISH':'NEXT'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Assuming ResultsPage is implemented similarly as before
class ResultsPage extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final int correctAnswers;
  final int incorrectAnswers;
  final int unattemptedQuestions;

  ResultsPage({
    required this.score,
    required this.totalQuestions,
    required this.correctAnswers,
    required this.incorrectAnswers,
    required this.unattemptedQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Results'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Completed!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'You scored $score out of $totalQuestions',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Correct: $correctAnswers',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Incorrect: $incorrectAnswers',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Unattempted: $unattemptedQuestions',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the quiz page
              },
              child: Text('Restart Quiz'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                        QuizResultsPage(score: score,
                            totalQuestions: totalQuestions,
                            correctAnswers: correctAnswers,
                            incorrectAnswers: incorrectAnswers,
                            unattemptedQuestions: unattemptedQuestions),),);

                },
                child: Text('Result info')),
          ],
        ),
      ),
    );
  }
}

class QuizResultsPage extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final int correctAnswers;
  final int incorrectAnswers;
  final int unattemptedQuestions;

  QuizResultsPage({
    required this.score,
    required this.totalQuestions,
    required this.correctAnswers,
    required this.incorrectAnswers,
    required this.unattemptedQuestions,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate the percentage score
    double percentage = (score / totalQuestions) * 100;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quiz 01',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Mutual Funds Basics',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background[1].png'),
            fit: BoxFit.cover,

          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Percentage circle
              SizedBox(
                height: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: CircularProgressIndicator(
                        value: percentage / 100,
                        strokeWidth: 12,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ),
                    Positioned(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${percentage.toStringAsFixed(0)}%',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text('RESULT'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Result message
              Text(
                'Great Job!\nYou’ve cleared this quiz.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              // Correct / Incorrect / Unattempted stats
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildResultStat('CORRECT', correctAnswers, Colors.green),
                  _buildResultStat('INCORRECT', incorrectAnswers, Colors.red),
                  _buildResultStat(
                      'UN-ATTEMPTED', unattemptedQuestions, Colors.grey),
                ],
              ),
              SizedBox(height: 40),
              // Detailed result link

              Spacer(),
              // Next quiz button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Navigate to next quiz
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuizzesPage()
                    ),
                  );
                },
                child: Text(
                  'FINISH',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),

    );
  }

  // Widget for each result stat (Correct, Incorrect, Unattempted)
  Widget _buildResultStat(String label, int value, Color color) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '$value / $totalQuestions',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color),
          ),
        ),
      ],
    );
  }
}
