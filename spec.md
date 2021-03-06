# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    A category has many media.
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    Media belongs to a category. 
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    Users have many media through experiences, and vice versa.
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    Media and Users have a many-to-many relationship, through experiences.
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    Experiences have a notes and a rating attribute and these can be submitted with the new experience form.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    All models have some validations.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    Medium.rb has a few scope methods, and favorites can be seen with the dynamic route '/user/:id/favorites'
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
    Users can signup, login, and logout. Passwords are encrypted and authenticated with the bcrypt gem.
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    Users can sign in with google.
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    experiences is nested under media, so media/1/experiences is an example of this.
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    I have media/1/experiences/new and also edit.
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    A list of errors will appear at the top of the page when a user fills out an invalid form, and field_with_errors is used in CSS to add a red border around improperly filled fields.

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate


