<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${data.resourcesFolder}/css/bootstrap.min.css" >

    <title>RAKIP vocabularies</title>

    <script>
        let URL = "${data.endpoint}"; // Backend url
    </script>
</head>

<body>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${data.resourcesFolder}/js/jquery-3.5.1.slim.min.js"></script>
    <script src="${data.resourcesFolder}/js/popper.min.js"></script>
    <script src="${data.resourcesFolder}/js/bootstrap.min.js"></script>

    <div class="container">
        <div class="form-group row">
            <label for="vocabularySelect">Select vocabulary</label>
            <div class="col-sm-10">
                <select class="form-control" id="vocabularySelect">
                    <#list data.vocabularies as vocabulary>
                    <option>${vocabulary}</option>
                    </#list>
                </select>
            </div>
        </div>

        <table class="table table-sm">
            <thead></thead>
            <tbody></tbody>
        </table>
    </div>


    <#noparse>
    <script>
        function updateTable(vocabulary) {
            let table = document.getElementsByClassName("table")[0];

            // Clear table headings and rows
            table.tHead.innerHTML = "";
            table.tBodies[0].innerHTML = "";

            const URL = 'https://knime.bfr.berlin/vocabularies-backend/';

            if (vocabulary === "availability") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Comment</th>";

                fetch(URL + 'availability')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "collection_tool") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th>";

                fetch(URL + 'collection_tool')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "country") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>ISO</th>";

                fetch(URL + 'country')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.iso}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "fish_area") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>ISO</th>";

                fetch(URL + 'country')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.iso}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "format") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th></tr>";

                fetch(URL + 'format')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "hazard") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>SSD</th>";

                fetch(URL + 'hazard')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.ssd}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "hazard_type") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th></tr>";

                fetch(URL + 'hazard_type')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "ind_sum") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>SSD</th>";

                fetch(URL + 'ind_sum')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.ssd}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "laboratory_accreditation") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>SSD</th>";

                fetch(URL + 'laboratory_accreditation')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.ssd}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "language") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Code</th><th>Name</th>";

                fetch(URL + 'language')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.code}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "language_written_in") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th>";

                fetch(URL + 'language_written_in')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "model_class") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th>";

                fetch(URL + 'model_class')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "model_equation_class") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th>";

                fetch(URL + 'model_equation_class')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "model_subclass") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Category</th></tr>";

                fetch(URL + 'model_subclass')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.classCategory.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "packaging") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>SSD</th><th>Comment</th></tr>";

                fetch(URL + 'packaging')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: comment can be null from the backend. This needs to be fixed in the backend so that missing comments
                            // are asigned empty string instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.ssd}</td><td>${comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "parameter_distribution") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Comment</th>";

                fetch(URL + 'parameter_distribution')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "parameter_source") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th></tr>";

                fetch(URL + 'parameter_source')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "parameter_subject") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th></tr>";

                fetch(URL + 'parameter_subject')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "population") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>FoodON</tr>";

                fetch(URL + 'population')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.foodon}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    })
            } else if (vocabulary === "product_matrix") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>SSD</th><th>Name</th><th>Comment</tr>";

                fetch(URL + 'product_matrix')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: some comments from the backend are null. These comments should be checked in the backend
                            // so that all the missing comments are empty strings instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.ssd}</td><td>${entry.name}</td><td>${comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "product_treatment") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>SSD</th><th>Name</th><th>Comment</tr>";

                fetch(URL + 'product_treatment')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: some comments from the backend are null. These comments should be checked in the backend
                            // so that all the missing comments are empty strings instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.ssd}</td><td>${entry.name}</td><td>${comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "production_method") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>SSD</th><th>Name</th><th>Comment</tr>";

                fetch(URL + 'production_method')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: some comments from the backend are null. These comments should be checked in the backend
                            // so that all the missing comments are empty strings instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.ssd}</td><td>${entry.name}</td><td>${comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "publication_status") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Comment</th></tr>";

                fetch(URL + 'publication_status')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: some comments from the backend are null. These comments should be checked in the backend
                            // so that all the missing comments are empty strings instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "publication_type") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Short name</th><th>Full name</th></tr>";

                fetch(URL + 'publication_type')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: some comments from the backend are null. These comments should be checked in the backend
                            // so that all the missing comments are empty strings instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.shortName}</td><td>${entry.fullName}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "region") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>SSD</th></tr>";

                fetch(URL + 'region')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.ssd}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "right") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Short name</th><th>Full name</th><th>URL</th></tr>";

                fetch(URL + 'right')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.shortname}</td><td>${entry.fullname}</td><td>${entry.url}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "sampling_method") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Method></th><th>Comment</th></tr>";

                fetch(URL + 'sampling_method')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: some comments from the backend are null. These comments should be checked in the backend
                            // so that all the missing comments are empty strings instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.sampmd}</td><td>${comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "sampling_point") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Point</th></tr>";

                fetch(URL + 'sampling_point')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.sampnt}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "sampling_program") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Program type</th></tr>";

                fetch(URL + 'sampling_program')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.progType}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "sampling_strategy") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Comment</th></tr>";

                fetch(URL + 'sampling_strategy')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "software") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th></tr>";

                fetch(URL + 'software')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "source") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Comment</th></tr>";

                fetch(URL + 'source')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${entry.comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            } else if (vocabulary === "status") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Comment</th></tr>";

                fetch(URL + 'status')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: some comments from the backend are null. These comments should be checked in the backend
                            // so that all the missing comments are empty strings instead.
                            let comment = entry.comment ? entry.comment : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${comment}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            }
            else if (vocabulary === "unit") {

                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>SSD</th><th>Comment</th><th>Category</th></tr>";

                fetch(URL + 'unit')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");

                            // TODO: Some SSD are null. They should be empty strings.
                            let ssd = entry.ssd ? entry.ssd : "";
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td><td>${ssd}</th><td>${entry.comment}</td><td>${entry.category.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });

            } else if (vocabulary === "unit_category") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th></tr>";

                fetch(URL + 'unit_category')
                    .then((response) => response.json())
                    .then(function (myJson) {
                        for (let entry of myJson) {
                            let newRow = document.createElement("tr");
                            newRow.innerHTML = `<td>${entry.id}</td><td>${entry.name}</td>`;
                            table.tBodies[0].appendChild(newRow);
                        }
                    });
            }
        }

        // Initialize table with availability
        updateTable("availability");

        document.getElementById("vocabularySelect").addEventListener('change', (event) => {
            updateTable(event.target.value);
        });

    </script>
    </#noparse>
</body>

</html>