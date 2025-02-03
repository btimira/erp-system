<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class RoleMiddleware
{
    public function handle(Request $request, Closure $next, ...$roles)
    {
        Log::info('🔎 RoleMiddleware Triggered', [
            'user' => Auth::user() ? Auth::user()->toArray() : 'No user logged in',
            'user_role' => Auth::user() ? Auth::user()->role : 'No role',
            'allowed_roles' => $roles,
            'url' => $request->url()
        ]);

        if (!Auth::check()) {
            Log::error('🚨 RoleMiddleware: User is NOT authenticated.');
            abort(403, 'Unauthorized - Not Authenticated');
        }

        $userRole = Auth::user()->role;

        if (empty($roles)) {
            Log::error('🚨 RoleMiddleware: No role parameter received.');
            abort(403, 'Unauthorized - Missing Role Parameter');
        }

        if (!in_array($userRole, $roles)) {
            Log::error("🚨 RoleMiddleware: ACCESS DENIED. User Role = {$userRole}, Allowed Roles = " . implode(',', $roles));
            abort(403, 'Unauthorized - Role Not Allowed');
        }

        return $next($request);
    }
}
