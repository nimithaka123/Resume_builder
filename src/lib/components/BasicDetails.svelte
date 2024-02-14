
<main>
  {#if !showEducation}
    <div class="container mx-auto mt-10">
      <h2 class="text-4xl">Basic Details</h2>
      <div class="form-container mt-5">
        <div class="grid grid-cols-2 gap-4">
          <label class="label">
            <span>First Name</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="First Name" />
          </label>
          <label class="label">
            <span>Second Name</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Second Name" />
          </label>
          <div class="col-span-2">
            <label class="label">
              <span>Profession</span>
              <input class="input p-3 rounded-lg border" type="text" placeholder="Profession" />
            </label>
          </div>
          <label class="label">
            <span>City</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="City" />
          </label>
          <div class="grid grid-cols-2 gap-4">
            <label class="label">
              <span>Country</span>
              <input class="input p-3 rounded-lg border" type="text" placeholder="Country" />
            </label>
            <label class="label">
              <span>Pin Code</span>
              <input class="input p-3 rounded-lg border" type="text" placeholder="Pin Code" />
            </label>
          </div>
          <label class="label">
            <span>Phone</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Phone" />
          </label>
          <label class="label">
            <span>Email</span>
            <input class="input p-3 rounded-lg border" type="text" placeholder="Email" />
          </label>  
        </div>
        <div class="flex justify-between">
          <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10">Back</button>
          <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10" on:click={toggleComponent}>Next</button>
        </div>
      </div>
    </div>
  {:else} 
    <Education/>
  {/if}
</main>
  <script>
    import Education from "./Education.svelte";

    let showEducation = false

    function toggleComponent() {
      showEducation = true
    }
  </script>