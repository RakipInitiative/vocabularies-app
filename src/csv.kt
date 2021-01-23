package de.bund.bfr.rakip

import de.bund.bfr.rakip.vocabularies.data.*
import de.bund.bfr.rakip.vocabularies.domain.*
import java.sql.Connection

fun Availability.createCsv() = "$id,$name,$comment"
fun CollectionTool.createCsv() = "$id,$name"
fun Country.createCsv() = "$id,$name,$iso"
fun FishArea.createCsv() = "$id,$name,$ssd"
fun Format.createCsv() = "$id,$name"
fun Hazard.createCsv() = "$id,$name,$ssd"
fun HazardType.createCsv() = "$id,$name"
fun IndSum.createCsv() = "$id,$name,$ssd"
fun LaboratoryAccreditation.createCsv() = "$id,$name,$ssd"
fun Language.createCsv() = "$id,$name"
fun LanguageWrittenIn.createCsv() = "$id,$name"
fun ModelClass.createCsv() = "$id,$name"
fun ModelEquationClass.createCsv() = "$id,$name"
fun ModelSubclass.createCsv() = "$id,$name,$classCategory.name"
fun Packaging.createCsv() = "$id,$name,$ssd,$comment"
fun ParameterDistribution.createCsv() = "$id,$name,$comment"
fun ParameterSource.createCsv() = "$id,$name"
fun ParameterSubject.createCsv() = "$id,$name"
fun Population.createCsv() = "$id,$name,$foodon"
fun ProductMatrix.createCsv() = "$id,$ssd,$name,$comment"
fun ProductTreatment.createCsv() = "$id,$name,$ssd,$comment"
fun PublicationStatus.createCsv() = "$id,$name,$comment"
fun PublicationType.createCsv() = "$id,$shortName,$fullName"
fun Region.createCsv() = "$id,$name,$ssd"
fun Right.createCsv() = "$id,$shortname,$fullname,$url"
fun SamplingMethod.createCsv() = "$id,$name,$sampmd,$comment"
fun SamplingPoint.createCsv() = "$id,$name,$sampnt"
fun SamplingProgram.createCsv() = "$id,$name,$progType"
fun SamplingStrategy.createCsv() = "$id,$name,$comment"
fun Software.createCsv() = "$id,$name"
fun Source.createCsv() = "$id,$name,$comment"
fun Status.createCsv() = "$id,$name,$comment"
fun de.bund.bfr.rakip.vocabularies.domain.Unit.createCsv() = "$id,$name,$comment"
fun UnitCategory.createCsv() = "$id,$name"

fun createCSV(vocabulary: String, connection: Connection): String {

    val header = "sep=,"
    val content = when (vocabulary) {
        "availability" -> AvailabilityRepository(connection).all.joinToString("\n") { it.createCsv() }
        "collection_tool" -> CollectionToolRepository(connection).all.joinToString("\n") { it.createCsv() }
        "country" -> CountryRepository(connection).all.joinToString("\n") { it.createCsv() }
        "fish_area" -> FishAreaRepository(connection).all.joinToString("\n") { it.createCsv() }
        "format" -> FormatRepository(connection).all.joinToString("\n") { it.createCsv() }
        "hazard" -> HazardRepository(connection).all.joinToString("\n") { it.createCsv() }
        "hazard_type" -> HazardTypeRepository(connection).all.joinToString("\n") { it.createCsv() }
        "ind_sum" -> IndSumRepository(connection).all.joinToString("\n") { it.createCsv() }
        "laboratory_accreditation" -> LaboratoryAccreditationRepository(connection).all.joinToString("\n") { it.createCsv() }
        "language" -> LanguageRepository(connection).all.joinToString("\n") { it.createCsv() }
        "language_written_in" -> LanguageWrittenInRepository(connection).all.joinToString("\n") { it.createCsv() }
        "model_class" -> ModelClassRepository(connection).all.joinToString("\n") { it.createCsv() }
        "model_equation_class" -> ModelEquationClassRepository(connection).all.joinToString("\n") { it.createCsv() }
        "model_subclass" -> ModelSubclassRepository(connection).all.joinToString("\n") { it.createCsv() }
        "packaging" -> PackagingRepository(connection).all.joinToString("\n") { it.createCsv() }
        "parameter_distribution" -> ParameterDistributionRepository(connection).all.joinToString("\n") { it.createCsv() }
        "parameter_source" -> ParameterSourceRepository(connection).all.joinToString("\n") { it.createCsv() }
        "parameter_subject" -> ParameterSubjectRepository(connection).all.joinToString("\n") { it.createCsv() }
        "population" -> PopulationRepository(connection).all.joinToString("\n") { it.createCsv() }
        "product_matrix" -> ProductMatrixRepository(connection).all.joinToString("\n") { it.createCsv() }
        "product_treatment" -> ProductTreatmentRepository(connection).all.joinToString("\n") { it.createCsv() }
        "publication_status" -> PublicationStatusRepository(connection).all.joinToString("\n") { it.createCsv() }
        "publication_type" -> PublicationTypeRepository(connection).all.joinToString("\n") { it.createCsv() }
        "region" -> RegionRepository(connection).all.joinToString("\n") { it.createCsv() }
        "right" -> RightRepository(connection).all.joinToString("\n") { it.createCsv() }
        "sampling_method" -> SamplingMethodRepository(connection).all.joinToString("\n") { it.createCsv() }
        "sampling_point" -> SamplingPointRepository(connection).all.joinToString("\n") { it.createCsv() }
        "sampling_program" -> SamplingProgramRepository(connection).all.joinToString("\n") { it.createCsv() }
        "sampling_strategy" -> SamplingStrategyRepository(connection).all.joinToString("\n") { it.createCsv() }
        "software" -> SoftwareRepository(connection).all.joinToString("\n") { it.createCsv() }
        "source" -> SourceRepository(connection).all.joinToString("\n") { it.createCsv() }
        "status" -> StatusRepository(connection).all.joinToString("\n") { it.createCsv() }
        "unit" -> UnitRepository(connection).all.joinToString("\n") { it.createCsv() }
        "unit_category" -> UnitCategoryRepository(connection).all.joinToString("\n") { it.createCsv() }

        else -> {
            ""
        }
    }

    return header + "\n" + content
}