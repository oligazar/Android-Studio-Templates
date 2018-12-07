<?xml version="1.0"?>
<recipe>

<#if useSupport>
    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    <dependency mavenUrl="com.android.support:design:${buildApi}.+"/>
</#if>
    <merge from="root/res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
    <merge from="root/res/values/styles.xml" to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
    <merge from="root/res/values/colors.xml" to="${escapeXmlAttribute(resOut)}/values/colors.xml" />

<#if includeLayout>
    <instantiate from="root/res/menu/menu_file.xml" to="${escapeXmlAttribute(resOut)}/menu/menu_${escapeXmlAttribute(fragmentName)}.xml" />
    <instantiate from="root/res/drawable/ic_check_white.xml" to="${escapeXmlAttribute(resOut)}/drawable/ic_check_white.xml" />
    <instantiate from="root/res/drawable/ic_clear_white.xml" to="${escapeXmlAttribute(resOut)}/drawable/ic_clear_white.xml" />
</#if>

<#if includeLayout>
    <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <instantiate from="root/src/app_package/BlankFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

</recipe>
