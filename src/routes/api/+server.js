import { json } from "@sveltejs/kit";
import * as edgedb from "edgedb";
import  e from '../../../dbschema/edgeql-js';
// import { Skills } from "../../../dbschema/edgeql-js/modules/default";

const client = edgedb.createClient();

export async function GET() {
   let query = e.select(e.PersonalDetails, () => ({
      first_name: true,
      last_name: true,
      designation: true,
      contact_details: {
         email: true,
         phone: true
      }

   }))
   const result = await query.run(client)
   return new Response(JSON.stringify(result))
}

export async function POST(data) {
   // let query = e.insert(e.PersonalDetails, {
   //    first_name: data.first_name,
   //    last_name: data.last_name,
   //    designation: data.designation,
   //    dob: data.dob,
   //    skills: data.skills.map(skill => (
   //       e.insert(e.Skills, {
   //       skill_name: skill.skill_name,
   //       skill_level: skill. skill_level
   //    })
   //    ))
   // })PersonalDetails a
   let a = await  data.request.json()
   console.log('dataaaaaaaaaaaaaaaa', a)
   let query = e.params({ person: e.json }, (params) => {
      return e.for(e.json_array_unpack(params.person), (person) => {
         return e.insert(e.PersonalDetails, {
            first_name: e.cast(e.str,person.first_name),
            last_name: e.cast(e.str,person.last_name),
            designation: e.cast(e.str,person.designation),
            dob: e.cast(e.cal.local_date, person.dob),
            skills: e.assert_distinct(e.for(e.json_array_unpack(person.skills), (skill) => {
               return e.insert(e.Skills, {
                  skill_name: skill.skill_name ? e.cast(e.str, skill.skill_name) : null,
                  skill_level: skill.skill_level ? e.cast(e.str, skill.skill_level) : null
               })
            })
              )
         });
      })  
   });
   
   console.log('query', query)
   // const result = await query.run(client)
   const result = await query.run(client, {person: [a]})
   console.log('result', result)
   return new Response(JSON.stringify(result))
}

