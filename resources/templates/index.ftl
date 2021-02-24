<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${viewData.resourcesFolder}/css/bootstrap.min.css" >

    <title>RAKIP vocabularies</title>

    <script>
        let URL = "${viewData.endpoint}"; // Backend url
        let CONTEXT = "${viewData.context}";
    </script>
</head>

<body>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${viewData.resourcesFolder}/js/jquery-3.5.1.slim.min.js"></script>
<script src="${viewData.resourcesFolder}/js/popper.min.js"></script>
<script src="${viewData.resourcesFolder}/js/bootstrap.min.js"></script>

<div class="container">
    <div class="form-group row">
        <label for="vocabularySelect">Select vocabulary</label>
        <div class="col-sm-9">
            <select class="form-control" id="vocabularySelect">
                <#list viewData.vocabularies as vocabulary>
                <option>${vocabulary}</option>
            </#list>
            </select>
        </div>
        <a id="downloadButton" href="" class="btn btn-primary" role="button">Download data</a>
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
            let backendUrl = `${URL}/${CONTEXT}/`;
            if (vocabulary === "availability") {
                table.tHead.innerHTML = "<tr><th>ID</th><th>Name</th><th>Comment</th>";
                fetch(backendUrl + 'availability')
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
                fetch(backendUrl + 'collection_tool')
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
                fetch(backendUrl + 'country')
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
                fetch(backendUrl + 'country')
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
                fetch(backendUrl + 'format')
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
                fetch(backendUrl + 'hazard')
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
                fetch(backendUrl + 'hazard_type')
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
                fetch(backendUrl + 'ind_sum')
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
                fetch(backendUrl + 'laboratory_accreditation')
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
                fetch(backendUrl + 'language')
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
                fetch(backendUrl + 'language_written_in')
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
                fetch(backendUrl + 'model_class')
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
                fetch(backendUrl + 'model_equation_class')
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
                fetch(backendUrl + 'model_subclass')
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
                fetch(backendUrl + 'packaging')
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
                fetch(backendUrl + 'parameter_distribution')
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
                fetch(backendUrl + 'parameter_source')
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
                fetch(backendUrl + 'parameter_subject')
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
                fetch(backendUrl + 'population')
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
                fetch(backendUrl + 'product_matrix')
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
                fetch(backendUrl + 'product_treatment')
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
                fetch(backendUrl + 'production_method')
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
                fetch(backendUrl + 'publication_status')
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
                fetch(backendUrl + 'publication_type')
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
                fetch(backendUrl + 'region')
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
                fetch(backendUrl + 'right')
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
                fetch(backendUrl + 'sampling_method')
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
                fetch(backendUrl + 'sampling_point')
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
                fetch(backendUrl + 'sampling_program')
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
                fetch(backendUrl + 'sampling_strategy')
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
                fetch(backendUrl + 'software')
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
                fetch(backendUrl + 'source')
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
                fetch(backendUrl + 'status')
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
                fetch(backendUrl + 'unit')
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
                fetch(backendUrl + 'unit_category')
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

        function updateDownloadButton(vocabulary) {
            document.getElementById("downloadButton").href = `${URL}/${CONTEXT}/csv?vocabulary=${vocabulary}`;
        }

        let downloadButton = document.getElementById("downloadButton");

        // Initialize table with availability
        updateTable("availability");
        updateDownloadButton("availability")

        document.getElementById("vocabularySelect").addEventListener('change', (event) => {
            updateTable(event.target.value);
            updateDownloadButton(event.target.value);
        });
    </script>
</#noparse>
</body>

</html>