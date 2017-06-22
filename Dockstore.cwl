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

hints:
  - class: ResourceRequirement
    coresMin: 4
    ramMin: 2048

inputs:
  intfasta:
    type: File
    doc: "Interleaved Fastq file to be assembled"
    inputBinding:
      position: 1
      prefix: --12
  threads:
    type: int
    doc: "Number of threads"
    inputBinding:
      position: 2
      prefix: --num-cpu-threads

outputs:
  megahit-out:
    type: File
    doc: "Assembly output"
    outputBinding:
      glob: megahit-out
      prefix: -o

baseCommand: ["megahit"]
