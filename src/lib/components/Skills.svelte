<main>
  {#if showExperience}
    <Experience/>
  {:else if showCertificate}
    <Certifications/>
  {:else}
    <div class="container mx-auto mt-10">
      <h2 class="text-4xl">Skills</h2>
      <div class="form-container mt-5">
        <div class="grid grid-cols-2 gap-4">
          <label class="label">
            <span>Skill Name</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Skill Name" />
          </label>
          <label class="label">
            <span>Skill Level</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Skill Level" />
          </label>
        </div>
        <div class="flex justify-between">
          <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10" on:click={toggleComponentBackWard}>Back</button>
          <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10" on:click={toggleComponent}>Next</button>
        </div>
      </div>
    </div>
  {/if}
</main>

  <script>
    import Certifications from "./Certifications.svelte";
    import Experience from "./Experience.svelte";

    let showCertificate = false
    let showExperience = false

    function toggleComponent() {
      showCertificate = true
    }
    function toggleComponentBackWard() {
      showExperience = true
    }
  </script>

