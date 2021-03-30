package de.bund.bfr.rakip

import io.ktor.http.*
import io.ktor.server.testing.*
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertNotNull

class ApplicationTest {
    @Test
    fun testRoot() {
        withTestApplication({ module(testing = true) }) {

            handleRequest(HttpMethod.Get, "/").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertNotNull(response.content)
            }

            handleRequest(HttpMethod.Get, "/availability").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/collection_tool").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/country").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/fish_area").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/format").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/hazard").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/hazard_type").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/ind_sum").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/laboratory_accreditation").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/language").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/language_written_in").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/model_class").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/model_equation_class").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/model_subclass").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/packaging").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/parameter_distribution").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/parameter_source").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/parameter_subject").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/population").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/product_matrix").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/product_treatment").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/production_method").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/publication_status").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/publication_type").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/region").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/right").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/sampling_method").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/sampling_point").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/sampling_program").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/sampling_strategy").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/software").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/source").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/status").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/unit").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }

            handleRequest(HttpMethod.Get, "/unit_category").apply {
                assertEquals(HttpStatusCode.OK, response.status())
                assertFalse(response.content.isNullOrEmpty())
            }
        }
    }
}
