
class: CommandLineTool
cwlVersion: v1.0

requirements:
    DockerRequirement:
        dockerPull: ubuntu

baseCommand: egrep

inputs:
    infile:
        type: File
    selection:
        type: string
        inputBinding:
            position: 1
            
stdin: $(inputs.infile.path)
outputs:
    outfile: stdout
