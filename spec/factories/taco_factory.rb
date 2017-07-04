FactoryGirl.define do
  factory :taco do
    trait :steak do
      meat 'steak'
    end
    trait :chicken do
      meat 'chicken'
    end
    trait :pork do
      meat 'pork'
    end
    trait :lamb do
      meat 'lamb'
    end
    trait :with_rice do
      rice true
    end
    trait :with_salsa do
      salsa true
    end
    trait :with_fries do
      fries true
    end
    trait :with_all_sides do
      rice true
      salsa true
      fries true
    end
    rice false
    salsa false
    fries false
  end
end