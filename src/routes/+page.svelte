<script lang="ts">
	import { base } from '$app/paths';
	import { onMount } from 'svelte';

	onMount(() => {
		window.location.replace(`${base}/users.html`);
	});
</script>
