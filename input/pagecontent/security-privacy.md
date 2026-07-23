### Sicherheit und Datenschutz (Security &amp; Privacy)

HL7-IG-Best-Practice empfiehlt einen expliziten Abschnitt zu Sicherheits- und
Datenschutzaspekten. Modul-/projektspezifisch zu konkretisieren.

- **Allgemeine FHIR-Sicherheitshinweise:** siehe FHIR Security
  (https://hl7.org/fhir/R4/security.html).
- **Zugriff/AuthN/AuthZ:** in der MII über die jeweilige DIZ-/Forschungsdaten-
  Infrastruktur geregelt. `TODO:REVIEW` — modulspezifische Konkretisierung offen.
- **De-Identifikation/Pseudonymisierung:** Bildgebungsdaten enthalten häufig
  identifizierende Angaben im DICOM-Header sowie ggf. eingebrannte Annotationen
  (burned-in annotation). Für die Sekundärnutzung sind Pseudonymisierung und
  Entfernung eingebrannter Kennungen zu berücksichtigen. `TODO:REVIEW`
- **Einwilligung/Consent:** Verweis auf das MII-Modul Consent, sofern für die
  konkrete Nutzung zutreffend. `TODO:REVIEW`

#### Beispieldaten (DSGVO)
Alle im IG enthaltenen Beispiel-Instanzen sind **synthetisch/fiktiv** und enthalten
**keine realen personenbezogenen Daten**. Neue Beispiele dürfen ausschließlich
synthetische Daten verwenden.
