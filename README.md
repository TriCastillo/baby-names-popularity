# Baby Names Popularity

Analyze trends in American baby names from 1920 to 2020 using SQL and data visualization. This project explores how naming preferences have changed over a century, identifies classic and trendy names, and highlights names that have stood the test of time.

---

## Table of Contents

- [Scenario and Problem Statement](#scenario-and-problem-statement)
- [Dataset Description](#dataset-description)
- [Actions and Approach](#actions-and-approach)
- [Screenshots and Examples](#screenshots-and-examples)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Results and Insights](#results-and-insights)
- [Future Work](#future-work)
- [Acknowledgement](#acknowledgement)
- [Contact Information](#contact-information)

---

## Scenario and Problem Statement

**Scenario:**  
New parents often wonder which names are timeless and which are currently trending. Businesses and researchers may also be interested in understanding cultural shifts reflected in naming conventions.

**Problem Statement:**

- How have American baby name tastes changed since 1920?
- Which names have remained popular for over 100 years?
- What distinguishes a "classic" name from a "trendy" one?
- Which names have appeared in both 1920 and 2020?

---

## Dataset Description

- **Source:** United States Social Security Administration
- **File:** [`data/baby_names.csv`](data/baby_names.csv)
- **Columns:**
  - `year` (int): Year of record
  - `first_name` (varchar): Baby's first name
  - `sex` (varchar): Sex of the baby (`M` or `F`)
  - `num` (int): Number of babies given that name in that year

> Only names given to over 5,000 babies in a year are included. The dataset spans 1920–2020.

---

## Actions and Approach

1. **Data Exploration:**  
   Previewed the dataset and schema.

2. **SQL Analysis:**

   - Identified top names and classified them as "Classic" (appearing in 50+ years) or "Trendy".
   - Ranked the top 20 male names and determined the rank of "Paul".
   - Found female names present in both 1920 and 2020.

3. **Visualization:**
   - Used Jupyter notebooks to visualize trends and results.

---

## Screenshots and Examples

![Baby Names](images/baby_names.jpg)

### Example Query: Top 5 Names and Their Type

```sql
SELECT first_name, COUNT(year) AS sum,
  CASE
    WHEN COUNT(year) > 50 THEN 'Classic'
    ELSE 'Trendy'
  END AS popularity_type
FROM baby_names
GROUP BY first_name
ORDER BY first_name
LIMIT 5;
```

**Example Output**

| first_name | sum | popularity_type |
| ---------- | --- | --------------- |
| Aaliyah    | 3   | Trendy          |
| Aaron      | 51  | Classic         |
| Abigail    | 28  | Trendy          |
| Adam       | 46  | Trendy          |

---

## Technologies Used

- SQL (PostgreSQL)
- Jupyter Notebooks
- Python (for notebook environment)

---

## Project Structure

**baby-names-popularity/**

- **data/**
  - baby_names.csv
- **images/**
  - baby_names.jpg
- **notebooks/**
  - notebook.ipynb
- **queries/**
  - female_baby_names_in_1920_and_2020.sql
  - top_20_male_baby_names_and_rank.sql
  - trending_baby_first_names.sql
- README.md

---

## Results and Insights

- **Classic vs. Trendy:** Names like "Aaron" are classic, while "Aaliyah" is trendy.
- **Top Male Names:** "James", "John", and "Robert" are the most popular names; "Paul" ranks 17th.
- **Enduring Female Names:** Names such as "Emma", "Evelyn", and "Elizabeth" appeared in both 1920 and 2020, showing enduring popularity.

---

## Future Work

- Expand analysis to include more recent years.
- Add data visualizations (charts/graphs) for trends over time.
- Explore regional or demographic breakdowns.
- Build an interactive dashboard for exploring name trends.

---

## Acknowledgement

- Data provided by the [United States Social Security Administration](https://www.ssa.gov/oact/babynames/).
- Problem statements and/or datasets in this project were sourced from [DataCamp](https://www.datacamp.com/) real-world projects.

---

## Contact Information

For questions or collaboration opportunities, please contact:

- **Email:** reynaldoiii.castillo@gmail.com
- **LinkedIn:** Reynaldo III Castillo | [LinkedIn](https://www.linkedin.com/in/reynaldo-iii-castillo-975120303)

---
