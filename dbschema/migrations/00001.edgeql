CREATE MIGRATION m1mwf4rvolvxrgim37ufrbtvaheme45tvffziwxzenu5kkdapw67wq
    ONTO initial
{
  CREATE TYPE default::Certifications {
      CREATE PROPERTY certificate_name: std::str;
      CREATE PROPERTY end_year: std::str;
      CREATE PROPERTY start_year: std::str;
      CREATE PROPERTY url: std::str;
  };
  CREATE TYPE default::ContactDetails {
      CREATE REQUIRED PROPERTY city: std::str;
      CREATE REQUIRED PROPERTY country: std::str;
      CREATE REQUIRED PROPERTY email: std::str;
      CREATE REQUIRED PROPERTY phone: std::str;
      CREATE REQUIRED PROPERTY pincode: std::str;
  };
  CREATE TYPE default::Education {
      CREATE REQUIRED PROPERTY course_name: std::str;
      CREATE REQUIRED PROPERTY end_month: std::str;
      CREATE REQUIRED PROPERTY end_year: std::str;
      CREATE REQUIRED PROPERTY institute_name: std::str;
      CREATE REQUIRED PROPERTY location: std::str;
      CREATE REQUIRED PROPERTY start_month: std::str;
      CREATE REQUIRED PROPERTY start_year: std::str;
  };
  CREATE TYPE default::Skills {
      CREATE PROPERTY skill_level: std::str;
      CREATE PROPERTY skill_name: std::str;
  };
  CREATE TYPE default::SocialMediaProfile {
      CREATE PROPERTY network: std::str;
      CREATE PROPERTY url: std::str;
  };
  CREATE TYPE default::WorkExperience {
      CREATE PROPERTY employer: std::str;
      CREATE PROPERTY end_month: std::str;
      CREATE PROPERTY end_year: std::str;
      CREATE PROPERTY job_description: std::str;
      CREATE PROPERTY job_title: std::str;
      CREATE PROPERTY start_month: std::str;
      CREATE PROPERTY start_year: std::str;
  };
  CREATE TYPE default::PersonalDetails {
      CREATE MULTI LINK certifications: default::Certifications;
      CREATE MULTI LINK contact_details: default::ContactDetails;
      CREATE MULTI LINK education: default::Education;
      CREATE MULTI LINK skills: default::Skills;
      CREATE MULTI LINK social_media_profile: default::SocialMediaProfile;
      CREATE MULTI LINK work_experience: default::WorkExperience;
      CREATE PROPERTY designation: std::str;
      CREATE REQUIRED PROPERTY dob: cal::local_date;
      CREATE REQUIRED PROPERTY first_name: std::str;
      CREATE REQUIRED PROPERTY last_name: std::str;
  };
};
