require 'rails_helper'

RSpec.describe Recipe do 
  it 'exists' do 
    country = 'Spain'
    data = {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_3a551652abf5a1cef1421660d1b657d9",
          "label": "Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
          "image": "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=cdc9fd7bc254485a9994a420ae2b64eff5cba87a72f94e31361de5b6142cd6ad",
      }
    }

  recipe = Recipe.new(data, country)

  expect(recipe).to be_a(Recipe)
  expect(recipe.title).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
  expect(recipe.image).to eq("https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIb%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDAgsw8%2Fyf4K%2FgcFk8uqCGzkIyfxmJrsbI7CXBUzvj9gAIhAM5OwVliME65m13kdcYFPTxHACWobapY5HR5%2BDXnv7LfKswECH8QABoMMTg3MDE3MTUwOTg2IgyGh0%2BDZpcPWyTlfp8qqQRJ4yzWIuM5hsONbgmI5x572OZW1QdelchHY4nOl1xSaZVXpBKcmUsKgyq4yNeYwO39kTnnQe4%2FcceNQlwThDD72X3ZwqmbMfOyjXP6ieq1PKIXj9tyCCd6D8r9On0gdkt7Y0F30NlZYeT1Jnc5SnSeO78syfVLN4ggtALUa35gbGBvuSwEBuq9S92R6bjNNCJFNM3C0TOb8r8QOOMczr6WVM8ZLKbEp9Yja388CxPokQwXAHPo%2FwxFlcbY97uestQlMmXlz0i0U1vTJYaHJKzXTfZZ6nndMEL1M%2BU6Ahbu6zVqawP6s1dfRorRRXSBEnXhkOfuXCpHzVvOJlVY7Y3az3%2BrcaPYW6LNEvAcw0a8bbvuxVQ8e%2FLN1cZr3FrHKaxRc49W5QoHA1FkIuLFXWcOQNgkUZx%2FZTQbELBK7ej6LFgSsDIaGv4a0EsBhTwKVOtzXDNYl2CCoZsjYaOHbXLP8OfLbUR0H1IO0JUAwVyN7tGJMsmfsGhj9xpDCaZ6BFL7uqo90JqoL2oQFyRAp5aj3V6u20a0jHtwBlXBXfYlG%2Ffetf1syV%2BVEZctJR1nCXnV%2BUy7z5N8qLMx%2ByRZcX4gs%2F28TrY%2F6UvKpVrVqpgtqn9W0%2F4%2F1sahYLiH8fOuclcy3IUNFzyLeGZjAjiHiFthHpxCaP%2FuNh3NSZXRBVYjgiPfXMac%2BYOr7RhzVslkZSAK4I76vFp4AuVK5ovIH7Gs13B5IcZmmuIKMI%2FntZsGOqgBuc3V2D%2BawabAqeo2kpHN51inxPD%2BCn7ecOJGAQxYz7re6vvOxrYO1gHwwwEOsKNOWqzsVTE%2F1Ss26p6Dl6E8d4FpO9tO%2Bav3fMIZ4C%2BUIySVrhWN6LLHEr%2BLr23Ugra%2B5fM6yzncG121HWb9qfQYcIvj7zUjjIKcxS%2FytPEOI0UFDPRbg9txmdpq%2FZIr1XsdUJeL2H%2BjqXMas6f8H%2FJCciVAS21epKGR&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T221800Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFJN7IHGPB%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=cdc9fd7bc254485a9994a420ae2b64eff5cba87a72f94e31361de5b6142cd6ad")
  expect(recipe.country).to eq('Spain')
  end
end