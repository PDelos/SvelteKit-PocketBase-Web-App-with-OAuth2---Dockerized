import { PUBLIC_REDIRECT_URI } from '$env/static/public';
import { error, redirect } from '@sveltejs/kit';
import type { RequestHandler } from './$types';
import type { AuthProviderInfo } from 'pocketbase';

export const GET: RequestHandler = async ({ locals, url, cookies }) => {
	const provider: AuthProviderInfo | undefined = JSON.parse(cookies.get('provider') || 'null');
	if (!provider) throw error(400, 'Missing provider');

	const code: string | null = url.searchParams.get('code');
	const state: string | null = url.searchParams.get('state');

	if (!code || !state) {
		throw error(400, 'Missing code or state');
	}

	if (state !== provider.state) {
		throw error(400, 'Invalid state');
	}

	// clear the cookie after use
	cookies.delete('provider', {path: '/'});

	try {
		await locals.pb
			.collection('users')
			.authWithOAuth2Code(
				provider.name, 
				code, 
				provider.codeVerifier, 
				PUBLIC_REDIRECT_URI
			);
	} catch (err) {
		console.error(err);
		throw error(500, 'Something went wrong logging in');
	}

	// redirect back home
	throw redirect(302, '/');
};
