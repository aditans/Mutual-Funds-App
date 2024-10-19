import 'package:wealth/Learn.dart';

import 'learnhomepage.dart';
import 'package:flutter/material.dart';
import 'package:wealth/chapterpage.dart';



class InvestingBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Investing Basics'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module One',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'Need of Investment',
              'Submodule 1.01',
              Icons.circle,
              Colors.grey,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NeedOfInvestmentPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'Power of Investment',
              'Submodule 1.02',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PowerOfInvestmentPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),

          ],
        ),
      ),

    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
class IntroductionToMF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Introduction to Mutual Funds'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Two',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'Introduction to Mutual Funds',
              'Submodule 2.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IntroductionToMutualFundsPage(),
                  ),
                );
              },
            ),

          ],
        ),
      ),

    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class TypesOfMutualFundSchemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Types of Mutual Fund Schemes'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Three',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'Understanding Mutual Fund Scheme Types',
              'Submodule 3.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UnderstandingMFPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'Classification by Investment Objectives',
              'Submodule 3.02',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClassificationPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),

          ],
        ),
      ),

    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class TermsRelatedToMutualFunds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Terms Related to Mutual Funds'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );

            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Four',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'AUM',
              'Submodule 4.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AUMPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'NAV',
              'Submodule 4.02',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NAVPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),
            _buildSubmoduleCard(
              context,
              'Expense Ratio',
              'Submodule 4.03',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExpenseRatioPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),
            _buildSubmoduleCard(
              context,
              'Exit Load',
              'Submodule 4.04',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExitLoadPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),
            _buildSubmoduleCard(
              context,
              'Fund Manager',
              'Submodule 4.05',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FundManagerPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),

          ],
        ),
      ),

    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class CategorisationOfMutualFunds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Categorisation of Mutual Funds'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Five',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'Equity',
              'Submodule 5.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EquityPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'Debt',
              'Submodule 5.02',
              Icons.circle,
              Colors.grey,
                  () {
                // Handle navigation to submodule 1.02
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DebtPage(),
                      ),
                    );
              },
            ),
            _buildSubmoduleCard(
              context,
              'Hybrid',
              'Submodule 5.03',
              Icons.circle,
              Colors.grey,
                  () {
                // Handle navigation to submodule 1.02
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HybridPage(),
                      ),
                    );
              },
            ),


          ],
        ),
      ),

    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
class AdvantagesAndRisksInMutualFunds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Advantages and Risks in Mutual Funds'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Six',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'Advantages',
              'Submodule 6.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdvantagesPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'Risk',
              'Submodule 6.02',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RiskPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),


          ],
        ),
      ),

    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
class SystematicPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Systematic Plans'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Seven',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'SIP',
              'Submodule 7.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SIPPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'SWP',
              'Submodule 7.02',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SWPPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),

          ],
        ),
      ),

    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class ReturnRatios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Return Ratios'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Eight',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'CAGR',
              'Submodule 8.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CAGRPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'XIRR',
              'Submodule 8.02',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => XIRRPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),


          ],
        ),
      ),
    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class TaxationsInMutualFund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Taxations in Mutual Fund'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Nine',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'Tax Rates for Mutual Fund Investorsutual Fund',
              'Submodule 9.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaxRatesPage(),
                  ),
                );
              },
            ),
            _buildSubmoduleCard(
              context,
              'Other Tax Provisions',
              'Submodule 9.02',
              Icons.circle,
              Colors.grey,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtherTaxProvisionsPage(),
                      ),
                    );
                // Handle navigation to submodule 1.02
              },
            ),


          ],
        ),
      ),
    );
  }




  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class HowToInvestInAMutualFund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('How to Invest in a Mutual Fund'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Learn(),
              ),
            );
            // Handle back action here
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module Ten',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            _buildSubmoduleCard(
              context,
              'How to Invest in a Mutual Fund',
              'Submodule 10.01',
              Icons.circle,
              Colors.grey,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HowToInvestInMutualFundPage(),
                  ),
                );
              },
            ),

          ],
        ),
      ),

    );
  }
  Widget _buildSubmoduleCard(
      BuildContext context, String title, String subtitle, IconData icon, Color iconColor, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
