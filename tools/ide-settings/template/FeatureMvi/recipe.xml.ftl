<?xml version="1.0"?>
<recipe>
    

     <!--element-->
    <instantiate 
        from="src/app_package/element/FeatureEffect.kt.ftl"
        to="${srcOutRRR}/feature/element/${featureEffect}.kt" />

    <open file="${srcOutRRR}/feature/element/${featureEffect}.kt" />

    <instantiate 
        from="src/app_package/element/FeatureNews.kt.ftl"
        to="${srcOutRRR}/feature/element/${featureNews}.kt" />

    <open file="${srcOutRRR}/feature/element/${featureNews}.kt" />

    <instantiate 
        from="src/app_package/element/FeatureState.kt.ftl"
        to="${srcOutRRR}/feature/element/${featureState}.kt" />

    <open file="${srcOutRRR}/feature/element/${featureState}.kt" />

    <instantiate 
        from="src/app_package/element/FeatureWish.kt.ftl"
        to="${srcOutRRR}/feature/element/${featureWish}.kt" />

    <open file="${srcOutRRR}/feature/element/${featureWish}.kt" />

     <!--feature-->

	<instantiate 
        from="src/app_package/Feature.kt.ftl"
		to="${srcOutRRR}/feature/${featureName}.kt" />

    <open file="${srcOutRRR}/feature/${featureName}.kt" />

    <instantiate 
        from="src/app_package/FeatureActor.kt.ftl"
        to="${srcOutRRR}/feature/${featureActor}.kt" />

    <open file="${srcOutRRR}/feature/${featureActor}.kt" />

    <instantiate 
        from="src/app_package/FeatureBootstrapper.kt.ftl"
        to="${srcOutRRR}/feature/${featureBootstrapper}.kt" />

    <open file="${srcOutRRR}/feature/${featureBootstrapper}.kt" />

    <instantiate 
        from="src/app_package/FeatureNewsPublisher.kt.ftl"
        to="${srcOutRRR}/feature/${featureNewsPublisher}.kt" />

    <open file="${srcOutRRR}/feature/${featureNewsPublisher}.kt" />

    <instantiate 
        from="src/app_package/FeatureReducer.kt.ftl"
        to="${srcOutRRR}/feature/${featureReducer}.kt" />

    <open file="${srcOutRRR}/feature/${featureReducer}.kt" />


</recipe>
