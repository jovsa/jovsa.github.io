---
layout: post
title: "Cheatsheet: Corporate Finance"
categories: notes
modified_date: Dec 3, 2023
author:
- Jovan Sardinha
---

link to playlist: [link](https://www.youtube.com/playlist?list=PLUkh9m2BorqkKMOj0LkU8JCeDlk4k8P-A)

![index](/assets/post_assets/cheatsheet-corp-finance/index.png)

![index2](/assets/post_assets/cheatsheet-corp-finance/index2.png)

![index3](/assets/post_assets/cheatsheet-corp-finance/index3.png)

![index4](/assets/post_assets/cheatsheet-corp-finance/index4.png)

## 1. The Objective Decision

> The `Why` - ex. max. value of the business

![objective](/assets/post_assets/cheatsheet-corp-finance/objective.png)

Some error cases

![error cases](/assets/post_assets/cheatsheet-corp-finance/objective_error_cases.png)

I would imagine there is a version where each stakeholder acts out of turn.

![modified objective function](/assets/post_assets/cheatsheet-corp-finance/modified_objective_function.png)


## 2. The Investment Decision

> `What` to invest in? -  Decisions around finding assets that earn a return greater than the minimum acceptable hurdle.

### 2.1 Hurdle Rate

#### 2.1.1 Risk Free Rate

#### 2.1.2 Risk Premium

* Implied ERP
* Country Risk
* Company Risk

#### 2.1.3 Betas

* Top-down betas (regression betas)
* Bottom-up betas
  * Lever up an unlevered beta with the debt/equity
  * Important Ratios:
    * Firm Value = Market value of Equity + Debt
    * Enterprise Value = Firm Value - Cash
  * Beta_levered = Beta_unlevered(1+[(1-t)D/E])
    * where:
      * Beta_levered = Levered or Equity Beta
      * Beta_unlevered = unlevered or Asset Beta
      * t = Marginal tax rate
      * D = Market value of Debt
      * E = Market value of Equity

#### 2.1.4 Cost of Equity

#### 2.1.5 Cost of Debt

#### 2.1.6 Financing Weight

### 2.2 Investment Returns

* Issues for *Accounting* numbers for investments:
  * [Issue 1]: Accurual vs. Cash Accounting
    * Accural Accounting: Recording transaction as they happen irrespective of when you got paid for that transaction.
    * Cash Accounting: Based on what you actually have.
  * [Issue 2]: Types of expenses:
    * Operating Expense: Expenses designed to create a return in the current period (ex. year).
      * Ex. expenses around sales that go below the revenue and are used in the COGS.
    * Capital Expenses: Expenses designed to create a benefit over many periods (ex. years).
      * If you have a big investment expense you spread them out over many years and write them as depreciation/amortization.
    * Financial Expense: Expenses that are associated with the use of debt.
      * These show below *operating income* line and are used to go from *operating income* to *net income*

#### Cash flows

* To get from accounting earning to cash flows
  * Add back non-cash expenses (eg. depreciation and amortization). Since we haven't incurred this expense.
    * considerations:
      * The *depreciation/amortization tax benefit*: The higher the tax rate, the higher the benefit from depreciation/amortization. Hence, most high tax companies delay their expense by putting it into depreciation/amortization.
        * Two way to depreciate/amortization an asset:
          * 1. Straight line depreciation
            * improves EPS
          * 2. Accelerated depreciation
            * improves cash flow
  * Subtract out cash outflows (eg. capital expenditures).
    * considerations:
      * to expense or capitalize/depreciate/amortization an cap ex?
        * Expensing will give you tax benefit since you can get the tax cut right away. Capitalize/Depreciate/amortization will improve cash flow.
  * Make accrual accounting into cash.
    * Subtract/Add expenses & income that your haven't incurred yet.
    * considerations:
      * Increase in working capital reduces cash flow in that year and vice versa.
  * Other consideration:
    * Do not consider sunk costs: costs already incurred
    * Do not consider allocated costs: costs that you would incur irrespective if the project was being done.
    * Do not include G&A (General and Administrative) costs: Since these are costs that are not part of the investment.
      * Non G&A costs are costs that increase as part of this investment.

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

* Two ways to calculate time weighted returns:
  * NPV
    * Accept if NPV > 0
  * IRR
    * Accept if IRR > Hurdle Rate
* Notes:
  * NPV of a project is the amount of value a project will add to your firm.
  * If you were to plot the NVP vs. Discount rate to find your IRR. It tells you how sensative your NVP is to your discount rate. Hence, if two projects have the same IRR but one has a steaper line, you pick the one with the flatter line. Hence, this is a secondary measure of risk.
  * A project can only have one NPV, whereas it can have more than one IRR.
  * NPV is a dollar surplus, whereas IRR is a % measure of return. Hence, NPV is likely to be larger for "larger projects" while IRR is larger for "smaller projects".
  * NPV assumes that itermediate cash flow gets invested re-invested at the "hurdle rate", while IRR assumes that these cash flows get re-invested at the hurdle rate.

Hedging Risk:
![risk hedging](/assets/post_assets/cheatsheet-corp-finance/risk_hedging_flowchart.png)

## 3. The Financing Decision

> `How` to make it work? - Decisions around the right mix of debt and equity to fund your operations.

### 3.1 Financing Mix

#### The Tradeoff

![debt vs. equity](/assets/post_assets/cheatsheet-corp-finance/debt_vs_equity_comparison.png)

#### The Approach

1. Estimate the **Cost of Equity** at different levels of debt
2. Estimate the **Cost of Debt** at different levels of debt
3. Estimate the **Cost of Capital** at different levels of debt

### 3.2 Financing Type

![perfect finace instrument](/assets/post_assets/cheatsheet-corp-finance/designing_perfect_finance_instrument.png)

## 4. The Dividend Decision

> `What` to do with returns?  - Decisions around how to return the returns to owners of your business. This should bookend the *investment decision*. More specifically, if you cannot find investments that make your minimum acceptable hurdle rate, return the cash to the owners.

### 4.1 Dividend Policy

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

## 5. Valuation

> How to measure something from outside in

TODO (jovsa): Breakdown `5. Valuation` like the other 1-4 sections as per the following chart:
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
  * [Applied Corporate Finance: 3rd Edition](http://pages.stern.nyu.edu/~adamodar/New_Home_Page/ACF3E/appldCF3E.htm)
* [Valuation By A. Damodaran Index](https://www.youtube.com/playlist?list=PLUkh9m2BorqnKWu0g5ZUps_CbQ-JGtbI9)
  * [link to valuation flowchart](https://docs.google.com/presentation/d/1ZNZWoCQE52wd4ZmJ4_RVgyYjVgISkCnluHtkGIWMbWs/edit#slide=id.p)
* [Edgar SEC](https://www.sec.gov/edgar/searchedgar/companysearch.html)
