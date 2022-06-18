String manageRarityStars({required var rarity}) {
  if(rarity == '5') {
    return '5-stars';
  }
  else if(rarity == '4') {
    return '4-stars';
  }
  else if(rarity == '3') {
    return '3-stars';
  }
  else if(rarity == '2') {
    return '2-stars';
  }
  else {
    return '1-stars';
  }
}