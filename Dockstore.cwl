class: CommandLineTool
doc: MEGAHIT assembler
id: megahit-v1.1.1
label: "MEGAHIT v1.1.1"

cwlVersion: v1.0

dct:creator:
  "@id": "http://orcid.org/0000-0003-0342-8531"
  foaf:name: Daniel Standage
  foaf:mbox: "mailto:daniel.standage@gmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/standage/megahit:latest"

inputs:
  intfasta:
    type: File
    doc: "Interleaved Fastq file to be assembled"
    inputBinding:
      position: 1
      prefix: --12

outputs:
  megahit-out:
    type: Directory
    doc: "Assembly output"
    outputBinding:
      glob: megahit-out
      prefix: -o

baseCommand: ["megahit"]
stdout: output.txt
