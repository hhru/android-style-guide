package ${packageName}.feature

import com.badoo.mvicore.element.NewsPublisher
import ${packageName}.feature.element.${featureState}
import ${packageName}.feature.element.${featureWish}
import ${packageName}.feature.element.${featureEffect}
import ${packageName}.feature.element.${featureNews}


internal class ${featureNewsPublisher}: NewsPublisher<${featureWish}, ${featureEffect}, ${featureState}, ${featureNews}> {
   
	 override fun invoke(
            action: ${featureWish},
            effect: ${featureEffect},
            state: ${featureState}
    ): ${featureNews}? {
   		// TODO не забыть про news
    	return null
    }

}