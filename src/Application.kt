package de.bund.bfr.rakip

import com.fasterxml.jackson.databind.SerializationFeature
import de.bund.bfr.rakip.vocabularies.data.*
import freemarker.cache.ClassTemplateLoader
import io.ktor.application.*
import io.ktor.features.*
import io.ktor.freemarker.*
import io.ktor.http.*
import io.ktor.http.content.*
import io.ktor.jackson.*
import io.ktor.response.*
import io.ktor.routing.*
import org.h2.tools.DeleteDbFiles
import java.io.File
import java.sql.DriverManager
import java.util.*

fun main(args: Array<String>): Unit = io.ktor.server.tomcat.EngineMain.main(args)

val appConfiguration = loadConfiguration() // TODO: Use appConfiguration

@Suppress("unused") // Referenced in application.conf
@kotlin.jvm.JvmOverloads
fun Application.module(testing: Boolean = false) {
    install(FreeMarker) {
        templateLoader = ClassTemplateLoader(this::class.java.classLoader, "templates")
    }

    install(CORS) {
        header(HttpHeaders.AccessControlAllowOrigin)
        allowCredentials = true
        anyHost() // @TODO: Don't do this in production if possible. Try to limit it.
    }

    install(ContentNegotiation) {
        jackson {
            configure(SerializationFeature.INDENT_OUTPUT, true)
        }
    }
    install(DefaultHeaders)

    Class.forName("org.h2.Driver")
    initDatabase()

    val connection = DriverManager.getConnection("jdbc:h2:~/vocabularies")

    val availabilityRepository = AvailabilityRepository(connection)
    val collectionToolRepository = CollectionToolRepository(connection)
    val countryRepository = CountryRepository(connection)
    val fishAreaRepository = FishAreaRepository(connection)
    val formatRepository = FormatRepository(connection)
    val hazardRepository = HazardRepository(connection)
    val hazardTypeRepository = HazardTypeRepository(connection)
    val indSumRepository = IndSumRepository(connection)
    val laboratoryAccreditationRepository = LaboratoryAccreditationRepository(connection)
    val languageRepository = LanguageRepository(connection)
    val languageWrittenInRepository = LanguageWrittenInRepository(connection)
    val modelClassRepository = ModelClassRepository(connection)
    val modelEquationClassRepository = ModelEquationClassRepository(connection)
    val modelSubclassRepository = ModelSubclassRepository(connection)
    val packagingRepository = PackagingRepository(connection)
    val parameterDistributionRepository = ParameterDistributionRepository(connection)
    val parameterSourceRepository = ParameterSourceRepository(connection)
    val parameterSubjectRepository = ParameterSubjectRepository(connection)
    val populationRepository = PopulationRepository(connection)
    val productMatrixRepository = ProductMatrixRepository(connection)
    val productTreatmentRepository = ProductTreatmentRepository(connection)
    val productionMethodRepository = ProductionMethodRepository(connection)
    val publicationStatusRepository = PublicationStatusRepository(connection)
    val publicationTypeRepository = PublicationTypeRepository(connection)
    val regionRepository = RegionRepository(connection)
    val rightRepository = RightRepository(connection)
    val samplingMethodRepository = SamplingMethodRepository(connection)
    val samplingPointRepository = SamplingPointRepository(connection)
    val samplingProgramRepository = SamplingProgramRepository(connection)
    val samplingStrategyRepository = SamplingStrategyRepository(connection)
    val softwareRepository = SoftwareRepository(connection)
    val sourceRepository = SourceRepository(connection)
    val statusRepository = StatusRepository(connection)
    val unitRepository = UnitRepository(connection)
    val unitCategoryRepository = UnitCategoryRepository(connection)

    val viewData = object {
        val vocabularies = listOf("availability", "collection_tool", "fish_area", "format", "hazard",
            "hazard_type", "ind_sum", "laboratory_accreditation", "language", "language_written_in",
                "model_class", "model_equation_class", "model_subclass", "packaging",
                "parameter_distribution", "parameter_source", "parameter_subject", "population",
                "product_matrix", "product_treatment", "production_method", "publication_status",
                "publication_type", "region", "right", "sampling_method", "sampling_point",
                "sampling_program", "sampling_strategy", "software", "source", "status", "unit",
                "unit_category")
        val endpoint = appConfiguration.getProperty("base_url")
        val resourcesFolder = if(appConfiguration.getProperty("context") != null) {
            "${appConfiguration.getProperty("context")}/static"
        } else {
            "static"
        }
    }

    routing {
        get("/") {
            call.respond(FreeMarkerContent("index.ftl", mapOf("data" to viewData), ""))
        }

        get("/availability") {
            call.respond(availabilityRepository.all)
        }

        get("/availability/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val availability = availabilityRepository.getById(it)
                if (availability.isPresent) {
                    call.respond(availability.get())
                }
            }
        }

        get("/collection_tool") {
            call.respond(collectionToolRepository.all)
        }

        get("/collection_tool/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val tool = collectionToolRepository.getById(it)
                if (tool.isPresent) {
                    call.respond(tool.get())
                }
            }
        }

        get("/country") {
            call.respond(countryRepository.all)
        }

        get("/country/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val country = countryRepository.getById(it)
                if (country.isPresent) {
                    call.respond(country.get())
                }
            }
        }

        get("/fish_area") {
            call.respond(fishAreaRepository.all)
        }

        get("/fish_area/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val fishArea = fishAreaRepository.getById(it)
                if (fishArea.isPresent) {
                    call.respond(fishArea.get())
                }
            }
        }

        get("/format") {
            call.respond(formatRepository.all)
        }

        get("/format/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val format = formatRepository.getById(it)
                if (format.isPresent) {
                    call.respond(format.get())
                }
            }
        }

        get("/hazard") {
            call.respond(hazardRepository.all)
        }

        get("/hazard/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val format = hazardRepository.getById(it)
                if (format.isPresent) {
                    call.respond(format.get())
                }
            }
        }

        get("/hazard_type") {
            call.respond(hazardTypeRepository.all)
        }

        get("/hazard_type/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val hazardType = hazardTypeRepository.getById(it)
                if (hazardType.isPresent) {
                    call.respond(hazardType.get())
                }
            }
        }

        get("/ind_sum") {
            call.respond(indSumRepository.all)
        }

        get("/ind_sum/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val indSum = indSumRepository.getById(it)
                if (indSum.isPresent) {
                    call.respond(indSum.get())
                }
            }
        }

        get("/laboratory_accreditation") {
            call.respond(laboratoryAccreditationRepository.all)
        }

        get("/laboratory_accreditation/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val laboratoryAccreditation = laboratoryAccreditationRepository.getById(it)
                if (laboratoryAccreditation.isPresent) {
                    call.respond(laboratoryAccreditation.get())
                }
            }
        }

        get("/language") {
            call.respond(languageRepository.all)
        }

        get("/language/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val language = languageRepository.getById(it)
                if (language.isPresent) {
                    call.respond(language.get())
                }
            }
        }

        get("/language_written_in") {
            call.respond(languageWrittenInRepository.all)
        }

        get("/language_written_in/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val languageWrittenIn = languageWrittenInRepository.getById(it)
                if (languageWrittenIn.isPresent) {
                    call.respond(languageWrittenIn.get())
                }
            }
        }

        get("/model_class") {
            call.respond(modelClassRepository.all)
        }

        get("/model_class/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val modelClass = modelClassRepository.getById(it)
                if (modelClass.isPresent) {
                    call.respond(modelClass.get())
                }
            }
        }

        get("/model_equation_class") {
            call.respond(modelEquationClassRepository.all)
        }

        get("/model_equation_class/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val modelEquationClass = modelEquationClassRepository.getById(it)
                if (modelEquationClass.isPresent) {
                    call.respond(modelEquationClass.get())
                }
            }
        }

        get("/model_subclass") {
            call.respond(modelSubclassRepository.all)
        }

        get("/model_subclass/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val modelSubclass = modelSubclassRepository.getById(it)
                if (modelSubclass.isPresent) {
                    call.respond(modelSubclass.get())
                }
            }
        }

        get("/packaging") {
            call.respond(packagingRepository.all)
        }

        get("/packaging/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val packaging = packagingRepository.getById(it)
                if (packaging.isPresent) {
                    call.respond(packaging.get())
                }
            }
        }

        get("/parameter_distribution") {
            call.respond(parameterDistributionRepository.all)
        }

        get("/parameter_distribution/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val parameterDistribution = parameterDistributionRepository.getById(it)
                if (parameterDistribution.isPresent) {
                    call.respond(parameterDistribution.get())
                }
            }
        }

        get("/parameter_source") {
            call.respond(parameterSourceRepository.all)
        }

        get("/parameter_source/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val parameterSource = parameterSourceRepository.getById(it)
                if (parameterSource.isPresent) {
                    call.respond(parameterSource.get())
                }
            }
        }

        get("/parameter_subject") {
            call.respond(parameterSubjectRepository.all)
        }

        get("/parameter_subject/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val parameterSubject = parameterSubjectRepository.getById(it)
                if (parameterSubject.isPresent) {
                    call.respond(parameterSubject.get())
                }
            }
        }

        get("/population") {
            call.respond(populationRepository.all)
        }

        get("/population/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val population = populationRepository.getById(it)
                if (population.isPresent) {
                    call.respond(population.get())
                }
            }
        }

        get("/product_matrix") {
            call.respond(productMatrixRepository.all)
        }

        get("/product_matrix/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val productMatrix = productMatrixRepository.getById(it)
                if (productMatrix.isPresent) {
                    call.respond(productMatrix.get())
                }
            }
        }

        get("/product_treatment") {
            call.respond(productTreatmentRepository.all)
        }

        get("/product_treatment/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val productTreatment = productTreatmentRepository.getById(it)
                if (productTreatment.isPresent) {
                    call.respond(productTreatment.get())
                }
            }
        }

        get("/production_method") {
            call.respond(productionMethodRepository.all)
        }

        get("/production_method/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val productionMethod = productionMethodRepository.getById(it)
                if (productionMethod.isPresent) {
                    call.respond(productionMethod.get())
                }
            }
        }

        get("/publication_status") {
            call.respond(publicationStatusRepository.all)
        }

        get("/publication_status/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val modelSubclass = modelSubclassRepository.getById(it)
                if (modelSubclass.isPresent) {
                    call.respond(modelSubclass.get())
                }
            }
        }

        get("/publication_type") {
            call.respond(publicationTypeRepository.all)
        }

        get("/publication_type/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val publicationType = publicationTypeRepository.getById(it)
                if (publicationType.isPresent) {
                    call.respond(publicationType.get())
                }
            }
        }

        get("/region") {
            call.respond(regionRepository.all)
        }

        get("/region/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val region = regionRepository.getById(it)
                if (region.isPresent) {
                    call.respond(region.get())
                }
            }
        }

        get("/right") {
            call.respond(rightRepository.all)
        }

        get("/right/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val right = rightRepository.getById(it)
                if (right.isPresent) {
                    call.respond(right.get())
                }
            }
        }

        get("/sampling_method") {
            call.respond(samplingMethodRepository.all)
        }

        get("/sampling_method/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val samplingMethod = samplingMethodRepository.getById(it)
                if (samplingMethod.isPresent) {
                    call.respond(samplingMethod.get())
                }
            }
        }

        get("/sampling_point") {
            call.respond(samplingPointRepository.all)
        }

        get("/sampling_point/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val samplingPoint = samplingPointRepository.getById(it)
                if (samplingPoint.isPresent) {
                    call.respond(samplingPoint.get())
                }
            }
        }

        get("/sampling_program") {
            call.respond(samplingProgramRepository.all)
        }

        get("/sampling_program/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val samplingProgram = samplingProgramRepository.getById(it)
                if (samplingProgram.isPresent) {
                    call.respond(samplingProgram.get())
                }
            }
        }

        get("/sampling_strategy") {
            call.respond(samplingStrategyRepository.all)
        }

        get("/sampling_strategy/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val samplingStrategy = samplingStrategyRepository.getById(it)
                if (samplingStrategy.isPresent) {
                    call.respond(samplingStrategy.get())
                }
            }
        }

        get("/software") {
            call.respond(softwareRepository.all)
        }

        get("/software/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val software = softwareRepository.getById(it)
                if (software.isPresent) {
                    call.respond(software.get())
                }
            }
        }

        get("/source") {
            call.respond(sourceRepository.all)
        }

        get("/source/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val source = sourceRepository.getById(it)
                if (source.isPresent) {
                    call.respond(source.get())
                }
            }
        }

        get("/status") {
            call.respond(statusRepository.all)
        }

        get("/status/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val status = statusRepository.getById(it)
                if (status.isPresent) {
                    call.respond(status.get())
                }
            }
        }

        get("/unit") {
            call.respond(unitRepository.all)
        }

        get("/unit/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val unit = unitRepository.getById(it)
                if (unit.isPresent) {
                    call.respond(unit.get())
                }
            }
        }

        get("/unit_category") {
            call.respond(modelSubclassRepository.all)
        }

        get("/unit_category/{id}") {
            call.parameters["id"]?.toInt()?.let {
                val unitCategory = unitCategoryRepository.getById(it)
                if (unitCategory.isPresent) {
                    call.respond(unitCategory.get())
                }
            }
        }

        // Static feature. Try to access `/static/ktor_logo.svg`
        static("/static") {
            resources("static")
        }
    }
}

fun initDatabase() {

    val fastImportProperties = Properties()
    fastImportProperties["LOG"] = 0
    fastImportProperties["CACHE_SIZE"] = 65536
    fastImportProperties["LOCK_MODE"] = 0
    fastImportProperties["UNDO_LOG"] = 0

    DeleteDbFiles.execute("~", "vocabularies", true) // Delete DB if it exists
    val initialConnection = DriverManager.getConnection("jdbc:h2:~/vocabularies", fastImportProperties)

    // Load tables
    val tablesSql = object {}.javaClass.getResource("/tables.sql").readText()
    println("Creating tables")

    val statement = initialConnection.createStatement()
    statement.execute(tablesSql)

    // Insert data
    val filenames = listOf(
            "availability.sql",
            "collection_tool.sql",
            "country.sql",
            "fish_area.sql",
            "format.sql",
            "hazard_type.sql",
            "hazard.sql",
            "ind_sum.sql",
            "laboratory_accreditation.sql",
            "language_written_in.sql",
            "language.sql",
            "model_class.sql",
            "model_equation_class.sql",
            "packaging.sql",
            "parameter_distribution.sql",
            "parameter_source.sql",
            "parameter_subject.sql",
            "population.sql",
            "prodmeth.sql",
            "prodTreat.sql",
            "product_matrix.sql",
            "publication_status.sql",
            "publication_type.sql",
            "region.sql",
            "rights.sql",
            "sampling_method.sql",
            "sampling_point.sql",
            "sampling_program.sql",
            "sampling_strategy.sql",
            "software.sql",
            "sources.sql",
            "status.sql",
            "unit.sql"
    )

    for (filename in filenames) {
        println("Loading $filename")
        val sqlContent = object {}.javaClass.getResource("/initialdata/$filename").readText()
        sqlContent.lines().forEach { statement.execute(it) }
    }

    initialConnection.close()
}

private fun loadConfiguration(): Properties {

    val properties = Properties()

    val configFileInUserFolder = File(System.getProperty("user.home"), "vocabularies-app.properties")

    if (configFileInUserFolder.exists()) {
        configFileInUserFolder.inputStream().use {
            properties.load(it)
        }
    } else {
        val catalinaFolder = System.getProperty("catalina.home")
        if (catalinaFolder != null && File(catalinaFolder, "vocabularies-app.properties").exists()) {
            File(catalinaFolder, "vocabularies-app.properties").inputStream().use {
                properties.load(it)
            }
        } else {
            error("Configuration file not found")
        }
    }

    return properties
}
