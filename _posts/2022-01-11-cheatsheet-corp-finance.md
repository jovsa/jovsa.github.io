---
layout: post
title: "Cheatsheet: Corporate Finance"
categories: notes
modified_date: Feb 9, 2022
author:
- Jovan Sardinha
---

![index](/assets/post_assets/cheatsheet-corp-finance/index.png)

## The Objective Decision

> The `Why` - ex. max. value of the business

![objective](/assets/post_assets/cheatsheet-corp-finance/objective.png)

Some error cases

![error cases](/assets/post_assets/cheatsheet-corp-finance/objective_error_cases.png)

I would imagine there is a version where each stakeholder acts out of turn.

## The Investment Decision

> `What` to invest in? -  Decisions around finding assets that earn a return greater than the minimum acceptable hurdle.

### Hurdle Rate

* Risk Free Rate
* Equity Risk Premium
  * Implied ERP
  * Country Risk
  * Company Risk
* Regression Betas
  * Top-down betas (regression betas)
  * Bottom-up betas
    * Lever up an unlevered beta with the debt/equity
    * Important Ratios:
      * Firm Value = Market value of Equity + Debt
      * Enterprise Value = Firm Value - Cash
* Debt
* Financing Weight

### Investment Returns

#### Cash flows

* To get from accounting earning to cash flows
  * Add back non-cash expenses (eg. depreciation)
  * Subtract out cash outflows (eg. capital expenditures)
  * Make accrual {revenue, expense} into cash. (eg. consider working capital).

#### Time weighted Incremental Cash Flow

Simple Cash Flow

$$\frac{CF_{n}}{(1+r)^{n}}$$

Annuity

$$A[\frac{1-\frac{1}{(1+r)^n}}{r}]$$

Growing Annuity

$$A[1+g](\frac{1-\frac{(1+g)^n}{(1+r)^n}}{r-g})$$

Perpetuity

$$\frac{A}{r}$$

Growing Perpetuity

$$\frac{\text{Expected cash flow next year}}{r-g}$$

* NPV
* IRR
  * Accept if IRR > Hurdle Rate

Hedging Risk:
![risk hedging](/assets/post_assets/cheatsheet-corp-finance/risk_hedging_flowchart.png)

## The Financing Decision

> `How` to make it work? - Decisions around the right mix of debt and equity to fund your operations.

### Financing Mix

#### The Tradeoff

![debt vs. equity](/assets/post_assets/cheatsheet-corp-finance/debt_vs_equity_comparison.png)

#### The Approach

1. Estimate the **Cost of Equity** at different levels of debt
2. Estimate the **Cost of Debt** at different levels of debt
3. Estimate the **Cost of Capital** at different levels of debt

### Financing Type

![perfect finace instrument](/assets/post_assets/cheatsheet-corp-finance/designing_perfect_finance_instrument.png)

## The Dividend Decision

> `What` to do with returns?  - Decisions around how to return the returns to owners of your business. This should bookend the *investment decision*. More specifically, if you cannot find investments that make your minimum acceptable hurdle rate, return the cash to the owners.

### Dividend Policy

#### Trends and Measures

![index](/assets/post_assets/cheatsheet-corp-finance/steps_to_divident_decision.png)

Stock buybacks vs. dividends

1. Dividends are sticky
2. Dividends tend to follow earnings
3. Dividends are affected by tax law: Laws change around this all the time.
4. More firms do buybacks compared to issuing dividends.
5 Varies across countries and sectors.

Measures of Dividend Policy

* Dividend Payout Ratio = Dividends / Net Income
* Dividend Yield = Dividends per share / stock price
  * Becomes part of the ROI for a stock.

#### The trade offs

1.

## Valuation

> How to measure something from outside in

![valuation flowchart](/assets/post_assets/cheatsheet-corp-finance/valuation_flowchart.png)

#### Ratios

![micro measures](/assets/post_assets/cheatsheet-corp-finance/micro_measures.png)

##### Profitability Ratios

![1](/assets/post_assets/cheatsheet-corp-finance/profitability_1.png)
![2](/assets/post_assets/cheatsheet-corp-finance/profitability_lifecycle.png)

![E1](/assets/post_assets/cheatsheet-corp-finance/profitability_example.png)

### Accounting Ratios

*Consistency Rule*

![1](/assets/post_assets/cheatsheet-corp-finance/ROE_1.png)
![2](/assets/post_assets/cheatsheet-corp-finance/ROE_2.png)

### Efficiency Ratios

* Efficiency ratios measure the revenue payoff that companies get from reinvesting back in their businesses.
* Turnover ratios:
  * Working Capital Turnover = Sales/ Non-cash Working capital (or individual items of working capital, like inventory or receivables)
  * Asset Turnover = Sales/ Total Assets
  * Capital Turnover = Sales/ Invested Capital

![E1](/assets/post_assets/cheatsheet-corp-finance/efficiency_example.png)

#### Financial Leverage

* Debt can be scaled to overall capital or just to equity
  * Debt to Capital = Debt/ (Debt + Equity): This is a measure of how much of the capital in a company comes from debt.
  * Debt to Equity = Debt/Equity: This is a close variant of debt to capital, with debt stated as a percent of equity.
* Debt can also be measured relative to earnings/cashflows:
  * Debt to EBITDA = Debt/EBITDA: This measures how much debt a company has relative to the cash it generates from operations, before taxes and capital expenditures.

* Variants:
  * What to include in debt
    * Only long term debt
    * All interest bearing debt
    * Debt inclusive of commitments (like leases)
  * Book or Market
    * Book values for debt and equity (from balance sheet)
    * Market values, measured as market cap for equity in a publicly traded firm, and if doable, market value of debt
  * Gross or Net
    * Gross debt is all debt
    * Net debt is all debt minus cash & marketable securities

---

![E1](/assets/post_assets/cheatsheet-corp-finance/debt_example.png)

#### Liquidity & Credit Risks

* Coverage Ratios: These ratios measure how much buffer or coverage a company has in meeting commitments.
  * With interest coverage ratio, the commitment is interest expenses, and it is scaled to operating income.
  * With a fixed charge coverage ratio, the commitment is expanded to include debt payments, and it is scaled to operating income + fixed charges.
* Liquidity Ratios: These ratios measure how much liquidity companies have, to cover near-term needs or expenses:
  * Current ratio, measure current assets relative to current liabilities.
  * Quick ratio, looks at only liquid current assets relative to current liabilities. (Inventory is usually excluded.)

![E1](/assets/post_assets/cheatsheet-corp-finance/coverage_and_liquidity_example.png)

## Reference

* [Applied Corporate Finance A. Damodaran Index](http://people.stern.nyu.edu/adamodar/New_Home_Page/webcastcfonline.htm)
* [Valuation By A. Damodaran Index](https://www.youtube.com/playlist?list=PLUkh9m2BorqnKWu0g5ZUps_CbQ-JGtbI9)
  * [link to valuation flowchart](https://docs.google.com/presentation/d/1ZNZWoCQE52wd4ZmJ4_RVgyYjVgISkCnluHtkGIWMbWs/edit#slide=id.p)
* [Edgar SEC](https://www.sec.gov/edgar/searchedgar/companysearch.html)
