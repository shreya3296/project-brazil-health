# **Closing the Health Gap in Brazil: Data-Led Infrastructure Expansion** 

### **Project Overview**
This project focuses on addressing healthcare disparities across municipalities in Brazil using a data-driven approach to evaluate the burden of disease and propose targeted infrastructure improvements. Although Brazil has made significant strides in improving health outcomes, unequal access to quality medical services remains a challenge. This project explores how a sophisticated, data-centric methodology can drive infrastructure expansion and reduce the health gap in underserved regions.

### **Data Sources**
The project utilizes an extensive array of public health datasets to ensure a comprehensive analysis:

- **Mortality Information System:** Contains detailed cause-of-death data categorized using ICD-10 codes.
- **Hospitalizations Information System:** Provides municipal-level hospital admissions data.
Brazilian Census (2010): Offers socioeconomic, demographic, and living condition data at the municipality level.
- **National Health Survey (PNS):** Aggregates state-level subjective health conditions, used to predict health statuses for municipalities.

### **Technical Methodology**
1. **Constructing the Municipal Public Health Index (MPHI)**
The core of the project was developing the Municipal Public Health Index (MPHI), a composite indicator built from multiple data streams:

- Standardized Indicators: We standardized four key indicators—Deaths per capita, Hospitalizations per capita, Predicted Subjective Health, and Average Income—using z-scores.

- Aggregation Method: A linear combination of the standardized indicators was used to create the MPHI, providing a unified metric to assess the healthcare burden across municipalities.

  <img width="423" alt="Screenshot 2024-09-09 at 12 40 03 AM" src="https://github.com/user-attachments/assets/4b46a8bc-c4d4-4f42-9eab-448c9f249b26">

2. **Predicting Subjective Health Conditions using Machine Learning**
Given the absence of subjective health condition data at the municipal level, we leveraged advanced regression techniques to predict these conditions:

- LASSO Regression: We applied LASSO regression, a regularization technique that minimizes overfitting while selecting the most relevant features. LASSO was trained using socioeconomic, demographic, and living conditions from the 2010 Census to predict subjective health conditions at the municipality level.

- Feature Engineering: Key socioeconomic variables—including income levels, education attainment, healthcare access, and living conditions—were transformed into predictive features. We applied one-hot encoding to categorical variables and normalized continuous variables for uniform scaling.

- Model Evaluation: The performance of the LASSO regression model was evaluated using cross-validation to ensure generalizability across municipalities. The root mean square error (RMSE) and mean absolute error (MAE) were used to quantify prediction accuracy.

<img width="430" alt="Screenshot 2024-09-09 at 12 39 09 AM" src="https://github.com/user-attachments/assets/b8b84be5-fefc-432e-b2d1-b24307eca191">

3. **Infrastructure Gap Analysis Using Clustering and Group Comparisons**
To quantify healthcare disparities, we performed a rigorous analysis of healthcare infrastructure in municipalities categorized by their disease burden:

- K-Means Clustering: Municipalities were grouped into "frontier" (low burden) and "catching-up" (high burden) groups using K-Means clustering based on the MPHI. This allowed for more granular comparisons of healthcare infrastructure between these clusters.

- Healthcare Resource Analysis: For each cluster, we analyzed the distribution of medical infrastructure, including:
    - Healthcare Professionals: Counts of general practitioners, nurses, and pharmacists.
    - Medical Equipment: The availability of critical equipment like X-ray machines and ultrasounds.
    - Facility Utilization: Analysis of hospitals, health centers, and their usage rates.
 

      <img width="427" alt="Screenshot 2024-09-09 at 12 41 00 AM" src="https://github.com/user-attachments/assets/8ba7f100-f900-4859-9b21-865e99e67917">


### **Policy Simulation and Recommendations**
Based on the insights from the MPHI and infrastructure analysis, we used a policy simulation framework to explore the potential impacts of reallocating healthcare resources:

- **Resource Reallocation Models:** We modeled scenarios where municipalities with high disease burdens were provided additional healthcare professionals and medical equipment to assess the potential impact on mortality and hospitalization rates.

- **Scalability:** The model was built to be scalable across different regions, providing policymakers with a flexible tool to simulate the effects of different resource allocation strategies.

### **Key Findings**
Disparity in Disease Burden: The MPHI revealed significant health burdens in municipalities located primarily in the northeast and coastal regions of Brazil.

- **Infrastructure Deficiencies:** High-burden municipalities were found to have fewer healthcare professionals and less medical equipment, despite having more hospitals and health centers than their low-burden counterparts.

- **Policy Implications:** The simulation suggested that increasing the number of healthcare workers and essential medical equipment in high-burden municipalities would yield significant improvements in health outcomes.

