//Head
Profile: MII_PR_Bildgebung_Bildgebungsstudie
Parent: ImagingStudy
Id: mii-pr-bildgebung-bildgebungsstudie
Title: "MII PR Bildgebung Bildgebungsstudie"
Description: "Dieses Profil beschreibt die Bildgebung anhand der DICOM-Metadaten auf Studien-, Serien- sowie Instanzen-Ebene der jeweiligen DICOM-Studie."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Imaging_Study)
* insert Translation(^title, en-US, MII PR Imaging Imaging Study)
* insert Translation(^description, en-US, The profile describes the metadata of an DICOM imaging study.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Translation Profile
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, Angemeldet | Verfügbar | Abgebrochen | fehlerhafte Eingabe | Unbekannt)
* insert Translation(status ^definition, en-US, registered | available | cancelled | entered-in-error | unknown)
* insert Translation(modality ^short, de-DE, Modalität)
* insert Translation(modality ^short, en-US, modality)
* insert Translation(modality ^definition, de-DE, Modalität der Studie)
* insert Translation(modality ^definition, en-US, modality of the study)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Studie bezieht)
* insert Translation(subject ^definition, en-US, person\, which this study is about)
* insert Translation(encounter ^short, de-DE, Versorgungsstellenkontakt)
* insert Translation(encounter ^short, en-US, encounter)
* insert Translation(encounter ^definition, de-DE, Referenz auf eine Fall-Ressource)
* insert Translation(encounter ^definition, en-US, reference on the encounter-ressource)
* insert Translation(started ^short, de-DE, Startzeit)
* insert Translation(started ^short, en-US, starttime)
* insert Translation(started ^definition, de-DE, Startzeit der Studie)
* insert Translation(started ^definition, en-US, starttime of the study)
* insert Translation(basedOn ^short, de-DE, Basiert auf)
* insert Translation(basedOn ^short, en-US, based on)
* insert Translation(basedOn ^definition, de-DE, Basiert auf einer Anforderung)
* insert Translation(basedOn ^definition, en-US, based on a service request)
* insert Translation(endpoint ^short, de-DE, Endpunkt)
* insert Translation(endpoint ^short, en-US, endpoint)
* insert Translation(endpoint ^definition, de-DE, DICOM-Endpunkt)
* insert Translation(endpoint ^definition, en-US, DICOM endpoint)
* insert Translation(numberOfSeries ^short, de-DE, Serienanzahl)
* insert Translation(numberOfSeries ^short, en-US, number of series)
* insert Translation(numberOfSeries ^definition, de-DE, Anzhal der Serien in der Studie)
* insert Translation(numberOfSeries ^definition, en-US, number of series in the study)
* insert Translation(numberOfInstances ^short, de-DE, Instanzanzahl)
* insert Translation(numberOfInstances ^short, en-US, number of instances)
* insert Translation(numberOfInstances ^definition, de-DE, Anzahl der Instanzen in der Studie)
* insert Translation(numberOfInstances ^definition, en-US, number of instances in the study)
* insert Translation(procedureReference ^short, de-DE, Bildgebungsprozedur)
* insert Translation(procedureReference ^short, en-US, imaging procedure)
* insert Translation(procedureReference ^definition, de-DE, Referenz auf die Bildgebungsprozedur)
* insert Translation(procedureReference ^definition, en-US, reference on the imaging procedure)
* insert Translation(reasonReference ^short, de-DE, Bildgebungsgrund)
* insert Translation(reasonReference ^short, en-US, imagingreason)
* insert Translation(reasonReference ^definition, de-DE, Referenz auf den Bildgebungsgrund)
* insert Translation(reasonReference ^definition, en-US, reference on the imaging reason)
* insert Translation(description ^short, de-DE, Studienbeschreibung)
* insert Translation(description ^short, en-US, study description)
* insert Translation(description ^definition, de-DE, Beschreibung der Studie)
* insert Translation(description ^definition, en-US, description of the study)
* insert Translation(series ^short, de-DE, Serie)
* insert Translation(series ^short, en-US, series)
* insert Translation(series ^definition, de-DE, einzelne Bildserie einer Studie)
* insert Translation(series ^definition, en-US, single series in a study)
* insert Translation(series.uid ^short, de-DE, SerienUID)
* insert Translation(series.uid ^short, en-US, series uid)
* insert Translation(series.uid ^definition, de-DE, UID einer Serie)
* insert Translation(series.uid ^definition, en-US, uid of a series)
* insert Translation(series.number ^short, de-DE, Person)
* insert Translation(series.number ^short, en-US, person)
* insert Translation(series.number ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.number ^definition, en-US, person\, which this report is about)
* insert Translation(series.modality ^short, de-DE, Person)
* insert Translation(series.modality ^short, en-US, person)
* insert Translation(series.modality ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.modality ^definition, en-US, person\, which this report is about)
* insert Translation(series.description ^short, de-DE, Person)
* insert Translation(series.description ^short, en-US, person)
* insert Translation(series.description ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.description ^definition, en-US, person\, which this report is about)
* insert Translation(series.numberOfInstances ^short, de-DE, Person)
* insert Translation(series.numberOfInstances ^short, en-US, person)
* insert Translation(series.numberOfInstances ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.numberOfInstances ^definition, en-US, person\, which this report is about)
* insert Translation(series.bodySite ^short, de-DE, Person)
* insert Translation(series.bodySite ^short, en-US, person)
* insert Translation(series.bodySite ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.bodySite ^definition, en-US, person\, which this report is about)
* insert Translation(series.laterality ^short, de-DE, Person)
* insert Translation(series.laterality ^short, en-US, person)
* insert Translation(series.laterality ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.laterality ^definition, en-US, person\, which this report is about)
* insert Translation(series.started ^short, de-DE, Person)
* insert Translation(series.started ^short, en-US, person)
* insert Translation(series.started ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.started ^definition, en-US, person\, which this report is about)
* insert Translation(series.performer ^short, de-DE, Person)
* insert Translation(series.performer ^short, en-US, person)
* insert Translation(series.performer ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.performer ^definition, en-US, person\, which this report is about)
* insert Translation(series.instance ^short, de-DE, Person)
* insert Translation(series.instance ^short, en-US, person)
* insert Translation(series.instance ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.instance ^definition, en-US, person\, which this report is about)
* insert Translation(series.instance.uid ^short, de-DE, Person)
* insert Translation(series.instance.uid ^short, en-US, person)
* insert Translation(series.instance.uid ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.instance.uid ^definition, en-US, person\, which this report is about)
* insert Translation(series.instance.sopClass ^short, de-DE, Person)
* insert Translation(series.instance.sopClass ^short, en-US, person)
* insert Translation(series.instance.sopClass ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.instance.sopClass ^definition, en-US, person\, which this report is about)
* insert Translation(series.instance.number ^short, de-DE, Person)
* insert Translation(series.instance.number ^short, en-US, person)
* insert Translation(series.instance.number ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(series.instance.number ^definition, en-US, person\, which this report is about)
//Studienebene
* extension contains
  //Extension Studienebene
  MII_EX_Bildgebung_Bildgebungsgrund named bildgebungsgrund 0..1 
* status MS
* modality MS
* modality from $modality (required)
* subject MS
* subject only Reference(Patient)
* encounter MS
* started MS
* basedOn MS
* endpoint MS
* numberOfSeries MS
* numberOfInstances MS
* procedureReference MS
* reasonReference MS
* description MS
//Serieebene
* series MS
* series.extension contains
  //Extension Serienebene
  MII_EX_Bildgebung_Modalitaet_CT named modalitätCT 0..1 and
  MII_EX_Bildgebung_Modalitaet_MG_CR_DX named modalitätMG_CR_DX 0..1 and
  MII_EX_Bildgebung_Modalitaet_MR named modalitätMR 0..1 and
  MII_EX_Bildgebung_Modalitaet_PT named modalitätPT 0..1 and
  MII_EX_Bildgebung_Modalitaet_NM named modalitätNM 0..1 and
  MII_EX_Bildgebung_Kontrastmittel named kontrastmittel 0..1
* series.uid MS 
* series.number MS
* series.modality MS 
* series.modality from $modality (required)
* series.description MS
* series.numberOfInstances MS
* series.bodySite MS 
* series.bodySite from $bodySite (required)
* series.laterality MS
* series.laterality from $laterality (required)
* series.started MS
* series.performer.actor only Reference(MII_PR_Bildgebung_Geraet)
//Instanzebene
* series.instance MS
* series.instance.extension contains
  //Extension Instanzebene
  MII_EX_Bildgebung_Instanz_Details named InstanceDetails 0..1
* series.instance.uid MS
* series.instance.sopClass MS
* series.instance.sopClass from $sop-class (required)
* series.instance.number MS
