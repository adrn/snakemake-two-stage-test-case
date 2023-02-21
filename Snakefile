# Phase 1: e.g., grab "raw" source data from a data archive or whatever.
rule phase_one:
    output:
        "intermediate-data.txt"
    shell:
        "echo 'yo' > {output[0]}"

# Phase 2: e.g., process source data into some intermediate data files.
rule phase_two:
    input:
        "intermediate-data.txt"
    output:
        "final-data.txt"
    shell:
        "echo 'final' > {output[0]}"

# Phase 3: e.g., take intermediate data files and make figures or whatever.
rule phase_three:
    input:
        "final-data.txt"
    output:
        "some-figure.txt"
    shell:
        "echo 'SCIENCE' > {output[0]}"
