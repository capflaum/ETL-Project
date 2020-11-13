DROP TABLE IF EXISTS states;
DROP TABLE IF EXISTS diversity;

CREATE TABLE states (
	"State" VARCHAR(30), 
	"Year" INT, 
	"Federal_Revenue" INT, 
	"State_Revenue" INT,
	"Local_Revenue" INT,
    "Total_Expenditure" INT,
	"Instruction_Expenditure" INT,
    "Support_Services_Expenditure" INT,
	"Other_Expenditure" INT,
    "Capital_Outlay_Expenditure" INT, 
	"Grades_8_G" INT,
	"Grades_All_G" INT,
    "Avg_Math_8_Score" INT,
	"Avg_Reading_8_Score" INT
	);
	
CREATE TABLE diversity (
	"State" VARCHAR(30),
	"Diversity_Index" DECIMAL 
	);
	
SELECT * FROM states;
SELECT * FROM diversity;

SELECT diversity."State", diversity."Diversity_Index", states."Total_Expenditure"
    FROM diversity
    INNER JOIN states on diversity."State"=states."State"
    ORDER BY diversity."Diversity_Index";
