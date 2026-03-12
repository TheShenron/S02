import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
    testDir: './tests',
    fullyParallel: false,
    retries: 0,
    workers: 1,

    reporter: [
        ['json', { outputFile: 'playwright-report/report.json' }]
    ],

    use: {
        baseURL: 'http://localhost:8000',
        headless: true,
        trace: 'off',
        screenshot: 'off',
        video: 'off'
    },

    webServer: {
        command: 'uvicorn app.main:app --host 0.0.0.0 --port 8000',
        port: 8000,
        reuseExistingServer: false,
        timeout: 120000
    },

    projects: [
        {
            name: 'chromium',
            use: { ...devices['Desktop Chrome'] }
        }
    ]
});