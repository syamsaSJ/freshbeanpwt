<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\View;
use App\Models\User;
use Illuminate\Http\JsonResponse;

class ProfileController extends Controller
{
    /**
     * Display the user's profile form.
     */
    public function edit(Request $request): View
    {
        return view('profile.edit', [
            'user' => $request->user(),
        ]);
    }

    /**
     * Update the user's profile information.
     */
    public function update(ProfileUpdateRequest $request)
    {
        $user = $request->user();
        $data = $request->validated();

        if ($request->hasFile('avatar')) {
            if ($user->avatar) {
                Storage::delete('public/' . $user->avatar);
            }

            $avatarPath = $request->file('avatar')->store('avatars', 'public');
            $data['avatar'] = $avatarPath;
        }

        $user->fill($data);

        if ($user->isDirty('email')) {
            $user->email_verified_at = null;
        }

        $user->save();

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'message' => 'Profile updated successfully.',
                'updated_avatar_url' => $user->avatar ? asset('storage/' . $user->avatar) : null,
                'updated_name' => $user->name,
                'updated_email' => $user->email,
                'updated_phone' => $user->phone,
            ]);
        }

        return Redirect::route('profile.edit')->with('status', 'profile-updated');
    }

    public function addAddress(Request $request)
    {
        $request->validate([
            'province_id' => ['required', 'integer'],
            'city_id' => ['required', 'integer'],
            'alamat' => ['required', 'string', 'max:255'],
            'kode_pos' => ['required', 'string', 'max:10'],
        ]);

        $user = $request->user();
        $user->update($request->only('province_id', 'city_id', 'alamat', 'kode_pos'));

        return response()->json(['success' => true]);
    }

    /**
     * Update the user's address information.
     */
    public function updateAddress(Request $request)
    {
        $request->validate([
            'province_id' => ['required', 'integer'],
            'city_id' => ['required', 'integer'],
            'alamat' => ['required', 'string', 'max:255'],
            'kode_pos' => ['required', 'string', 'max:10'],
        ]);

        $user = $request->user();
        $user->update($request->only('province_id', 'city_id', 'alamat', 'kode_pos'));

        return response()->json([
            'success' => true,
            'updated_address' => [
                'province_name' => $user->province_name,
                'city_name' => $user->city_name,
                'alamat' => $user->alamat,
                'kode_pos' => $user->kode_pos
            ]
        ]);
    }

    /**
     * Delete the user's account.
     */
    public function destroy(Request $request): RedirectResponse
    {
        $request->validateWithBag('userDeletion', [
            'password' => ['required', 'current_password'],
        ]);

        $user = $request->user();

        Auth::logout();

        if ($user->avatar) {
            Storage::delete('public/' . $user->avatar);
        }

        $user->delete();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return Redirect::to('/');
    }
}
