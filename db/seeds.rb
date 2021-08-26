require 'date'

# issues:
# -pluralization

# notes:
# -categories are there to help w substitutions or to provide a default exp date

Food.create(name: 'eggplant', quantity: 2, unit: 'eggplants', category: 'produce', days_until_expiration: 7, date_of_purchase: Date.today-3, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/eggplant_1f346.png")

Food.create(name: 'parsley', quantity: 2, unit: 'cups', category: 'produce', days_until_expiration: 7, date_of_purchase: Date.today-3, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/seedling_1f331.png")

Food.create(name: 'ribeye steak', quantity: 4, unit: 'lbs', category: 'meat', days_until_expiration: 7, date_of_purchase: Date.today-1, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/cut-of-meat_1f969.png")

Food.create(name: 'sour cream', quantity: 8, unit: 'cups', category: 'dairy', days_until_expiration: 14, date_of_purchase: Date.today-10, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/cow_1f404.png")

Food.create(name: 'egg', quantity: 12, unit: 'eggs', category: 'dairy', days_until_expiration: 14, date_of_purchase: Date.today-4, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/egg_1f95a.png")

Food.create(name: 'chicken thigh', quantity: 10, unit: 'lbs', category: 'meat', days_until_expiration: 7, date_of_purchase: Date.today-5, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/poultry-leg_1f357.png")

Food.create(name: 'onion', quantity: 5, unit: 'onions', category: 'produce', days_until_expiration: 14, date_of_purchase: Date.today-1, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/onion_1f9c5.png")

Food.create(name: 'zucchini', quantity: 4, unit: 'zucchinis', category: 'produce', days_until_expiration: 5, date_of_purchase: Date.today-1, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/joypixels/291/cucumber_1f952.png")

Food.create(name: 'salmon', quantity: 3, unit: 'lbs', category: 'meat', days_until_expiration: 1, date_of_purchase: Date.today-1, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/fish_1f41f.png")

Food.create(name: 'lemon', quantity: 1, unit: 'lemons', category: 'produce', days_until_expiration: 10, date_of_purchase: Date.today-8, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/lemon_1f34b.png")

Food.create(name: 'mango', quantity: 3, unit: 'mangos', category: 'produce', days_until_expiration: 5, date_of_purchase: Date.today-2, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/mango_1f96d.png")

Food.create(name: 'baguette', quantity: 3, unit: 'baguettes', category: 'bakery', days_until_expiration: 4, date_of_purchase: Date.today-1, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/baguette-bread_1f956.png")

Food.create(name: 'cookie', quantity: 30, unit: 'cookies', category: 'bakery', days_until_expiration: 3, date_of_purchase: Date.today-2, img_url: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/cookie_1f36a.png")