# Employee Attrition Analysis & Prediction

## Project Overview

This project analyzes employee attrition using SQL and Python and develops machine learning models to predict whether an employee is likely to leave an organization.

The project includes exploratory data analysis, data preprocessing, classification modeling, model evaluation, cross-validation, and feature coefficient analysis.

## Dataset

- **Dataset:** IBM HR Analytics Employee Attrition & Performance
- **Total Records:** 1,470
- **Original Features:** 35 columns (including target)
- **Target Variable:** Attrition (Yes/No)
- **Employees Who Left:** 237 (16.12%)
- **Employees Who Stayed:** 1,233 (83.88%)

## Technologies Used

- Python
- Pandas and NumPy
- Scikit-learn
- Matplotlib and Seaborn
- MySQL
- Jupyter Notebook
- VS Code

## Project Workflow

1. Dataset loading and exploration
2. SQL-based employee attrition analysis
3. Feature selection and preprocessing
4. Train-test split (80:20)
5. Logistic Regression modeling
6. Random Forest modeling
7. Balanced Logistic Regression modeling
8. Performance evaluation
9. Five-fold stratified cross-validation
10. Feature coefficient analysis
11. Model serialization using Joblib

## SQL Analysis

SQL queries were used to investigate employee attrition across departments, job roles, overtime status, business travel, age, and income.

Key descriptive findings:

- Overall attrition rate: 16.12%
- Sales department attrition: 20.63%
- Human Resources department attrition: 19.05%
- Research & Development attrition: 13.84%
- Overtime employees attrition: 30.53%
- Non-overtime employees attrition: 10.44%

## Machine Learning Models

Three classification approaches were evaluated:

- Logistic Regression
- Random Forest Classifier
- Balanced Logistic Regression

### Five-Fold Cross-Validation Results

| Model | Accuracy | Precision | Recall | F1 Score | ROC-AUC |
|---|---:|---:|---:|---:|---:|
| Logistic Regression | 89.03% | 77.63% | 44.21% | 56.10% | 83.92% |
| Random Forest | 86.14% | 87.62% | 17.37% | 28.35% | 80.43% |
| Balanced Logistic Regression | 75.34% | 37.21% | 73.68% | 49.25% | 82.73% |

Logistic Regression achieved the highest cross-validation F1 Score and ROC-AUC among the evaluated models.

Balanced Logistic Regression provided higher recall, making it an alternative when identifying more potential attrition cases is the priority.

### Logistic Regression Test Results

- Accuracy: 86.05%
- Precision: 61.54%
- Recall: 34.04%
- F1 Score: 43.84%
- ROC-AUC: 81.15%

## Feature Coefficient Analysis

Logistic Regression coefficients indicated associations between attrition predictions and factors such as overtime, business travel, job role, environment satisfaction, and working experience.

These are model associations, not evidence of causation.

## Project Files

- `Employee_Attrition_Analysis.ipynb` — Machine learning analysis and modeling
- `employee_attrition_analysis.sql` — SQL analysis
- `WA_Fn-UseC_-HR-Employee-Attrition.csv` — Original dataset
- `model_comparison_results.csv` — Cross-validation metrics
- `employee_attrition_model.pkl` — Saved Logistic Regression pipeline
- `requirements.txt` — Python dependencies

## How to Run

1. Clone or download this repository.
2. Install dependencies:

   `pip install -r requirements.txt`

3. Open `Employee_Attrition_Analysis.ipynb` in Jupyter Notebook or VS Code.
4. Run the notebook cells in order.

## Limitations

- The dataset represents a sample HR analytics scenario.
- Class imbalance affects prediction performance.
- The reported results are experimental and do not establish real-world deployment performance.
- The model should not be used to make employment decisions without appropriate validation and safeguards.

## Conclusion

This project demonstrates an end-to-end employee attrition analysis workflow combining SQL, Python, and machine learning. Logistic Regression achieved the strongest overall cross-validation F1 Score, while class balancing improved recall at the expense of precision.