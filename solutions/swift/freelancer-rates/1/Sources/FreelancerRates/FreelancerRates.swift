import Foundation

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return dailyRateFrom(hourlyRate: hourlyRate) * 22.0 * (1.0 - discount / 100.0)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  return floor(budget / (dailyRateFrom(hourlyRate: hourlyRate) * (1.0 - discount / 100.0)))
}
