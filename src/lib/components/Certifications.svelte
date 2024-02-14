<main>
  {#if showSocialMedia}
    <SocialMediaProfile/>
  {:else if showSkill}
    <Skills/>
  {:else}
    <div class="container mx-auto mt-10">
      <h2 class="text-4xl">Certifications</h2>
      <div class="form-container mt-5">
        <div class="grid grid-cols-2 gap-4">
          <label class="label">
            <span>Certification Name</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Certification Name" />
          </label>
          <label class="label">
            <span>Url</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Url" />
          </label>
          <label class="label">
            <span>Start Year</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Start Year" />
          </label>
          <label class="label">
            <span>End Year</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="End Year" />
          </label>
        </div>
        <div class="flex justify-between">
          <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10" on:click={toggleComponentBackWard}>Back</button>
          <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10" on:click={toggleComponentForward}>Next</button>
        </div>
      </div>
    </div>
  {/if}
</main>

  <script>
    import SocialMediaProfile from "./SocialMediaProfile.svelte";
    import Skills from "./Skills.svelte";

    let showSocialMedia = false
    let showSkill = false
    function toggleComponentForward() {
      showSocialMedia = true
    }

    function toggleComponentBackWard() {
      showSkill = true
    }
  </script>
