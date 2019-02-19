<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Support\Facades\Lang;


class CustomResetPasswordNotification extends Notification
{
    use Queueable;

    /**
     * The password reset token.
     *
     * @var string
     */
    public $token;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($token)
    {
        $this->token = $token;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        $link = url( config('app.url')."/password/reset/?token=" . $this->token );
        $link = url(config('app.url').route('password.reset', $this->token, false));
        return (new MailMessage)
                    ->subject('Cambio de contraseña')
                    ->greeting('¡Hola!')
                    ->line(' `Nombre de usuario` recientemente solicitaste un cambio de contraseña.')
                    ->action('Cambiar contraseña', $link)
                    ->line('¡Gracias por usar Deportes Cotecnova!')
                    ->line('Si no solicitaste el cambio puedes ignorar este mensaje.')
                    ->line(Lang::getFromJson('-> '.url(config('app.url').route('password.reset', $this->token, false))));


        // return (new MailMessage)
        //     ->subject(Lang::getFromJson('reeeeeeeeeeeeeeee  '))
        //     ->line(Lang::getFromJson('You are receiving this email because we received a password reset request for your account.'))
        //     ->action(Lang::getFromJson('Reset Password'), url(config('app.url').route('password.reset', $this->token, false)))
        //     ->line(Lang::getFromJson('This password reset link will expire in :count minutes.', ['count' => config('auth.passwords.users.expire')]))
        //     ->line(Lang::getFromJson('-> '.url(config('app.url').route('password.reset', $this->token, false))));
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }

    /**
     * Set a callback that should be used when building the notification mail message.
     *
     * @param  \Closure  $callback
     * @return void
     */
    public static function toMailUsing($callback)
    {
        static::$toMailCallback = $callback;
    }
}
