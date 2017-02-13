#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: Workflow

inputs:
  - id: bai_path
    type: File
  - id: bam_path
    type: File

outputs:
  - id: bai_output
    type: File
    outputSource: bai_md5sum/OUTPUT

steps:
  - id: bai_md5sum
    run: md5sum.cwl
    in:
      - id: INPUT
        source: bai_path
    out:
      - id: OUTPUT
