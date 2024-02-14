<div class="table-container flex flex-col justify-center items-center">
    <div>
      <h1 class="text-4xl mt-5">Resumes</h1>
    </div>
    <table class="border-2 border-gray-900 w-1/2 mt-5">
      <thead class="text-white">
        <tr>
          <th class="py-3 bg-black">S. NO</th>
          <th class="py-3 bg-black">Name</th>
          <th class="py-3 bg-black">Profession</th>
          <th class="py-3 bg-black">Email</th>
          <th class="py-3 bg-black">Phone</th>
        </tr>
      </thead>
      <tbody class="text-center">
        {#each responseData as data, i}
          <tr class="bg-gray-200 hover:bg-gray-100">
            <td class="py-3">{i+1}</td>
            <td class="py-3">{data.first_name} {data.last_name}</td>
            <td class="py-3">{data.designation}</td>
            <td class="py-3">{data.contact_details.email}</td>
            <td class="py-3">{data.contact_details.phone}</td>
          </tr>
        {/each}
      </tbody>
    </table>
  </div>

<script>
  import axios from "axios";
  import { onMount } from "svelte";
  let responseData = []
  onMount(async () => {
    try{
      const response = await axios.get('http://localhost:5173/api')
      responseData = response. data
    }
    catch(error) {
      console.log('error',error)
    }
  })
  let tableArr= [
    {position:1, name: 'hydo', symbol: 'H', weight: '32' },
    {position:1, name: 'hydo', symbol: 'H', weight: '32' }
  ]
</script>