// you can use includes, for example:
 #include <algorithm>
 #include <vector>

// you can write to stdout for debugging purposes, e.g.
// cout << "this is a debug message" << endl;

int solution(vector< vector<int> > &A) {
    // Implement your solution here

    vector<int>sum(A.size(), 0);
    for(size_t i  = 0 ; i< A.size() ; i++){
        size_t tmp = 0;
        sum[i] = A[i][0];
        for (size_t j = 0 ; j < A.size() ; j++){
            if (A[i][j]+ sum[i] > sum[i] && i != tmp && j != i){
                sum[i]  += A[i][j];
                cout << sum[i] << endl;

            }
        }
    }
    return sum[1];
}
