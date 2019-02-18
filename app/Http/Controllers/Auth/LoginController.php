<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use App\User;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;



class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    



    /**
     * Redirect the user to the GitHub authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToProvider()
    {
        return Socialite::driver('github')->redirect();
    }

    /**
     * Obtain the user information from GitHub.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback()
    {
        $githubUser = Socialite::driver('github')->user();

        // la busqueda se puede hacer por provider_id(github la da) o por otro campo
        // se hace por email por conveniencia

        // $user = User::where('provider_id', $githubUser->getId())->first();
        $user = User::where('email', $githubUser->getEmail() )->first();

        if($user){
            if(Auth::loginUsingId($user->id)){
                // se le asigna el id de github al provider_id
                    $user = User::where('email',$githubUser->getEmail() )->update( ['provider_id'=>$githubUser->getId()] );
                  return redirect($this->redirectTo);
            }
        }else{
            return back()->withInput();
        }

        // if(!$user){
        //     // si el email no esta registrado
        //     $user = User::create([
        //         'email' => $githubUser->getEmail(),
        //         'name' => $githubUser->getName(),
        //         'avatar' => $githubUser->getAvatar(),
        //         'provider_id' => $githubUser->getId(),
        //     ]);
        // }
        


        // login the user
        // Auth::login($user, true);

        // return redirect($this->redirectTo);
    }
}
