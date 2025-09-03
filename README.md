# Covid Gender Wage Gap Analysis
Stata analysis of IPUMS data measuring how COVID-19 widened the gender wage gap in the U.S.

---

### 📊 Project Overview

This project investigates the **impact of the COVID-19 pandemic on the gender wage gap** in the United States. Using **IPUMS microdata (2019 & 2022)**, I applied regression models to measure how income disparities between men and women shifted after the onset of the pandemic.

### 🛠️ Code & Methods (Stata)

* **Data Preparation**

  * Cleaned wage income data by removing missing and top-coded values.
  * Generated indicator variables (`Female`, `Post`, `MetroInd`, `Black`, `MarstInd`) and an interaction term (`Female*Post`).
  * Encoded categorical variables (e.g., `educ`) and included continuous measures (`age`, `hours worked`).

* **Statistical Analysis**

  * Ran **Difference-in-Differences (DiD) regressions** in Stata.
  * **Restricted model**: wage income regressed on `Female`, `Post`, and `Female*Post`.
  * **Unrestricted model**: included controls for hours worked, race, metro status, education, age, and marital status.

* **Findings**

  * Results show that the **gender wage gap widened post-pandemic**, with women earning on average \~\$1,500 less relative to men when controlling for additional factors.

### ⚙️ Tools

* **Stata** (data cleaning, regression models, table generation, statistical testing)

---

Do you want me to also make you a **short GitHub tagline** (like a one-sentence summary you can put at the very top of the README)?
