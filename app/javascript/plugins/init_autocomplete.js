import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search-bar');
  const navAddressInput = document.getElementById('search-navbar');
  if (addressInput) {
    places({ container: addressInput });
  } else if (navAddressInput) {
    places({ container: navAddressInput });
  }
};

export { initAutocomplete };
