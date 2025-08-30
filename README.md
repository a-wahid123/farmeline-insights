
#  Farmerline Farmer Engagement Analytics

##  Overview
This project simulates and analyzes Farmerline’s operations — a Ghana-based agritech company that empowers smallholder farmers with digital tools. Using three integrated datasets (registration, orders, and training attendance), it captures the farmer journey from registration to training to input adoption.

The goal is to measure farmer engagement, identify adoption gaps, and provide insights to improve training effectiveness, input uptake, and regional inclusivity.

---

##  Objectives
- Track farmer demographics and registration profiles  
- Measure training participation and feedback  
- Analyze input orders by type, value, delivery status, and region  
- Calculate conversion rates from training to adoption  
- Identify seasonal and regional trends in demand  

---

##  Datasets
**FarmerRegistration**  
- Fields: `FarmerID`, `FullName`, `Gender`, `Age`, `Region`, `District`, `PhoneNumber`, `RegistrationDate`  
- Purpose: Farmer demographic and registration details  

**InputOrders**  
- Fields: `OrderID`, `FarmerID`, `InputType`, `Quantity`, `OrderDate`, `DeliveryStatus`, `Price (GHC)`  
- Purpose: Track farmer purchases and delivery outcomes  

**TrainingAttendance**  
- Fields: `TrainingID`, `FarmerID`, `TrainingTopic`, `AttendanceDate`, `Location`, `Trainer`, `FeedbackScore`  
- Purpose: Farmer engagement in capacity-building programs  

*(Each dataset contained ~150+ records.)*

---

##  Process

### Data Preparation
- Generated CSV datasets with ChatGPT  
- Cleaned in Excel (duplicates, missing values, column renaming)  
- Removed units (kg, litres) and reformatted dates for SQL compatibility  

### Database Setup
- Imported datasets into SQL Server (after MySQL connection issues)  
- Defined primary and foreign keys for consistency  

### SQL Analysis
- Wrote 10 queries (Q1–Q10) covering demographics, orders, training, and conversion  
- Example: farmers by region, total order value, conversion rates by training → orders  

### Visualization
- Connected SQL Server to Power BI  
- Converted SQL logic into DAX measures where needed  
- Designed dashboard to showcase engagement, adoption, and revenue trends  

---

##  SQL Queries (Highlights)
- **Q1**: Farmers by Region  
- **Q2**: Gender Distribution  
- **Q3**: Average Age of Farmers  
- **Q4**: Total Value of All Orders  
- **Q5**: Orders by Delivery Status  
- **Q6**: Orders by Input Type  
- **Q7**: Attendance Count by Location  
- **Q8**: Average Feedback Score  
- **Q9**: Total Order Value by Region  
- **Q10**: Conversion Rate (Training → Orders, by Region)  

---

##  Dashboard (Power BI)
Key visuals include:  
- Farmer demographics (age, gender, region)  
- Orders by type, region, and delivery status  
- Training attendance and feedback  
- Seasonal trends in demand and attendance  
- Conversion rates from training to adoption  

![Framerline Dashboard Screenshot](image.png)

---

##  Insights
- **Farmer Profile**: Avg age = 33; Gender split = 50/50  
- **Training Participation**: Peaks in March–Sept, dip in October  
- **Conversion**: 130% overall; Bono East strong (100%), Eastern weaker (75%)  
- **Order Distribution**: Eastern & Volta dominate order value; input demand evenly split (~33% each)  
- **Seasonality**: Spikes in March & July (315 each), low in Sept (75)  

---

##  Recommendations
- Design gender- and youth-focused programs  
- Align training with peak cycles; offer refresher sessions off-season  
- Replicate Bono East/Central success in underperforming regions  
- Diversify revenue away from Eastern/Volta concentration  
- Plan logistics for seasonal spikes; offer promos during demand dips  

---

##  Repository Structure
```

farmerline\_project/
│
├── README.md                # Project documentation
├── sql/                     # Q1–Q10 SQL scripts
│   ├── q1\_farmers\_by\_region.sql
│   ├── q2\_gender\_distribution.sql
│   └── ...
│
├── data/                    # Anonymized sample datasets
│   ├── farmer\_registration.csv
│   ├── input\_orders.csv
│   └── training\_attendance.csv
│
├── images/                  # Dashboard screenshots
│   └── farmerline\_dashboard.png
│
├── dashboard/               # Power BI file (optional, .pbix)
│   └── farmerline\_dashboard.pbix
│
└── notion\_case\_study.md     # Polished long-form case study

```

---

👤 **Author**  
Prepared by Abdul Wahid Sekyere  
```

