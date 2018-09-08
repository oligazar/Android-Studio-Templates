<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>
    <merge from="root/res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/src/app_package/dummy/DummyContent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dummy/DummyContent.kt" />

    <instantiate from="root/src/app_package/ContainerActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${ItemName}ContainerActivity.kt" />
    <instantiate from="root/res/layout/activity_container.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activity_name_container)}.xml" />

    <instantiate from="root/src/app_package/ListFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${CollectionName}Fragment.kt" />
    <instantiate from="root/res/layout/fragment_list.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragment_name_list)}.xml" />

    <instantiate from="root/src/app_package/Adapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${ItemName}Adapter.kt" />
    <instantiate from="root/res/layout/list_item.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(item_name)}.xml" />

    <instantiate from="root/src/app_package/DetailFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${DetailName}Fragment.kt" />
    <instantiate from="root/res/layout/fragment_detail.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragment_name_detail)}.xml" />

    <open file="${escapeXmlAttribute(srcOut)}/${CollectionName}Fragment.kt" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragment_name_list)}.xml" />

</recipe>
