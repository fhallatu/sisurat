<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class checkRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next, ...$role)
    {
        if (in_array($request->user()->hak_akses, $role)) {
            return $next($request);
        }

        return redirect('/sipesan/login');
    }
}
