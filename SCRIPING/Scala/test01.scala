// 快速排序
def quickSort(arr: Array[Int], left: Int, right: Int): Unit = {
  if (left < right) {
    val pivot = partition(arr, left, right)
    quickSort(arr, left, pivot - 1)
    quickSort(arr, pivot + 1, right)
  }
}

def partition(arr: Array[Int], left: Int, right: Int): Int = {
  val pivot = arr(right)
  var i = left - 1
  for (j <- left until right) {
    if (arr(j) < pivot) {
      i += 1
      swap(arr, i, j)
    }
  }
  swap(arr, i + 1, right)
  i + 1
}

def swap(arr: Array[Int], i: Int, j: Int): Unit = {
  val temp = arr(i)
  arr(i) = arr(j)
  arr(j) = temp
}

val arr = Array(5, 2, 9, 4, 7, 6, 1, 3, 8)
quickSort(arr, 0, arr.length - 1)
println(arr.mkString(", "))