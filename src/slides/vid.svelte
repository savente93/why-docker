
<script>
		import { fade } from 'svelte/transition';
		import Slide from '../lib/Slide.svelte';

let subscript = undefined;  
let scheduleFade = () => {
	let timeout; 
	subscript = new Promise(resolve => {
		timeout = setTimeout(() => resolve("(Poe's law dictates I mention this is a joke)"), 3000);
	}); 
	() => clearTimeout(timeout);
	
}

</script>

<Slide>
	<track kind="captions">
  <video on:play={scheduleFade} src="assets/Python-is-a-normal-language.mp4" controls >
	<track kind="captions">
	</video>

<p class="fragment center fade-up slow-animation">
(Poe's law dictates I mention this is a joke)
</p>

<p class="fragment center fade-up slow-animation">
Credit <a href="https://youtu.be/BgxklT94W0I?si=ndmToBJx-vpFPEKw">Programmers are also human @ Youtube </a>
</p>
</Slide>

<style>
.slow-animation {
 transition: all 1s ease;   
}

</style>
