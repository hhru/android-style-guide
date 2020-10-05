package ${packageName}.feature.element



internal sealed class ${featureState} {
	
	object LoadingState: ${featureState}()

	data class DataState(val title: String): ${featureState}()

}