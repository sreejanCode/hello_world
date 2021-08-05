
nextflow.enable.dsl=2

process Hello {
    input:
    val x

    output:
    stdout

    script:
    """
    echo '$x'
    """
}

workflow {
    hey= Channel.of('Hello world')
    Hello(hey).view()
}
//END
