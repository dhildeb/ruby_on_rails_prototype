# Clear existing records (optional)
Card.destroy_all

# Create sample cards
Card.create([
  { name: "Fireball", dmg: 30, card_type: "Spell", durability: 1, effect: "area_effect" },
  { name: "Shield", dmg: 3, card_type: "Defense", durability: 0, effect: "" },
  { name: "Sword", dmg: 5, card_type: "Weapon", durability: 0, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Goblin", dmg: 1, card_type: "Enemy", durability: 3, effect: "" },
  { name: "Orc", dmg: 2, card_type: "Enemy", durability: 4, effect: "" },
  { name: "Orc", dmg: 2, card_type: "Enemy", durability: 4, effect: "" },
  { name: "Orc", dmg: 2, card_type: "Enemy", durability: 4, effect: "" },
])

puts "Seeded #{Card.count} cards."