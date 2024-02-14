<script>
let names = [
    {
        firstName: 'Nim',
        lastName: 'K A'
    },
    {
        firstName: 'Tim',
        lastName: 'K A'
    },
    {
        firstName: 'Tom',
        lastName: 'K A'
    },
]
</script>


{#each names as name(name)}
<slot name="hero"/>
{/each}