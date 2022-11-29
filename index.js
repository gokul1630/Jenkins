const timer = setInterval(() => {
  console.log('running....');
}, 1000);
setTimeout(() => {
  clearInterval(timer);
  console.log('===done===');
}, 5000);
