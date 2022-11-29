const boyArmAgeTable = {
// Age: [z score -2, 0, 2]

  3: [15.6, 13.5, 11.6],
  4: [16.0, 13.8, 11.8],
  5: [16.3, 14.1, 12.1],
  6: [16.5, 14.2, 12.2],
  7: [16.7, 14.4, 12.3],
  8: [16.8, 14.5, 12.4],
  9: [16.9, 14.5, 12.4],
  10: [17.0, 14.6, 12.5],
  11: [17.0, 14.6, 12.5],
  12: [17.1, 14.7, 12.5],
  13: [17.1, 14.7, 12.6],
  14: [17.1, 14.7, 12.6],
  15: [17.2, 14.7, 12.6],
  16: [17.2, 14.8, 12.7],
  17: [17.3, 14.8, 12.7],
  18: [17.3, 14.9, 12.7],
  19: [17.4, 14.9, 12.8],
  20: [17.4, 14.9, 12.8],
  21: [17.5, 15.0, 12.9],
  22: [17.6, 15.0, 12.9],
  23: [17.6, 15.1, 12.9],
  24: [17.7, 15.2, 13.0],
  25: [17.8, 15.2, 13.0],
  26: [17.9, 15.3, 13.1],
  27: [17.9, 15.3, 13.1],
  28: [18.0, 15.4, 13.2],
  29: [18.1, 15.4, 13.2],
  30: [18.1, 15.5, 13.3],
  31: [18.2, 15.5, 13.3],
  32: [18.3, 15.6, 13.3],
  33: [18.3, 15.6, 13.4],
  34: [18.4, 15.7, 13.4],
  35: [18.5, 15.7, 13.4],
  36: [18.5, 15.7, 13.5],
  37: [18.6, 15.8, 13.5],
  38: [18.6, 15.8, 13.5],
  39: [18.7, 15.9, 13.5],
  40: [18.7, 15.9, 13.6],
  41: [18.8, 15.9, 13.6],
  42: [18.8, 16.0, 13.6],
  43: [18.9, 16.0, 13.6],
  44: [18.9, 16.0, 13.7],
  45: [19.0, 16.1, 13.7],
  46: [19.0, 16.1, 13.7],
  47: [19.1, 16.1, 13.7],
  48: [19.1, 16.1, 13.7],
  49: [19.2, 16.2, 13.8],
  50: [19.2, 16.2, 13.8],
  51: [19.3, 16.2, 13.8],
  52: [19.3, 16.3, 13.8],
  53: [19.4, 16.3, 13.8],
  54: [19.4, 16.3, 13.9],
  55: [19.5, 16.4, 13.9],
  56: [19.5, 16.4, 13.9],
  57: [19.6, 16.4, 13.9],
  58: [19.7, 16.5, 13.9],
  59: [19.7, 16.5, 14.0],
  60: [19.8, 16.5, 14.0],
};

const girlArmAgeTable = {
  3: [15.7, 13.4, 11.6],
  4: [16.1, 13.7, 11.8],
  5: [16.4, 14.0, 12.0],
  6: [16.6, 14.1, 12.1],
  7: [16.7, 14.3, 12.2],
  8: [16.8, 14.3, 12.3],
  9: [16.9, 14.4, 12.4],
  10: [16.9, 14.5, 12.4],
  11: [17.0, 14.5, 12.5],
  12: [17.0, 14.5, 12.5],
  13: [17.0, 14.6, 12.5],
  14: [17.1, 14.6, 12.6],
  15: [17.1, 14.7, 12.6],
  16: [17.2, 14.7, 12.7],
  17: [17.2, 14.8, 12.7],
  18: [17.3, 14.8, 12.8],
  19: [17.3, 14.9, 12.8],
  20: [17.4, 14.9, 12.9],
  21: [17.5, 15.0, 12.9],
  22: [17.6, 15.0, 13.0],
  23: [17.6, 15.1, 13.0],
  24: [17.7, 15.2, 13.1],
  25: [17.8, 15.3, 13.1],
  26: [17.9, 15.3, 13.2],
  27: [18.0, 15.4, 13.3],
  28: [18.1, 15.5, 13.3],
  29: [18.2, 15.5, 13.4],
  30: [18.2, 15.6, 13.4],
  31: [18.3, 15.7, 13.5],
  32: [18.4, 15.7, 13.5],
  33: [18.5, 15.8, 13.5],
  34: [18.5, 15.8, 13.6],
  35: [18.6, 15.9, 13.6],
  36: [18.7, 15.9, 13.6],
  37: [18.7, 16.0, 13.7],
  38: [18.8, 16.0, 13.7],
  39: [18.9, 16.1, 13.7],
  40: [19.0, 16.1, 13.8],
  41: [19.0, 16.2, 13.8],
  42: [19.1, 16.2, 13.8],
  43: [19.2, 16.2, 13.9],
  44: [19.2, 16.3, 13.9],
  45: [19.3, 16.3, 13.9],
  46: [19.4, 16.4, 14.0],
  47: [19.5, 16.4, 14.0],
  48: [19.5, 16.5, 14.0],
  49: [19.6, 16.5, 14.0],
  50: [19.7, 16.6, 14.1],
  51: [19.7, 16.6, 14.1],
  52: [19.8, 16.7, 14.1],
  53: [19.9, 16.7, 14.2],
  54: [20.0, 16.8, 14.2],
  55: [20.0, 16.8, 14.2],
  56: [20.1, 16.9, 14.2],
  57: [20.2, 16.9, 14.3],
  58: [20.3, 17.0, 14.3],
  59: [20.3, 17.0, 14.3],
  60: [20.4, 17.1, 14.4],
};