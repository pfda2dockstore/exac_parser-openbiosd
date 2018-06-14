baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: exac_parser-openbiosd
inputs:
  Chr:
    default: '17'
    doc: ''
    inputBinding:
      position: 3
      prefix: --Chr
    type: string
  ENST:
    default: ENST00000262410
    doc: ''
    inputBinding:
      position: 4
      prefix: --ENST
    type: string
  ExAC_data:
    doc: ''
    inputBinding:
      position: 2
      prefix: --ExAC_data
    type: File
  exac_parser:
    doc: ''
    inputBinding:
      position: 1
      prefix: --exac_parser
    type: File
label: exac_parser
outputs:
  ExAC_OUT:
    doc: ''
    outputBinding:
      glob: ExAC_OUT/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/exac_parser-openbiosd:39
s:author:
  class: s:Person
  s:name: Vladimir Gainullin
