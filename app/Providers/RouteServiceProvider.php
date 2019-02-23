<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-23 07:44:41 
 * @Last Modified by:   CristianMarinT 
 * @Last Modified time: 2019-02-23 07:44:41 
 */

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();  //for api routes
        
        $this->mapWebRoutes();  //for our common web routes

        $this->mapAdminWebRoutes();  //for the admin web routes

        $this->mapUserWebRoutes();  //for user web routes
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes()
    {
        Route::middleware('web')
             ->namespace($this->namespace)
             ->group(base_path('routes/web/web.php'));
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('api')
             ->middleware('api')
             ->namespace($this->namespace)
             ->group(base_path('routes/api/api.php'));
    }

    /**
    * Define the admin specific "web" routes for the application.
    * These routes all receive session state, CSRF protection, etc.
    *
    * @return void
    */
    protected function mapAdminWebRoutes()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->prefix('admin')
            ->group(base_path('routes/web/admin.php'));
    }
    /**
    * Define the user specific "web" routes for the application.
    * These routes all receive session state, CSRF protection, etc.
    *
    * @return void
    */
    protected function mapUserWebRoutes()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            // ->prefix('user') si se activa la ruta será app.com/user/calendario
            ->group(base_path('routes/web/user.php'));
    }
}
