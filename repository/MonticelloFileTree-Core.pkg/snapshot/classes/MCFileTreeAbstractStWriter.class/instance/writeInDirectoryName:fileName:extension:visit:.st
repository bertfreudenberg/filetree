
!MCFileTreeAbstractStWriter methodsFor: 'visiting'!
writeInDirectoryName: directoryNameOrPath fileName: fileName extension: ext visit: visitBlock
    | directory |
    directory := self directoryForDirectoryNamed: directoryNameOrPath.
    directory
        forceNewFileNamed: fileName , ext
        do: [ :file | 
            file lineEndConvention: #'lf'.
            stWriter stream: file.
            visitBlock value ]! !