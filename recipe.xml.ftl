<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="res/layout/activity_layout.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

    <instantiate from="res/layout/fragment_layout.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

    <instantiate from="src/app_package/MVPActivity.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/MVPContract.java.ftl" 
                    to="${escapeXmlAttribute(srcOut)}/${contractClass}.java" />

    <instantiate from="src/app_package/MVPFragment.java.ftl" 
                    to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />

    <instantiate from="src/app_package/MVPPresenter.java.ftl" 
                    to="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
   
</recipe>
