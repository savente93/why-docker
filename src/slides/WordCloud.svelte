<script>
  import D3WordCloud from "../lib/D3WordCloud.svelte";
  import Slide from "../lib/Slide.svelte";
  let words = [
    { text: "container", count: Math.floor(Math.random() * 50 + 25) },
    { text: "runtime", count: Math.floor(Math.random() * 50 + 25) },
    { text: "virtualisation", count: Math.floor(Math.random() * 50 + 25) },
    { text: "virtual machine", count: Math.floor(Math.random() * 50 + 25) },
    { text: "cloud optimised", count: Math.floor(Math.random() * 50 + 25) },
    { text: "reproducible", count: Math.floor(Math.random() * 50 + 25) },
    { text: "hypervisor", count: Math.floor(Math.random() * 50 + 25) },
    { text: "marine themed", count: Math.floor(Math.random() * 50 + 25) },
    { text: "free", count: Math.floor(Math.random() * 50 + 25) },
    { text: "easy", count: Math.floor(Math.random() * 50 + 25) },
    { text: "verbose", count: Math.floor(Math.random() * 50 + 25) },
  ];
</script>

<Slide>
  <h2>So what is docker?</h2>
  <div class="canvas">
    <ul>
      <D3WordCloud backgroundColor="#191919" {words} />
    </ul>
    <svg class="fragment fade-in" width="500" height="500">
      <path
        fill-opacity="0"
        stroke-width="37"
        stroke="#B00"
        d="M86,88a230,230 0 1,0 1-1zL412,412"
      />
    </svg>
  </div>
</Slide>

<style>
  .canvas svg {
    position: absolute;
    top: 15vh;
    left: 20vw;
  }
</style>
