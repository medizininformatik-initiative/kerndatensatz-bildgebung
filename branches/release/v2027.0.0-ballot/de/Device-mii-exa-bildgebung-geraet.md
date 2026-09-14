# MII Example Bildgebung Device - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung Device**

## Beispiel Device: MII Example Bildgebung Device

-------

**German**

-------

Profile: [MII PR Bildgebung Gerät](StructureDefinition-mii-pr-bildgebung-geraet.md)

**manufacturer**: Siemens

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Magnetom Vida | Model name |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-bildgebung-geraet",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-geraet"]
  },
  "manufacturer" : "Siemens",
  "deviceName" : [{
    "name" : "Magnetom Vida",
    "type" : "model-name"
  }]
}

```
