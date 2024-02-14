import { json } from "@sveltejs/kit";
import * as edgedb from "edgedb";
import  e from '../../../../dbschema/edgeql-js';

const client = edgedb.createClient();

/**
 * @param {{ id: any; }} body
 */
export async function GET(body) {
    console.log('body', body)
    let { params } = body
    let {personid} = params
    let query = e.select(e.PersonalDetails, () => ({
       first_name: true,
       last_name: true,
       designation: true,
       contact_details: {
          email: true,
          phone: true
       },
       filter_single: {id: personid}
    }))
    const result = await query.run(client)
    return new Response(JSON.stringify(result))
 }


 export async function DELETE(pid) {
    let {params} = pid
    let {personid} = params
    let query = e.delete(e.PersonalDetails, () => ({
        filter_single: {id: personid}

    }))
    const result = await query.run(client)
    return new Response(JSON.stringify(result))
 }


 export async function PUT(a) {
   console.log(a,"/n/n/n/n")
   let b = a.params.personid

   let data = await  a.request.json()
   console.log('dataaaaaaaaaaaaaaa', data)
   let query = e.update(e.PersonalDetails, personalDetails => ({
      filter_single: {id : b},
      set: {
         first_name: data.first_name,
         last_name: data.last_name,
         designation: data.designation,
         // skills: e.update(e.Skills,(skill)=>({
         //    skill.skill_name: { "+=": data.skills[0].skill_name}
         // }))
      }
   }))
   const result = await query.run(client)
   console.log('resultttt', result)
   return new Response(JSON.stringify(result))



 }


