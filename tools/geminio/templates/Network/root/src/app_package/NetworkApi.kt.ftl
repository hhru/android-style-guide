package ${packageName}

import io.reactivex.Single
import retrofit2.http.GET
import retrofit2.http.Query
import ${packageName}.model.${networkModelName}


internal interface ${networkApiName} {

    @GET("path")
    fun get${entityPrefix}(@Query("param") param: String): Single<${networkModelName}>

}