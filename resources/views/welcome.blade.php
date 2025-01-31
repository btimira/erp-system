<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- TailwindCSS -->
        @if (file_exists(public_path('build/manifest.json')) || file_exists(public_path('hot')))
            @vite(['resources/css/app.css', 'resources/js/app.js'])
        @endif
    </head>
    <body class="font-sans antialiased bg-gray-50 text-gray-800 dark:bg-gray-900 dark:text-gray-200">
        <div class="min-h-screen flex flex-col items-center justify-center">
            <header class="mb-6">
                <h1 class="text-4xl font-bold text-blue-500 dark:text-blue-400">
                    Welcome to Laravel with TailwindCSS
                </h1>
            </header>
            <main>
                <div class="grid gap-6 lg:grid-cols-2">
                    <a href="https://laravel.com/docs" class="p-6 bg-white shadow rounded-lg hover:shadow-lg transition dark:bg-gray-800">
                        <h2 class="text-2xl font-semibold">Documentation</h2>
                        <p class="mt-2 text-gray-600 dark:text-gray-300">
                            Laravel has wonderful documentation covering every aspect of the framework. Whether you are a newcomer or experienced, we recommend reading it from beginning to end.
                        </p>
                    </a>
                    <a href="https://laracasts.com" class="p-6 bg-white shadow rounded-lg hover:shadow-lg transition dark:bg-gray-800">
                        <h2 class="text-2xl font-semibold">Laracasts</h2>
                        <p class="mt-2 text-gray-600 dark:text-gray-300">
                            Laracasts offers thousands of video tutorials on Laravel, PHP, and JavaScript development. Massively level up your skills.
                        </p>
                    </a>
                </div>
            </main>
            <footer class="mt-8 text-center text-sm">
                Laravel v{{ Illuminate\Foundation\Application::VERSION }} (PHP v{{ PHP_VERSION }})
            </footer>
        </div>
    </body>
</html>
