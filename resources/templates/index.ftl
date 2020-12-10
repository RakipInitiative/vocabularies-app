<#-- @ftlvariable name="data" type="de.bund.bfr.rakip.IndexData" -->
<html>
    <body>
        <ul>
        <#list data.items as item>
            <li>${item}</li>
        </#list>
        </ul>
    </body>
</html>
