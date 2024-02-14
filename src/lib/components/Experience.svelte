<main>
  {#if showSkill}
    <Skills/>
  {:else if showEducation}
    <Education/>
  {:else}
    <div class="container mx-auto mt-10">
      <h2 class="text-4xl">Work History</h2>
      <div class="form-container mt-5">
        <div class="grid grid-cols-2 gap-4">
          <label class="label">
            <span>Job Title</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Job Title" />
          </label>
          <label class="label">
            <span>Employer</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Employer" />
          </label>
          <label class="label">
            <span>Location</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Location" />
          </label>
          <div></div>
          <label class="label">
            <span>Start Date</span>
            <div class="grid grid-cols-2 gap-4">
              <input class="input p-3 rounded-lg border" type="text" placeholder="Month" />
              <input class="input p-3 rounded-lg border" type="text" placeholder="Year" />
            </div>
          </label>
          <label class="label">
            <span>End Date</span>
            <div class="grid grid-cols-2 gap-4">
              <input class="input p-3 rounded-lg border" type="text" placeholder="Month" />
              <input class="input p-3 rounded-lg border" type="text" placeholder="Year" />
            </div>
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
    import Skills from "./Skills.svelte";
    import Education from "./Education.svelte";

    let showSkill = false
    let showEducation = false
    function toggleComponent() {
      showSkill = true
    }
    function toggleComponentBackWard() {
      showEducation = true
    }

  </script>
