const boyHeadAgeTable = [
  // Age(months), z-score 2, 0, -2

  [37.1, 34.6, 32.0],
  [39.6, 37.3, 34.9],
  [41.5, 39.1, 36.8],
  [42.9, 40.5, 38.2],
  [44.0, 41.6, 39.2],
  [45.0, 42.6, 40.1],
  [45.8, 43.3, 40.9],
  [46.5, 44.0, 41.5],
  [47.0, 44.5, 42.0],
  [47.5, 45.0, 42.5],
  [47.9, 45.4, 42.9],
  [48.3, 45.8, 43.2],
  [48.6, 46.1, 43.5],
  [48.9, 46.3, 43.8],
  [49.2, 46.6, 44.0],
  [49.4, 46.8, 44.2],
  [49.6, 47.0, 44.4],
  [49.8, 47.2, 44.5],
  [50.0, 47.4, 44.7],
  [50.2, 47.5, 44.9],
  [50.4, 47.7, 45.0],
  [50.5, 47.8, 45.1],
  [50.7, 48.0, 45.3],
  [50.8, 48.1, 45.4],
  [51.0, 48.3, 45.5],
  [51.1, 48.4, 45.6],
  [51.2, 48.5, 45.8],
  [51.4, 48.6, 45.9],
  [51.5, 48.7, 46.0],
  [51.6, 48.8, 46.1],
  [51.7, 48.9, 46.1],
  [51.8, 49.0, 46.2],
  [51.9, 49.1, 46.3],
  [52.0, 49.2, 46.4],
  [52.1, 49.3, 46.5],
  [52.2, 49.4, 46.5],
  [52.3, 49.5, 46.6],
  [52.4, 49.5, 46.7],
  [52.5, 49.6, 46.8],
  [52.5, 49.7, 46.8],
  [52.6, 49.7, 46.9],
  [52.7, 49.8, 46.9],
  [52.8, 49.9, 47.0],
  [52.8, 49.9, 47.0],
  [52.9, 50.0, 47.1],
  [53.0, 50.1, 47.1],
  [53.0, 50.1, 47.2],
  [53.1, 50.2, 47.2],
  [53.1, 50.2, 47.3],
  [53.2, 50.3, 47.3],
  [53.2, 50.3, 47.4],
  [53.3, 50.4, 47.4],
  [53.4, 50.4, 47.5],
  [53.4, 50.5, 47.5],
  [53.5, 50.5, 47.5],
  [53.5, 50.5, 47.6],
  [53.5, 50.6, 47.6],
  [53.6, 50.6, 47.6],
  [53.6, 50.7, 47.7],
  [53.7, 50.7, 47.7],
  [53.7, 50.7, 47.8]
];

const girlHeadAgeTable = [
  [36.3, 34.0, 31.6],
  [38.9, 36.5, 34.2],
  [40.7, 38.3, 35.8],
  [42.0, 39.5, 37.0],
  [43.1, 40.6, 38.0],
  [44.0, 41.5, 38.9],
  [44.8, 42.2, 39.6],
  [45.5, 42.8, 40.2],
  [46.0, 43.4, 40.7],
  [46.5, 43.8, 41.1],
  [46.9, 44.2, 41.5],
  [47.3, 44.6, 41.9],
  [47.6, 44.9, 42.2],
  [47.9, 45.2, 42.4],
  [48.2, 45.4, 42.7],
  [48.4, 45.6, 42.9],
  [48.6, 45.9, 43.1],
  [48.8, 46.1, 43.3],
  [49.0, 46.2, 43.5],
  [49.2, 46.4, 43.6],
  [49.3, 46.6, 43.8],
  [49.5, 46.7, 44.0],
  [49.7, 46.9, 44.1],
  [49.8, 47.0, 44.2],
  [50.0, 47.2, 44.4],
  [50.1, 47.3, 44.5],
  [50.3, 47.5, 44.7],
  [50.4, 47.6, 44.8],
  [50.5, 47.7, 44.9],
  [50.6, 47.8, 45.0],
  [50.7, 47.9, 45.1],
  [50.8, 48.0, 45.2],
  [51.0, 48.1, 45.3],
  [51.1, 48.2, 45.4],
  [51.2, 48.3, 45.5],
  [51.2, 48.4, 45.6],
  [51.3, 48.5, 45.7],
  [51.4, 48.6, 45.8],
  [51.5, 48.7, 45.8],
  [51.6, 48.8, 45.9],
  [51.6, 48.8, 46.0],
  [51.7, 48.9, 46.1],
  [51.8, 49.0, 46.1],
  [51.9, 49.0, 46.2],
  [51.9, 49.1, 46.3],
  [52.0, 49.1, 46.3],
  [52.1, 49.2, 46.4],
  [52.1, 49.3, 46.4],
  [52.2, 49.3, 46.5],
  [52.2, 49.4, 46.5],
  [52.3, 49.4, 46.6],
  [52.3, 49.5, 46.6],
  [52.4, 49.5, 46.7],
  [52.4, 49.6, 46.7],
  [52.5, 49.6, 46.8],
  [52.5, 49.7, 46.8],
  [52.6, 49.7, 46.9],
  [52.6, 49.8, 46.9],
  [52.7, 49.8, 47.0],
  [52.7, 49.9, 47.0],
  [52.8, 49.9, 47.1],
];