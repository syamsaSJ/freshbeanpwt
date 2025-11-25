<?php

namespace App\Policies;

use Illuminate\Auth\Access\Response;
use App\Models\Review;
use App\Models\User;

class ReviewPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->can('view_any_review');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, review $review): bool
    {
        return $user->can('view_review');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->can('create_reviews');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, review $review): bool
    {
        return $user->can('update_review');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, review $review): bool
    {
        return $user->can('delete_review');
    }

    /**
     * Determine whether the user can restore the model.
     */
    public function restore(User $user, review $review): bool
    {
        return $user->can('restore_review');
    }

    /**
     * Determine whether the user can permanently delete the model.
     */
    public function forceDelete(User $user, review $review): bool
    {
        return $user->can('force_delete_review');
    }
}