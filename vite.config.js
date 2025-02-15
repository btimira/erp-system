import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/sass/app.scss',
                'resources/js/app.js',
                'resources/css/app.css',
            ],
            refresh: true,
        }),
    ],
    server: {
        host: '127.0.0.1',  // Ensure it's set correctly
        port: 5173,         // Default Vite port
        strictPort: true,
        watch: {
            usePolling: true,
        },
    }
});
