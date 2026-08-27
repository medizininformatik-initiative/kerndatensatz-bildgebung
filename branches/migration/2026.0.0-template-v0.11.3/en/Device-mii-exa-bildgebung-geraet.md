# MII Example Bildgebung Device - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Device**

## Example Device: MII Example Bildgebung Device

-------

**English**

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
