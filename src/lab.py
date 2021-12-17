import hashlib
import functools
import time

def hash(text):
  m = hashlib.sha256()
  m.update(text)
  return m.digest()

results = []

for i in range(10):
  start = time.time() * 1000
  for j in range(1000000):
    hash('hello world'.encode('utf-8'))
  end = time.time() * 1000
  results.append(end - start)

print(functools.reduce(lambda a, b: a + b, results) / 10, end="")