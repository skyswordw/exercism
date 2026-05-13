import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  // guard let 可以同时解包并检查条件，非常适合提前拦截无效输入
  guard let d = diameter, let s = slices, d >= 0, s >= 1 else {
    return nil
  }
  
  let radius = d / 2.0
  let area = Double.pi * radius * radius
  return area / Double(s)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  // Swift 中 Double(String) 和 Int(String) 转换失败时会返回 nil，
  // 也就是说它们返回的刚好是 Double? 和 Int?类型。
  // 这正好符合被直接传入我们上面定义的 sliceSize 函数的参数要求。
  let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
  
  // 对比两者是否为 nil 或者具体的 Area 大小
  if let a = areaA, let b = areaB {
    if a > b {
      return "Slice A is bigger"
    } else if b > a {
      return "Slice B is bigger"
    } else {
      return "Neither slice is bigger"
    }
  } else if areaA != nil {
    return "Slice A is bigger"
  } else if areaB != nil {
    return "Slice B is bigger"
  } else {
    return "Neither slice is bigger" // 两者都是 nil
  }
}

