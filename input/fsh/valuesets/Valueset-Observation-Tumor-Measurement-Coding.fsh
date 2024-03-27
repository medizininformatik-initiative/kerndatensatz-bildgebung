// Valid tumor size units in addition to mCode tumor size units
ValueSet:        VS_Tumor_Area_Units
Id:              tumor-area-units
Title:           "ValueSet Tumor Size Units ValueSet"
Description:     "Acceptable units for measuring tumor areas"
* $UCUM#mm2       "square millimeter"

ValueSet:        VS_Tumor_Volume_Units
Id:              tumor-volume-units
Title:           "ValueSet Tumor Size Units Value Set"
Description:     "Acceptable units for measuring tumor volumes"
* $UCUM#ml       "milliliter"

ValueSet: VS_Tumor_Measurement_Methods
Id: tumor-measurement-methods
Title: "ValueSet Tumor Measurement Methods"
Description: "Codes for methods of measuring tumor size, including physical examination, pathology, and imaging."
* $SCT#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* $SCT#104157003 "Light microscopy (procedure)"
* $SCT#5880005 "Physical examination procedure (procedure)"
* $SCT#16310003 "Diagnostic ultrasonography (procedure)"
* $SCT#113091000 "Magnetic resonance imaging (procedure)"
* $SCT#77477000 "Computerized axial tomography (procedure)"
* $SCT#82918005 "Positron emission tomography (procedure)"
* $SCT#363680008 "Radiographic imaging procedure (procedure)"
* $SCT#363679005 "Imaging (procedure)"

ValueSet: VS_Tumor_Size_Units
Id: tumor-size-units
Title: "ValueSet Tumor Size Units"
Description: "Acceptable units for measuring tumor size"
* $UCUM#mm "Millimeter"
* $UCUM#cm "Centimeter"