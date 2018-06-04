<?xml version="1.0"?>
<globals>
    <global id="useSupport" type="boolean" value="${(minApiLevel lt 11)?string}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOutRRR" value="${manifestOut}/java/${slashedPackageName(packageName)}" />
</globals>
