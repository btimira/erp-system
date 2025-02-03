<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PermissionMiddleware
{
    public function handle(Request $request, Closure $next, $permission)
    {
        if (!Auth::check() || !in_array($permission, Auth::user()->permissions)) {
            abort(403, 'Unauthorized');
        }
        return $next($request);
    }
}
