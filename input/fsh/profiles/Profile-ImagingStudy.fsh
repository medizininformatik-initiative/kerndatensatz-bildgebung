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
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Studienebene
* extension contains
  //Extension Studienebene
  MII_EX_Bildgebung_Bildgebungsgrund named bildgebungsgrund 0..1 
* extension[bildgebungsgrund] ^short = "Bildgebungsgrund"
* extension[bildgebungsgrund] ^definition = "Bildgebungsgrund aus DICOM-Header"
* status MS
* status ^short = "Status"
* status ^definition = "Angemeldet | Verfügbar | Abgebrochen | fehlerhafte Eingabe | Unbekannt"
* modality MS
* modality from $modality (required)
* modality ^short = "Modalität"
* modality ^definition = "Modalität der Studie"
* subject MS
* subject only Reference(Patient)
* subject ^short = "Person"
* subject ^definition = "Person, auf die sich die Studie bezieht"
* encounter MS
* encounter ^short = "Versorgungsstellenkontakt"
* encounter ^definition = "Referenz auf eine Fall-Ressource"
* started MS
* started ^short = "Startzeit"
* started ^definition = "Startzeit der Studie"
* basedOn MS
* basedOn ^short = "Basiert auf"
* basedOn ^definition = "Basiert auf einer Anforderung"
* endpoint MS
* endpoint ^short = "Endpunkt"
* endpoint ^definition = "DICOM-Endpunkt"
* numberOfSeries MS
* numberOfSeries ^short = "Serienanzahl"
* numberOfSeries ^definition = "Anzahl der Serien in der Studie"
* numberOfInstances MS
* numberOfInstances ^short = "Instanzanzahl"
* numberOfInstances ^definition = "Anzahl der Instanzen in der Studie"
* procedureReference MS
* procedureReference ^short = "Bildgebungsprozedur"
* procedureReference ^definition = "Referenz auf die Bildgebungsprozedur"
* reasonReference MS
* reasonReference ^short = "Bildgebungsgrund"
* reasonReference ^definition = "Referenz auf den Bildgebungsgrund"
* description MS
* description ^short = "Studienbeschreibung"
* description ^definition = "Beschreibung der Studie"
//Serieebene
* series MS
* series ^short = "Serienebene"
* series ^definition = "einzelne Bildserie einer Studie"
* series.extension contains
  //Extension Serienebene
  MII_EX_Bildgebung_Modalitaet_CT named modalitätCT 0..1 and
  MII_EX_Bildgebung_Modalitaet_MG_CR_DX named modalitätMG_CR_DX 0..1 and
  MII_EX_Bildgebung_Modalitaet_MR named modalitätMR 0..1 and
  MII_EX_Bildgebung_Modalitaet_PT named modalitätPT 0..1 and
  MII_EX_Bildgebung_Modalitaet_NM named modalitätNM 0..1 and
  MII_EX_Bildgebung_Kontrastmittel named kontrastmittel 0..1
* series.extension[modalitätCT] ^short = "Modalität CT"
* series.extension[modalitätCT] ^definition = "Bildgebungsmodalität CT"
* series.extension[modalitätMG_CR_DX] ^short = "Modalität MG CR DX"
* series.extension[modalitätMG_CR_DX] ^definition = "Bildgebungsmodalität MG, CR und DX"
* series.extension[modalitätMR] ^short = "Modalität MR"
* series.extension[modalitätMR] ^definition = "Bildgebungsmodalität MR"
* series.extension[modalitätPT] ^short = "Modalität PT"
* series.extension[modalitätPT] ^definition = "Bildgebungsmodalität PT"
* series.extension[modalitätNM] ^short = "Modalität NM"
* series.extension[modalitätNM] ^definition = "Bildgebungsmodalität NM"
* series.extension[kontrastmittel] ^short = "Kontrastmittel"
* series.extension[kontrastmittel] ^definition = "Kontrastmittelgabe"
* series.uid MS
* series.uid ^short = "SerienUID"
* series.uid ^definition = "UID einer Serie"
* series.number MS
* series.number ^short = "Nummer"
* series.number ^definition = "Nummer der Serie"
* series.modality MS
* series.modality from $modality (required)
* series.modality ^short = "Modalität"
* series.modality ^definition = "Modalität der Serie"
* series.description MS
* series.description ^short = "Serienbeschreibung"
* series.description ^definition = "Beschreibung der aktuellen Serie"
* series.numberOfInstances MS
* series.numberOfInstances ^short = "Instanzanzahl"
* series.numberOfInstances ^definition = "Anzahl der Instanzen in der aktuellen Serie"
* series.bodySite MS 
* series.bodySite from $bodySite (required)
* series.bodySite ^short = "Anatomie"
* series.bodySite ^definition = "betrachtete Anatomie der Serie"
* series.laterality MS
* series.laterality from $laterality (required)
* series.laterality ^short = "Lateralität"
* series.laterality ^definition = "Lateralität der betrachteten Anatomie dieser Serie"
* series.started MS
* series.started ^short = "Startzeit"
* series.started ^definition = "Aufnahmestartzeit der Serie"
* series.performer MS
* series.performer ^short = "Durchführender"
* series.performer ^definition = "Durchführender der Serie. Hier speziell das Gerät"
* series.performer.actor MS
* series.performer.actor only Reference(MII_PR_Bildgebung_Geraet)
//Instanzebene
* series.instance MS
* series.instance ^short = "Instanzebene"
* series.instance ^definition = "Instanzebene der Serie"
* series.instance.extension contains
  //Extension Instanzebene
  MII_EX_Bildgebung_Instanz_Details named InstanceDetails 0..1
* series.instance.extension[InstanceDetails] ^short = "Instanzdetails"
* series.instance.extension[InstanceDetails] ^definition = "Details der jeweilige Instanz"
* series.instance.uid MS
* series.instance.uid ^short = "Instanz UID"
* series.instance.uid ^definition = "SOP Instanz UID"
* series.instance.sopClass MS
* series.instance.sopClass from $sop-class (required)
* series.instance.sopClass ^short = "SOP Klasse"
* series.instance.sopClass ^definition = "SOP Klasse"
* series.instance.number MS
* series.instance.number ^short = "Instanznummer"
* series.instance.number ^definition = "Nummer der aktuellen Instanz"

//Translation Profile
* insert Translation(extension[bildgebungsgrund] ^short, de-DE, Bildgebungsgrund)
* insert Translation(extension[bildgebungsgrund] ^short, en-US, imaging reason)
* insert Translation(extension[bildgebungsgrund] ^definition, de-DE, Bildgebungsgrund aus DICOM-Header)
* insert Translation(extension[bildgebungsgrund] ^definition, en-US, reason for imaging from the DICOM-Header)
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
* insert Translation(numberOfSeries ^definition, de-DE, Anzahl der Serien in der Studie)
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
* insert Translation(series ^short, de-DE, Serienebene)
* insert Translation(series ^short, en-US, series level)
* insert Translation(series ^definition, de-DE, einzelne Bildserie einer Studie)
* insert Translation(series ^definition, en-US, single series in a study)
* insert Translation(series.extension[modalitätCT] ^short, de-DE, Modalität CT)
* insert Translation(series.extension[modalitätCT] ^short, en-US, modality CT)
* insert Translation(series.extension[modalitätCT] ^definition, de-DE, Bildgebungsmodalität CT)
* insert Translation(series.extension[modalitätCT] ^definition, en-US, Imagingmodality CT)
* insert Translation(series.extension[modalitätMG_CR_DX] ^short, de-DE, Modalität MG CR DX)
* insert Translation(series.extension[modalitätMG_CR_DX] ^short, en-US, modality MG CR DX)
* insert Translation(series.extension[modalitätMG_CR_DX] ^definition, de-DE, Bildgebungsmodalität MG\, CR und DX)
* insert Translation(series.extension[modalitätMG_CR_DX] ^definition, en-US, Imagingmodality MG\, CR and DX)
* insert Translation(series.extension[modalitätMR] ^short, de-DE, Modalität MR)
* insert Translation(series.extension[modalitätMR] ^short, en-US, modality MR)
* insert Translation(series.extension[modalitätMR] ^definition, de-DE, Bildgebungsmodalität MR)
* insert Translation(series.extension[modalitätMR] ^definition, en-US, Imagingmodality MR)
* insert Translation(series.extension[modalitätNM] ^short, de-DE, Modalität NM)
* insert Translation(series.extension[modalitätNM] ^short, en-US, modality NM)
* insert Translation(series.extension[modalitätNM] ^definition, de-DE, Bildgebungsmodalität NM)
* insert Translation(series.extension[modalitätNM] ^definition, en-US, Imagingmodality NM)
* insert Translation(series.extension[modalitätPT] ^short, de-DE, Modalität PT)
* insert Translation(series.extension[modalitätPT] ^short, en-US, modality PT)
* insert Translation(series.extension[modalitätPT] ^definition, de-DE, Bildgebungsmodalität PT)
* insert Translation(series.extension[modalitätPT] ^definition, en-US, Imagingmodality PT)
* insert Translation(series.extension[kontrastmittel] ^short, de-DE, Kontrastmittel)
* insert Translation(series.extension[kontrastmittel] ^short, en-US, contrast medication)
* insert Translation(series.extension[kontrastmittel] ^definition, de-DE, Kontrastmittelgabe)
* insert Translation(series.extension[kontrastmittel] ^definition, en-US, application of contrast medication)
* insert Translation(series.uid ^short, de-DE, SerienUID)
* insert Translation(series.uid ^short, en-US, series uid)
* insert Translation(series.uid ^definition, de-DE, UID einer Serie)
* insert Translation(series.uid ^definition, en-US, uid of a series)
* insert Translation(series.number ^short, de-DE, Nummer)
* insert Translation(series.number ^short, en-US, number)
* insert Translation(series.number ^definition, de-DE, Nummer der Serie)
* insert Translation(series.number ^definition, en-US, number of this series)
* insert Translation(series.modality ^short, de-DE, Modalität)
* insert Translation(series.modality ^short, en-US, modality)
* insert Translation(series.modality ^definition, de-DE, Modalität der Serie)
* insert Translation(series.modality ^definition, en-US, modality of this series)
* insert Translation(series.description ^short, de-DE, Serienbeschreibung)
* insert Translation(series.description ^short, en-US, seriesdescription)
* insert Translation(series.description ^definition, de-DE, Beschreibung der aktuellen Serie)
* insert Translation(series.description ^definition, en-US, description of this series)
* insert Translation(series.numberOfInstances ^short, de-DE, Instanzanzahl)
* insert Translation(series.numberOfInstances ^short, en-US, number of instances)
* insert Translation(series.numberOfInstances ^definition, de-DE, Anzahl der Instanzen in der aktuellen Serie)
* insert Translation(series.numberOfInstances ^definition, en-US, number of instances in this series)
* insert Translation(series.bodySite ^short, de-DE, Anatomie)
* insert Translation(series.bodySite ^short, en-US, body site)
* insert Translation(series.bodySite ^definition, de-DE, betrachtete Anatomie der Serie)
* insert Translation(series.bodySite ^definition, en-US, inspected body site in this series)
* insert Translation(series.laterality ^short, de-DE, Lateralität)
* insert Translation(series.laterality ^short, en-US, laterality)
* insert Translation(series.laterality ^definition, de-DE, Lateralität der betrachteten Anatomie dieser Serie)
* insert Translation(series.laterality ^definition, en-US, laterality of the inspected body site in this series)
* insert Translation(series.started ^short, de-DE, Startzeit)
* insert Translation(series.started ^short, en-US, startingtime)
* insert Translation(series.started ^definition, de-DE, Aufnahmestartzeit der Serie)
* insert Translation(series.started ^definition, en-US, start time of this series)
* insert Translation(series.performer ^short, de-DE, Durchführender)
* insert Translation(series.performer ^short, en-US, performer)
* insert Translation(series.performer ^definition, de-DE, Durchführender der Serie. Hier speziell das Gerät)
* insert Translation(series.performer ^definition, en-US, performer of this series. In this case especially a device)
* insert Translation(series.instance ^short, de-DE, Instanzebene)
* insert Translation(series.instance ^short, en-US, instancelevel)
* insert Translation(series.instance ^definition, de-DE, Instanzebene der Serie)
* insert Translation(series.instance ^definition, en-US, instance level of this series)
* insert Translation(series.instance.extension[InstanceDetails] ^short, de-DE, Instanzdetails)
* insert Translation(series.instance.extension[InstanceDetails] ^short, en-US, instance details)
* insert Translation(series.instance.extension[InstanceDetails] ^definition, de-DE, Details der jeweilige Instanz)
* insert Translation(series.instance.extension[InstanceDetails] ^definition, en-US, details of the current instance)
* insert Translation(series.instance.uid ^short, de-DE, Instanz UID)
* insert Translation(series.instance.uid ^short, en-US, instance uid)
* insert Translation(series.instance.uid ^definition, de-DE, SOP Instanz UID)
* insert Translation(series.instance.uid ^definition, en-US, sop instance uid)
* insert Translation(series.instance.sopClass ^short, de-DE, SOP Klasse)
* insert Translation(series.instance.sopClass ^short, en-US, sop class)
* insert Translation(series.instance.sopClass ^definition, de-DE, SOP Klasse)
* insert Translation(series.instance.sopClass ^definition, en-US, sop class)
* insert Translation(series.instance.number ^short, de-DE, Instanznummer)
* insert Translation(series.instance.number ^short, en-US, instancenumber)
* insert Translation(series.instance.number ^definition, de-DE, Nummer der aktuellen Instanz)
* insert Translation(series.instance.number ^definition, en-US, number of this instance)
