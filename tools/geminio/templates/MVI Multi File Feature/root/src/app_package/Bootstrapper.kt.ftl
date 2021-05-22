package ${packageName}.${featurePackage}

import ${packageName}.${featurePackage}.model.${wishName}
import com.badoo.mvicore.element.Bootstrapper
import io.reactivex.Observable

internal class ${bootstrapperName} : Bootstrapper<${wishName}> {

    override fun invoke(): Observable<${wishName}> {
        TODO()
    }

}
