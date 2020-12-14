Small service exposing the vocabularies database.

Endpoints
---------
* /availability
* /collection_tool
* /country
* /fish_area
* /format
* /hazard
* /hazard_type
* /ind_sum
* /laboratory_accreditation
* /language
* /language_written_in
* /model_class
* /model_equation_class
* /model_subclass
* /packaging
* /parameter_distribution
* /parameter_source
* /parameter_subject
* /population
* /product_matrix
* /product_treatment
* /production_method
* /publication_status
* /publication_type
* /region
* /right
* /sampling_method
* /sampling_point
* /sampling_program
* /sampling_strategy
* /software
* /source
* /status
* /unit
* /unit_category

## Configuration
The application requires a configuration file named *vocabularies-app.properties* with settings needed for execution. This file can be either located at the user folder or at `CATALINA_HOME` (KNIME Server). In case both locations have the file, the file at the user folder takes precedence.

### How to find CATALINA_HOME
The environment variable `CATALINA_HOME` holds the path to the base directory of a Catalina environment. This can be checked when running the KNIME Server at the beginning. For example when running the startup script of the KNIME server or doing catalina run:

```
Using CATALINA_BASE:   /Applications/KNIME Server/apache-tomee-plus-7.0.5
Using CATALINA_HOME:   /Applications/KNIME Server/apache-tomee-plus-7.0.5
Using CATALINA_TMPDIR: /Applications/KNIME Server/apache-tomee-plus-7.0.5/temp
Using JRE_HOME:        /Library/Java/JavaVirtualMachines/jdk1.8.0_271.jdk/Contents/Home
Using CLASSPATH:       /Applications/KNIME Server/apache-tomee-plus-7.0.5/bin/bootstrap.jar:/Applications/KNIME Server/apache-tomee-plus-7.0.5/bin/tomcat-juli.jar
Tomcat started.
```

### Contents of the file

The *vocabularies-app.properties* file is a simple Java properties file with the following keys:
* `base_url`: Url to application.
* `context`: Path of the application if deployed under an application container. For example for https://knime.bfr.berlin/vocabularies the context is `vocabularies`. This can be omitted for local applications not running in a container.

Example vocabularies-app.properties file:
```
base_url=http://localhost:8080/
context=vocabularies-app
```
