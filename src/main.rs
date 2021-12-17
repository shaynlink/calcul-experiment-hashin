use std::collections::hash_map::DefaultHasher;
use std::hash::{Hash, Hasher};
use std::time::{Instant};

fn main() {
  let mut results: [u128; 10] = [0; 10];
  let mut sum = 0;

  for i in 0..10 {
    let start = Instant::now();
    for _j in 0..1000000 {
      let mut s: DefaultHasher = DefaultHasher::new();
      (&"hello world").hash(&mut s);
      s.finish();
    }
    let end = Instant::now();

    results[i] = end.duration_since(start).as_millis();
  }

  for item in results {
    sum += item;
  }

  sum = sum / 10;

  println!("{:?}", sum);
}
