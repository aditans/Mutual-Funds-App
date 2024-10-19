import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UnderstandingMFPage(),
    );
  }
}

class NeedOfInvestmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investing Basics'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '1.01: Need of Investment',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Inflation is the rate at which the cost of goods and services increases over time. Without investments that grow faster than inflation, the purchasing power of money decreases, meaning that over time, you can buy less with the same amount of money. Investments help maintain and grow your purchasing power by generating returns that ideally exceed inflation',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              _buildBulletPoint(
                'Let’s say the inflation rate is 6% per year, meaning what costs ₹1,000 today would cost ₹1,060 next year. If you leave your ₹1,000 in a basic savings account with a 4% interest rate, you’ll end up with ₹1,040, which falls short of keeping up with inflation. In contrast, investing in an asset like mutual funds with a potential 8-10% return can help your money outpace inflation.For example,imagine buying a smartphone today for ₹20,000. If inflation remains around 6%, that same phone (or a similar model) could cost approximately ₹27,000 in 5 years. Without investing, the value of your ₹20,000 would likely lag behind, reducing its ability to afford the same phone in the future.',
              ),
              _buildBulletPoint(
                'Investments build financial security by creating additional income sources and growing wealth over time. This wealth accumulation can support lifestyle goals, financial independence, and peace of mind, especially in emergencies.',
              ),
              _buildBulletPoint(
                'Consider a 30-year-old who invests ₹5,000 monthly into a mutual fund yielding a 10% annual return. By age 60, their investments will have grown to over ₹1.1 crore, creating a significant wealth cushion for their retirement.Thus,if someone invests in a balanced portfolio, they could maintain a reliable income through dividends or interest. For instance, retirees often depend on their investment portfolios for income, allowing them to live comfortably without relying on employment.',
              ),
              _buildBulletPoint(
                'Investments provide a structured approach to saving for life goals, whether it’s buying a house, funding children’s education, or achieving early retirement. By identifying goals and investing towards them, people can make their future financial aspirations achievable.',
              ),
              _buildBulletPoint(
                'A young couple aims to save ₹20 lakh for their child’s college education in 18 years. By investing ₹5,000 monthly in a mutual fund with an average 10% return, they can meet this goal through the power of compound growth.Consider two individuals, A and B. A starts investing early with the goal of homeownership and accumulates a down payment over time. B doesn’t invest and has to rely on a loan for the entire down payment, facing higher long-term financial strain.',
              ),
              _buildBulletPoint(
                'An emergency fund is a reserve of easily accessible money set aside to cover unexpected expenses, like medical emergencies or job loss. A good emergency fund provides liquidity without disrupting long-term investments.',
              ),
              _buildBulletPoint(
                  'If you set aside ₹2 lakh in a liquid fund, you can cover three to six months of living expenses in case of income disruption.Suppose someone faces an unexpected medical emergency costing ₹50,000. With an emergency fund, they can cover this without selling long-term assets or taking on debt, ensuring other financial goals remain on track.'
              ),
              _buildBulletPoint(
                  'Retirement planning through investments enables individuals to build a corpus for their post-retirement years, allowing them to maintain their lifestyle and manage medical or travel expenses without depending on family or government assistance.'
              ),
              _buildBulletPoint(
                  'A person saving ₹10,000 per month in a retirement-focused mutual fund from age 30 to 60 could accumulate a retirement corpus of over ₹2 crore, assuming an 8% average annual return.Consider Mr. Rao, who began investing in his 30s. By the time he retired at 60, he had a steady retirement corpus, which allowed him to travel, meet medical needs, and live independently, whereas his friend who didn’t invest faced financial constraints.'
              ),




              SizedBox(height: 16.0),
              Text(
                'To reinforce these concepts, here\'s another helpful video:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/yt-thumb.jpg', // Correct path to your local image
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class PowerOfInvestmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investing Basics'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '1.02: Power of Investment',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Compounding occurs when returns generated on investments are reinvested, allowing returns to generate further returns. The effect compounds over time, making an initial investment grow faster with each passing year.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              _buildBulletPoint(
                  'If you invest ₹1,00,000 at an 8% annual return, by the end of the first year, you’ll have ₹1,08,000. In the second year, you’ll earn 8% on ₹1,08,000 (i.e., ₹1,16,640), leading to exponential growth over time Imagine investing ₹10,000 annually. After 20 years, with an 8% return, the investment could grow to over ₹5 lakh due to compounding, which is much higher than a simple 20 × ₹10,000 = ₹2 lakh.'
              ),
              _buildBulletPoint(
                'Investments build financial security by creating additional income sources and growing wealth over time. This wealth accumulation can support lifestyle goals, financial independence, and peace of mind, especially in emergencies.',
              ),
              _buildBulletPoint(
                  'The earlier you begin investing, the longer your money has to compound, resulting in significantly higher returns. Compounding rewards those who start early.'
              ),
              _buildBulletPoint(
                  ' If A invests ₹10,000 annually from age 25 at an 8% return until 60, and B starts the same investment at age 35, A’s corpus will be nearly double B’s due to the additional compounding years. Consider two siblings who start investing at different ages. The elder sibling, starting at 25, invests small amounts but ends up with a larger corpus than the younger sibling, who started at 35 but invested higher amounts.'
              ),
              _buildBulletPoint(
                  'Explanation: Compounding can happen at various frequencies—daily, monthly, quarterly, annually. The more frequently compounding occurs, the faster the investment grows'
              ),
              _buildBulletPoint(
                  'Example: ₹1,00,000 compounded quarterly at a 10% annual rate yields more than the same sum compounded annually due to the additional intervals of compounding.'
              ),
              _buildBulletPoint(
                  'Scenario: Imagine depositing ₹50,000 in a fund that compounds monthly versus annually. The monthly-compounded fund grows faster, showcasing how the compounding frequency impacts returns.'
              ),
              _buildBulletPoint(
                  ' Compounding is powerful for wealth growth but can work against people when it comes to debt, especially with credit cards or high-interest loans. Debt compounds as unpaid interest is added to the principal, leading to a rapidly increasing debt load if payments aren’t managed.'
              ),
              _buildBulletPoint(
                  'A credit card balance of ₹50,000 at a 24% annual interest rate compounded monthly grows significantly if only minimum payments are made, often leading to a “debt trap'
              ),




              SizedBox(height: 16.0),
              Text(
                'To reinforce these concepts, here\'s another helpful video:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/yt-thumb.jpg', // Correct path to your local image
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroductionToMutualFundsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction To Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '2.01: Introduction To Mutual Funds',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'A mutual fund is a collective investment vehicle that collects & pools money from a number of investors and invests the same in equities, bonds, government securities, money market instruments.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              _buildBulletPoint(
                  'The money collected in mutual fund scheme is invested by professional fund managers in stocks and bonds etc. in line with a scheme’s investment objective. The income / gains generated from this collective investment scheme are distributed proportionately amongst the investors, after deducting applicable expenses and levies, by calculating a scheme’s “Net Asset Value” or NAV. In return, mutual fund charges a small fee.'
              ),
              _buildBulletPoint(
                  'In short, mutual fund is a collective pool of money contributed by several investors and managed by a professional Fund Manager.'
              ),
              _buildBulletPoint(
                  'Mutual Funds in India are established in the form of a Trust under Indian Trust Act, 1882, in accordance with SEBI (Mutual Funds) Regulations, 1996.'
              ),
              _buildBulletPoint(
                  ' The fees and expenses charged by the mutual funds to manage a scheme are regulated and are subject to the limits specified by SEBI.'
              ),
              _buildBulletPoint(
                  'One should avoid the temptation to review the fund\'s performance each time the market falls or jumps up significantly. For an actively-managed equity scheme, one must have patience and allow reasonable time - between 18 and 24 months - for the fund to generate returns in the portfolio.'
              ),
              _buildBulletPoint(
                  'As investment goals vary from person to person – post-retirement expenses, money for children’s education or marriage, house purchase, etc. – the investment products required to achieve these goals too vary. Mutual funds provide certain distinct advantages over investing in individual securities. Mutual funds offer multiple choices for investment across equity shares, corporate bonds, government securities, and money market instruments, providing an excellent avenue for retail investors to participate and benefit from the uptrends in capital markets. The main advantages are that you can invest in a variety of securities for a relatively low cost and leave the investment decisions to a professional manager.'
              ),





              SizedBox(height: 16.0),
              Text(
                'To reinforce these concepts, here\'s another helpful video:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/yt-thumb.jpg', // Correct path to your local image
                      fit: BoxFit.cover,
                    ),

                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class UnderstandingMFPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Mutual Fund Schemes'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '3.01: Understanding Mutual Fund Scheme Types',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Mutual funds come in many varieties, designed to meet different investor goals. Mutual funds can be broadly classified based on –',

                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              _buildBulletPoint(
                  'Organisation Structure – Open ended, Close ended, Interval'),
              _buildBulletPoint(
                  'Management of Portfolio – Actively or Passively'),
              _buildBulletPoint(
                  'Investment Objective – Growth, Income, Liquidity'),
              _buildBulletPoint(
                  'Underlying Portfolio – Equity, Debt, Hybrid, Money market instruments, Multi Asset'
              ),
              _buildBulletPoint(
                  'Thematic / solution oriented – Tax saving, Retirement benefit, Child welfare, Arbitrage'),
              _buildBulletPoint(
                  'Exchange Traded Funds'),
              _buildBulletPoint(
                  'Overseas funds'),

              _buildBulletPoint(
                  'Fund of funds'),

              Text(
                'Scheme Classification by Organization Structure–',

                style: TextStyle(fontSize: 16.0),
              ),

              _buildBulletPoint(
                  'Open-ended schemes are perpetual, and open for subscription and repurchase on a continuous basis on all business days at the current NAV.'),

              _buildBulletPoint(
                  'Close-ended schemes have a fixed maturity date. The units are issued at the time of the initial offer and redeemed only on maturity. The units of close-ended schemes are mandatorily listed to provide exit route before maturity and can be sold/traded on the stock exchanges.'),

              _buildBulletPoint(
                  'Interval schemes allow purchase and redemption during specified transaction periods (intervals). The transaction period has to be for a minimum of 2 days and there should be at least a 15-day gap between two transaction periods. The units of interval schemes are also mandatorily listed on the stock exchanges.'),
              Text(
                'Scheme Classification by Portfolio Management–',

                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'Active Funds',

                style: TextStyle(fontSize: 16.0),
              ),
              _buildBulletPoint(
                  'In an Active Fund, the Fund Manager is ‘Active’ in deciding whether to Buy, Hold, or Sell the underlying securities and in stock selection. Active funds adopt different strategies and styles to create and manage the portfolio.'),
              Text(
                'Passive Funds',

                style: TextStyle(fontSize: 16.0),
              ),
              _buildBulletPoint(
                  'In a Passive Fund, the fund manager has a passive role, as the stock selection / Buy, Hold, Sell decision is driven by the Benchmark Index and the fund manager / dealer merely needs to replicate the same with minimal tracking error.'),

              SizedBox(height: 16.0),
              Text(
                'To reinforce these concepts, here\'s another helpful video:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/yt-thumb.jpg', // Correct path to your local image
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}


class ClassificationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Mutual Fund Schemes'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '3.02: Classification by Investment Objectives',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16.0),
              Text(
                  'Mutual funds offer products that cater to the different investment objectives of the investors such as –'),

              _buildBulletPoint('Capital Appreciation (Growth)'),
              _buildBulletPoint('Capital Preservation'),
              _buildBulletPoint('Regular Income'),
              _buildBulletPoint('Liquidity'),
              _buildBulletPoint('Tax-Saving'),
              Image.asset(
                'lib/assets/yt-thumb.jpg',

                fit: BoxFit.cover,
              ),
              Text(
                  'Mutual funds also offer investment plans, such as Growth and Dividend options, to help tailor the investment to the investors’ needs.'),
              SizedBox(height: 8),

              Text('Growth Funds:'),
              _buildBulletPoint(
                  'Growth Funds are schemes designed to provide capital appreciation.'),
              _buildBulletPoint(
                  'Primarily invest in growth-oriented assets, such as equity.'),
              _buildBulletPoint(
                  'Investment in growth-oriented funds requires a medium to long-term investment horizon.'),
              _buildBulletPoint(
                  'Historically, equity as an asset class has outperformed other investments over the long term. However, returns from growth funds can be volatile in the short-term due to fluctuating prices of underlying equity.'),
              _buildBulletPoint(
                  'Hence, investors must be able to handle short-term volatility in returns.'),

              SizedBox(height: 8),

              Text('Income Funds:'),
              _buildBulletPoint(
                  'The objective of Income Funds is to provide regular and steady income to investors.'),
              _buildBulletPoint(
                  'Invest in fixed income securities such as Corporate Bonds, Debentures, and Government securities.'),
              _buildBulletPoint(
                  'Returns are generated from interest income and capital gains from these investments.'),
              _buildBulletPoint(
                  'The fund will distribute income if the portfolio generates required returns. However, income is not guaranteed.'),
              _buildBulletPoint(
                  'Returns depend on the tenor and credit quality of the securities held.'),

              SizedBox(height: 8),

              Text('Liquid / Overnight / Money Market Mutual Funds:'),
              _buildBulletPoint(
                  'Investment options for investors seeking liquidity and principal protection, with returns.'),
              _buildBulletPoint(
                  'Funds invest in money market instruments* with maturities not exceeding 91 days.'),
              _buildBulletPoint(
                  'Returns are dependent on the short-term interest rate in the market.'),
              _buildBulletPoint(
                  'Ideal for investors who wish to park surplus funds for short periods.'),
              _buildBulletPoint(
                  'For longer holding periods, these funds may sacrifice better returns from products suitable for extended durations.'),
              Text(
                  '* Money Market Instruments include commercial papers, commercial bills, treasury bills, government securities with up to one-year maturity, call or notice money, certificates of deposit, usance bills, and any other instruments specified by the RBI.'),
              SizedBox(height: 8),

              Text('Classification by Investment Portfolio:'),
              _buildBulletPoint(
                  'Mutual fund products are classified based on their portfolio composition:'),
              _buildBulletPoint(
                  'The first level of categorization is by asset class, such as equity, debt, money market instruments, or gold.'),
              _buildBulletPoint(
                  'The second level of categorization is based on portfolio strategies and styles, such as Income fund, Dynamic Bond Fund, Infrastructure fund, Large-cap/Mid-cap/Small-cap Equity fund, Value fund, etc.'),
              _buildBulletPoint(
                  'The portfolio composition flows from the scheme’s investment objectives.'),

















              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/yt-thumb.jpg', // Correct path to your local image
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),

              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green,
                ),
                child: Text('MARK AS COMPLETED'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }

}



class AUMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms related to Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '4.01: AUM',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                  'Mutual funds offer products that cater to the different investment objectives of the investors such as –'),
              _buildBulletPoint('Capital Appreciation (Growth)'),
              _buildBulletPoint('Capital Preservation'),
              _buildBulletPoint('Regular Income'),
              _buildBulletPoint('Liquidity'),
              _buildBulletPoint('Tax-Saving'),
              Text(
                  'Mutual funds also offer investment plans, such as Growth and Dividend options, to help tailor the investment to the investors’ needs.'),
              SizedBox(height: 8),

              Text('Growth Funds:'),
              _buildBulletPoint(
                  'Growth Funds are schemes designed to provide capital appreciation.'),
              _buildBulletPoint(
                  'Primarily invest in growth-oriented assets, such as equity.'),
              _buildBulletPoint(
                  'Investment in growth-oriented funds requires a medium to long-term investment horizon.'),
              _buildBulletPoint(
                  'Historically, equity as an asset class has outperformed other investments over the long term. However, returns from growth funds can be volatile in the short-term due to fluctuating prices of underlying equity.'),
              _buildBulletPoint(
                  'Hence, investors must be able to handle short-term volatility in returns.'),

              SizedBox(height: 8),

              Text('Income Funds:'),
              _buildBulletPoint(
                  'The objective of Income Funds is to provide regular and steady income to investors.'),
              _buildBulletPoint(
                  'Invest in fixed income securities such as Corporate Bonds, Debentures, and Government securities.'),
              _buildBulletPoint(
                  'Returns are generated from interest income and capital gains from these investments.'),
              _buildBulletPoint(
                  'The fund will distribute income if the portfolio generates required returns. However, income is not guaranteed.'),
              _buildBulletPoint(
                  'Returns depend on the tenor and credit quality of the securities held.'),

              SizedBox(height: 8),

              Text('Liquid / Overnight / Money Market Mutual Funds:'),
              _buildBulletPoint(
                  'Investment options for investors seeking liquidity and principal protection, with returns.'),
              _buildBulletPoint(
                  'Funds invest in money market instruments* with maturities not exceeding 91 days.'),
              _buildBulletPoint(
                  'Returns are dependent on the short-term interest rate in the market.'),
              _buildBulletPoint(
                  'Ideal for investors who wish to park surplus funds for short periods.'),
              _buildBulletPoint(
                  'For longer holding periods, these funds may sacrifice better returns from products suitable for extended durations.'),
              Text(
                  '* Money Market Instruments include commercial papers, commercial bills, treasury bills, government securities with up to one-year maturity, call or notice money, certificates of deposit, usance bills, and any other instruments specified by the RBI.'),
              SizedBox(height: 8),

              Text('Classification by Investment Portfolio:'),
              _buildBulletPoint(
                  'Mutual fund products are classified based on their portfolio composition:'),
              _buildBulletPoint(
                  'The first level of categorization is by asset class, such as equity, debt, money market instruments, or gold.'),
              _buildBulletPoint(
                  'The second level of categorization is based on portfolio strategies and styles, such as Income fund, Dynamic Bond Fund, Infrastructure fund, Large-cap/Mid-cap/Small-cap Equity fund, Value fund, etc.'),
              _buildBulletPoint(
                  'The portfolio composition flows from the scheme’s investment objectives.'),






              SizedBox(height: 16.0),
              Text(
                'To reinforce these concepts, here\'s another helpful video:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/yt-thumb.jpg', // Correct path to your local image
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class NAVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms related to Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '4.02: NAV',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text("What is NAV?"),
              Text(
                  "NAV stands for Net Asset Value. The performance of a mutual fund scheme is "
                      "denoted by its NAV per unit. NAV per unit is the market value of securities "
                      "of a scheme divided by the total number of units of the scheme on a given date."
              ),
              Image.asset(
                'lib/assets/yt-thumb.jpg',
                fit: BoxFit.cover,
              ),
              Text(
                  "For example, if the market value of securities of a mutual fund scheme is ₹200 lakh "
                      "and the mutual fund has issued 10 lakh units of ₹ 10 each to the investors, then "
                      "the NAV per unit of the fund is ₹ 20 (i.e., ₹200 lakh/10 lakh). Since market value "
                      "of securities changes every day, NAV of a scheme also varies on day-to-day basis."
              ),
              _buildBulletPoint(
                  "NAVs of mutual fund schemes are published on respective mutual funds’ websites as well as AMFI’s website daily."
              ),
              _buildBulletPoint(
                  "Unlike stocks, where the price is driven by the stock market and changes from minute-to-minute, "
                      "NAVs of mutual fund schemes are declared at the end of each trading day after markets are closed, "
                      "in accordance with SEBI Mutual Fund Regulations."
              ),
              _buildBulletPoint(
                  "Units of mutual fund schemes under all schemes (except Liquid & Overnight funds) are allotted "
                      "only at prospective NAV, based on the closing market value of the securities held in the respective schemes."
              ),
              Text("WHAT IS SALE AND REPURCHASE PRICE?"),
              Text("Sale Price"),
              _buildBulletPoint(
                  "Sale Price is the price payable per unit by an investor for purchase of units (subscription) and/or switch-in from other schemes of a mutual fund."
              ),
              _buildBulletPoint(
                  "SEBI abolished Entry Load for all mutual fund schemes per circular no. SEBI / IMD / CIR No. 4 / 168230 / 09 dated June 30, 2009."
              ),
              _buildBulletPoint(
                  "During the New Fund Offer (NFO), the Sale Price per unit is at Face Value per unit specified in the Scheme Information Document (SID) and Key Information Memorandum (KIM)."
              ),
              _buildBulletPoint(
                  "During the ‘Ongoing Offer’ period (i.e., the date from which the scheme re-opens for subscriptions/redemptions after the NFO period), units may be purchased at NAV."
              ),
              Text("Repurchase/Redemption Price"),
              _buildBulletPoint(
                  "The Repurchase/Redemption Price is the price per Unit at which a Mutual Fund would ‘repurchase’ the units upon redemption or switch-outs."
              ),
              _buildBulletPoint(
                  "Redemption Price is calculated as: Redemption Price = Applicable NAV*(1 - Exit Load, if any)."
              ),
              _buildBulletPoint(
                  "For example: If the Applicable NAV is ₹10 and Exit Load is 2%, then the Redemption Price will be ₹9.80."
              ),
              _buildBulletPoint(
                  "AMCs have the right to modify Exit Load structures subject to the maximum limit prescribed under the SEBI Regulations."
              ),
              _buildBulletPoint(
                  "Any changes to the Load structure will apply prospectively and will not affect existing mutual fund units."
              ),
              _buildBulletPoint(
                  "For Open-Ended Schemes, Repurchase Price cannot be lower than 95% of NAV as per SEBI Regulations."
              ),
              _buildBulletPoint(
                  "Closed Ended Schemes do not allow premature Repurchase."
              ),








            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class ExpenseRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms related to Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '4.03: Expenses Ratios',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main Title
                  Text(
                    "WHAT IS TOTAL EXPENSE RATIO?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),

                  // Paragraph Text
                  Text(
                    "Under SEBI (Mutual Funds) Regulations, 1996, Mutual Funds are permitted to charge certain operating expenses for managing a mutual fund scheme. These include:",
                  ),

                  // Bullet Points
                  _buildBulletPoint("Sales & marketing / advertising expenses"),
                  _buildBulletPoint("Administrative expenses"),
                  _buildBulletPoint("Transaction costs"),
                  _buildBulletPoint("Investment management fees"),
                  _buildBulletPoint("Registrar fees"),
                  _buildBulletPoint("Custodian fees"),
                  _buildBulletPoint("Audit fees"),

                  // Continue with explanation
                  Text(
                      "All these costs for running and managing a mutual fund scheme are collectively referred to as ‘Total Expense Ratio’ (TER). "
                          "The TER is calculated as a percentage of the Scheme’s average Net Asset Value (NAV), and the daily NAV of a mutual fund is disclosed after deducting the expenses."
                  ),

                  Image.asset(
                    'lib/assets/yt-thumb.jpg',
                    fit: BoxFit.cover,
                  ),

                  // Regulatory Limits Explanation
                  Text(
                    "In India, the expense ratio is fungible, meaning there’s no limit on any particular type of allowed expense as long as the total expense ratio is within the prescribed limit.",
                  ),
                  Text(
                    "Here are the current regulatory limits of TER for mutual funds, effective from April 1, 2020:",
                  ),

                  // Table for TER Limits
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FixedColumnWidth(150),
                      1: FlexColumnWidth(),
                      2: FlexColumnWidth(),
                    },
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Assets Under Management (AUM)"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Maximum TER for Equity Funds"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Maximum TER for Debt Funds"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("On the first ₹500 crores"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("2.25%"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("2.00%"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("On the next ₹250 crores"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("2.00%"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1.75%"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("On the next ₹1,250 crores"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1.75%"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1.50%"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("On the next ₹3,000 crores"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1.60%"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1.35%"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Above ₹50,000 crores"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1.05%"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("0.80%"),
                        ),
                      ]),
                    ],
                  ),

                  // Final Notes
                  SizedBox(height: 16.0),
                  Text(
                      "In addition, mutual funds are allowed to charge up to 30 bps more if new inflows from retail investors come from beyond the top 30 cities (B30 cities)."
                  ),
                  _buildBulletPoint("TER has a direct impact on a scheme's NAV – the lower the expense ratio, the higher the NAV."),
                  _buildBulletPoint(
                      "Mutual funds are required to disclose the TER of all schemes daily on their websites and AMFI's website."
                  ),
                ],
              ),









            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class ExitLoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms related to Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '4.04: Exit Load',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text("What Is an Exit Load?"),
              Text(
                  "The exit load is a fee charged by a mutual fund company when investors redeem or sell their units before a specified period. "
                      "The purpose of exit load is to discourage short-term trading and to compensate the fund for potential costs associated with the early redemption of units."
              ),
              Image.asset(
                'lib/assets/yt-thumb.jpg',
                fit: BoxFit.cover,
              ),
              Text(
                  "By imposing a fee on early redemptions, mutual funds aim to protect long-term investors from the potential adverse effects of short-term trading activities. "
                      "Exit load is calculated as a percentage of the value of the units being redeemed and is deducted from the redemption proceeds."
              ),
              _buildBulletPoint(
                  "For example, if an exit load of 1% applies and an investor redeems Rs 10,000 worth of units, the fund will deduct Rs 100 as the exit load, and the investor will receive Rs 9,900 as the redemption proceeds."
              ),
              _buildBulletPoint(
                  "Not all mutual funds charge exit loads, and the specific exit load structure can vary from fund to fund."
              ),
              Text(
                  "The details of any applicable exit load, including the duration for which it is charged, are provided in the mutual fund’s offer document or scheme information document (SID)."
              ),
              Text("How to Calculate Exit Load in Mutual Funds"),
              Text(
                  "To calculate the exit load in mutual funds, you need to first know the exit load percentage charged by the mutual fund scheme you are invested in. "
                      "This information can be found in the mutual fund’s offer document or SID. Usually, exit loads are charged by mutual fund schemes if an investor exits the fund within one year."
              ),
              _buildBulletPoint(
                  "For example, if you invest in a scheme that charges a 1% exit load for redemptions within 365 days from the date of purchase, and you redeem 1,000 units at an NAV of Rs 100 six months after purchase: "
              ),
              _buildBulletPoint(
                  "Exit load = 1% ✕ 1000 (units) ✕ 100 (NAV) = Rs 1000."
              ),
              _buildBulletPoint(
                  "After deducting Rs 1000, the redemption amount will be Rs 99,000 (i.e., 1000 units ✕ Rs 100 – Rs 1000)."
              ),
              Text(
                  "In the case of SIPs, each SIP installment is considered separately for exit load calculation. "
                      "Remember that exit load criteria may vary for different mutual funds and schemes."
              ),
              Text("Exit Loads on Different Types of Mutual Funds"),
              _buildBulletPoint(
                  "Debt funds, which invest in fixed-income securities, typically have lower exit loads than equity funds (e.g., a 0.5% exit load if redeemed within 90 days)."
              ),
              _buildBulletPoint(
                  "Equity funds often have higher short-term exit loads to discourage early exits, although some do not charge any exit load."
              ),
              _buildBulletPoint(
                  "Hybrid funds, including arbitrage funds, impose an exit load if redeemed early (e.g., within 15 to 30 days). Arbitrage funds usually require a one-month investment tenure to avoid an exit load."
              ),
              Text("Conclusion"),
              _buildBulletPoint(
                  "Knowing about exit fees is crucial to understanding the net profits after all costs. Exit load structures vary across mutual funds."
              ),
              _buildBulletPoint(
                  "Carefully review offer documents and SID to understand applicable exit load fees before investing in any mutual fund."
              ),








            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class FundManagerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms related to Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '4.05: Fund Manager',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main Title
                  Text(
                    "What Is a Fund Manager?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),

                  // Introductory Text
                  Text(
                    "Fund managers are investment experts responsible for managing mutual funds, hedge funds, pension funds, and portfolio-management services on behalf of investors. A fund manager’s job is to make investment decisions and accomplish the fund’s investment objectives. They optimize risk and reward in the fund as per the fund’s mandate.",
                  ),

                  // Image Asset
                  Image.asset(
                    'lib/assets/yt-thumb.jpg',
                    fit: BoxFit.cover,
                  ),

                  // Subheading for Roles & Responsibilities
                  Text(
                    "Roles & Responsibilities of a Fund Manager",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Bullet Points for Responsibilities
                  _buildBulletPoint("Selection of securities: Making decisions regarding which securities should be held in the portfolio."),
                  _buildBulletPoint("Risk management: Ensuring that the overall risk in the portfolio is in line with the fund’s objectives."),
                  _buildBulletPoint("Track performance: Regularly tracking the performance and possibly exiting underperforming securities."),
                  _buildBulletPoint("Ensure compliance: Ensuring the fund complies with SEBI regulations."),

                  // Subheading for Active vs. Passive Fund Manager
                  Text(
                    "Difference Between an Active and a Passive Fund Manager",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Active vs. Passive Fund Manager Description
                  Text(
                    "An active fund manager seeks to generate better returns than a benchmark by actively selecting securities, while a passive fund manager attempts to match the performance of a benchmark by holding a diversified portfolio that closely resembles the benchmark.",
                  ),

                  // Subheading for Choosing a Fund Manager
                  Text(
                    "Things to Consider While Choosing a Fund Manager",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Bullet Points for Evaluating a Fund Manager
                  _buildBulletPoint("Experience: Look for fund managers with more experience who have weathered different market conditions."),
                  _buildBulletPoint("Past performance: Analyze the performance of portfolios managed by the fund manager."),
                  _buildBulletPoint("Investment style: Check if the manager’s style aligns with your investment goals."),
                  _buildBulletPoint("Tenure with the fund: Longer tenure with a fund is usually a positive sign."),
                  _buildBulletPoint("Stability: Ensure the manager does not frequently switch jobs."),
                  _buildBulletPoint("Number of funds managed: Fewer funds managed often means more attention to each fund."),
                ],
              ),









            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class EquityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorisation of Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '5.01: Equity',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title for the section
                  Text(
                    "Mutual Fund Classifications",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),

                  // Introductory Paragraph
                  Text(
                    "As per SEBI (Securities and Exchange Board of India) guidelines on Categorization and Rationalization of schemes issued in October 2017, mutual fund schemes are classified into the following categories:",
                  ),

                  // Image Asset
                  Image.asset(
                    'lib/assets/yt-thumb.jpg',
                    fit: BoxFit.cover,
                  ),

                  // Main classifications as bullet points
                  _buildBulletPoint("Equity Schemes"),
                  _buildBulletPoint("Debt Schemes"),
                  _buildBulletPoint("Hybrid Schemes"),
                  _buildBulletPoint("Solution-Oriented Schemes – For Retirement and Children"),
                  _buildBulletPoint("Other Schemes – Index Funds & ETFs, Fund of Funds"),

                  // Equity Schemes Subheading
                  Text(
                    "Equity Schemes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Bullet points with short descriptions
                  _buildBulletPoint(
                      "An equity scheme primarily invests in equities and equity-related instruments."
                  ),
                  _buildBulletPoint(
                      "Seeks long-term growth but may be volatile in the short term."
                  ),
                  _buildBulletPoint(
                      "Suitable for investors with higher risk appetite and longer investment horizon."
                  ),
                  Text(
                    "Equity Fund Categories as per SEBI guidelines:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),

                  // Detailed breakdown of Equity Fund categories
                  _buildBulletPoint("Multi Cap Fund: At least 75% in equity & equity-related instruments."),
                  _buildBulletPoint("Flexi Cap Fund: At least 65% in equity & equity-related instruments."),
                  _buildBulletPoint("Large Cap Fund: At least 80% in large-cap stocks."),
                  _buildBulletPoint("Large & Mid Cap Fund: At least 35% in large-cap and 35% in mid-cap stocks."),
                  _buildBulletPoint("Mid Cap Fund: At least 65% in mid-cap stocks."),
                  _buildBulletPoint("Small Cap Fund: At least 65% in small-cap stocks."),

                  // Subheading for Sector-Specific Funds
                  Text(
                    "Sector-Specific Funds",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Description of Sector-Specific Funds
                  Text(
                    "Sectoral funds invest in a particular sector of the economy such as infrastructure, banking, or technology. They limit diversification and carry higher risks. Timing is important due to the cyclical performance of these sectors.",
                  ),
                  _buildBulletPoint("Pharma & Healthcare Sector"),
                  _buildBulletPoint("Banking & Finance Sector"),
                  _buildBulletPoint("FMCG and related sectors"),
                  _buildBulletPoint("Technology and related sectors"),

                  // Subheading for Value Funds
                  Text(
                    "Value Funds (Strategy and Style-Based Funds)",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Description of Value Funds
                  Text(
                    "Value funds identify stocks that are currently undervalued but are expected to perform well over time. They have higher risks due to concentrated portfolios.",
                  ),

                  // Subheading for Contra Funds
                  Text(
                    "Contra Funds",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Description of Contra Funds
                  Text(
                    "Contra funds take a contrarian view on the market, investing in underperforming stocks and sectors at low prices. They may underperform in a bull market.",
                  ),

                  // Subheading for ELSS (Equity Linked Savings Scheme)
                  Text(
                    "Equity Linked Savings Scheme (ELSS)",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  // Description of ELSS
                  Text(
                    "ELSS invests at least 80% in stocks and has a lock-in period of 3 years. It is eligible for deduction under Section 80C of the Income Tax Act up to ₹1,50,000.",
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class DebtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorisation of Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '5.02: Debt',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),

              Text(
                "Debt Schemes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              // Introductory text
              Text(
                "A debt fund (also known as an income fund) is a fund that primarily invests in bonds or other debt securities. Debt funds invest in short and long-term securities issued by the government, public financial institutions, and companies.",
              ),

              // Table title
              Text(
                "Debt Fund Categories (as per SEBI guidelines)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              // Table
              Table(
                border: TableBorder.all(),
                columnWidths: {
                  0: FlexColumnWidth(0.4),
                  1: FlexColumnWidth(0.6),
                },
                children: [
                  // Table Headers
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Fund Category', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Description', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),

                  // Table Row 1
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Overnight Fund'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Overnight securities having maturity of 1 day'),
                      ),
                    ],
                  ),

                  // Table Row 2
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Liquid Fund'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Debt and money market securities with maturity up to 91 days only'),
                      ),
                    ],
                  ),

                  // Table Row 3
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Ultra Short Duration Fund'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Macaulay duration of 3-6 months'),
                      ),
                    ],
                  ),

                  // Table Row 4
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Low Duration Fund'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Macaulay duration of 6-12 months'),
                      ),
                    ],
                  ),

                  // Add more rows as needed for other categories
                ],
              ),

              SizedBox(height: 10),

              // Additional section titles and descriptions
              Text(
                "Fixed Maturity Plans (FMPs)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              Text(
                "FMPs are closed-ended funds that eliminate interest rate risk and lock in yields by investing only in securities whose maturity matches the maturity of the fund.",
              ),

              SizedBox(height: 10),

              Text(
                "Capital Protection Oriented Funds",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              Text(
                "These funds are close-ended hybrid funds that create a portfolio of debt instruments and equity derivatives to provide capital protection.",
              ),




            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class HybridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorisation of Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '5.03: Hybrid',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title for Hybrid Funds
                  Text(
                    "Hybrid Funds",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),

                  // Introductory text
                  Text(
                    "Hybrid funds invest in a mix of equities and debt securities. SEBI has classified Hybrid funds into 7 sub-categories as follows:",
                  ),

                  // Table for Hybrid Fund Categories
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FlexColumnWidth(0.4),
                      1: FlexColumnWidth(0.6),
                    },
                    children: [
                      // Table Headers
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Fund Category', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Allocation', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),

                      // Table Row 1 - Conservative Hybrid Fund
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Conservative Hybrid Fund'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('10% to 25% equity; 75% to 90% debt instruments'),
                          ),
                        ],
                      ),

                      // Table Row 2 - Balanced Hybrid Fund
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Balanced Hybrid Fund'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('40% to 60% equity; 40% to 60% debt instruments'),
                          ),
                        ],
                      ),

                      // Table Row 3 - Aggressive Hybrid Fund
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Aggressive Hybrid Fund'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('65% to 80% equity; 20% to 35% debt instruments'),
                          ),
                        ],
                      ),

                      // Add rows for the other Hybrid fund types similarly
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Dynamic Asset Allocation Fund'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Managed dynamically, 0% to 100% in both equity & debt'),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // Subheading for Solution-oriented & Other Funds
                  Text(
                    "Solution-oriented & Other Funds",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),

                  // Text for Solution-oriented & Other Funds
                  Text(
                    "These include funds like Retirement Fund, Children’s Fund, Index Funds/ETFs, and Fund of Funds (FoF). Each has its own structure and investment strategy.",
                  ),

                  SizedBox(height: 10),

                  // More detailed content sections
                  Text(
                    "Arbitrage Funds",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Arbitrage funds take advantage of price differences in two markets. They buy stocks in the cash market and simultaneously sell them in the Futures market at a higher price.",
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Index Funds",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Index funds create a portfolio that mirrors a market index. They offer returns similar to the index they track with low fees.",
                  ),

                  // Continue with more sections as needed (ETFs, FoF, International Funds, etc.)
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}



class AdvantagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advantages and Risk in Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '6.01: Advantages',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "1. Professional Management",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Managed by full-time, professional money managers.\n"
                    "• Expertise, experience, and resources to actively monitor investments.\n"
                    "• Continuous monitoring and rebalancing of the portfolio to meet objectives.",
              ),
              SizedBox(height: 16),
              Text(
                "2. Risk Diversification",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Diversifies investments across equity, debt, and gold.\n"
                    "• Reduces risk by spreading investments across different asset classes.\n"
                    "• If one investment declines, others may rise, balancing overall risk.",
              ),
              SizedBox(height: 16),
              Text(
                "3. Affordability & Convenience",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• More affordable than directly purchasing individual securities.\n"
                    "• Minimum initial investments are accessible to most investors.",
              ),
              SizedBox(height: 16),
              Text(
                "4. Liquidity",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Easy to redeem (liquidate) units of open-ended schemes on any business day.\n"
                    "• Redemption amount credited within 1-4 business days depending on the scheme.\n"
                    "• Close-ended schemes can only be redeemed on maturity; ELSS has a 3-year lock-in period.",
              ),
              SizedBox(height: 16),
              Text(
                "5. Low Cost",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Low expense ratio due to economies of scale.\n"
                    "• Expense ratio includes operating expenses such as administration, management, and advertising.\n"
                    "• Regulated by SEBI under the Mutual Funds Regulations, 1996.",
              ),
              SizedBox(height: 16),
              Text(
                "6. Well-Regulated",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Mutual Funds are regulated by SEBI (Securities and Exchange Board of India).\n"
                    "• SEBI ensures transparency and protection with appropriate risk mitigation frameworks.",
              ),
              SizedBox(height: 16),
              Text(
                "7. Tax Benefits",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Investments in ELSS up to ₹1,50,000 qualify for tax benefits under section 80C of the Income Tax Act, 1961.\n"
                    "• Mutual Fund investments are tax efficient when held for the long term.",
              ),
              SizedBox(height: 24),
              Text(
                "Table: Redemption Time Based on Scheme Type",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),






            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class RiskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advantages and Risk in Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '6.02: Risk',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16.0),
              Text(
                "STANDARD RISK FACTORS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Mutual Fund Schemes are not guaranteed or assured return products.\n"
                    "• Investment in Mutual Fund Units involves investment risks such as trading volumes, settlement risk, liquidity risk, default risk including the possible loss of principal.\n"
                    "• As the price/value/interest rates of the securities in which the Scheme invests fluctuate, the value of investment in a mutual fund Scheme may go up or down.\n"
                    "• NAV of the Scheme may fluctuate with movements in the broader equity and bond markets due to factors such as interest rates, currency exchange rates, changes in Government policies, taxation, political, economic or other developments.\n"
                    "• Past performance does not guarantee future performance of any Mutual Fund Scheme.",
              ),
              SizedBox(height: 16),
              Text(
                "SPECIFIC RISK FACTORS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Risks associated with investments in Equities:\n"
                    "• Risk of losing money: Investments in equity and equity-related instruments involve risk, and investors should be able to bear the risk of possible loss of principal.\n"
                    "• Price Risk: Equity shares and equity-related instruments are volatile and prone to price fluctuations.\n"
                    "• Liquidity Risk for listed securities: Liquidity may be restricted by trading volumes and settlement periods. Inability to sell securities could result in potential losses.\n"
                    "• Event Risk: Price risk due to company or sector-specific events.",
              ),
              SizedBox(height: 16),
              Text(
                "Risks associated with investments in Debt Securities and Money Market Instruments:\n"
                    "• Credit Risk: Risk of issuer default on principal and interest payments, influenced by creditworthiness.\n"
                    "• Interest Rate Risk: Market value of fixed income securities moves inversely with interest rate movements.\n"
                    "• Spread Risk: Changes in credit spreads of corporate bonds affect market value.\n"
                    "• Liquidity Risk: The ease of selling securities may vary based on market conditions. Tight liquidity could lead to higher impact costs.\n"
                    "• Counterparty Risk: Risk of default by the counterparty in a transaction, leading to losses.\n"
                    "• Prepayment Risk: Borrowers paying off loans early may result in yield and tenor changes, introducing reinvestment risk.\n"
                    "• Re-investment Risk: Interest rates during coupon payments or maturity dates may differ, impacting final yield.",
              ),




            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class SIPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Systematic Plans'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '7.01: SIP',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16.0),
              Text(
                "What is a SIP?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "SIP (Systematic Investment Plan) is a method of investing in mutual funds where an investor invests a fixed amount of money at regular intervals (typically monthly or quarterly). This approach is well-suited for investors looking to achieve various financial goals, such as wealth creation, retirement planning, or funding education while providing flexibility to adapt to changing financial circumstances.",
              ),
              SizedBox(height: 16),
              Text(
                "How SIP Works?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Before you set up your SIP, there are a few essentials you need to know about how SIP works. There are four stages to investing in SIP from the beginning to the point where your funds are invested in a mutual fund scheme:",
              ),
              Text(
                "• Select a mutual fund scheme: As your first step in the SIP investment journey, you need to select a mutual fund scheme based on your goals, risk appetite, investment strategy, fund performance, and other factors.",
              ),
              Text(
                "• Select the investment frequency: The next step in your SIP investment journey is to choose an investment frequency you feel comfortable with. The most common choice is a monthly frequency, especially among salaried investors. You may also choose weekly, quarterly, semi-annually, or annually depending on your preference.",
              ),
              Text(
                "• Set up SIP with a mutual fund scheme: Setting up your SIP is a simple process. On ET Money, go to your chosen mutual fund, click on invest, complete KYC if required, and provide bank details along with your SIP contributions and frequency.",
              ),
              Text(
                "• Automatic debits and unit allotment based on NAV: Once set up, money will be automatically debited from your registered bank account at the chosen frequency. After the debit, units are allotted based on the NAV (net asset value). The number of units may differ due to NAV changes.",
              ),
              SizedBox(height: 16),
              Text(
                "Benefits of SIPs",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Rupee-cost averaging reduces the impact of market volatility by buying more units when markets are low and fewer when they are high.",
              ),
              Text(
                "• SIP benefits from professional fund management, potentially leading to better results than individual stock picking.",
              ),
              Text(
                "• SIP promotes financial discipline by encouraging consistent, fixed investments over time.",
              ),
              Text(
                "• SIP leverages the power of compounding, boosting your portfolio’s value over time by reinvesting returns.",
              ),
              SizedBox(height: 16),
              Text(
                "Power of Investing Early",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Starting early allows your money to compound over time, even if you start with small amounts. Compounding generates a snowball effect, helping you accumulate more wealth over the long term.",
              ),
              Text(
                "Starting early lets time and compounding work in your favor, leading to greater financial security and freedom. Start early, be consistent with your investments, and diversify based on your risk tolerance to achieve your financial goals.",
              ),
              SizedBox(height: 16),
              Text(
                "Types of SIP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Fixed SIP: A plain-vanilla SIP where you contribute a fixed amount at regular intervals, and the process is automated.",
              ),
              Text(
                "• Top-up SIP: Allows you to increase your SIP contributions periodically, ideal for when your income increases every year.",
              ),
              Text(
                "• Perpetual SIP: A fixed SIP without a tenure, debiting your account until you instruct the fund house to stop.",
              ),
              Text(
                "• Flexible SIP: Offers flexibility to change contribution amounts or skip contributions based on market conditions or personal circumstances.",
              ),






            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class SWPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Systematic Plans'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '7.02: SWP',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "What Is a Systematic Withdrawal Plan (SWP)?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "A systematic withdrawal plan (SWP) helps you withdraw money from your mutual fund in a regular and planned manner. You can choose how much money you want to withdraw and how often you want to withdraw it, i.e., the frequency, which is often monthly. After you set up an SWP, the fund house will redeem the required units from your mutual fund holdings and credit the amount in your bank account. In a way, this process is just the opposite of SIPs.",
              ),
              Text(
                "The main advantage of an SWP is that it provides a steady income stream. It’s especially useful for people who want a regular income from their investments, such as retirees. Also, with SWPs, you need not sell all your investments at once, which can be risky if the market is performing poorly.",
              ),
              SizedBox(height: 16),
              Text(
                "How Does a SWP Work?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "SWP can be an excellent option for individuals who want to withdraw a regular amount to fund their expenses. Here is how a systematic withdrawal plan works:",
              ),
              Text(
                "• Firstly, as an investor, you have to identify the mutual fund scheme you want to invest in. And open your investment account with the fund houses.",
              ),
              Text(
                "• You select the investment mode, whether you want to invest via SIP or lumpsum.",
              ),
              Text(
                "• You have to set up an SWP, wherein you instruct the fund house to withdraw a fixed amount of money from your fund at regular intervals (usually monthly, quarterly, or annually) and transfer it to your bank account.",
              ),
              Text(
                "• When the withdrawal date arrives, the fund house will sell your mutual funds in proportion to the desired withdrawal amount and will credit it to your bank account.",
              ),
              Text(
                "• The fund house will continue this process of redeeming your unit for the specified period or until you cancel your SWP.",
              ),
              Text(
                "• The remaining balance in your fund will continue to earn returns based on the performance of the underlying assets. Over time, your account balance will decrease as you continue to withdraw money through SWPs.",
              ),
              SizedBox(height: 16),
              Text(
                "Who Should Consider SWPs?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "SWPs are useful for those who want a regular income stream from their investments. While IDCW (income distribution cum capital withdrawal) plans of mutual funds also offer payouts, they are not as predictable as SWPs because their payouts depend on the fund house’s discretion.",
              ),
              Text(
                "SWPs are also useful for maintaining a disciplined approach to withdrawing money from savings, ensuring that you don’t overspend or withdraw too much.",
              ),
              SizedBox(height: 16),
              Text(
                "Benefits of a Systematic Withdrawal Plan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Regular and predictable income: An SWP allows you to withdraw a fixed amount of money at regular intervals, providing you with a reliable income stream to support your expenses.",
              ),
              Text(
                "• Flexibility: You can choose the withdrawal amount and frequency that suits your needs, whether monthly, quarterly, or annually.",
              ),
              Text(
                "• Tax benefits: No tax deducted at source (TDS) on the funds received through an SWP.",
              ),
              Text(
                "• Avoid market-timing risk: By withdrawing a fixed amount regularly, you avoid the urge to time your exit, which can be risky.",
              ),
              SizedBox(height: 16),
              Text(
                "Effective Uses of SWP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "• Regular income: SWPs provide a second source of income to supplement your primary one, particularly useful when your primary income is insufficient to cover all expenses.",
              ),
              Text(
                "• Capital Preservation: SWPs allow you to withdraw systematically without redeeming your entire investment, keeping a large portion invested for long-term growth.",
              ),
              Text(
                "• Pension Income: SWP can be a useful option for retirees to receive a regular pension-like income if they haven’t invested in a retirement savings scheme.",
              ),





            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class CAGRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Return Ratios'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '8.01: CAGR',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "1. What Is CAGR?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "CAGR stands for Compound Annual Growth Rate. It is a way to measure how an investment or business has grown over a specific period of time. It takes into account the effect of compounding, which means that the growth builds upon itself.\n\nFor example, if you invested Rs 1,000 in a mutual fund, and it grew at a CAGR of 10% over five years, your investment would have increased by 10% on average each year. The actual growth may vary yearly, but CAGR smooths out fluctuations to give a consistent rate.",
              ),
              SizedBox(height: 16),
              Text(
                "2. CAGR Formula",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "The Compound Annual Growth Rate (CAGR) formula is as follows:\nCAGR = (Ending balance / Beginning balance)^(1/n) – 1\n\nWhere:\n• Ending balance is the value of the investment at the end of the period\n• Beginning balance is the value of the investment at the beginning of the period\n• N is the number of years you have invested",
              ),
              SizedBox(height: 16),
              Text(
                "3. How CAGR Works?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "CAGR works by calculating the average annual growth rate of an investment over a specific period, considering compounding. Let’s say an investment started with Rs 100,000 and grew to Rs 155,000 in 11 years.\n\nUsing the formula:\nCAGR = (155,000 / 100,000)^(1 / 11) – 1 = 4.48%\n\nThis means the investment grew by an average of 4.48% per year over the 11-year period, giving a consistent growth rate that smooths out fluctuations.",
              ),
              SizedBox(height: 16),
              Text(
                "4. How to Calculate Compound Annual Growth Rate (CAGR)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "To calculate CAGR:\n1. Determine the starting and ending values of the investment.\n2. Calculate the number of years the investment was held.\n3. Use the formula: CAGR = (Ending Value / Starting Value)^(1 / Number of Years) – 1.\n\nExample:\nStarting Value: Rs 10,000\nEnding Value: Rs 15,000\nNumber of Years: 5\n\nCAGR = (15,000 / 10,000)^(1 / 5) – 1 = 8.45%\n\nThe investment grew by an average of 8.45% annually over the 5-year period.",
              ),
              SizedBox(height: 16),
              Text(
                "5. Why is CAGR useful to you?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "CAGR provides a better understanding of how much your investment has grown on an average annual basis, unlike absolute returns which don’t account for yearly growth fluctuations. For instance, if your ₹1000 investment grew to ₹1850 in 3 years, you might assume an 85% total return. But by calculating the CAGR, you realize that it grew at 23% annually over 3 years, which is more informative.",
              ),




            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class XIRRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Return Ratios'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '8.02: XIRR',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),


              SizedBox(height: 16.0),
              Text(
                'XIRR Explanation',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('XIRR’s formula accounts for different cash inflows and outflows:'),
              _buildBulletPoint(
                  'The annual average return of each installment is calculated.'),
              _buildBulletPoint(
                  'They are adjusted to give you the overall average annual rate of return.'),
              _buildBulletPoint(
                  'Helps estimate the return on your SIP investments.'),
              _buildBulletPoint(
                  'Useful when choosing SWP (Systematic Withdrawal Plan) to estimate overall return.'),
              SizedBox(height: 20),
              Text(
                'XIRR Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                  'Example: A monthly SIP of Rs. 10,000 in a mutual fund scheme for 5 years. After ups and downs, total value grew to Rs. 8.84 lakh by the end of 5 years.'),
              _buildBulletPoint(
                  'The first Rs. 10,000 installment’s annual return differs, invested for the most number of months.'),
              _buildBulletPoint(
                  'Each installment has a different time period, causing their respective CAGR to vary.'),
              _buildBulletPoint(
                  'XIRR simplifies the calculation by adjusting all CAGRs into one common CAGR.'),
              SizedBox(height: 20),
              Text(
                'XIRR Calculation in Excel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),
              Text(
                  'Steps for calculating XIRR in Excel:'),
              _buildBulletPoint('Step 1: Enter the series of investments and corresponding dates.'),
              _buildBulletPoint('Step 2: Enter the current value and date of the investment.'),
              _buildBulletPoint('Step 3: Use the XIRR function =XIRR(Values, Dates, [guess]).'),





            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class TaxRatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taxation in Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '9.01: Tax Rates for Mutual Fund Investorsutual Fund',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Key Factors That Determine the Mutual Fund Taxation in India',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Breaking down the concepts of mutual fund taxation further into smaller bits makes it far easier to understand. So, let’s take our first step by looking at the factors that influence mutual fund tax liability.'),
              SizedBox(height: 10),
              _buildBulletPoint(
                  'Type of funds: Mutual funds are classified into two categories for taxation: equity and debt-oriented mutual funds.'),
              _buildBulletPoint(
                  'Capital gains: Capital gains are the gains you generate when you sell a capital asset for a higher price than its cost.'),
              _buildBulletPoint(
                  'Dividend: A dividend is a part of the profits accumulated that the mutual fund house distributes to the investors (i.e., dividends don’t require an investor to sell the asset).'),
              _buildBulletPoint(
                  'Holding period: The holding period dictates the rate of tax you’ll pay on your capital gains. The greater your holding period, the less tax you’ll pay. India’s income tax regulations encourage a longer holding period, that’s why holding your investment for longer reduces your tax liability.'),

              SizedBox(height: 20),
              Text(
                'How Are Profits Generated in Mutual Funds?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _buildBulletPoint(
                  'Investors earn profit from mutual funds either through capital gains or dividend income.'),
              _buildBulletPoint(
                  'Capital gain is the profit generated from selling an asset at a higher value than its cost.'),
              _buildBulletPoint(
                  'Capital gains are only realized when the mutual fund units are redeemed. The tax on mutual fund capital gains accrues at redemption and is paid when filing tax returns.'),
              _buildBulletPoint(
                  'Dividends are another way that mutual fund investors can earn income. Dividends are taxable as soon as they are paid out to investors.'),

              SizedBox(height: 20),
              Text(
                'Taxation on Dividends',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _buildBulletPoint(
                  'The Finance Act, 2020 removed the Dividend Distribution Tax (DDT). Now, dividends are taxed in the hands of the investor based on their income tax slab.'),
              _buildBulletPoint(
                  'If the total dividend paid to an investor exceeds ₹5,000 during a financial year, the mutual fund house deducts 10% TDS under Section 194K.'),
              _buildBulletPoint(
                  'You can use a TDS calculator to ensure accurate tax payment and compliance.'),

              SizedBox(height: 20),
              Text(
                'Taxation on Mutual Fund Capital Gains',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _buildBulletPoint(
                  'Tax on mutual fund capital gains depends on the type of mutual fund scheme and the holding period.'),
              _buildBulletPoint(
                  'Long-term capital gains (LTCG) apply to assets held for a long duration, while short-term capital gains (STCG) apply to assets held for a shorter duration.'),
              _buildBulletPoint(
                  'For equity-oriented schemes, LTCG applies when units are held for at least 12 months. For debt-oriented schemes, LTCG applies for holdings of 36 months or more.'),
              _buildBulletPoint(
                  'For equity funds, short-term capital gains tax applies for holdings less than 12 months, while for debt funds, it applies for holdings less than 36 months.'),

              SizedBox(height: 20),
              Text(
                'Summary of Taxation Rules:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _buildBulletPoint(
                  'Equity-oriented mutual funds: LTCG (over 12 months) is taxed at 10% beyond ₹1 lakh. STCG (under 12 months) is taxed at 15%.'),
              _buildBulletPoint(
                  'Debt-oriented mutual funds: LTCG (over 36 months) is taxed at 20% with indexation benefits. STCG (under 36 months) is taxed as per your income tax slab.'),
              _buildBulletPoint(
                  'Dividend income is taxable as per the investor’s income slab and is subject to 10% TDS on dividends exceeding ₹5,000.'),








            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
class OtherTaxProvisionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taxation in Mutual Funds'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '9.02: Other Tax Provisions',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Capital Gains Tax Provisions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBulletPoint(
                  'Capital gains from the transfer of units upon consolidation of mutual fund schemes are exempt from capital gains tax.'),
              _buildBulletPoint(
                  'Similarly, capital gains from the transfer of units upon consolidation of Plans within a mutual fund scheme are also exempt from capital gains tax.'),
              _buildBulletPoint(
                  'Currently, switching units within the same scheme from Growth Plan to Dividend Plan and vice-versa is subject to capital gains tax.'),
              SizedBox(height: 20),
              Text(
                'Creation of Segregated Portfolio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBulletPoint(
                  'SEBI permits the creation of a segregated portfolio of debt and money market instruments.'),
              _buildBulletPoint(
                  'Existing unit holders in the affected mutual fund scheme are allotted an equal number of units in the segregated portfolio.'),
              _buildBulletPoint(
                  'The cost of acquisition in a segregated portfolio is proportional to the net asset value before segregation.'),
              SizedBox(height: 20),
              Text(
                'Definition of Equity Oriented Mutual Fund',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBulletPoint(
                  'An Equity Oriented Mutual Fund invests at least 90% of its total proceeds in units of another fund and that fund must invest at least 90% in equity shares of domestic companies.'),
              _buildBulletPoint(
                  'If these conditions are not met, the fund is regarded as non-equity-oriented and subjected to different tax treatment.'),
              SizedBox(height: 20),
              Text(
                'Short-term Capital Gains',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBulletPoint(
                  'Section 50AA deems gains on transfer of specified mutual funds acquired on or after 1 April 2023 as short-term capital gains.'),
              _buildBulletPoint(
                  '“Specified mutual fund” is defined as any mutual fund where not more than 35% of its total proceeds is invested in equity shares.'),
              SizedBox(height: 20),
              Text(
                'Amendment from FY 2025-26',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBulletPoint(
                  'The definition of “specified mutual fund” is amended to include funds investing more than 65% of their total proceeds in debt and money market instruments.'),
              SizedBox(height: 20),
              Text(
                'Bonus Stripping',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBulletPoint(
                  'As per Section 94(8), loss due to sale of original units where bonus units are issued will not be available for set-off under certain conditions.'),
              _buildBulletPoint(
                  'The ignored loss will be deemed the cost of purchase of unsold bonus units held on the date of transfer of original units.'),





            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class HowToInvestInMutualFundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to Invest in Mutual Fund'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '10.01: How to Invest in Mutual Fund',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              Text('1. Investment Methods:'),
              _buildBulletPoint(
                  'Submit a completed application form along with a cheque or bank draft at the branch office or designated Investor Service Centres (ISC).'),
              _buildBulletPoint(
                  'Invest online through the websites of respective mutual funds.'),
              _buildBulletPoint(
                  'Invest through a financial intermediary, such as a Mutual Fund Distributor (MFD) registered with AMFI, or directly without a distributor.'),
              SizedBox(height: 20),
              Text('2. Mutual Fund Distributors (MFDs):'),
              _buildBulletPoint(
                  'MFDs can be individuals or entities like banks, brokering houses, or online distribution channels.'),
              _buildBulletPoint(
                  'MFDs must obtain NISM certification and register with AMFI to engage in mutual fund sales.'),
              _buildBulletPoint(
                  'Employees of MFDs must also obtain NISM certification and an Employee Unique Identification Number (EUIN).'),
              SizedBox(height: 20),
              Text('3. Online and Conventional Investment:'),
              _buildBulletPoint(
                  'Invest through MF Utilities Pvt. Ltd. (MFU) for a technology-based shared service platform.'),
              _buildBulletPoint(
                  'Buy mutual fund units through NSE – MFSS or BSE - StAR MF, similar to company stocks.'),
              _buildBulletPoint(
                  'Complete one-time online registration with NSE or BSE for this facility.'),
              SizedBox(height: 20),
              Text('4. KYC Requirement:'),
              _buildBulletPoint(
                  'Complete the KYC process by filling up the prescribed KYC form before investing.'),
              _buildBulletPoint(
                  'KYC establishes identity & address through documents like passport, Aadhaar, or PAN card.'),
              _buildBulletPoint(
                  'KYC compliance is mandatory under the Prevention of Money Laundering Act, 2002.'),
              SizedBox(height: 20),
              Text('5. For Detailed KYC Information:'),
              _buildBulletPoint(
                  'Visit the KYC & UBO section for more details.'),




            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.arrow_right, size: 20, color: Colors.green),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}



