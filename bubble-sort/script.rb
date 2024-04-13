
array = [4,3,78,2,0,2] 

def bubble_sort(arr)

    (arr.size-1).downto(0) do |i|
        0.upto(i-1) do |j|
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
            p arr
        end
        p arr
    end
    arr 
end

p bubble_sort(array)



       
        
                

     

