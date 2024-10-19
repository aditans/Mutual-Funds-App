import 'package:flutter/material.dart';
import 'package:wealth/Learn.dart';
import 'quizpagewithresult.dart';


class QuizzesPage extends StatefulWidget {
  @override
  _QuizzesPageState createState() => _QuizzesPageState();
}

class _QuizzesPageState extends State<QuizzesPage> {
  int _currentIndex = 0;

  final List<Map<String, Object>> quizOneQuestions = [
    {
      'question': 'Why is investing important for protection against inflation?',
      'options': [
        'It helps keep your money in a savings account',
        'It generates returns that grow faster than inflation',
        'It ensures you never have to work again',
        'It allows you to avoid paying taxes'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What would happen if the inflation rate is 6% and you leave your ₹1,000 in a savings account with a 4% interest rate?',
      'options': [
        'You would end up with more purchasing power',
        'Your ₹1,000 would increase to ₹1,060',
        'Your money would lose purchasing power',
        'You would break even with inflation'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'How much would ₹5,000 invested monthly at a 10% annual return grow to by age 60 if started at age 30?',
      'options': ['₹30 lakh', '₹50 lakh', '₹1.1 crore', '₹75 lakh'],
      'correctAnswer': 2,
    },
    {
      'question': 'Which of the following is NOT a financial goal that can be achieved through investments?',
      'options': [
        'Buying a house',
        'Funding children’s education',
        'Paying for daily groceries',
        'Early retirement'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Why is it important to have an emergency fund?',
      'options': [
        'To invest in high-risk assets',
        'To cover unexpected expenses without disrupting long-term investments',
        'To pay off high-interest credit card debt',
        'To buy luxury items during sales'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What is compounding in the context of investments?',
      'options': [
        'Making regular deposits into a savings account',
        'Earning returns on both the principal and previously earned returns',
        'Investing in multiple asset classes',
        'Reducing your overall investment risk'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'How does starting early impact the power of compounding?',
      'options': [
        'It reduces the overall returns',
        'It doesn’t make a difference if you invest later',
        'It increases the total returns due to more years of compounding',
        'It decreases your investment risk'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What effect does more frequent compounding have on investments?',
      'options': [
        'It reduces the returns',
        'It has no effect on the returns',
        'It slows down the growth of the investment',
        'It increases the growth of the investment'
      ],
      'correctAnswer': 3,
    },
    {
      'question': 'Which of the following is an example of compounding working against you?',
      'options': [
        'Investing in a mutual fund with quarterly returns',
        'Saving in a liquid fund for emergencies',
        'Interest compounding on credit card debt',
        'Earning dividends from a stock portfolio'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'How can compound interest create a debt trap?',
      'options': [
        'It causes interest to build up on unpaid balances',
        'It reduces the outstanding balance on loans',
        'It helps you save more money over time',
        'It encourages early repayment of debt'
      ],
      'correctAnswer': 0,
    },
  ];

  final List<Map<String, Object>> quizTwoQuestions = [
    {
      'question': 'What is a mutual fund?',
      'options': [
        'A loan given by banks to investors',
        'A collective investment pool managed by investors themselves',
        'A collective pool of money contributed by investors and managed by a professional Fund Manager',
        'A savings account in banks'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the primary role of a professional fund manager in mutual funds?',
      'options': [
        'To distribute the income gains directly to investors',
        'To manage and invest the pooled money in line with the scheme’s objective',
        'To invest money only in government bonds',
        'To charge high fees for managing the fund'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following best describes how mutual fund returns are distributed to investors?',
      'options': [
        'Through cash payments directly to their bank accounts',
        'Proportionately based on the number of units held, after deducting applicable expenses',
        'Only in the form of capital gains',
        'Through bonus shares'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Mutual funds in India are established under which legal framework?',
      'options': [
        'SEBI (Stock Markets) Regulations, 1992',
        'Indian Trust Act, 1882 and SEBI (Mutual Funds) Regulations, 1996',
        'Indian Companies Act, 1956',
        'SEBI (Bond Market) Regulations, 2000'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What does the term NAV in mutual funds refer to?',
      'options': [
        'New Account Value',
        'Net Asset Value',
        'Nominal Asset Value',
        'None of the above'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What kind of investors are mutual funds ideal for?',
      'options': [
        'Investors with extensive stock market knowledge',
        'Investors who want to take high risks in the market',
        'Investors who lack the knowledge, skill, or time to invest directly in stock markets',
        'Investors who only want to invest in government securities'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'How much time should an investor give for an actively-managed equity scheme to generate reasonable returns?',
      'options': [
        '6 months',
        '12 months',
        'Between 18 to 24 months',
        'Over 36 months'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Which of the following is NOT an advantage of mutual funds?',
      'options': [
        'Professional fund management',
        'Limited access to only government securities',
        'Low cost of entry for a variety of securities',
        'Participation in capital markets with retail investments'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following describes why people invest in mutual funds?',
      'options': [
        'They provide higher interest than savings accounts',
        'They are risk-free investments',
        'They offer access to a diversified portfolio managed by professionals',
        'They provide loans to investors'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What kind of investors are NOT suitable for mutual funds?',
      'options': [
        'Those who want to grow their wealth but lack the time for market research',
        'Those who prefer to manage their investments on their own',
        'Those looking for long-term investment options',
        'Those wanting to invest in small amounts'
      ],
      'correctAnswer': 1,
    },
  ];



  final List<Map<String, Object>> quizThreeQuestions = [
    {
      'question': 'Which of the following is NOT a classification basis for mutual fund schemes?',
      'options': [
        'Organization structure',
        'Management of portfolio',
        'Company size',
        'Investment objective'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the key feature of an open-ended scheme in mutual funds?',
      'options': [
        'It has a fixed maturity date',
        'It is open for subscription and repurchase on a continuous basis',
        'It can only be redeemed during specific intervals',
        'It is not listed on the stock exchanges'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Close-ended schemes are characterized by:',
      'options': [
        'Continuous purchase and redemption on all business days',
        'A fixed maturity date with the option to trade units on stock exchanges',
        'No maturity date but can only be redeemed on specific days',
        'Being actively managed with regular dividends'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following best defines an active fund?',
      'options': [
        'It tracks and replicates a benchmark index',
        'The fund manager actively selects which securities to buy, hold, or sell',
        'It has no manager and follows an algorithm',
        'It is only focused on government bonds'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'In passive funds, the fund manager’s role is:',
      'options': [
        'To actively buy and sell stocks for better returns',
        'To closely replicate the performance of a benchmark index with minimal tracking error',
        'To select undervalued stocks for long-term growth',
        'To reduce portfolio risk through active asset reallocation'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following is an investment objective for mutual funds?',
      'options': [
        'Liquidity',
        'Capital appreciation',
        'Regular income',
        'All of the above'
      ],
      'correctAnswer': 3,
    },
    {
      'question': 'Growth funds primarily invest in:',
      'options': [
        'Fixed-income securities',
        'Growth-oriented assets such as equity',
        'Real estate projects',
        'Government bonds'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'The primary objective of income funds is to:',
      'options': [
        'Provide capital appreciation',
        'Provide regular and steady income through investments in fixed-income securities',
        'Maximize returns through investing in small-cap stocks',
        'Park funds for short-term liquidity'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Liquid funds invest in:',
      'options': [
        'Equity shares of large companies',
        'Growth stocks',
        'Money market instruments with maturities not exceeding 91 days',
        'Foreign exchange markets'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Which of the following would be considered a passive fund?',
      'options': [
        'Growth fund',
        'Index fund',
        'Income fund',
        'Infrastructure fund'
      ],
      'correctAnswer': 1,
    },
  ];

  final List<Map<String, Object>> quizFourQuestions = [
    {
      'question': 'What does AUM stand for in mutual funds?',
      'options': [
        'Aggregate Unit Money',
        'Assets Under Management',
        'Asset Utility Management',
        'Account Utility Management'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which factor is NOT mentioned as directly influencing AUM in India?',
      'options': [
        'Investor Sentiment',
        'Market Conditions',
        'Cryptocurrency Trends',
        'Distribution Channels'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What does NAV represent in a mutual fund?',
      'options': [
        'The total investment in the fund',
        'The market value of securities per unit of the fund',
        'The market value of the company',
        'The new addition to fund value'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What is the primary purpose of an exit load in mutual funds?',
      'options': [
        'To encourage short-term trading',
        'To penalize long-term investors',
        'To discourage short-term trading',
        'To increase fund management fees'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Which time is critical for calculating the applicable NAV in liquid funds?',
      'options': [
        '1:00 p.m.',
        '1:30 p.m.',
        '3:00 p.m.',
        '4:00 p.m.'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What does TER stand for in mutual funds?',
      'options': [
        'Total Equity Ratio',
        'Total Expense Ratio',
        'Total Earnings Ratio',
        'Total Entry Rate'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following is NOT considered a component of the Total Expense Ratio (TER)?',
      'options': [
        'Administrative expenses',
        'Investment management fees',
        'Custodian fees',
        'Exit load fees'
      ],
      'correctAnswer': 3,
    },
    {
      'question': 'According to SEBI regulations, what is the maximum TER for equity funds on the first ₹500 crores of AUM?',
      'options': [
        '2.00%',
        '1.50%',
        '2.25%',
        '1.75%'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Which of the following types of mutual funds generally has a lower exit load?',
      'options': [
        'Equity funds',
        'Debt funds',
        'Hybrid funds',
        'Index funds'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'In mutual funds, what price is used to buy units during an ongoing offer period?',
      'options': [
        'Face Value',
        'Market Value',
        'Sale Price',
        'Applicable NAV'
      ],
      'correctAnswer': 3,
    },
  ];
  final List<Map<String, Object>> quizFiveQuestions = [
    {
      'question': 'Which category of mutual fund schemes primarily invests in equities and equity-related instruments?',
      'options': [
        'Debt Schemes',
        'Hybrid Schemes',
        'Equity Schemes',
        'Index Funds'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the minimum investment required in equity and equity-related instruments for a Flexi Cap Fund?',
      'options': [
        '65%',
        '75%',
        '80%',
        '50%'
      ],
      'correctAnswer': 0,
    },
    {
      'question': 'Which type of fund follows a contrarian investment strategy?',
      'options': [
        'Value Fund',
        'Contra Fund',
        'Growth Fund',
        'Arbitrage Fund'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What is the lock-in period for an Equity Linked Savings Scheme (ELSS)?',
      'options': [
        '1 year',
        '3 years',
        '5 years',
        '10 years'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following funds is categorized as a debt fund with a maturity of 1 day?',
      'options': [
        'Liquid Fund',
        'Overnight Fund',
        'Gilt Fund',
        'Money Market Fund'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'In a Large & Mid Cap Fund, what is the minimum required investment in large cap stocks?',
      'options': [
        '35%',
        '50%',
        '65%',
        '80%'
      ],
      'correctAnswer': 0,
    },
    {
      'question': 'Which type of mutual fund has a minimum of 95% investment in a particular index?',
      'options': [
        'Fund of Funds',
        'Sectoral/Thematic Fund',
        'Index Fund',
        'Contra Fund'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'A Conservative Hybrid Fund must invest what percentage in equity & equity-related instruments?',
      'options': [
        '10% to 25%',
        '40% to 60%',
        '65% to 80%',
        '0% to 10%'
      ],
      'correctAnswer': 0,
    },
    {
      'question': 'Which fund category invests in multiple asset classes with at least 10% allocation in each asset class?',
      'options': [
        'Dynamic Bond Fund',
        'Arbitrage Fund',
        'Multi Asset Allocation Fund',
        'Credit Risk Fund'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the maximum number of stocks that a Focused Fund can hold?',
      'options': [
        '20',
        '25',
        '30',
        '40'
      ],
      'correctAnswer': 2,
    },
  ];



  final List<Map<String, Object>> quizSixQuestions = [
    {
      'question': 'What is one of the main advantages of investing in a mutual fund?',
      'options': [
        'Guaranteed returns',
        'No risk of loss',
        'Professional management',
        'Higher interest rates'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Risk diversification in mutual funds means:',
      'options': [
        'Investing in a single stock',
        'Spreading investments across various securities',
        'Avoiding all risks',
        'Only investing in government bonds'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following is NOT a benefit of mutual funds?',
      'options': [
        'Liquidity',
        'Affordability',
        'High risk exposure',
        'Professional management'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'How long is the lock-in period for units of ELSS mutual funds?',
      'options': [
        '1 year',
        '2 years',
        '3 years',
        '5 years'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What does the expense ratio of a mutual fund represent?',
      'options': [
        'The guaranteed returns for investors',
        'The annual operating expenses of the fund',
        'The tax benefits associated with mutual funds',
        'The minimum investment amount required'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following is a standard risk factor associated with mutual fund investments?',
      'options': [
        'Guaranteed returns',
        'Fluctuating value of securities',
        'Constant NAV',
        'No exposure to market risks'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What kind of risk refers to the inability of an issuer to meet interest or principal payments?',
      'options': [
        'Credit Risk',
        'Market Risk',
        'Liquidity Risk',
        'Event Risk'
      ],
      'correctAnswer': 0,
    },
    {
      'question': 'What happens to the market value of fixed income securities when interest rates rise?',
      'options': [
        'It remains constant',
        'It increases',
        'It decreases',
        'It becomes volatile but doesn’t change'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Liquidity risk in mutual funds is measured by:',
      'options': [
        'The time taken for NAV calculation',
        'The spread between bid and offer price',
        'The maturity period of the fund',
        'The credit rating of the issuer'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Reinvestment risk in mutual funds refers to:',
      'options': [
        'The risk of not being able to redeem the investment',
        'The risk of reinvesting at a lower interest rate',
        'The risk of prepayment by the borrower',
        'The risk of credit default'
      ],
      'correctAnswer': 1,
    },
  ];



  final List<Map<String, Object>> quizSevenQuestions = [

    {
      'question': 'What does SIP stand for in mutual fund investments?',
      'options': [
        'Secure Investment Plan',
        'Systematic Investment Plan',
        'Standard Income Plan',
        'Strategic Investment Portfolio'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following is the first step when starting an SIP?',
      'options': [
        'Selecting the frequency of investment',
        'Completing KYC',
        'Selecting a mutual fund scheme',
        'Setting up automatic debits'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the most common investment frequency chosen by salaried investors in an SIP?',
      'options': [
        'Weekly',
        'Quarterly',
        'Monthly',
        'Annually'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What key benefit does SIP provide during periods of market volatility?',
      'options': [
        'Consistent returns',
        'Rupee-cost averaging',
        'Automatic reinvestment',
        'Zero transaction fees'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What is the major advantage of starting to invest early in an SIP?',
      'options': [
        'Access to exclusive funds',
        'Power of compounding',
        'Lower fees',
        'Higher initial returns'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which type of SIP allows for periodic increases in contribution amounts?',
      'options': [
        'Fixed SIP',
        'Perpetual SIP',
        'Top-up SIP',
        'Flexible SIP'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'In a flexible SIP, what aspect of contributions can be adjusted by the investor?',
      'options': [
        'Type of mutual fund',
        'Contribution amount and frequency',
        'NAV value',
        'Withdrawal date'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What is a key feature of a Systematic Withdrawal Plan (SWP)?',
      'options': [
        'Automatic reinvestment of returns',
        'Withdrawal of a fixed amount at regular intervals',
        'Higher returns compared to SIP',
        'No taxes on withdrawals'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Who would benefit most from an SWP?',
      'options': [
        'Young investors seeking to grow wealth',
        'Retirees looking for a regular income',
        'Traders focusing on market timing',
        'People with a high-risk appetite'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which is NOT a benefit of using an SWP?',
      'options': [
        'Regular income',
        'Flexibility in withdrawal frequency',
        'Avoiding market-timing risk',
        'Guaranteed high returns'
      ],
      'correctAnswer': 3,
    },
  ];




  final List<Map<String, Object>> quizEightQuestions = [
    {
      'question': 'What does CAGR stand for?',
      'options': [
        'Compound Annual Growth Rate',
        'Calculated Annual Gross Return',
        'Cumulative Average Growth Ratio',
        'Consistent Annual Gain Representation'
      ],
      'correctAnswer': 0,
    },
    {
      'question': 'Which of the following best describes the purpose of CAGR?',
      'options': [
        'To measure daily stock price fluctuations',
        'To calculate tax liabilities on investments',
        'To measure how an investment has grown over a specific period, accounting for compounding',
        'To predict future market trends'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the formula for calculating CAGR?',
      'options': [
        '(Ending balance / Beginning balance) * Number of years',
        '(Ending balance - Beginning balance) / Number of years',
        '(Ending balance / Beginning balance)^(1/Number of years) - 1',
        '(Ending balance - Beginning balance) / Beginning balance'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Why is CAGR useful for investors?',
      'options': [
        'It predicts exact future returns',
        'It shows daily price movements',
        'It allows for easy comparison between different investments over time',
        'It calculates dividend payments'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'In the CAGR formula, what does "n" represent?',
      'options': [
        'The number of months in the investment period',
        'The number of years in the investment period',
        'The number of days in the investment period',
        'The number of quarters in the investment period'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What does XIRR stand for?',
      'options': [
        'Extended Internal Rate of Return',
        'X-factor Investment Return Rate',
        'Extra Interest Return Ratio',
        'Excess Internal Revenue Rate'
      ],
      'correctAnswer': 0,
    },
    {
      'question': 'How does XIRR differ from CAGR?',
      'options': [
        'XIRR can only be used for stocks, while CAGR is for mutual funds',
        'XIRR considers multiple cash flows at irregular intervals, while CAGR assumes a single investment',
        'XIRR is always higher than CAGR',
        'XIRR is calculated manually, while CAGR requires a computer'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which financial tool is particularly useful for calculating XIRR?',
      'options': [
        'A scientific calculator',
        'Microsoft Excel',
        'A mobile banking app',
        'A stock market ticker'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What type of investment strategy is XIRR particularly useful for evaluating?',
      'options': [
        'Lump sum investments',
        'Day trading',
        'Systematic Investment Plans (SIPs)',
        'Foreign currency exchange'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'In Excel, what does the "Values" parameter in the XIRR function represent?',
      'options': [
        'The dates of transactions',
        'The interest rates',
        'The cash flows (positive for inflows, negative for outflows)',
        'The names of the investments'
      ],
      'correctAnswer': 2,
    },
  ];



  final List<Map<String, Object>> quizNineQuestions = [

    {
      'question': 'What is the LTCG tax rate for equity-oriented mutual funds sold on or after July 23, 2024?',
      'options': [
        '10%',
        '12.50%',
        '15%',
        '20%'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'For debt-oriented mutual funds acquired before April 1, 2023, and sold before July 23, 2024, what is the LTCG tax rate?',
      'options': [
        '10% with indexation benefit',
        '12.50% with indexation benefit',
        '20% with indexation benefit',
        'Taxed at slab rate'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the holding period for LTCG in equity-oriented mutual funds?',
      'options': [
        'More than 6 months',
        'More than 12 months',
        'More than 24 months',
        'More than 36 months'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'For hybrid mutual funds sold on or after July 23, 2024, what is the LTCG tax rate?',
      'options': [
        '10%',
        '12.50%',
        '15%',
        '20% with indexation benefit'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What is the tax treatment for dividends received from mutual funds after March 31, 2020?',
      'options': [
        'Tax-free in the hands of investors',
        'Taxed at a flat rate of 10%',
        'Taxed as per the investor\'s income tax slab',
        'Subject to Dividend Distribution Tax'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the TDS rate on dividend income exceeding ₹5,000 in a financial year?',
      'options': [
        '5%',
        '10%',
        '15%',
        '20%'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'For ELSS funds, what is the lock-in period?',
      'options': [
        '1 year',
        '2 years',
        '3 years',
        '5 years'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the tax treatment for debt-oriented mutual funds acquired after April 1, 2023?',
      'options': [
        'LTCG taxed at 20% with indexation',
        'STCG taxed at 15%',
        'Both LTCG and STCG taxed at slab rate',
        'LTCG taxed at 12.50%'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Under what section of the Income Tax Act is the LTCG tax on equity-oriented mutual funds charged?',
      'options': [
        'Section 80C',
        'Section 111A',
        'Section 112A',
        'Section 194K'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is the definition of a "specified mutual fund" as per the amended Finance (No. 2) Act 2024, applicable from FY 2025-26?',
      'options': [
        'A fund investing more than 35% in equity shares',
        'A fund investing more than 65% in debt and money market instruments',
        'A fund investing more than 50% in international equity',
        'A fund investing more than 80% in gold'
      ],
      'correctAnswer': 1,
    },
  ];



  final List<Map<String, Object>> quizTenQuestions = [
    {
      'question': 'What is the primary method of investing in mutual funds?',
      'options': [
        'Through a bank transfer only',
        'By submitting a completed application form with a cheque or bank draft',
        'Only through online platforms',
        'By phone call to the mutual fund company'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What does AMFI stand for in the context of mutual fund investments?',
      'options': [
        'Association of Mutual Funds in India',
        'Automated Mutual Fund Investment',
        'Advanced Money Flow Index',
        'Authorized Mutual Fund Intermediary'
      ],
      'correctAnswer': 0,
    },
    {
      'question': 'What is the purpose of KYC in mutual fund investments?',
      'options': [
        'To determine the investor\'s risk tolerance',
        'To establish the investor\'s identity and address',
        'To calculate the potential returns on investment',
        'To assign a unique investment number'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Which of the following is NOT a way to invest in mutual funds?',
      'options': [
        'Through a Mutual Fund Distributor',
        'Directly without involving a distributor',
        'Through MF Utilities Pvt. Ltd. (MFU)',
        'By purchasing units at a local bank branch'
      ],
      'correctAnswer': 3,
    },
    {
      'question': 'What certification must Mutual Fund Distributors obtain before engaging in the sale of mutual fund products?',
      'options': [
        'CFA (Chartered Financial Analyst)',
        'NISM (National Institute of Securities Management)',
        'MBA (Master of Business Administration)',
        'CPA (Certified Public Accountant)'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'What is the EUIN in the context of mutual fund investments?',
      'options': [
        'Electronic Unique Identification Number',
        'Employee Unique Identification Number',
        'Equity Unit Investment Number',
        'Extended Uniform Investment Notation'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Through which stock exchange platform can investors buy mutual fund units?',
      'options': [
        'NSE - MFSS only',
        'BSE - StAR MF only',
        'Both NSE - MFSS and BSE - StAR MF',
        'Neither NSE nor BSE platforms'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What is a prerequisite before investing in mutual funds?',
      'options': [
        'Opening a demat account',
        'Completing the KYC process',
        'Obtaining a credit score',
        'Registering with SEBI'
      ],
      'correctAnswer': 1,
    },
    {
      'question': 'Under which Act is KYC compliance mandatory?',
      'options': [
        'Securities and Exchange Board of India Act, 1992',
        'Companies Act, 2013',
        'Prevention of Money Laundering Act, 2002',
        'Foreign Exchange Management Act, 1999'
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'What type of document is typically NOT accepted as a photo ID for KYC purposes?',
      'options': [
        'Passport',
        'Aadhaar card',
        'PAN card',
        'Library card'
      ],
      'correctAnswer': 3,
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left: Logo Image
            Image.asset(
              'lib/icons/wealth.png',
              height: 50,
            ),
            IconButton(
              icon: Icon(Icons.account_circle, size: 30),
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context)=>Learn()));

              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/icons/background.png'),
            fit: BoxFit.cover,

          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuizButton(
                  title: 'INVESTMENT BASICS',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>QuizPage(questions: quizOneQuestions)));
                    // Navigate to Mutual Funds Basics quiz page
                  },
                ),
                QuizButton(
                  title: 'MUTUAL FUND',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizTwoQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Investment Ethics quiz page
                  },
                ),
                QuizButton(
                  title: 'TYPES OF MUTUAL FUND SCHEMES',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizThreeQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to MF Advance quiz page
                  },
                ),
                QuizButton(
                  title: ' TERMS RELATED TO MUTUAL FUND',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizFourQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Invest Ethics II quiz page
                  },
                ),

                QuizButton(
                  title: 'CATEGORISATION OF MUTUAL FUND',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizFiveQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Invest Ethics II quiz page
                  },
                ),

                QuizButton(
                  title: 'ADVANTAGES AND RISK IN MUTUAL FUND',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizSixQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Invest Ethics II quiz page
                  },
                ),

                QuizButton(
                  title: 'SYSTEMATIC PLANS',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizSevenQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Invest Ethics II quiz page
                  },
                ),

                QuizButton(
                  title: ' RETURN RATIOS ',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizEightQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Invest Ethics II quiz page
                  },
                ),
                QuizButton(
                  title: 'TAXATION IN MUTUAL FUND',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizNineQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Invest Ethics II quiz page
                  },
                ),

                QuizButton(
                  title: 'HOW TO INVEST IN MUTUAL FUND',
                  questions: 10,
                  progress: null,
                  status: 'TRY NOW',
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(questions: quizTenQuestions), // Pass quiz two questions
                      ),
                    );
                    // Navigate to Invest Ethics II quiz page
                  },
                ),








              ],
            ),
          ),
        ),
      ),

    );
  }
}

class QuizButton extends StatelessWidget {
  final String title;
  final int questions;
  final int? progress;
  final String status;
  final Color color;
  final VoidCallback onPressed;

  QuizButton({
    required this.title,
    required this.questions,
    this.progress,
    required this.status,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('$questions Questions'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (progress != null)
              Text(
                '$progress%',
                style: TextStyle(color: color, fontWeight: FontWeight.bold),
              ),
            Text(
              status,
              style: TextStyle(color: color),
            ),
          ],
        ),
        onTap: onPressed,
      ),
    );
  }
}


