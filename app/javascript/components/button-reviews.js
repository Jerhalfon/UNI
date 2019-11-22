const tabsReview = document.querySelector('.first-level');
if (tabsReview) {
  tabsReview.addEventListener('click', function(){
  const button = document.querySelector('.test-btn');
    if (event.target.innerText === 'Reviews') {
        button.style.display = 'flex';
    } else {
      button.style.display = 'none';
    }
  });
}

