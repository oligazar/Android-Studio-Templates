<?xml version="1.0"?>
<globals>

    <#assign ItemName=extractLetters(itemName)>
    <#assign itemName=ItemName?lower_case>

    <global id="ItemName" value="${ItemName}" />
    <global id="CollectionName" value="${ItemName}List" />
    <global id="DetailName" value="${ItemName}Detail" />

    <global id="activity_name_container" value="activity_${itemName}_container" />
    <global id="fragment_name_list" value="fragment_${itemName}_list" />
    <global id="fragment_name_detail" value="fragment_${itemName}_detail" />
    <global id="item_name" value="item_${itemName}" />

    <#assign useSupport=(minApiLevel lt 23)>
    <global id="useSupport" type="boolean" value="${useSupport?string}" />
    <global id="SupportPackage" value="${useSupport?string('.support.v4','')}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
</globals>
