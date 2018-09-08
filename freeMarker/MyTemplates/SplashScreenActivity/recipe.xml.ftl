<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>

    <#if includeRx>
        <dependency mavenUrl="io.reactivex:rxandroid:1.2.1"/>
        <dependency mavenUrl="io.reactivex:rxjava:1.1.6"/>
    </#if>

    <merge from="root/res/values/colors.xml" to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
    <merge from="root/res/values/styles.xml" to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
    
    <copy from="root/res/drawable/bg_splash.xml" to="${escapeXmlAttribute(resOut)}/drawable/bg_splash.xml" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <instantiate from="root/src/app_package/SplashScreenActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

</recipe>
