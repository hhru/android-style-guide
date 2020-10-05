package ${packageName}.feature

import com.badoo.mvicore.element.Bootstrapper
import io.reactivex.Observable
import ${packageName}.feature.element.${featureWish}


internal class ${featureBootstrapper}: Bootstrapper<${featureWish}> {
    override fun invoke(): Observable<${featureWish}>  = Observable.just(${featureWish}.StartLoading)
}