CREATE MIGRATION m1fbxj25bly5pvqvmx7fi2x2sx7ko74lvvy2uxp6jzf3n2yfqz2fla
    ONTO m1mwf4rvolvxrgim37ufrbtvaheme45tvffziwxzenu5kkdapw67wq
{
  ALTER TYPE default::PersonalDetails {
      ALTER LINK contact_details {
          RESET CARDINALITY USING (SELECT
              .contact_details 
          LIMIT
              1
          );
      };
  };
};
