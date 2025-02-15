<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class RoleMiddleware
{
    public function handle(Request $request, Closure $next, $role)
    {
        Log::info('🔎 RoleMiddleware Triggered', [
            'user' => Auth::user() ? Auth::user()->toArray() : 'No user logged in',
            'user_role' => Auth::user() ? Auth::user()->role : 'No role',
            'allowed_role' => $role,
            'url' => $request->url()
        ]);

        if (!Auth::check()) {
            Log::error('🚨 RoleMiddleware: User is NOT authenticated.');
            abort(403, 'Unauthorized - Not Authenticated');
        }

        $userRole = Auth::user()->role;

        if (empty($role)) {
            Log::error('🚨 RoleMiddleware: No role parameter received.');
            abort(403, 'Unauthorized - Missing Role Parameter');
        }

        if ($userRole !== $role) {
            Log::error("🚨 RoleMiddleware: ACCESS DENIED. User Role = {$userRole}, Allowed Role = {$role}");
            abort(403, 'Unauthorized - Role Not Allowed');
        }

        return $next($request);
    }
}
