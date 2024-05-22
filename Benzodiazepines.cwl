cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  benzodiazepines-temazepam---primary:
    run: benzodiazepines-temazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  benzodiazepines-diazepam---primary:
    run: benzodiazepines-diazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: benzodiazepines-temazepam---primary/output
  benzodiazepines-250microgram---primary:
    run: benzodiazepines-250microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: benzodiazepines-diazepam---primary/output
  benzodiazepines-125microgram---primary:
    run: benzodiazepines-125microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: benzodiazepines-250microgram---primary/output
  benzodiazepines-suspension---primary:
    run: benzodiazepines-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: benzodiazepines-125microgram---primary/output
  benzodiazepines-capsule---primary:
    run: benzodiazepines-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: benzodiazepines-suspension---primary/output
  benzodiazepines-euhypno---primary:
    run: benzodiazepines-euhypno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: benzodiazepines-capsule---primary/output
  benzodiazepines-tablet---primary:
    run: benzodiazepines-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: benzodiazepines-euhypno---primary/output
  benzodiazepines-chlordiazepoxide---primary:
    run: benzodiazepines-chlordiazepoxide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: benzodiazepines-tablet---primary/output
  benzodiazepines-oxazepam---primary:
    run: benzodiazepines-oxazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: benzodiazepines-chlordiazepoxide---primary/output
  benzodiazepines-flurazepam---primary:
    run: benzodiazepines-flurazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: benzodiazepines-oxazepam---primary/output
  benzodiazepines-lormetazepam---primary:
    run: benzodiazepines-lormetazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: benzodiazepines-flurazepam---primary/output
  buccal-benzodiazepines---primary:
    run: buccal-benzodiazepines---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: benzodiazepines-lormetazepam---primary/output
  benzodiazepines-nitrazepam---primary:
    run: benzodiazepines-nitrazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: buccal-benzodiazepines---primary/output
  benzodiazepines-bromazepam---primary:
    run: benzodiazepines-bromazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: benzodiazepines-nitrazepam---primary/output
  benzodiazepines-valium---primary:
    run: benzodiazepines-valium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: benzodiazepines-bromazepam---primary/output
  benzodiazepines-midazolam---primary:
    run: benzodiazepines-midazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: benzodiazepines-valium---primary/output
  benzodiazepines-syringe---primary:
    run: benzodiazepines-syringe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: benzodiazepines-midazolam---primary/output
  benzodiazepines-alprazolam---primary:
    run: benzodiazepines-alprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: benzodiazepines-syringe---primary/output
  benzodiazepines-lorazepam---primary:
    run: benzodiazepines-lorazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: benzodiazepines-alprazolam---primary/output
  benzodiazepines-medazepam---primary:
    run: benzodiazepines-medazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: benzodiazepines-lorazepam---primary/output
  benzodiazepines-tapclob---primary:
    run: benzodiazepines-tapclob---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: benzodiazepines-medazepam---primary/output
  benzodiazepines-sugar---primary:
    run: benzodiazepines-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: benzodiazepines-tapclob---primary/output
  benzodiazepines-gelthix---primary:
    run: benzodiazepines-gelthix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: benzodiazepines-sugar---primary/output
  benzodiazepines-lexotan---primary:
    run: benzodiazepines-lexotan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: benzodiazepines-gelthix---primary/output
  benzodiazepines-solution---primary:
    run: benzodiazepines-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: benzodiazepines-lexotan---primary/output
  benzodiazepines-librium---primary:
    run: benzodiazepines-librium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: benzodiazepines-solution---primary/output
  benzodiazepines-anxon---primary:
    run: benzodiazepines-anxon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: benzodiazepines-librium---primary/output
  benzodiazepines-gelfill---primary:
    run: benzodiazepines-gelfill---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: benzodiazepines-anxon---primary/output
  benzodiazepines-normison---primary:
    run: benzodiazepines-normison---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: benzodiazepines-gelfill---primary/output
  benzodiazepines-clobazam---primary:
    run: benzodiazepines-clobazam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: benzodiazepines-normison---primary/output
  benzodiazepines-oromucosal---primary:
    run: benzodiazepines-oromucosal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: benzodiazepines-clobazam---primary/output
  benzodiazepines-dalmane---primary:
    run: benzodiazepines-dalmane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: benzodiazepines-oromucosal---primary/output
  benzodiazepines-ativan---primary:
    run: benzodiazepines-ativan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: benzodiazepines-dalmane---primary/output
  benzodiazepines-xanax---primary:
    run: benzodiazepines-xanax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: benzodiazepines-ativan---primary/output
  benzodiazepines-loprazolam---primary:
    run: benzodiazepines-loprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: benzodiazepines-xanax---primary/output
  benzodiazepines-ketazolam---primary:
    run: benzodiazepines-ketazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: benzodiazepines-loprazolam---primary/output
  benzodiazepines-nobrium---primary:
    run: benzodiazepines-nobrium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: benzodiazepines-ketazolam---primary/output
  benzodiazepines-tropium---primary:
    run: benzodiazepines-tropium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: benzodiazepines-nobrium---primary/output
  benzodiazepines-mogadon---primary:
    run: benzodiazepines-mogadon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: benzodiazepines-tropium---primary/output
  benzodiazepines-triazolam---primary:
    run: benzodiazepines-triazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: benzodiazepines-mogadon---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: benzodiazepines-triazolam---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
