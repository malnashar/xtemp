import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class Profile extends StatelessWidget {
  final Map<String,String>drug;
  Profile({this.drug});

  /*var fields = [
    {
      "title": "Generic Name",
      "det": "Sildenafil",
    },
    {
      "title": "Trade Name",
      "det": "Viagra",
    },
    {
      "title": "Indications",
      "det": "Pulmonary hypertension",
    },
    {
      "title": "Dose",
      "det": "5 mg to 20 mg PO 3 times daily (adults) \n"
          "Children weighing more than 10kg: 20mg PO 3 times daily \n"
          "Children weighing less than 10kg: 10mg PO 3 times daily",
    },
    {
      "title": "Ingredients",
      "det": "Drug : Sildenafil 100 mg tablet. \n"
          "Excipients : Ora plus 25ml \n"
          "Ora sweet or Ora sweet SF up to 50 ml",
    },
    {
      "title": "Preparation (Instructions)",
      "det": "The tablet can be ground to a fine, uniform "
          "powder in a pestle and mortar. A small amount of Ora-Plus may be added to form a"
          " paste, before adding further portions of Ora-Plus up to 50% of the final volume. "
          "Transfer to a measuring cylinder. The Ora-Sweet can be used to wash out the pestle and mortar of "
          "any remaining drug before making the suspension up to 100% volume. Transfer to an amber medicine bottle.",
    },
    {
      "title": "Packaging & Storage",
      "det": "Amber coloured bottles \n"
          "stored at 4◦ Celsius"
          ,
    },
    {
      "title": "Assessment Criteria",
      "det": "assessment physical observation and physical stability (discoloration, mold growth, foreign materials)"

    },
    {
      "title": "Stability",
      "det": "Tuleu et al. (2003) also reported that the suspension remained physically and microbiologically ‘stable’ for six months when stored at 4C. Sildenafil citrate h"

    },
    {
      "title": "Beyond-use date",
      "det": "Shelf life is 28 days"

    },
    {
      "title": "Monitoring Parameters",
      "det": "Blood pressure \n"
          "Heart Rate"

    },
    {
      "title": "Precautions",
      "det": "Shake bottle before use"

    },
    {
      "title": "References",
      "det": "https://pdr.net/drug-summary/Tracleer-bosentan-2062 \n"
          " https://pdr.net/drug-summary/Orenitram-treprostinil-3416 \n"
          " Handbook of Extemporaneous Preparations page 363 \n"
          "https://med.stanford.edu/wallcenter/patient_care/patient-resources/fda.html"

    },
  ];*/

  /*var fields = [
    {
      "title": "Generic Name",
      "det": "Sildenafil",
    },
    {
      "title": "Trade Name",
      "det": "Viagra",
    },
    {
      "title": "Indications",
      "det": "Pulmonary hypertension",
    },
    {
      "title": "Dose",
      "det": "5 mg to 20 mg PO 3 times daily (adults) \n"
          "Children weighing more than 10kg: 20mg PO 3 times daily \n"
          "Children weighing less than 10kg: 10mg PO 3 times daily",
    },
    {
      "title": "Ingredients",
      "det": "Drug : Sildenafil 100 mg tablet. \n"
          "Excipients : Ora plus 25ml \n"
          "Ora sweet or Ora sweet SF up to 50 ml",
    },
    {
      "title": "Preparation (Instructions)",
      "det": "1. 10-mg/ml oral suspension can be prepared by emptying contents of 10 x 50-mg capsules into a mortar. \n"
          "2. Add a small amount (2 ml) of glycerin. \n"
          "3. Levigate the mixture to make a thick paste. \n"
          "4. Add 10 ml of strawberry syrup by geometric proportion. \n"
          "5. Levigate until a uniform mixture is obtained. \n"
          "6. Transfer the mixture to an amber glass bottle. \n"
          "7. Add a sufficient quantity of strawberry syrup to a final volume of 50 ml by repeatedly rinsing the mortar and pestle with small amounts of the syrup. \n"
          "8. Label “shake well” and “protect from light”.",
    },
    {
      "title": "Packaging & Storage",
      "det": "Amber coloured bottles \n"
          "stored at 4◦ Celsius"
      ,
    },
    {
      "title": "Assessment Criteria",
      "det": "assessment physical observation and physical stability (discoloration, mold growth, foreign materials)"

    },
    {
      "title": "Stability",
      "det": "Tuleu et al. (2003) also reported that the suspension remained physically and microbiologically ‘stable’ for six months when stored at 4C. Sildenafil citrate h"

    },
    {
      "title": "Beyond-use date",
      "det": "Shelf life is 28 days"

    },
    {
      "title": "Monitoring Parameters",
      "det": "Blood pressure \n"
          "Heart Rate"

    },
    {
      "title": "Precautions",
      "det": "Shake bottle before use"

    },
    {
      "title": "References",
      "det": "https://pdr.net/drug-summary/Tracleer-bosentan-2062 \n"
          " https://pdr.net/drug-summary/Orenitram-treprostinil-3416 \n"
          " Handbook of Extemporaneous Preparations page 363 \n"
          "https://med.stanford.edu/wallcenter/patient_care/patient-resources/fda.html"

    },
  ];*/

  /*var drugs =
  {
    {
      'Generic Name':'Acetazolamide',
      'Trade Name':'Cidamex',
      'Indications':'1) Reduction of intra-ocular pressure in open-angle glaucoma,secondary glaucoma and peri-operatively in angle-closure Glaucoma.\n'
          '2) A second line drug for both tonic-clonic and partial seizures and occasionally in atypical absence, atonic and tonic seizures and centrencephalic epilepsy.\n'
          '3) As adjunctive treatment of edema due to congestive heart failure and drug induced oedema.\n'
          '4) As prophylaxis therapy against mountain sickness.',
      'Dose':'- Neonatal \n'
          'Metabolic alkalosis: Limited data available; dosing regimens variable: PMA ≥30 weeks: IV, Oral: 3 to 5 mg/kg/dose every 6 to 8 hours, commonly reported duration is 3 to 4 doses.\n'
          '- Pediatrics \n'
          'Glaucoma: Children <12 years: Limited data available: Oral: Immediate release: 10 to 30 mg/kg/day divided every 6 to 8 hours; maximum daily dose: 1,000 mg/day (Portellos 1998; Sabri 2006). Children ≥12 years and Adolescents: Oral:Immediate release: Limited data available: 15 to 30 mg/kg/day in divided doses every 6 to 8 hours; maximum daily dose: 1,000 mg/day.\n'
          'Epilepsy: short-term management: Limited data available: Infants, Children, and Adolescents: Oral: Immediate release: Usual range: 4 to 16 mg/kg/day in 3 to 4 divided doses; may titrate; maximum daily dose: 30 mg/kg/day (Reiss 1996).',
      'Ingredients':'Drug: Acetazolamide 250 mg (12 tablets). \n'
          'Excipients: And vehicle of choice up to 120 mL. \n'
          '- Ora-Sweet® : Ora-Plus® (1:1) or \n'
          '- Ora-Sweet SF® : Ora-Plus®(1:1) or \n'
          '- Ora-Blend SF® or \n'
          'Cherry syrup',
      'Preparation (Instructions)':'Preparing 25 mg/ml oral suspension of Acetazolamide: \n'
          '1) Triturate tablets to a fine powder in a mortar and pestle.\n'
          '2) Levigate with a small amount of base solution to form a paste.\n'
          '3) Add base solution in increasing amounts while mixing thoroughly.\n'
          '4) Transfer contents of the mortar to a measuring cylinder.\n'
          '5) Rinse the mortar and pestle with base solution and pour into the graduated cylinder.\n'
          '6) Add base solution to the graduated cylinder to achieve the total volume indicated above.\n'
          '7) Transfer contents of the graduated cylinder into an appropriate size amber bottle.\n'
          '8) Shake well to mix.\n'
          'Special Instructions: Mix 60 mL of Ora-Sweet with 60 mL of Ora-Plus. Use mixture as a base solution or use Ora-Blend. Shake well before use.',
      'Packaging & Storage':'Stored in plastic or glass Amber bottle and refrigerated (preferable) or at room temperature.',
      'Assessment Criteria':'Any changes in appearance, pH, odour and drug content should be monitored over a 60-day period. high-performance liquid chromatography (HPLC) using a reverse-phase column. A visual inspection and a pH measurement (Stability was defined as retention of at least 90% of the initial concentration of acetazolamide suspension.)',
      'Stability':'60 days , regardless of storage temperature( 5 C and at 25 C) and protected from light.',
      'Beyond-use date':'60 days',
      'Monitoring Parameters':'- CBC and platelet count: Obtain at baseline and check periodically during therapy.\n'
          '- Electrolytes: Periodically check, especially with long term use.\n'
          '- Intraocular pressure in glaucoma patients.\n'
          '- Monitor growth in pediatric patients',
      'Precautions':'Shake well, protect from light. \n'
          'Excipients/Preservatives Safety precautions for Neonates: \n'
          '- Sodium Benzoate in Cherry Syrup : Neonates appear to lack the capacity to conjugate with glycine. This leads to the build up of benzoic acid which can cause metabolic acidosis and neurotoxicity.\n'
          '- Methyl Paraben/Propyl Paraben in Ora-Sweet,Ora-Plus,Ora-Sweet SF,Ora-Blend SF: displace bilirubin-binding to albumin and may cause hyperbiliru-binemia in concentrations as low as 1.2 mg/kg.\n'
          'Adverse effects: - CNS effects: Impairment of mental alertness and/or physical coordination may occur.\n'
          '- Sulfonamide (“sulfa”) allergy: The FDA-approved product labeling for many medications containing a sulfonamide chemical group includes a broad contraindication in patients with a prior allergic reaction to sulfonamides. There is a potential for cross-reactivity between members of a specific class (eg, two antibiotic sulfonamides).',
      'References':'1) Mark Jackson,Andrew Lowey,The handbook of extemporaneous preparation,A guide to pharmaceutical Compounding,2010 \n'
          '2) Rita Jew, Winson Soo-Hoo, Sarah Erush, and Elham Amiri,Extemporaneous Preparation for Pediatric,Geriatric and Special Needs Patients(Third Edition),2016, American Society of Health-System Pharmacists.\n'
          '3) online.lexi.com',
    },

    {
      'Generic Name':'Allopurinol',
      'Trade Name':'Nouric',
      'Indications':'Gout or uric acid and calcium oxalate renal stones',
      'Dose':'1) Hyperuricemia associated with chemotherapy management: begin allopurinol 1 to 2 days before initiation of induction chemotherapy; may continue for 3 to 7 days after chemotherapy daily doses >300 mg should be administered in divided doses. \n'
          '2) Hyperuricemia associated with inborn errors of purine metabolism: Oral: Infants, Children, and Adolescents: Initial: 5 to 10 mg/kg/day; adjust dose to maintain a high-normal serum uric acid concentration and a urinary uric acid/creatinine ratio <1; reported range: 3.7 to 9.7 mg/kg/day; usual maximum daily dose: 600 mg/day.\n'
          '3) Recurrent calcium oxalate renal stones (including glycogen storage disease) Oral: Children and Adolescents: 4 to 10 mg/kg/day in divided doses 3 to 4 times daily; maximum daily dose: 300 mg/day',
      'Ingredients':'Drug: - allopurinol tablets 300 mg * 6\n'
          'OR \n'
          '-allopurinol tablets 100 mg * 2\n'
          'Excipients: -Ora-Plus to 50 mL\n'
          '-Ora-Sweet Sugar Free (SF) or Ora-Sweet to 100 mL \n'
          'OR \n'
          '1:4 mixture of cherry syrup concentrates and simple syrup',
      'Preparation (Instructions)':'1) Tablets can be ground to a fine, uniform powder in a pestle and mortar.\n'
          '2) A small amount of Ora-Plus may be added to form a paste, before adding further portions of Ora-Plus up to 50% of the final volume.\n'
          '3) Transfer to a measuring cylinder. The Ora-Sweet SF can be used to wash out the pestle and mortar before making the suspension up to 100% volume.\n'
          '4) Transfer to an amber medicine bottle.',
      'Packaging & Storage':'at room temperature in amber glass.',
      'Assessment Criteria':'- HPLC assay.\n'
          '- visual inspection or signs of caking or settling',
      'Stability':'all the suspensions maintained more than 95% of the initial concentration after 60 days, regardless of storage temperature or suspending agents',
      'Beyond-use date':'28 days',
      'Monitoring Parameters':'- CBC, serum uric acid levels every 2 to 5 weeks during dose titration until desired level is achieved and every 6 months thereafter. \n'
          '- liver function tests.\n'
          '- renal function. \n'
          '- Monitor hydration status, for signs and symptoms of  hypersensitivity, hepatotoxicity',
      'Precautions':'- Shake the bottle before use to improve dosage uniformity. \n'
          '- Final product is a thick, opaque, white suspension.\n'
          '- May substitute Ora-Plus/Ora-Sweet with Ora-Blend. \n'
          '- May also substitute Ora-Plus/Ora-Sweet with Ora-Plus/Ora-Sweet SF',
      'References':'- Handbook of extemporaneous preparations.\n'
          '-Lexicomp.',
    },

    {
      'Generic Name':'Aprepitant',
      'Trade Name':'Emend',
      'Indications':'Prevention of chemotherapy induced nausea.',
      'Dose':'- 6 months to 11 years: on day 1: 3 mg/kg 1 hour before chemotherapy (max 125mg).\n'
          '- On days 2 and 3: 2 mg/kg/ dose PO 1 hour before chemotherapy.\n'
          '- If combined with corticosteroid administer 50% of recommended dose.',
      'Ingredients':'Drug: 4 (125mg) capsules.\n'
          'Excipients: 50 ml of Ora-Blend. OR 50ml of (1:1 Ora-sweet/Ora-plus).',
      'Preparation (Instructions)':'1) Emptying the contents of 4 x 125-mg capsules into a mortar.\n'
          '2) Grind capsule contents to a fine powder using a pestle (takes 10–15 min). (Do not allow capsule 115 mg/10 ml contents to soak in Ora-Blend before grinding).\n'
          '3) Add small amount of Ora-blend to find powder and triturate to a smooth paste, ensuring that there are no lumps.\n'
          '4) Add more Ora-blend to make a liquid, then transfer to graduated cylinder.\n'
          '5) Rinse out mortar with Ora-blend then add to graduated cylinder.\n'
          '6) Then add sufficient quantity of Ora-blend to graduated cylinder to bring final volume to 25ml.\n'
          '7) Transfer to amber glass bottle.\n'
          '8) Label “shake well” and “refrigerate.',
      'Packaging & Storage':'Amber glass bottle. \n'
          'Refrigerated at 23◦C.',
      'Assessment Criteria':'- Physical assessment included pH, color change (against white and black backgrounds), taste, odor, consistency, formation of precipitates or clumping, and ease of resuspension.\n'
          'Chemical assessment using liquid chromatographic method with UV detection at 210 nm.',
      'Stability':'The extemporaneous aprepitant oral suspension formulation described is physically and chemically stable for at least 90 days when refrigerated.',
      'Beyond-use date':'90 days',
      'Monitoring Parameters':'Monitor for Bradycardia, Steven-Johnson syndrome.',
      'Precautions':'Do not allow capsule 115 mg/10 ml contents to soak in Ora-Blend before grinding.',
      'References':'Lam,M.S. (2011). Extemporaneous Compounding of Oral Liquid Dosage Formulations and Alternative Drug Delivery Methods for Anticancer Drugs. Pharmacotherapy, 31(2),164-192. Doi:10.1592/phco.31.2.164',
    },

    {
      'Generic Name':'Fluconazole',
      'Trade Name':'Diflucan',
      'Indications':'For the treatment of candidiasis.',
      'Dose':'- Prophylaxis: IV, Oral: 6 mg/kg/dose twice weekly.\n'
          'Treatment: IV, Oral: Initial: 25 mg/kg on day 1, followed by 12 mg/kg/dose once daily.',
      'Ingredients':'Drug: Fluconazole 100-mg tablet.\n'
          'Excipients: Sterile Water for Irrigation.',
      'Preparation (Instructions)':'1) Triturate tablet to a fine powder in a mortar and pestle.\n'
          '2) Levigate with a small amount of base solution to form a paste.\n'
          '3) Add base solution in increasing amounts while mixing thoroughly.\n'
          '4) Transfer contents of the mortar to a graduated cylinder.\n'
          '5) Rinse the mortar and pestle with base solution and pour into graduated cylinder.\n'
          '6) Add base solution to the graduated cylinder to achieve the total volume indicated above.\n'
          '7) Transfer contents of the graduated cylinder into an appropriate size amber bottle.\n'
          '8) Shake well to mix.',
      'Packaging & Storage':'Room Temp or Refrigerate in amber bottles.',
      'Assessment Criteria':'PH and viscosity measurement.',
      'Stability':'Stable in room temp.',
      'Beyond-use date':'15 days',
      'Monitoring Parameters':'- Periodic liver function (AST, ALT, alkaline phosphatase).\n'
          '- renal function tests.\n'
          '- serum potassium.\n'
          '- CBC with differential and platelet count.\n'
          '- conjugated bilirubin in neonates.',
      'Precautions':'- Shake well before use.\n'
          '- Caution reproductive hazards.\n'
          '- Hazardous drug: must be prepared in compliance with USP <800>.',
      'References':'- extemporaneous formulations for pediatric geriatric and special needs patients.\n'
          ' Lexicomp',
    },

    {
      'Generic Name':'cyclophosphamide',
      'Trade Name':'Endoxan',
      'Indications':'- Palliative intent chemotherapy (metronomic therapy).\n'
          '- Lupus nephritis.\n'
          '- Nephrotic syndrome.\n'
          '- Vasculitis, ANCA-associated.',
      'Dose':'1) Palliative intent chemotherapy (metronomic therapy):\n'
          '- Oral: 2.5 mg/kg once daily, maximum dose: 100 mg/dose for 21 days, alternating with a 21-day cycle of etoposide in combination with continuous thalidomide, celecoxib, and fenofibrate therapy.\n'
          '2) Lupus nephritis:- Oral: 1 to 1.5 mg/kg/day for 2 to 4 months.\n'
          '3) Nephrotic syndrome:- Oral: 2 mg/kg/day for 8 to 12 weeks.\n'
          '4) Vasculitis, ANCA-associated:- Oral: 2 mg/kg/day in combination with corticosteroids.',
      'Ingredients':'Drug: Cyclophosphamide 2 gram injection.\n'
          'Excipients: \n'
          '- Normal Saline injection 100 mL.\n'
          '- Simple Syrup NF 200 ml. ',
      'Preparation (Instructions)':'Hazardous drug—Must be prepared in compliance with USP.\n'
          '1) Reconstitute injectable powder with 100 mL of Sodium Chloride 0.9% Injection.\n'
          '2) Withdraw volume of injectable solution using a 60-mL syringe.\n'
          '3) Transfer the solution to a graduated cylinder.\n'
          '4) Add base solution to the graduated cylinder to achieve the total volume indicated above.\n'
          '5) Transfer contents of the graduated cylinder into an appropriate size amber bottle.\n'
          '6) Shake well to mix.',
      'Packaging & Storage':'- Refrigerate and store it in amber bottle.\n'
          '- Label: Shake Well, Refrigerate, Cytotoxic Material Handle Properly, Not for Injection.',
      'Assessment Criteria':'- An unpleasant or foul odor and the presence of turbidity in an oral liquid may result from microbial growth that could also adversely affect its appearance and palatability. 140–143 After an extemporaneous oral liquid formulation is prepared, the pharmacist should examine any change in the color, odor, or texture of the formulation.\n'
          '- A good suspension should have uniform particle-size distribution and viscosity. 143 If caking, difficulty in resuspending, crystal growth, microbial growth, or discoloration is observed, it may indicate instability, and the product should be discarded.',
      'Stability':'Stable 8 days at room temperature in Simple Syrup and 3 days in Ora-Plus.',
      'Beyond-use date':'56 days in refrigerator.',
      'Monitoring Parameters':'- CBC with differential and platelets, BUN, UA, serum electrolytes, serum creatinine.\n'
          '- Monitor for signs/symptoms of hemorrhagic cystitis or other urinary/renal toxicity, pulmonary, cardiac, and/or hepatic toxicity.',
      'Precautions':'- Chemotherapy – use appropriate precautions when handling and disposing.\n'
          '- Requires injectable cyclophosphamide and 0.9% sodium chloride.\n'
          '- May substitute Simple Syrup with Ora-Plus ( contraindicated in neonates).\n'
          '- The extemporaneous oral solution prepared directly from the injectables often produces a bitter or unpleasant taste. It is recommended that these drug solutions be mixed with orange or apple juice or flavored syrup before administration.\n'
          '- specialized oral syringes, not standard slip tip or Luer-Lock syringes, should always be used,  to prevent inadvertent intravenous administration.',
      'References':'- Extemporaneous Formulations for Pediatric, Geriatric and Special Needs Patients \n'
          '- https://www.drugs.com/ppa/cyclophosphamide.html \n'
          '- https://online.lexi.com/lco/action/doc/retrieve/docid/pdh_f/129621?cesid=anVSI8t7yvc&searchUrl=%2Flco%2Faction%2Fsearch%3Fq%3Dcyclophosphamide%26t%3Dname%26va%3Dcyclophosphamide#don',
    },

    {
      'Generic Name':'Amlodipine',
      'Trade Name':'Norvasc',
      'Indications':'Antianginal Agent; Antihypertensive Agent; Calcium Channel Blocker; Calcium Channel Blocker, Dihydropyridine',
      'Dose':'For the age <6 years: Oral: Initial: 0.1 mg/kg/dose once daily and titrate based on clinical response with a maximum daily dose: 0.6 mg/kg/day or 5 mg/day',
      'Ingredients':'Drug: Amlodipine 5 mg tablet, 50 tablets.\n'
          'Excipients: - Ora-Plus/Ora-Sweet 250 ml 1:1 mixture. (OR) - 1:1 mixture of simple syrup and 1% methylcellulose',
      'Preparation (Instructions)':'1) Crush fifty 5 mg tablets in a mortar and reduce to a fine powder.\n'
          '2) Add small portions of the chosen vehicle and mix to a uniform paste.\n'
          '3) mix while adding the vehicle in incremental proportions to almost 250 mL.\n'
          '4) transfer to a calibrated bottle, rinse mortar with vehicle, and add quantity of vehicle sufficient to make 250 mL.\n'
          '5) Label "shake well" and "refrigerate".',
      'Packaging & Storage':'- Package in tight, light-resistant containers.\n'
          '- Room Temperature or refrigerated.',
      'Assessment Criteria':'Quality-control assessment can include weight/volume, pH (approximately 4.6 for the “Ora” preparation and 6.5 to 7.0 for the syrup preparation), specific gravity, active drug assay, color, rheologic properties/pourability, physical observation, and physical stability (discoloration, foreign materials, gas formation, mold growth)',
      'Stability':'Stable for 56 days at room temperature or 91 days refrigerated.',
      'Beyond-use date':'91 days at 4 degrees C or 56 days at 25 degrees C.',
      'Monitoring Parameters':'Heart rate\n'
          'Blood pressure\n'
          'liver enzymes',
      'Precautions':'- Shake well before use.\n'
          '- avoid freezing and excessive heat; protect from light',
      'References':'- Nahata MC, MOrosco RS, Hipple TF. Stability of amlodipine besylate in two liquid dosage forms. J Am Pharm Assoc 1999;39: 375-7.\n'
          '- lexiComp.\n'
          '- https://pubmed.ncbi.nlm.nih.gov/10363465/ \n'
          '- https://www.drugs.com/ppa/amlodipine.html \n'
          '- https://www.medindia.net/drugs/drug-food-interactions/amlodipine.htm',
    },

    {
      'Generic Name':'propranolol',
      'Trade Name':'Inderal',
      'Indications':'Hypertension\n'
          'Tachyarrhythmias\n'
          'Thyrotoxicosis/Congenital hyperthyroidism',
      'Dose':'Neonatal dose:\n'
          '1-Hypertension: -Oral: Initial: 0.25 to 0.5 mg/kg/dose every 8 hours; increase dose slowly as needed and monitor heart rate; usual reported dose: 0.5 to 1 mg/kg/dose every 8 hours; usual maximum daily dose: 5 mg/kg/day, .\n'
          'IV: Initial: 0.01 mg/kg slow IV push over 10 minutes; may repeat every 6 to 8 hours as needed.\n'
          '2-Tachyarrhythmias: -Oral: Initial: 0.5 to 1 mg/kg/dose for 1 dose; then 1 mg/kg/dose every 6 to 8 hr.\n'
          '3-Thyrotoxicosis/Congenital hyperthyroidism: -Oral: 0.5 to 2 mg/kg/day in divided doses every 6 to 12 hours .\n'
          'Children and Adolescents: -Oral: Initial: 0.5 to 1 mg/kg/day in 3 divided doses; maximum daily dose: 4 mg/kg/day.',
      'Ingredients':'Drugs: Propranolol 40-mg tablet. 3 tablets \n'
          'Excipients: Simple Syrup NF. QSAD: 120 mL',
      'Preparation (Instructions)':'1) Triturate tablets to a fine powder in a mortar and pestle.\n'
          '2) Levigate with a small amount of base solution to form a paste.\n'
          '3) Add base solution in increasing amounts while mixing thoroughly.\n'
          '4) Transfer contents of the mortar to a graduated cylinder.\n'
          '5) Rinse the mortar and pestle with base solution and pour into graduated cylinder.\n'
          '6) Add base solution to the graduated cylinder to achieve the total volume indicated above.\n'
          '7) Transfer contents of the graduated cylinder into an appropriate size amber bottle.\n'
          '8) Shake well to mix.',
      'Packaging & Storage':'Storage Conditions: Room Temp.\n'
          'Container type: glass',
      'Assessment Criteria':'Physically: propranolol HCl was stable over 12 weeks at all temperatures tested. However, some formulations showed some physical changes, i.e. colour changes.\n'
          'Chemically: HPLC was validated in this method for determination of propranolol and sodium benzoate. The concentration of propranolol varied between 98.2-102.5% while sodium benzoate 98.1-103.3 %. Value of ph didn’t change.\n'
          'Microbiologically: It was proven the efficacy of the antimicrobial agent (sodium benzoate 0.05%), so it is stable for 3 months.',
      'Stability':'A suspension was considered stable if it maintained at least 90% of its initial concentration of propranolol.',
      'Beyond-use date':'238 days',
      'Monitoring Parameters':'In patients with hypertension, use of propranolol has been associated with elevated levels of serum potassium, serum transaminases and alkaline phosphatase. In severe heart failure, the use of propranolol has been associated with increases in Blood Urea Nitrogen.',
      'Precautions':'1) Abrupt discontinuation can result in the exacerbation of angina, myocardial ischemia or myocardial infarction, ventricular arrhythmias, or severe hypertension, especially in patients with preexisting cardiac disease. If chronic, oral propranolol therapy is to be discontinued, the dosage should be gradually decreased over a minimum of 2 weeks. \n'
          '2) Downward titration of parenteral therapy may be advisable if the patient will discontinue propranolol treatment. Patients and caregivers should be advised against interruption or cessation of therapy without the advice of a physician.\n'
          '3) If exacerbation of angina occurs during discontinuation of therapy, it is advised to reinstitute propranolol therapy and take other measures appropriate for the management of unstable angina.\n'
          '4) It should be used with caution in patients with impaired hepatic or renal function. It is not indicated for the treatment of hypertensive emergencies.\n'
          '5) Beta-adrenergic receptor blockade can cause reduction of intraocular pressure. Patients should be told that Inderal may interfere with the glaucoma screening test. Withdrawal may lead to a return of increased intraocular pressure.',
      'References':'- Extemporaneous Formulations for Pediatric, Geriatric and Special Needs Patient.\n'
          '- https://www.drugs.com/pro/inderal.html#s-42232-9 \n'
          '- https://www.pdr.net/drug-summary/Propranolol-Hydrochloride-Oral-Solution-propranolol-hydrochloride-2656#1 \n'
          '- https://espace.library.uq.edu.au/view/UQ:297997 \n'
          '- https://online.lexi.com/lco/action/doc/retrieve/docid/pdh_f/129960?cesid=5ne0iaQeGHL&searchUrl=%2Flco%2Faction%2Fsearch%3Fq%3Dpropranolol%26t%3Dname%26va%3Dpropranolol',
    },

    {
      'Generic Name':'furosemide',
      'Trade Name':'Lasix',
      'Indications':'it’s a medication used to treat fluid build-up due to heart failure, liver scarring, or kidney disease. It may also be used for the treatment of high blood pressure.',
      'Dose':'Neonates: \n'
          '- PMA <31 weeks: Usual dose: 1 mg/kg/dose; reported range: 0.5 to 2 mg/kg/dose every 24 hours. a longitudinal, pharmacokinetic study observed drug accumulation and increased risk of toxicity with doses >2 mg/kg/dose administered more frequently than every 24 hours.\n'
          '- PMA ≥31 weeks: Usual dose: 1 mg/kg/dose; reported range: 0.5 to 2 mg/kg/dose every 12 hours.\n'
          'Pediatrics: \n'
          'Oral: Infants, Children, and Adolescents \n'
          '- Intermittent dosing (acute): Initial: 2 mg/kg as a single dose; if ineffective may increase in 6 to 8 hours in increments of 1 to 2 mg/kg/dose; maximum dose: 6 mg/kg/dose.\n'
          '- Maintenance dosing (chronic): Limited data available: Initial: 0.5 to 2 mg/kg/dose every 6 to 24 hours; usual initial adultdose: 20 to 80 mg/dose; if initial dose ineffective, may increase dose in increments of 1 to 2 mg/kg/dose; maximum daily dose: 6 mg/kg/day not to exceed maximum adult daily dose: 600 mg/day; adjust dose to minimal effective dose for maintenance.\n'
          'Note: Smaller doses on a mg/kg basis may be needed in larger children, especially in those who are diuretic naive.',
      'Ingredients':'Drug: furosemide 1 mg.\n'
          'Excipients: \n'
          '- Furosemide 1 mg.\n'
          '- Simple Syrup.\n'
          '- QS: 100 mL.\n'
          'RX (for 100 ml)',
      'Preparation (Instructions)':'1) Calculate the quantity of each ingredient for the amount to be prepared.\n'
          '2) Accurately weigh or measure each ingredient.\n'
          '3) Mix the furosemide powder with a small quantity of simple syrup to form a smooth paste.\n'
          '4) Geometrically, add simple syrup to final volume.\n'
          '5) mixing well after each addition.\n'
          '6) Package and label.\n'
          'N.B: \n'
          '- Syrup is generally self-preserving as long as the sucrose concentration is maintained sufficiently high.\n'
          '- It is preservative-free and alcohol-free and is suitable for problematic patients, such as neonates.\n'
          '- according to the USP guidelines only 14 days expiry date can be proposed when a compounded liquid does not contain preservatives.\n'
          '- Furosemide is practically insoluble in water or dilute acids. It is freely soluble in solutions of alkali hydroxides and sparingly soluble in alcohol.',
      'Packaging & Storage':'- Furosemide should be packaged in well-closed containers and stored at room temperature.\n'
          '- Furosemide is subject to photo degradation by several mechanisms; consequently, it should be preserved in light-resistant containers. This photo degradation is minimized at pH 7, and the degradation rate increases as the pH becomes more acidic or basic.',
      'Assessment Criteria':'- Physical assessment: Physical observation and physical stability (discoloration, foreign materials, gas formation, mold growth).\n'
          '- weight/volume, pH, specific gravity.\n'
          '- active drug assay, color, rheologic properties/pourability.',
      'Stability':'A beyond-use date of 14 days when stored in a refrigerator may be used for this preparation.',
      'Beyond-use date':'14 days',
      'Monitoring Parameters':'- Assess fluid status. Monitor daily weight, intake and output ratios.\n'
          '- Monitor electrolytes (baseline and frequently during therapy), renal and hepatic function, serum glucose, and uric acid levels before and periodically throughout therapy.\n'
          '- Monitor BP and pulse before and during administration.\n'
          '- hearing (with high doses or extended duration).\n'
          '- Assess patient for skin rash frequently during therapy. Discontinue furosemide at first sign of rash.',
      'Precautions':'- Shake well before use & keep out of reach of children.\n'
          '- Contraindicated with Sulfonamide hypersensitivity, thiazide diuretic hypersensitivity.\n'
          '- Contraindicated with electrolyte imbalance.',
      'References':'- https://www.drugs.com/lasix.html \n'
          '- https://online.lexi.com/lco/action/doc/retrieve/docid/pdh_f/130112?cesid=4Q7jsCtROqa&searchUrl=%2Flco%2Faction%2Fsearch%3Fq%3Dfurosemide%26t%3Dname#dop \n'
          '- https://www.uspharmacist.com/article/furosemide-10-mg-ml-oral-suspension',
    },

    {
      'Generic Name':'ondansetron',
      'Trade Name':'Nausetron',
      'Indications':'For chemotherapy-induced nausea/vomiting prophylaxis (CINV prophylaxis) and radiation-induced nausea/vomiting prophylaxis (RINV prophylaxis).',
      'Dose':'0.8 mg/mL syrup',
      'Ingredients':'Drug: ondansetron.\n'
          'Excipients: Ora-Plus® (Paddock), any of the the following syrups: \n'
          '- Cherry syrup USP\n'
          '- Syrpalta® (HUMCO)\n'
          '- Ora-Sweet® (Paddock)\n'
          '- Ora-Sweet® Sugar-Free (Paddock)',
      'Preparation (Instructions)':'- 0.8 mg/mL syrup may be made with ondansetron tablets, Ora-Plus® (Paddock), and any of the the following syrups: Cherry syrup USP, Syrpalta® (HUMCO), Ora-Sweet® (Paddock), or Ora-Sweet® Sugar-Free (Paddock).\n'
          '- Crush ten 8 mg tablets in a mortar and reduce to a fine powder (flaking of the tablet coating occurs).\n'
          '- Add 50 mL Ora-Plus® in 5 mL increments, mixing thoroughly; mix while adding the chosen syrup in incremental proportions to almost 100 mL.\n'
          '- transfer to a calibrated bottle, rinse mortar with syrup, and add sufficient quantity of syrup to make 100 mL.',
      'Packaging & Storage':'Label "shake well" and "refrigerate" and Stable for 42 days refrigerated',
      'Assessment Criteria':'visually for caking and discoloration',
      'Stability':'42 days when refrigerated Shake well, refrigerate.',
      'Beyond-use date':'42 days.',
      'Monitoring Parameters':'ECG (if applicable in high-risk or elderly patients); potassium, magnesium. Monitor for signs of serotonin syndrome; monitor for decreased bowel activity.',
      'Precautions':'Do not disperse the tablets or solution in grapefruit juice.',
      'References':'- Online lexicomp \n'
          '- https://www.pdr.net/drug-summary/Ondansetron-ondansetron-hydrochloride-3428#8',
    },

    {
      'Generic Name':'oseltamivir',
      'Trade Name':'Tamiflu',
      'Indications':'Influenza type A and B and H1N1',
      'Dose':'1) Infants ≤8 months: Oral: 3 mg/kg/dose twice daily.\n'
          '2) Infants ≥9 months: Oral: 3.5 mg/kg/dose twice daily.\n'
          '3) Children and Adolescents:\n'
          '- ≤15 kg: Oral: 30 mg twice daily.\n'
          '- >15 to 23 kg: Oral: 45 mg twice daily.\n'
          '- >23 to 40 kg: Oral: 60 mg twice daily.\n'
          '- >40 kg: Oral: 75 mg twice daily.',
      'Ingredients':'Drug: Oseltamivir 75 mg.\n'
          'Excipients:\n'
          ' -Water.\n'
          ' -Cherry Syrup.',
      'Preparation (Instructions)':'1) Place water into a plastic or glass amber bottle.\n'
          '2) Carefully separate the capsules and pour the contents into the bottle. Weighing paper may also be used to hold capsule contents for ease of transfer.\n'
          '3) Gently swirl the suspension to ensure adequate wetting of the powder for at least 2 minutes.\n'
          '4) Slowly add vehicle to the bottle.\n'
          '5) Close the bottle and shake well for 30 seconds to completely dissolve the active drug.\n'
          '6) Once dissolved, mix gently to avoid air entrapment and inaccurate dosing due to excessive air bubbles',
      'Packaging & Storage':'Refrigerate up to 35 days, light resistant bottle.',
      'Assessment Criteria':'Quality-control assessment can include weight/volume, pH, specific gravity, active drug assay, color, rheologic properties/pourability, physical observation, and physical stability (discoloration, foreign materials, gas formation, mold growth).',
      'Stability':'1) Stable for 35 days at 2C to 8C ( refrigerator).\n'
          '2) Stable for 5 days at room temperature.',
      'Beyond-use date':'Shelf life: 35 days',
      'Monitoring Parameters':'1) Well absorbed passes hepatic metabolism by (90%) with no effect o CPY450 system, urine excretion (99%).\n'
          '2) Protein binding of the oseltamivir carboxylate(3%), the oseltamivir (42%).\n'
          '3) Clearance of the pro drug and its metabolite I children below 12 years faster resulting in a lower drug exposure.\n'
          '4) Signs or symptoms of unusual behavior, including attempts at self- injury, confusion, and/or delirium.\n'
          '5) Critically-ill patients: Repeat rRT-PCR or viral culture may help to.',
      'Precautions':'1) May also use Ora-Sweet SF or Simple Syrup in place of cherry syrup.\n'
          '2) Shake well before use.',
      'References':'1) Lexi comp.\n'
          '2) Formulary of Extemporaneous Oral Liquid Medications.\n'
          '3) https://www.uspharmacist.com/article/tamiflu-oral-suspension.',
    },

    {
      'Generic Name':'Spironolactone',
      'Trade Name':'Aldactone',
      'Indications':'- For the treatment of hypertension.\n'
          '- For the treatment of heart failure.\n'
          '- For the treatment of edema (e.g., due to nephrotic syndrome, congestive heart failure, or hepatic cirrhosis).\n'
          '- For the treatment of pulmonary edema† due to chronic lung disease (CLD)†.',
      'Dose':'- Bronchopulmonary dysplasia (BPD): Infants: Oral: 1.5 mg/kg/dose every 12 hours.\n'
          '- Edema (diuresis): Infants, Children, and Adolescents: Oral: Initial: 1 to 3 mg/kg/day divided every 6 to 24 hours; titrate as needed; reported maximum daily dose range: 4 to 6 mg/kg/day in divided doses every 6 to 12 hours or 400 mg/day, whichever is less.\n'
          '- Hypertension: Limited data available: Infants, Children, and Adolescents: Oral: Initial: 1 mg/kg/day divided every 12 to 24 hours; titrate as needed up to a maximum daily dose: 3.3 mg/kg/day or 100 mg/day, whichever is less.\n'
          '- Primary aldosteronism (caused by adrenal hyperplasia), treatment: Limited data available: Infants, Children, and Adolescents: Oral: 1 to 3 mg/kg/day; maximum daily dose: 100 mg/day.',
      'Ingredients':'Drug: Spironolactone 25mg.\n'
          'Excipients: \n'
          '- Simple syrup 40mL.\n'
          '- Water for injection 5mL.',
      'Preparation (Instructions)':'1) Crush 4 tablets in a mortar to form fine paste.\n'
          '2) Levigate the powder with sterile water for injection until smooth paste is formed.\n'
          '3) Add simple syrup to the paste until liquid is formed and transfer the liquid into a container.\n'
          '4) Use additional simple syrup to rinse the remaining drug from the mortar and pour into the container.\n'
          '5) Make up to final volume with simple syrup.\n'
          '6) Shake well and label.',
      'Packaging & Storage':'- Refrigerate (preferable) or at room temperature.\n'
          '- Keep in an amber bottle.',
      'Assessment Criteria':'- Physical stability for all preparations the pH and viscosity were tested and visual (color) observations were performed during stability. Physical stability was defined as the absence of either visible color or appearance changes.\n'
          '- Microbiological stability the samples were subjected to microbiological evaluation.',
      'Stability':'Protect from light, Room Temp or Refrigerate',
      'Beyond-use date':'60 days',
      'Monitoring Parameters':'Blood pressure, serum electrolytes (potassium, sodium), renal function, I & O ratios and daily weight throughout therapy',
      'Precautions':'Caution hazardous drug, Shake well before use',
      'References':'- Extemporaneous FORMULATION, PHARMACEUTICAL SERVICES DIVISION Ministry of Health Malaysia Pharmaceutical Services Division Ministry of Health Malaysia Lot 36, Jalan Universiti, 46350 Petaling Jaya, Selangor.\n'
          '- Extemporaneous formulations for pediatric, Geriatric, and special patients ASHP publication.\n'
          '- https://online.lexi.com/lco/action/doc/retrieve/docid/multinat_f/4669048?cesid=69tkgXOD2fi&searchUrl=%2Flco%2Faction%2Fsearch%3Fq%3DSpironolactone%26t%3Dname%26va%3DSpironolactone#dop',
    },

    {
      'Generic Name':'Thioguanine',
      'Trade Name':'Lanvis',
      'Indications':'Treatment (remission induction and consolidation) of acute myeloid (nonlymphocytic) leukemia (AML).The use of thioguanine for AML maintenance therapy or other similar long-term continuous treatments is not recommended due to the high risk of hepatotoxicity.',
      'Dose':'1) Acute lymphoblastic leukemia (ALL): Limited data available: Delayed intensification treatment phase: Children ≥1 year and Adolescents: Oral: 60 mg/m 2 /dose once daily for 14 days.\n'
          '2) Acute myeloid leukemia (AML): \n'
          '- Infants and Children <3 years: Oral: 3.3 mg/kg/day divided once or twice daily for 4 days in combination with cytarabine and daunorubicin. Children ≥3 years and Adolescents: Oral: 100 mg/m 2 /day divided once or twice daily for 4 days in combination with cytarabine and daunorubicin.\n'
          '- Manufacturer\'s labeling: Infants, Children, and Adolescents: Oral: 2 mg/kg once daily for 4 weeks; if no clinical improvement after 4 weeks and ANC and platelet counts are not depressed, may increase dose to 3 mg/kg once daily with careful monitoring.\n'
          '3) Acute myeloid leukemia (AML)/myelodysplastic syndrome (MDS) with Down syndrome: Limited data available: DCTER regimen: Induction.\n'
          '4) CNS Tumors, low grade gliomas: Limited data available (Ater 2012): TPCV regimen: Children <10 years: Oral: 30 mg/m 2 every 6 hours x 11 doses (from hours 0 to 66) in a 42-day cycle for a total of 8 cycles (in combination with procarbazine, lomustine, and vincristine).\n'
          '- dose adjustment is needed in the case of TPMT and/or NUDT15 deficiency.',
      'Ingredients':'Drug: 15 tablets of Thioguanine 40 mg.\n'
          'Excipients: Ora-plus and Ora-sweet (qs) OR methylcellulose 1% and simple syrup (qs).',
      'Preparation (Instructions)':'- Hazardous agent: Use appropriate precautions for handling and disposal.\n'
          '- Ora-Plus and Ora-Sweet:\n'
          '1) Crush fifteen 40 mg thioguanine tablets in a mortar and reduce to a fine powder.\n'
          '2) Add 5 mL of Ora-Plus in incremental proportions and mix to a uniform paste.\n'
          '3) Transfer to a graduated amber glass bottle, rinse mortar with Ora-Sweet and add sufficient quantity to make 30 mL.\n'
          '4) Label "shake well." Stable for 63 days at room temperature.\n'
          '- Methylcellulose and simple syrup:\n'
          '1) Crush fifteen 40 mg thioguanine tablets in a mortar and reduce to a fine powder.\n'
          '2) Add 3.33 mL of methylcellulose 1% in incremental proportions and mix to a uniform paste.\n'
          '3) Transfer to a graduated amber glass bottle, rinse mortar with simple syrup and add sufficient quantity to make 30 mL.\n'
          '4) Label "shake well." Stable for 63 days at room temperature.',
      'Packaging & Storage':'- At room temperature\n'
          '- Keep in an amber bottle\n'
          '- Protect from moisture',
      'Assessment Criteria':'Quality-control assessment can include weight/volume, pH, specific gravity, active drug assay, color, rheologic properties/pourability, physical observation, and physical stability (discoloration, foreign materials, gas formation, mold growth)',
      'Stability':'Protect from light',
      'Beyond-use date':'- 63 days at room temperature\n'
          '- 84 days refrigerated',
      'Monitoring Parameters':'- BC with (differential, platelet count)\n'
          '- liver function tests (serum transaminases, alkaline phosphatase, bilirubin)\n'
          '- hemoglobin, hematocrit, serum uric acid\n'
          '- testing for thiopurine methyltransferase (TPMT) deficiency\n'
          '- clinical signs of portal hypertension or hepatic sinusoidal obstruction syndrome (SOS; veno-occlusive disease)',
      'Precautions':'Hazardous agent; use appropriate precautions for handling and disposal; thioguanine is potentially carcinogenic and teratogenic',
      'References':'- https://somepomed.org/articulos/contents/mobipreview.htm?0/59/958 \n'
          '- Formulary of Extemporaneous Oral Liquid Medication version 2. \n'
          '- https://www.drugs.com/ppa/thioguanine.html \n'
          '- LexiComp',
    },

    {
      'Generic Name':'',
      'Trade Name':'',
      'Indications':'',
      'Dose':'',
      'Ingredients':'',
      'Preparation (Instructions)':'',
      'Packaging & Storage':'',
      'Assessment Criteria':'',
      'Stability':'',
      'Beyond-use date':'',
      'Monitoring Parameters':'',
      'Precautions':'',
      'References':'',
    },
  };*/





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text(drug['Trade Name']),
        centerTitle: true,

      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: drug.length,
          itemBuilder: (BuildContext context, int index) {
            return c(context , drug.keys.elementAt(index), drug.values.elementAt(index));

          },

        ),
      ),
    );
  }


  Widget c(BuildContext context , String title , String det) {
    return  Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(20.0),
          ),
          //color: Colors.red,
          child: ExpansionCard(
            backgroundColor: Colors.transparent,
            borderRadius: 20.0,
            margin: EdgeInsets.all(5.0),
            //backgroundColor: Colors.red,
            title: Text(title,style: TextStyle(fontSize: 23.0,fontWeight: FontWeight.bold,color: Colors.white),),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 13.0 , right: 13.0),
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(det ,style: TextStyle(fontSize: 17.0,color: Colors.white),),
              )
            ],

          ),
        )
    );

  }
}

class Single_Profile extends StatelessWidget {
  final title;
  final details;

  Single_Profile({this.title, this.details,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionCard(
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Header",
              ),
              Text(
                "Sub",
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Text("Content goes over here !",
            ),
          )
        ],
      ),
    );

  }
}


