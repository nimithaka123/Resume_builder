module default {
type PersonalDetails {
    required first_name: str;
    required last_name: str;
    required dob: cal::local_date;
    designation: str; 
    link contact_details -> ContactDetails;
    multi link education -> Education;
    multi link work_experience ->  WorkExperience;
    multi link skills -> Skills;
    multi link social_media_profile ->  SocialMediaProfile;
    multi link certifications -> Certifications;
}
type ContactDetails {
    required city: str;
    required country: str;
    required pincode: str;
    required phone: str;
    required email: str;
}
type Education {
    required institute_name: str;
    required course_name: str;
    required location: str;
    required start_month: str;
    required start_year: str;
    required end_month: str;
    required end_year:str;
}
type WorkExperience {
    job_title: str;
    employer: str;
    start_month: str;
    start_year: str;
    end_month: str;
    end_year: str;
    job_description: str;
}
type Skills {
    skill_name: str;
    skill_level: str;
}
type SocialMediaProfile {
    network: str;
    url: str;
}
type Certifications {
    certificate_name: str;
    url: str;
    start_year: str;
    end_year: str;
}
}
