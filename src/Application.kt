package de.bund.bfr.rakip

import com.fasterxml.jackson.databind.SerializationFeature
import de.bund.bfr.rakip.vocabularies.data.*
import de.bund.bfr.rakip.vocabularies.domain.*
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

/**
 * Filename of configuration file.
 */
const val CONFIG_FILE = "vocabularies-app.properties"

val appConfiguration = loadConfiguration()

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
        val vocabularies = listOf(
            "availability", "collection_tool", "country", "fish_area", "format", "hazard",
            "hazard_type", "ind_sum", "laboratory_accreditation", "language", "language_written_in",
            "model_class", "model_equation_class", "model_subclass", "packaging",
            "parameter_distribution", "parameter_source", "parameter_subject", "population",
            "product_matrix", "product_treatment", "production_method", "publication_status",
            "publication_type", "region", "right", "sampling_method", "sampling_point",
            "sampling_program", "sampling_strategy", "software", "source", "status", "unit",
            "unit_category"
        )
        val endpoint = appConfiguration.getProperty("base_url")
        val context = appConfiguration.getProperty("context") ?: ""
        val resourcesFolder = "static"
    }

    routing {
        get("/") {
            call.respond(FreeMarkerContent("index.ftl", mapOf("viewData" to viewData), ""))
        }

        get("/availability") {
            call.respond(availabilityRepository.all)
        }

        get("/collection_tool") {
            call.respond(collectionToolRepository.all)
        }

        get("/country") {
            call.respond(countryRepository.all)
        }

        get("/fish_area") {
            call.respond(fishAreaRepository.all)
        }

        get("/format") {
            call.respond(formatRepository.all)
        }

        get("/hazard") {
            call.respond(hazardRepository.all)
        }

        get("/hazard_type") {
            call.respond(hazardTypeRepository.all)
        }

        get("/ind_sum") {
            call.respond(indSumRepository.all)
        }

        get("/laboratory_accreditation") {
            call.respond(laboratoryAccreditationRepository.all)
        }

        get("/language") {
            call.respond(languageRepository.all)
        }

        get("/language_written_in") {
            call.respond(languageWrittenInRepository.all)
        }

        get("/model_class") {
            call.respond(modelClassRepository.all)
        }

        get("/model_equation_class") {
            call.respond(modelEquationClassRepository.all)
        }

        get("/model_subclass") {
            call.respond(modelSubclassRepository.all)
        }

        get("/packaging") {
            // TODO: comment can be null from the lib. This needs to be fixed in the lib so that missing comments
            // are asigned empty string instead.
            val originalPackaging = packagingRepository.all
            val fixedPackaging = originalPackaging.map {
                Packaging(it.id, it.name, it.ssd, it.comment ?: "")
            }
            call.respond(fixedPackaging)
        }

        get("/parameter_distribution") {
            // TODO: comment can be null from the lib. This needs to be fixed in the lib so that missing comments
            // are assigned empty string instead.
            val originalDistributions = parameterDistributionRepository.all
            val fixedDistributions = originalDistributions.map {
                ParameterDistribution(it.id, it.name, it.comment ?: "")
            }
            call.respond(fixedDistributions)
        }

        get("/parameter_source") {
            call.respond(parameterSourceRepository.all)
        }

        get("/parameter_subject") {
            call.respond(parameterSubjectRepository.all)
        }

        get("/population") {
            call.respond(populationRepository.all)
        }

        get("/product_matrix") {
            // TODO: comment can be null from the lib. This needs to be fixed in the lib so that missing comments
            // are asigned empty string instead.
            val originalMatrices = productMatrixRepository.all
            val fixedMatrices = originalMatrices.map {
                ProductMatrix(it.id, it.ssd, it.name, it.comment ?: "")
            }
            call.respond(fixedMatrices)
        }

        get("/product_treatment") {
            // TODO: comment can be null from the lib. This needs to be fixed in the lib so that missing comments
            // are assigned empty string instead.
            val originalTreatments = productTreatmentRepository.all
            val fixedTreatments = originalTreatments.map {
                ProductTreatment(it.id, it.name, it.ssd, it.comment ?: "")
            }
            call.respond(fixedTreatments)
        }

        get("/production_method") {
            call.respond(productionMethodRepository.all)
        }

        get("/publication_status") {
            // TODO: comment can be null from the lib. This needs to be fixed in the lib so that missing comments
            // are assigned empty string instead.
            val originalStatus = publicationStatusRepository.all
            val fixedStatus = originalStatus.map {
                PublicationStatus(it.id, it.name, it.comment ?: "")
            }
            call.respond(publicationStatusRepository.all)
        }

        get("/publication_type") {
            call.respond(publicationTypeRepository.all)
        }

        get("/region") {
            call.respond(regionRepository.all)
        }

        get("/right") {
            call.respond(rightRepository.all)
        }

        get("/sampling_method") {
            // TODO: workaround. comment can be null. These need to be replaced with empty
            // string in the library
            val originalMethods = samplingMethodRepository.all
            val fixedMethods = originalMethods.map {
                SamplingMethod(it.id, it.name, it.sampmd, it.comment ?: "")
            }
            call.respond(fixedMethods)
        }

        get("/sampling_point") {
            call.respond(samplingPointRepository.all)
        }

        get("/sampling_program") {
            call.respond(samplingProgramRepository.all)
        }

        get("/sampling_strategy") {
            // TODO: nullable comments
            val originalStrategies = samplingStrategyRepository.all
            val fixedStrategies = originalStrategies.map {
                SamplingStrategy(it.id, it.name, it.comment ?: "")
            }
            call.respond(samplingStrategyRepository.all)
        }


        get("/software") {
            call.respond(softwareRepository.all)
        }

        get("/source") {
            call.respond(sourceRepository.all)
        }

        get("/status") {
            // TODO: nullable comments
            val originalStatus = statusRepository.all
            val fixedStatus = originalStatus.map {
                PublicationStatus(it.id, it.name, it.comment ?: "")
            }
            call.respond(fixedStatus)
        }

        get("/unit") {
            // TODO: nullable ssd
            val originalUnits = unitRepository.all
            val fixedUnits = originalUnits.map { Unit(it.id, it.name, it.ssd ?: "", it.comment, it.category) }
            call.respond(fixedUnits)
        }

        get("/unit_category") {
            call.respond(unitCategoryRepository.all)
        }

        get("/csv") {
            call.parameters["vocabulary"]?.let {

                // Create temporary file with csvString
                 val csvString = createCSV(it, connection)
                val csvFile = createTempFile(it, ".csv")
                csvFile.writeText(csvString)

                // Return temporary file
                call.response.header("Content-Disposition", "attachment; filename=${it}.csv")
                call.respondFile(csvFile)

                // Delete temporary file
                csvFile.delete()
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

    val configFileInUserFolder = File(System.getProperty("user.home"), CONFIG_FILE)

    if (configFileInUserFolder.exists()) {
        configFileInUserFolder.inputStream().use {
            properties.load(it)
        }
    } else {
        val catalinaFolder = System.getProperty("catalina.home")
        if (catalinaFolder != null && File(catalinaFolder, CONFIG_FILE).exists()) {
            File(catalinaFolder, CONFIG_FILE).inputStream().use {
                properties.load(it)
            }
        } else {
            error("Configuration file not found")
        }
    }

    return properties
}
