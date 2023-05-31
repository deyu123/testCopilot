# 快速排序算法
def quick_sort(arr):
    # 如果数组长度小于等于1，直接返回数组
    if len(arr) <= 1:
        return arr
    # 选择基准元素
    pivot = arr[len(arr) // 2]
    # 初始化左右子数组
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    # 递归排序左右子数组并合并结果
    return quick_sort(left) + middle + quick_sort(right)

# 示例数组
arr = [3,6,8,10,1,2,1]
print("排序前的数组:", arr)

# 调用快速排序函数
sorted_arr = quick_sort(arr)

print("排序后的数组:", sorted_arr)
