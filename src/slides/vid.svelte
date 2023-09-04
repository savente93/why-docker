
<script>
    import { onMount } from 'svelte';
		import { fade } from 'svelte/transition';
		import Slide from '../lib/Slide.svelte';

let subscript;  
onMount(() => {
	let timeout; 
	subscript = new Promise(resolve => {
		timeout = setTimeout(() => resolve("(Poe's law dictates I mention this is a joke)"), 32000);
	}); 
	() => clearTimeout(timeout);
});
</script>

<Slide>
<section >
	<track kind="captions">
  <video src="assets/Python-is-a-normal-language.mp4" controls data-autoplay>
	<track kind="captions">
	</video>
</section>

{#await subscript}
{:then result}
<div transition:fade={{duration:1000}}>
	{result}
	</div>
{/await}

</Slide>

<style>

</style>
