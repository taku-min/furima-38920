function item_price (){
  const itemPrice = document.getElementById("item_price");
  itemPrice.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const addTaxDom = document.getElementById("add-tax-price");
    const ProfitDom = document.getElementById("profit");

    addTaxDom.innerHTML = Math.floor(inputValue * 0.1);
    ProfitDom.innerHTML = inputValue - addTaxDom.innerHTML;
  })
};

window.addEventListener('load', item_price);
