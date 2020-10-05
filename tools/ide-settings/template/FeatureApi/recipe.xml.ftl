<?xml version="1.0"?>
<recipe>
    
	<instantiate 
        from="src/app_package/FeatureApi.kt.ftl"
		to="${srcOutRRR}/api/${featureApi}.kt" />

    <open file="${srcOutRRR}/api/${featureApi}.kt" />
    

    <instantiate 
        from="src/app_package/FeatureApiImpl.kt.ftl"
        to="${srcOutRRR}/api/${featureApi}Impl.kt" />

    <open file="${srcOutRRR}/api/${featureApi}Impl.kt" />


    <instantiate 
        from="src/app_package/FeatureDeps.kt.ftl"
        to="${srcOutRRR}/api/${featureDeps}.kt" />

    <open file="${srcOutRRR}/api/${featureDeps}.kt" />


   <instantiate 
        from="src/app_package/FeatureFacade.kt.ftl"
        to="${srcOutRRR}/api/${featureFacade}.kt" />

    <open file="${srcOutRRR}/api/${featureFacade}.kt" />


    <instantiate 
        from="src/app_package/FeatureModule.kt.ftl"
        to="${srcOutRRR}/api/${featureModuleName}.kt" />

    <open file="${srcOutRRR}/api/${featureModuleName}.kt" />



</recipe>
