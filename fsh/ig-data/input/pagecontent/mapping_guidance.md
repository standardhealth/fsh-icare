<style type="text/css">
    .tg  {font-size:90%;border-collapse:collapse;border-spacing:0;border-color:#ccc;margin-left:auto; margin-right:auto; width:80%}
    .tg td{padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:bold;border-top-width:1px;border-bottom-width:1px;border-color:#ccc;color:#333;background-color:#fff;text-align:center;vertical-align:middle}
    .tg th{font-weight:bold;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-top-width:1px;border-bottom-width:1px;border-color:#ccc;color:#333;background-color:#f0f0f0;text-align:center;vertical-align:middle}
    .tg caption{padding:10px 5px; font-weight:bold}
    .tg .tg-bold{font-weight:bold;border-color:inherit;text-align:center;vertical-align:middle}
    .tg .tg-altbck{background-color:#f9f9f9;border-color:inherit;text-align:center;vertical-align:middle}
    .tg .tg-altbck-bold{background-color:#f9f9f9;font-weight:bold;border-color:inherit;text-align:center;vertical-align:middle}
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
}
    </style>

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h1>ICAREdata&reg; Structured Phrases to mCODE&trade; Mapping Guidance</h1>

<p>There are currently two structured phrases, including:</p>
  <ul>
    <li><strong>Cancer Disease Status</strong>, which maps to the mCODE CancerDiseaseStatus profile; and</li>
    <li><strong>Cancer Treatment Plan Change</strong>, which maps to the CarePlanWithReview profile defined in this implementation guide.</li>
  </ul>
<p>The mapping details for each structured phrase are provided below, and are aligned with mCODE v1.0 FHIR R4.</p>

<h2>Cancer Disease Status</h2>

  <p>The Cancer Disease Status structured phrase maps to the mCODE CancerDiseaseStatus profile. Mapping details are provided in Table 1 below. </p>
  <p>For more information on the CancerDiseaseStatus profile, please consult the <a href="https://hl7.org/fhir/us/mcode/STU1" target="_blank">mCODE specification</a>.</p>

<table class="tg">
  <caption>Table 1. Mapping of ICAREdata Cancer Disease Status structured phrase to the mCODE CancerDiseaseStatus profile</caption>
  <tr>
    <th class="tg-bold" colspan="2">ICAREdata Cancer Disease Status Phrase</th>
    <th class="tg-bold" colspan="5">mCODE v1.0 FHIR R4 CancerDiseaseStatus Profile Mapping</th>
  </tr>
  <tr>
    <th class="tg-bold" rowspan="2">Phrase Component</th>
    <th class="tg-bold" rowspan="2">Phrase Component Value</th>
    <th class="tg-bold" rowspan="2">FHIR Profile Element</th>
    <th class="tg-bold" colspan="3">Terminology Binding</th>
    <th class="tg-bold" rowspan="2">Notes</th>
  </tr>
  <tr>
    <th class="tg-bold">Value Set</th>
    <th class="tg-bold">Code</th>
    <th class="tg-bold">Description</th>
  </tr>
  <tr>
    <td class="tg-bold" rowspan="3">Tumor evaluated</td>
    <td class="tg-bold">Primary tumor</td>
    <td class="tg-altbck" rowspan="2"><p>Observation.focus.Reference(Cancer Condition Parent)</p><p></p></td>
    <td colspan ="3">n/a</td>
    <td class="tg-altbck"><p>This element should reference a <Condition> resource compliant with the </Condition>the <code>PrimaryCancerCondition</code> mCODE profile.</p></td>
  </tr>
  <tr>
      <td class="tg-bold">Metastatic tumor</td>
      <td colspan="3">n/a</td>
      <td class="tg-altbck"><p>This element should reference a <Condition> resource compliant with the </Condition>the <code>SecondaryCancerCondition</code> mCODE profile.</p></td>
  </tr>
  <tr>
      <td class="tg-bold">Not evaluated</td>
      <td class="tg-altbck">Observation.dataAbsentReason.valueCodeableconcept</td>
      <td>Observation Value Absent Reason</td>
      <td><code>not-asked</code></td>
      <td>Not Asked</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold" rowspan="5">Status</td>
      <td class="tg-bold">No evidence of disease</td>
      <td class="tg-altbck" rowspan="5">Observation.value[x]:valueCodeableConcept</td>
      <td rowspan="5">ConditionStatusTrendVS</td>
      <td><code>260415000</code></td>
      <td>Not detected (qualifier)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Responding</td>
      <td><code>268910001</code></td>
      <td>Patient condition improved (finding)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Stable</td>
      <td><code>359746009</code></td>
      <td>Patient's condition stable (finding)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Progressing</td>
      <td><code>271299001</code></td>
      <td>Patient's condition worsened (finding)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Undetermined</td>
      <td><code>709137006</code></td>
      <td>Patient condition undetermined (finding)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold" rowspan="5">Reason</td>
      <td class="tg-bold">Imaging</td>
      <td class="tg-altbck" rowspan="5">Observation.extension:evidenceType.value[x]:valueCodeableConcept</td>
      <td rowspan="5">CancerDiseaseStatusEvidenceTypeVS</td>
      <td><code>363679005</code></td>
      <td>Imaging (procedure)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Pathology</td>
      <td><code>252416005</code></td>
      <td>Histopathology test (procedure)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Symptoms</td>
      <td><code>711015009</code></td>
      <td>Assessment of symptom control (procedure)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Physical exam</td>
      <td><code>5880005</code></td>
      <td>Physical examination procedure (procedure)</td>
      <td class="tg-altbck"></td>
  </tr>
  <tr>
      <td class="tg-bold">Lab results</td>
      <td><code>386344002</code></td>
      <td>Laboratory data interpretation (procedure)</td>
      <td class="tg-altbck"></td>
  </tr>
</table>

<h2>Cancer Treatment Plan Change</h2>

<p>The ICAREdata Cancer Treatment Plan Change structured phrase maps to the CodeX ICAREdata FHIR profile CarePlanWithReview defined in this implementation guide.</p>

<p>The allowable values for the structured phrase include information about whether a treatment change was made, as well as a reason, when a change did take place. In the CarePlanWithReview profile, this translates into two separate elements: one that captures whether a change took place, and another that holds the reason for the change. Mapping details for this structured phrase are provided in Table 2 below.</p>

<table class="tg">
  <caption>Table 2. Mapping of ICAREdata Cancer Treatment Plan Change structured phrase to the CodeX ICAREdata CarePlanWithReview profile</caption>
  <tr>
    <th class="tg-bold">ICAREdata Cancer Treatment Plan Change Phrase</th>
    <th class="tg-bold" colspan="4">ICAREdata CarePlanWithReview Profile Mapping</th>
  </tr>
  <tr>
    <th class="tg-bold" rowspan="2">Phrase Value</th>
    <th class="tg-bold" rowspan="2">FHIR Profile Element</th>
    <th class="tg-bold" colspan="3">Terminology Binding</th>
  </tr>
  <tr>
    <th class="tg-bold">Value Set</th>
    <th class="tg-bold">Code</th>
    <th class="tg-bold">Description</th>
  </tr>
  <tr>
    <td class="tg-bold">No change in treatment plan</td>
    <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:ChangedFlag = false</td>
    <td colspan ="3">n/a</td>
  </tr>
  <tr>
      <td class="tg-bold" rowspan="2">yes-disease not responding</td>
      <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:ChangedFlag = true</td>
      <td colspan ="3">n/a</td>
    </tr>
  <tr>
    <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:CarePlanChangeReason.value[x]:valueCodeableConcept</td>
    <td>CarePlanChangeReasonVS</td>
    <td><code>266721009</code></td>
    <td>Absent response to treatment (situation)</td>
  </tr>
  <tr>
      <td class="tg-bold" rowspan="2">yes-due to AE/toxicity</td>
      <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:ChangedFlag = true</td>
      <td colspan ="3">n/a</td>
    </tr>
  <tr>
    <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:CarePlanChangeReason.value[x]:valueCodeableConcept</td>
    <td>CarePlanChangeReasonVS</td>
    <td><code>281647001</code></td>
    <td>Adverse reaction (disorder)</td>
  </tr>
  <tr>
      <td class="tg-bold" rowspan="2">yes-planned change</td>
      <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:ChangedFlag = true</td>
      <td colspan ="3">n/a</td>
    </tr>
  <tr>
    <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:CarePlanChangeReason.value[x]:valueCodeableConcept</td>
    <td>CarePlanChangeReasonVS</td>
    <td><code>405613005</code></td>
    <td>Planned Procedure (situation)</td>
  </tr>
  <tr>
      <td class="tg-bold" rowspan="2">yes-due to patient request</td>
      <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:ChangedFlag = true</td>
      <td colspan ="3">n/a</td>
    </tr>
  <tr>
    <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:CarePlanChangeReason.value[x]:valueCodeableConcept</td>
    <td>CarePlanChangeReasonVS</td>
    <td><code>182890002</code></td>
    <td>Patient requests alternative treatment (finding)</td>
  </tr>
  <tr>
      <td class="tg-bold" rowspan="2">yes-due to other</td>
      <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:ChangedFlag = true</td>
      <td colspan ="3">n/a</td>
    </tr>
  <tr>
    <td class="tg-altbck">CarePlan.extension:carePlanReview.extension:CarePlanChangeReason.value[x]:valueCodeableConcept</td>
    <td>CarePlanChangeReasonVS</td>
    <td><code>74964007</code></td>
    <td>Other (qualifier value)</td>
  </tr>
</table>

</div>