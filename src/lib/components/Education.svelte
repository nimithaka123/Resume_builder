<main>
    {#if showExperience}
        <Experience/>
    {:else if showBasic}
        <BasicDetails/>
    {:else}
        <div class="container mx-auto mt-10">
            <h2 class="text-4xl">Education</h2>
            <div class="form-container mt-5">
            <div class="grid grid-cols-2 gap-4">
                {#each educationInputFields as educationInputField, index}
                    <label class="label">
                    <span>Institution Name</span>
                    <input class="input p-3 rounded-lg border" type="text" placeholder="Institution Name" />
                    </label>
                    <label class="label">
                    <span>Location</span>
                    <input class="input p-3 rounded-lg border" type="text" placeholder="Location" />
                    </label>
                    <label class="label">
                    <span>Course Name</span>
                    <input class="input p-3 rounded-lg border" type="text" placeholder="Course Name" />
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
                    {#if index < educationInputFields.length - 1}
                        <hr class="my-8 border-b-2 border-gray-200">
                        <hr class="my-8 border-b-2 border-gray-200">
                    {/if}
                {/each}
                <div></div>
                <button type="button" class="text-right " on:click={addEducationFields}><span class="text-blue-950">+ Add</span></button>
            </div>

            <div class="flex justify-between">
                <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10" on:click={toggleComponentBackward}>Back</button>
                <button type="button" class="border-2 border-blue-800 rounded-lg p-3 w-40 mt-10" on:click={toggleComponent}>Next</button>
            </div>
            </div>
        </div>
    {/if}
</main>

  <script>
    import Experience from "./Experience.svelte";
    import BasicDetails from "./BasicDetails.svelte";
	import { div } from "edgedb/dist/primitives/bigint";

    let showExperience = false
    let showBasic = false
    let educationInputFields = [{
        institutionName: '',
        location: '',
        courseName: '',
        startDateMonth: '',
        startDateYear: '',
        endDateMonth:'',
        endDateYear: ''
    }]
    function toggleComponent() {
        showExperience = true
    }

    function toggleComponentBackward() {
        showBasic = true
    }
    function addEducationFields() {
        educationInputFields = [...educationInputFields, {
        institutionName: '',
        location: '',
        courseName: '',
        startDateMonth: '',
        startDateYear: '',
        endDateMonth:'',
        endDateYear: ''}]
    }
  </script>
