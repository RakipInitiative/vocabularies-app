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
        <div class="col-sm-10">
            <select class="form-control" id="vocabularySelect">
                <#list viewData.vocabularies as vocabulary>
                <option>${vocabulary}</option>
                </#list>
            <script>
                let select = document.getElementById("vocabularySelect");
                select.value="hazard";
                select.onchange = () => window.location = URL + select.value;
            </script>
            </select>
        </div>
    </div>

    <table class="table table-sm">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>SSD</th>
            </tr>
        </thead>
        <tbody>
            <#list entries as entry>
            <tr>
                <td>${entry.id}</td>
                <td>${entry.name}</td>
                <td>${entry.ssd}</td>
            </tr>
            </#list>
        </tbody>
    </table>
</div>
</body>

</html>