<?xml version="1.0"?>
<globals>
    <#assign useSupport=(minApiLevel lt 23)>
    <global id="useSupport" type="boolean" value="${useSupport?string}" />
    <global id="SupportPackage" value="${useSupport?string('.support.v4','')}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOutRRR" value="${manifestOut}/kotlin/com/redmadrobot/app/presentation/${subPackage}" />
    <global id="srcOut" value="${manifestOut}/kotlin/com/redmadrobot/app" />
    
    <global id="currentPackage" value="${packageName}.presentation.${subPackage}" />
</globals>
