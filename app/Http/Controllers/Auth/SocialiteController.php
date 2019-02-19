<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;

use App\SocialAccount;
use App\User;

use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Auth\Events\Registered as RegisteredEvent;
use Illuminate\Foundation\Auth\RedirectsUsers;

class SocialiteController extends Controller
{
    use RedirectsUsers;
    /**
     * Redirect the user to the Provider authentication page.
     *
     * @param $provider String
     * @return mixed
     */
    public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }
    /**
     * Obtain the user information from Provider.
     *
     * @param $provider string
     * @throws \Exception
     * @throws \Throwable     
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handleProviderCallback($provider)
    {
        try {
            $providerUser = Socialite::driver($provider)->user();
        } catch (\Throwable | \Exception $e) {
            // Send actual error message in development
            if (config('app.debug')) {
                throw $e;
            }
            // Lets suppress this error
            return redirect()->route('login')
                ->with('error', __('No fue posible autenticarte. Por favor intentalo de nuevo con un correo valido.'));
        }

        DB::beginTransaction();
        $user = $this->findOrCreateUser($provider, $providerUser);
        if($user){
            Auth::login($user, true);
            // This session variable can help to determine if user is logged-in via socialite
            session()->put([
                'auth.social_id' => $providerUser->getId()
            ]);
            DB::commit();
            return $this->authenticated($user)
                ?: redirect()->intended($this->redirectPath());
        }else{
            Auth::logout();
            return view('/welcome');
        }
    }


    /**
     * Create a user if does not exist
     *
     * @param $providerName string
     * @param $providerUser
     * @return mixed
     */
    protected function findOrCreateUser($providerName, $providerUser)
    {
        $social = SocialAccount::firstOrNew([
            'provider_user_id' => $providerUser->getId(),
            'provider' => $providerName
        ]);
        // returna el user si lo encuentra
        // de no encontrarlo se returna NULL para ser direccionado.
        if ($social->exists) {
            return $social->user;
        }else{
            return $user=NULL;
        }


        // Si se quiere crear el user.
        // se debe returnar el user.

        // $user = User::firstOrNew([
        //     'email' => $providerUser->getEmail()
        // ]);
        // if (!$user->exists) {
        //     $user->name = $providerUser->getName();
        //     $user->password = bcrypt(str_random(30));
        //     $user->save();
        //     event(new RegisteredEvent($user));
        // }
        // $social->user()->associate($user);
        // $social->save();
        // return $user;
    }


    /**
     * The user has been authenticated.
     *
     * @param  User $user
     * @return mixed
     */
    protected function authenticated(User $user)
    {
    }
    /**
     * Where to redirect users after login.
     *
     * @return string
     */
    protected function redirectTo()
    {
        if(\Auth::user()->hasRole('user') || \Auth::user()->hasRole('admin')){
            return '/home';
        }
    }
}