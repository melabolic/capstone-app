class FoodItems {
  String name;
  int quantity;
  int weight; // encode weight in terms of grams
  String expiryDate;

  FoodItems({
    this.name,
    this.quantity,
    this.weight,
    this.expiryDate,
  });
}

List<FoodItems> foodItems = [
  FoodItems(
    name: "Mr. Potato Chips",
    quantity: 1,
    weight: 20,
    expiryDate: "2020-04-20",
  ),
  FoodItems(
    name: "Crunchy Springrolls",
    quantity: 2,
    weight: 400,
    expiryDate: "2021-06-02",
  ),
  FoodItems(
    name: "Sushi",
    quantity: 5,
    weight: 20,
    expiryDate: "2022-06-20",
  ),
  FoodItems(
    name: "Sake",
    weight: 20,
    expiryDate: "2030-04-27",
  ),
  FoodItems(
    name: "Yakult 12 pack",
    weight: 400,
    expiryDate: "2021-01-06",
  ),
  FoodItems(
    name: "Granola",
    weight: 1000,
    expiryDate: "2020-04-20",
  ),
  FoodItems(
    name: "Chicken Chop",
    quantity: 1,
    weight: 20,
    expiryDate: "2020-02-20",
  ),
  FoodItems(
    name: "McDonald's Fries",
    quantity: 2,
    weight: 400,
    expiryDate: "2020-02-19",
  ),
  FoodItems(
    name: "Vitamin C",
    quantity: 5,
    weight: 20,
    expiryDate: "2035-09-29",
  ),
  FoodItems(
    name: "Green Onions",
    weight: 20,
    expiryDate: "2020-02-22",
  ),
  FoodItems(
    name: "Pork & Leek Dumplings",
    weight: 400,
    expiryDate: "2020-08-30",
  ),
  FoodItems(
    name: "Aubergine",
    weight: 1000,
    expiryDate: "2020-02-25",
  ),
];
