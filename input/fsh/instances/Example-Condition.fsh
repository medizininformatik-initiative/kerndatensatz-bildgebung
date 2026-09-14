Instance: mii-exa-bildgebung-radiologische-diagnose
InstanceOf: Condition
Usage: #example
Title: "MII Example Bildgebung Condition"
* clinicalStatus = $clinicalStatus#active
* code.text = "Liver lesion"
* subject = Reference(Patient/mii-exa-bildgebung-radiologischer-patient)
* encounter = Reference(Encounter/mii-exa-bildgebung-radiologischer-fall)