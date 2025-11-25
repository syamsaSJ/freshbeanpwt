<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Services\RajaOngkirService;
use Filament\Models\Contracts\FilamentUser;
use Rappasoft\LaravelAuthenticationLog\Traits\AuthenticationLoggable;
use Filament\Panel;
use Spatie\Permission\Traits\HasRoles;
use TomatoPHP\FilamentTwilio\Traits\InteractsWithTwilioWhatsapp;
use Illuminate\Contracts\Auth\MustVerifyEmail;

class User extends Authenticatable implements FilamentUser, MustVerifyEmail
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;
    use InteractsWithTwilioWhatsapp;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id',
        'google_id',
        'avatar',
        'name',
        'email',
        'phone',
        'province_id',
        'city_id',
        'alamat',
        'kode_pos',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function provinsi()
    {
        return $this->belongsTo(Province::class, 'province_id');
    }

    public function kota()
    {
        return $this->belongsTo(City::class, 'city_id');
    }

    public function cartItems()
    {
        return $this->hasMany(CartItem::class);
    }

    public function order()
    {
        return $this->hasMany(Order::class);
    }

    public function canAccessPanel(Panel $panel): bool
    {
        if ($panel->getId() === 'admin') {
            return str_ends_with($this->email, '@freshbeanpurwokerto.com') && $this->hasVerifiedEmail();
        }

        return true;
    }

    public function getAvatarUrlAttribute()
    {
        return $this->avatar ? asset('storage/' . $this->avatar) : 'https://via.placeholder.com/150'; // Default avatar URL if not set
    }

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }
}
