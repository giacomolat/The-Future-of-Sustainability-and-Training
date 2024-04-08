# The Future of Sustainability and Training
## Functional Requirements

### 1. Data Model
The following table shows the list of dimensional attributes available for each KPI:

<table><tbody>
<th valign="bottom">Dimensional Attributes</th>
<tr><td align="left">Company</td></tr>
<tr><td align="left">Company - Country</td></tr>
<tr><td align="left">Material Group</td></tr>
<tr><td align="left">Supplier</td></tr>
<tr><td align="left">Supplier - Country</td></tr>
<tr><td align="left">Supplier – Parent Company</td></tr>
<tr><td align="left">Year – Month – Quarter - Semester</td></tr>
</tbody></table>

The Supplier dimension is the only one that is historicized in order to keep track of any changes

### 2. KPI
Below are the KPIs that will be available in the data model:

| **ID** | **1.1** |
| :--- | :--- |
| **Name** | *List of Strategic Suppliers Year by Year* |
| **Description** | A Supplier is considered as “strategic” for a certain company and for a certain period if it is in the top set of suppliers by invoice for a certain company. The top set is the set of suppliers which generate the 80% of Total Invoicing for a Company referenced in the Reporting Year. Therefore, Supplier Strategic List includes all suppliers who must reach the threshold of 80% of the Company’s total invoice referenced in the Reporting Year |

| **ID** | **2.1** |
| :--- | :--- |
| **Name** | *Total Invoicing (€)* |
| **Description** | The KPI is the overall invoiced value. The data in the source table are expressed in local currency so the data must be converted using exchange rates. The link between exchange rates and Invoicing is by currency and period |

| **ID** | **3.1** |
| :--- | :--- |
| **Name** | *Total Number of Suppliers* |
| **Description** | The KPI reports the total number of suppliers with an invoiced value greater than 0 in the period |

| **ID** | **4.1** |
| :--- | :--- |
| **Name** | *Number of Suppliers engaged in training initiatives* |
| **Description** | The KPI reports the number of suppliers engaged in training initiatives with an invoiced value greater than 0 in the period. The “Training flag” for each supplier is calculated considering the following logics: If the supplier has trained with at least one Company, then the training applies to all companies that purchased from that supplier. Furthermore, training conducted by a supplier is valid from the year it was carried out and in the following years |

| **ID** | **4.2** |
| :--- | :--- |
| **Name** | *Total Invoicing (€) of suppliers engaged in training initiatives* |
| **Description** | The KPI reports the total invoicing of suppliers engaged in training initiatives. The “Training flag” for each supplier is calculated as for KPI 4.1 |

| **ID** | **4.3** |
| :--- | :--- |
| **Name** | *% of Invoicing (€) of suppliers engaged in training initiatives on total Invoicing* |
| **Description** | The KPI percentage of invoicing of suppliers engaged in training initiatives on total Invoicing. The “Training flag” for each supplier is calculated as for KPI 4.1: (Total Invoicing (€) of suppliers engaged in training initiatives)/(Total Invoicing (€))*100 |

| **ID** | **5.1** |
| :--- | :--- |
| **Name** | *Number of suppliers certified with Ecovadis* |
| **Description** | The KPI reports the number of suppliers certified with Ecovadis with an invoiced value greater than 0 in the period. A supplier is certified if it has an ecovadis score associated. The certification is valid from the published year and for the following two years. The certification applies to all companies that purchased from that supplier. If the supplier changes the score during the year, this is retroactive and applies for the whole year. The most recent score for the year is always considered. Ecovadis and Invoicing data are linked through the suppliers using a bridge table |

| **ID** | **5.2** |
| :--- | :--- |
| **Name** | *Total Invoicing (€) of suppliers certified with Ecovadis* |
| **Description** | The KPI reports the total invoicing of suppliers certified with Ecovadis. The rules of the certification are the same as the KPI 5.1 |

| **ID** | **5.3** |
| :--- | :--- |
| **Name** | *% of Invoicing (€) of suppliers certified with Ecovadis on total Invoicing* |
| **Description** | The KPI percentage of invoicing of suppliers certified with Ecovadis on total Invoicing. The rules of the certification are the same as the KPI 5.1: (Total Invoicing (€) of suppliers certified with Ecovadis )/(Total Invoicing (€)) |

| **ID** | **5.4** |
| :--- | :--- |
| **Name** | *Average Ecovadis score* |
| **Description** | The KPI represents the average score of all suppliers certified with Ecovadis that have an invoiced value grater than 0 |

## Activity plan
- *Step n'1*: Data analysis on Oracle DB
- *Step n'2*: Identify facts, dimensions and metrics (KPIs)
- *Step n'3*: Creation of the Dimensional Fact Model (DFM) using Indyco
- *Step n'4*: Creation of the Logical Model, starting from the DFM, using Oracle SQL Developer Data Modeler
- *Step n'5*: Flow planning via draw.io
- *Step n'6*: Creating ETL flows using Microsoft Azure Data Factory
- *Step n'7*: Creating Dashboard using Microsoft Power BI and DAX

## Project Previews
### Conceptual Modelling with [Indyco](https://www.iconsulting.biz/indyco/)
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/1a585b1a-a238-4305-a81b-1e35604dec22)

For more details, see the following folder: [1. Conceptual Modelling with Indyco](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/tree/main/1.%20Conceptual%20Modelling%20with%20Indyco)

### Logical Modelling with [Oracle SQL Developer Data Modeler](https://www.oracle.com/database/sqldeveloper/technologies/sql-data-modeler/)
**Logical Model:**
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/797f4a41-8d17-4da2-b8cd-c7e03fce8129)

**Relational Model:**
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/7f994456-0c3a-4989-af4b-8503ecb78622)

For more details, see the following folder: [2. Logical Modelling with Oracle Data Modeler](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/tree/main/2.%20Logical%20Modelling%20with%20Oracle%20Data%20Modeler)

### Enterprise Data Warehouse (EDWH): Wooden, Silver and Golden layers Architecture with draw.io
Preview only the Invoiced Fact Table flow, with Wooden, Silver and Golden layers
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/374d2245-e383-4b6a-9d45-e48588937f18)

For more details, including of other flows, see the following folder: [3. EDWH - Wooden Silver and Golden Layers Architecture with Drawio](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/tree/main/3.%20EDWH%20-%20Wooden%20Silver%20and%20Golden%20Layers%20Architecture%20with%20Drawio)

### Extract Transform and Load (ETL) flows using Microsoft Azure Data Factory
Preview only the Invoiced Fact Table ETL flow (Golden layer)
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/4aff1dba-ae55-4f3a-bb84-6342f12d66e5)

![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/1ebbd2ca-9ca3-401a-bd8e-5ee0584da1c3)

For more details, including of other ETL flows, see the following folder: [4. ETL Processes - Pipelines with Microsoft Azure Data Factory](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/tree/main/4.%20ETL%20Processes%20-%20Pipelines%20with%20Microsoft%20Azure%20Data%20Factory)

### Data Analytics & Visualization using Microsoft Power BI and DAX 
*First page*: KPIs
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/9e603cf3-4c57-4759-bd77-eaf2a6b9a57d)

*Second page:* Material Group
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/2b924c3b-4e72-4389-b3ce-7c9df6d5ad27)

*Third page:* Supplier History
![image](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/assets/105134422/d35eaf84-b873-47e3-8734-ab8efbc0d6c8)

For more details, including the csv files associated with the model tables, see the following folder: [5. Data Analytics&Visualization with Microsoft Power BI and DAX](https://github.com/giacomolat/The-Future-of-Sustainability-and-Training/tree/main/5.%20Data%20Analytics%26Visualization%20with%20Microsoft%20Power%20BI%20and%20DAX)
