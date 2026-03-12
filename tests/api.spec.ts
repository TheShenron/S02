import { test, expect } from '@playwright/test';

test('hello endpoint', async ({ request }) => {

    const res = await request.get('/hello');

    expect(res.status()).toBe(200);

    const body = await res.json();

    expect(body.message).toBe('Hello World');

});