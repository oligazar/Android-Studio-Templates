
    Template.xml - responsible for promt window appearance
     parameter - setting for template builder
        id - string, unique id to refer to parameters value
        name - value that parameter holds
        type - string, defines type of the parameter. Possible values: string, boolean, ??
        constraints - strings, optionally separated by '|'
         can take values: class, nonempty, unique, layout
        default="Component"
        help="The name of the module to create" />