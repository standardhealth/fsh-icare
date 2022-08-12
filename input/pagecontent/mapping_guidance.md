### ICAREdata&reg; Questions to mCODE&trade; STU 2 Mapping Guidance

There are currently two ICAREdata questions, including:
* **Cancer Disease Status**, which maps to the mCODE CancerDiseaseStatus profile; and
* **Cancer Treatment Plan Change**, which maps to the CarePlanWithReview profile defined in this implementation guide.

The mapping details for each question are provided below.

#### Cancer Disease Status Question

The figure below shows the format of the ICAREdata Cancer Disease Status (CDS) question. 

<img src="CancerDiseaseStatusQuestionFormat.png" alt="Cancer Disease Status Question Format" width="40%" style="float:none; margin: 0px 0px 0px 0px;" />

This question maps to the mCODE Cancer Disease Status profile. For more information on the Cancer Disease Status profile, please consult the [mCODE specification](http://hl7.org/fhir/us/mcode/).

The *tumor evaluated* component of the ICAREdata CDS question maps to `CancerDiseaseStatus.focus` where *primary tumor(s)* should reference a resource compliant with the mCODE Primary Cancer Condition profile and *metastatic tumor(s)* should reference a resource compliant with the mCODE Secondary Cancer Condition profile. 

The *status value* component of the ICAREdata CDS question maps to `CancerDiseaseStatus.value[x]` with a code from the [Condition Status Trend Value Set](http://hl7.org/fhir/us/mcode/ValueSet-mcode-condition-status-trend-vs.html). The table below shows the mapping between the ICAREdata *status* values and the corresponding codes from the mCODE value set. 

| ICAREdata Status value | Code | Code Description |
|---|:---:|---|
| No evidence of disease[^1]| 550991000124107 | Malignant neoplasm in full remission (disorder) |
| Responding | 268910001 | Patient condition improved (finding) |
| Stable | 359746009 | Patient's condition stable (finding) |
| Progressing | 271299001 | Patient's condition worsened (finding) | 
| Undetermined | 709137006 | Patient condition undetermined (finding) |
| Not evaluated | DataAbsentReason.not-asked | Not Asked |
{: .grid }
[^1]: In mCODE STU1, the code for status *No evidence of disease* is 260415000


The *reason value* component of the ICAREdata CDS question maps to `CancerDiseaseStatus.mcode-cancer-disease-status-evidence-type` with a code from the [Cancer Disease Status Evidence Type Value Set](http://hl7.org/fhir/us/mcode/ValueSet-mcode-cancer-disease-status-evidence-type-vs.html). The table below shows the mapping between the ICAREdata *reason* values and the corresponding codes from the mCODE value set. 

| ICAREdata Reason value | Code | Code Description |
|---|:---:|---|
| Imaging | 363679005 | Imaging (procedure) |
| Pathology | 252416005 | Histopathology test (procedure) |
| Symptoms[^2] | 409060008 | Evaluation for signs and symptoms of physical health problems (procedure) |
| Physical exam | 5880005 | Physical examination procedure (procedure) |
| Lab results | 386344002 | Laboratory data interpretation (procedure) |
{: .grid }
[^2]: In mCODE STU1, the code for reason *Symptoms* is 711015009

For CDS, ICAREdata additionally requires the date the disease status was observed, which maps to `CancerDiseaseStatus.effective[x]`.

#### Cancer Treatment Plan Change Question

The figure below shows the format of the ICAREdata Cancer Treatment Plan Change (CTPC) question. 

<img src="TreatmentPlanChangeQuestionFormat.png" alt="Cancer Treatment Plan Change Question Format" width="40%" style="float:none; margin: 0px 0px 0px 0px;" />

This question maps to the CodeX ICAREdata FHIR profile CarePlanWithReview defined in this implementation guide.

The allowable values for the CTPC question include information about whether a treatment change was made, as well as a reason, when a change did take place. In the CarePlanWithReview profile, this translates into two separate elements: one that captures whether a change took place, and another that holds the reason for the change. 

When there is *no change* in treatment plan `CarePlanWithReview.carePlanReview.ChangedFlag = false`.

When *yes* change in treatment plan `CarePlanWithReview.carePlanReview.ChangedFlag = true`, and a *reason code* is specified using `CarePlanWithReview.carePlanReview.CarePlanChangeReason`. 

The table below shows the mapping between the ICAREdata *CTPC* values to the reason codes from the [Care Plan Change Reason Value Set](ValueSet-icare-care-plan-change-reason-vs.html).

| ICAREdata CTPC value | Code | Code Description |
|---|:---:|---|
| yes-disease-not-responding | 266721009 | Absent response to treatment (situation) |
| yes-due to AE/toxicity | 281647001 | Adverse reaction (disorder) |
| yes-planned change | 405613005 | Planned Procedure (situation) |
| yes-due to patient request | 182890002 | Patient requests alternative treatment (finding) |
| yes-due to other | 74964007 | Other (qualifier value) |
{: .grid }

For CTPC, ICAREdata additionally requires the date when the treatment change was noted, which maps to `CarePlanWithReview.carePlanReview.ReviewDate`.

#### mCODE STU 1 Notes
For ICAREdata implementations using mCODE STU 1, the code for some of the ICAREdata values changed in mCODE STU 2.