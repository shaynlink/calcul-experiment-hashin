const crypto = require('crypto');

function hash(text) {
  return crypto.createHash('sha256').update(text).digest();
};

const results = [];

for (let i = 0; i < 10; i++) {
  const start = Date.now();
  for (let j = 0; j < 1000000; j++) {
    hash('hello world');
  };
  const end = Date.now();

  results.push(end - start);
};

console.log(results.reduce((a, b) => a + b) / results.length);