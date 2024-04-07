# The-Future-of-Sustainability-and-Training
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

The Supplier dimension is the only one that is historicized in order to keep track of any changes.

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
