% Facts about diets for specific diseases
diet(diabetes, low_carb_diet).
diet(hypertension, low_sodium_diet).
diet(obesity, low_calorie_diet).
diet(heart_disease, low_saturated_fat_diet).
diet(allergies, gluten_free_diet).

% Rule to suggest a diet
suggest_diet(Disease, Diet) :-
    diet(Disease, Diet).
output:
suggest_diet(diabetes, Diet).
Diet = low_carb_diet.

?- suggest_diet(obesity, Diet).
Diet = low_calorie_diet.

?- diet(Disease, Diet).
Disease = diabetes,
Diet = low_carb_diet ;
Disease = hypertension,
Diet = low_sodium_diet ;
Disease = obesity,
Diet = low_calorie_diet ;
Disease = heart_disease,
Diet = low_saturated_fat_diet ;
Disease = allergies,
Diet = gluten_free_diet.
