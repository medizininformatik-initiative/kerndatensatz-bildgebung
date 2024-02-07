# 5.10 Erweiterungsmodul Bildgebung 
_zuvor: Erweiterungsmodul Diagnostik: Befunde bildgebender Verfahren_

Datensatzbeschreibung: Entwurf von 19.12.2023. 
Subtask AG: 
- [AG Befundtext](#teilmodul:-befundtext)
- [AG Imaging Metadaten](#teilmodul:-imaging-metadaten)

Dieses Begleitdokument dient als Vorschlag zum Vorgehen bezüglich der Implementierung und Datensatzbeschreibung.

Hiermit soll das Dokument für die **1. Feedback-Runde** (_20.12.2023 – 15.01.2024_) freigegeben werden.

---

## Updates 
2024.01.16 - Restrukturierung und Verschönerung des UML Diagramms von Lucas Scherer (UKER).

2024.02.06 - UML-Anpassung an die Guidelines des EU Health Data Space (AG Befundtext).


## Kurzbeschreibung
Das Erweiterungsmodul Bildgebung umfasst sowohl ein Teilmodul zum _radiologischen_ **Befund** (z.B. Indikation, Beurteilung, Auffälligkeiten, Aufnahmequalität etc.) als auch ein Teilmodul zu den **Imaging-Metadaten**, welche im DICOM-Header enthalten sind (z.B. technische Parameter, Studiendetails, Modalitäten, Körperregionen und -seiten etc.).

Eine detaillierte Version der Modulbeschreibung und Aufbau finden Sie im Sharepoint der MII unter: 
- [Taskforce Kerndatensatz > 04_Erweiterungsmodule > Modul_Befunde_bildgebender_Verfahren > 02_Dokumente > Feedback_Round1_191223](https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Kerndatensatz/04_Erweiterungsmodule/Modul_Befunde_bildgebender_Verfahren/02_Dokumente/Feedback_Round1_191223?csf=1&web=1&e=FwsZEY)

---

## Teilmodul Befundtext
Das Teilmodul zum Befund berücksichtigt zwei Sichtweisen, deren gemeinsames Element die Entität Befundbericht ist: 
1.	bereits hochstrukturierte Reports und deren Ergebnisse können über die generische Beobachtung abgebildet werden, 
2.	un- bzw. semistrukturierte Befunde (i.e. historische Freitext-Befunde) können über die Entitäten semistrukturierter Befundbericht und Befundabschnitt abgebildet werden. Hier ist es zusätzlich möglich, einzelne strukturierte Beobachtungen auch als generische _Observations_ abzubilden.

Dieses Konzept ermöglicht einerseits der Abbildung und Einschließung der bereits vorliegenden retrospektiven historischen Befunde (i.S.v. „backward compatibility“) der Standorte, andererseits bietet dies die Möglichkeit für die Berücksichtigung der neuen hochstrukturierten Befundtemplates von 
Tools aus der Industrie (i.S.v. „foward compatibility“).

---

## Teilmodul Imaging Metadaten 
Die hier vorliegende Spezifikation des Informationsmodells bezieht sich auf die Metadaten. Dafür wurde sich an der FHIR Ressource „ImagingStudy“ aus der [FHIR-Kernspezifikation](https://hl7.org/fhir/R4/imagingstudy.html) orientiert und überlegt, welche Elemente für die MII relevant sind und welche zusätzlichen Attribute der DICOM-Header abgebildet werden sollen.  

Zur Modellierung wurde das Teilmodul „Metadaten“ analog zu der Hierarchie im DICOM-Standard und in der Imaging Study in drei Teilmodule strukturiert:
- Studienebene
- Serienebene
- Instanzebene 

Zusätzlich gibt es modalitätsspezifische Metadaten, die sich je nach vorliegender Modalität unterscheiden. Im Moment werden die Modalitäten MR, CT, DX, CR, MG, NM und PET betrachtet und es ist geplant, in einem stufenweisen Verfahren, in Zukunft auch weitere modalitätsspezifische Attribute anderer Modalitäten zu spezifizieren.
