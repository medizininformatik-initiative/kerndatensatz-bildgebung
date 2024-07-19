Instance: mii-sp-bildgebung-koerperstruktur-location-qualfier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-koerperstruktur-location-qualfier"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Koerperstruktur_Location_Qualfier"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Koeperstruktur.locationQualifier"
* code = #location-qualfier
* base = #BodyStructure
* type = #token
* expression = "BodyStructure.locationQualifier"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in