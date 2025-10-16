#include <iostream>
#include <fstream>
#include <sstream>
using namespace std;

/* Function to sort an array using insertion sort*/
void insertionSort(int arr[], int n)
{
        int i, key, j;
        for (i = 1; i < n; i++)
        {
                key = arr[i];
                j = i - 1;

                /* Move elements of arr[0..i-1], that are
                greater than key, to one position ahead
                of their current position */
                while (j >= 0 && arr[j] > key)
                {
                        arr[j + 1] = arr[j];
                        j = j - 1;
                }
                arr[j + 1] = key;
        }
}

int array[2000][2000];
int arr[2000][2000];
int main()
{
        int window[9],row = 0, col = 0, numrows = 0, numcols = 0,MAX=0;
        ifstream infile("Saltpepper.pgm");
        stringstream ss;
        string inputLine = "";

        // First line : version
        getline(infile,inputLine);
        if(inputLine.compare("P2") != 0) cerr << "Version error" << endl;
        else cout << "Version : " << inputLine << endl;

        // Continue with a stringstream
        ss << infile.rdbuf();

        // Secondline : size of image
        ss >> numcols >> numrows >> MAX;

        //print total number of rows, columns and maximum intensity of image
        cout << numcols << " columns and " << numrows << " rows" <<endl<<" Maximium Intesity "<< MAX <<endl;


        //Initialize a new array of same size of image with 0
        for(row = 0; row <= numrows; row+=15){
            array[row][0]=0;
            array[row+1][0]=0;
            array[row+2][0]=0;
            array[row+3][0]=0;
            array[row+4][0]=0;
            array[row+5][0]=0;
            array[row+6][0]=0;
            array[row+7][0]=0;
            array[row+8][0]=0;
            array[row+9][0]=0;
            array[row+10][0]=0;
            array[row+11][0]=0;
            array[row+12][0]=0;
            array[row+13][0]=0;
            array[row+14][0]=0;
            array[row+15][0]=0;
        }
                
        for( col = 0; col<=numcols; col+=15){
            array[0][col]=0;
            array[0][col+1]=0;
            array[0][col+2]=0;
            array[0][col+3]=0;
            array[0][col+4]=0;
            array[0][col+5]=0;
            array[0][col+6]=0;
            array[0][col+7]=0;
            array[0][col+8]=0;
            array[0][col+9]=0;
            array[0][col+10]=0;
            array[0][col+11]=0;
            array[0][col+12]=0;
            array[0][col+13]=0;
            array[0][col+14]=0;
            array[0][col+15]=0;
        }
                

        // Following lines : data
        for(row = 1; row <= numrows; ++row)
        {
                for (col = 1; col <= numcols; col+=15)
                {
                        //original data store in new array
                        ss >> array[row][col];
                        ss >> array[row][col+1];
                        ss >> array[row][col+2];
                        ss >> array[row][col+3];
                        ss >> array[row][col+4];
                        ss >> array[row][col+5];
                        ss >> array[row][col+6];
                        ss >> array[row][col+7];
                        ss >> array[row][col+8];
                        ss >> array[row][col+9];
                        ss >> array[row][col+10];
                        ss >> array[row][col+11];
                        ss >> array[row][col+12];
                        ss >> array[row][col+13];
                        ss >> array[row][col+14];
                }
        }


        // Now print the array to see the result
        for(row = 1; row <= numrows; ++row)
        {
                for(col = 1; col <= numcols; ++col)
                {
                        //neighbor pixel values are stored in window including this pixel
                        window[0] = array[row-1][col-1];
                        window[1] = array[row-1][col];
                        window[2] = array[row-1][col+1];
                        window[3] = array[row][col-1];
                        window[4] = array[row][col];
                        window[5] = array[row][col+1];
                        window[6] = array[row+1][col-1];
                        window[7] = array[row+1][col];
                        window[8] = array[row+1][col+1];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col]=window[4];

                        window[0] = array[row-1][col-1+1];
                        window[1] = array[row-1][col  +1];
                        window[2] = array[row-1][col+1+1];
                        window[3] = array[row]  [col-1+1];
                        window[4] = array[row]  [col  +1];
                        window[5] = array[row]  [col+1+1];
                        window[6] = array[row+1][col-1+1];
                        window[7] = array[row+1][col  +1];
                        window[8] = array[row+1][col+1+1];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+1]=window[4];

                        window[0] = array[row-1][col-1+2];
                        window[1] = array[row-1][col  +2];
                        window[2] = array[row-1][col+1+2];
                        window[3] = array[row]  [col-1+2];
                        window[4] = array[row]  [col  +2];
                        window[5] = array[row]  [col+1+2];
                        window[6] = array[row+1][col-1+2];
                        window[7] = array[row+1][col  +2];
                        window[8] = array[row+1][col+1+2];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+2]=window[4];

                        window[0] = array[row-1][col-1+3];
                        window[1] = array[row-1][col  +3];
                        window[2] = array[row-1][col+1+3];
                        window[3] = array[row]  [col-1+3];
                        window[4] = array[row]  [col  +3];
                        window[5] = array[row]  [col+1+3];
                        window[6] = array[row+1][col-1+3];
                        window[7] = array[row+1][col  +3];
                        window[8] = array[row+1][col+1+3];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+3]=window[4];

                        window[0] = array[row-1][col-1+4];
                        window[1] = array[row-1][col  +4];
                        window[2] = array[row-1][col+1+4];
                        window[3] = array[row]  [col-1+4];
                        window[4] = array[row]  [col  +4];
                        window[5] = array[row]  [col+1+4];
                        window[6] = array[row+1][col-1+4];
                        window[7] = array[row+1][col  +4];
                        window[8] = array[row+1][col+1+4];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+4]=window[4];

                        window[0] = array[row-1][col-1+5];
                        window[1] = array[row-1][col  +5];
                        window[2] = array[row-1][col+1+5];
                        window[3] = array[row]  [col-1+5];
                        window[4] = array[row]  [col  +5];
                        window[5] = array[row]  [col+1+5];
                        window[6] = array[row+1][col-1+5];
                        window[7] = array[row+1][col  +5];
                        window[8] = array[row+1][col+1+5];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+5]=window[4];

                        window[0] = array[row-1][col-1+6];
                        window[1] = array[row-1][col  +6];
                        window[2] = array[row-1][col+1+6];
                        window[3] = array[row]  [col-1+6];
                        window[4] = array[row]  [col  +6];
                        window[5] = array[row]  [col+1+6];
                        window[6] = array[row+1][col-1+6];
                        window[7] = array[row+1][col  +6];
                        window[8] = array[row+1][col+1+6];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+6]=window[4];

                        window[0] = array[row-1][col-1+7];
                        window[1] = array[row-1][col  +7];
                        window[2] = array[row-1][col+1+7];
                        window[3] = array[row]  [col-1+7];
                        window[4] = array[row]  [col  +7];
                        window[5] = array[row]  [col+1+7];
                        window[6] = array[row+1][col-1+7];
                        window[7] = array[row+1][col  +7];
                        window[8] = array[row+1][col+1+7];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+7]=window[4];

                        window[0] = array[row-1][col-1+8];
                        window[1] = array[row-1][col  +8];
                        window[2] = array[row-1][col+1+8];
                        window[3] = array[row]  [col-1+8];
                        window[4] = array[row]  [col  +8];
                        window[5] = array[row]  [col+1+8];
                        window[6] = array[row+1][col-1+8];
                        window[7] = array[row+1][col  +8];
                        window[8] = array[row+1][col+1+8];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+8]=window[4];

                        window[0] = array[row-1][col-1+9];
                        window[1] = array[row-1][col  +9];
                        window[2] = array[row-1][col+1+9];
                        window[3] = array[row]  [col-1+9];
                        window[4] = array[row]  [col  +9];
                        window[5] = array[row]  [col+1+9];
                        window[6] = array[row+1][col-1+9];
                        window[7] = array[row+1][col  +9];
                        window[8] = array[row+1][col+1+9];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+9]=window[4];

                        window[0] = array[row-1][col-1+10];
                        window[1] = array[row-1][col  +10];
                        window[2] = array[row-1][col+1+10];
                        window[3] = array[row]  [col-1+10];
                        window[4] = array[row]  [col  +10];
                        window[5] = array[row]  [col+1+10];
                        window[6] = array[row+1][col-1+10];
                        window[7] = array[row+1][col  +10];
                        window[8] = array[row+1][col+1+10];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+10]=window[4];

                        window[0] = array[row-1][col-1+11];
                        window[1] = array[row-1][col  +11];
                        window[2] = array[row-1][col+1+11];
                        window[3] = array[row]  [col-1+11];
                        window[4] = array[row]  [col  +11];
                        window[5] = array[row]  [col+1+11];
                        window[6] = array[row+1][col-1+11];
                        window[7] = array[row+1][col  +11];
                        window[8] = array[row+1][col+1+11];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+11]=window[4];

                        window[0] = array[row-1][col-1+12];
                        window[1] = array[row-1][col  +12];
                        window[2] = array[row-1][col+1+12];
                        window[3] = array[row]  [col-1+12];
                        window[4] = array[row]  [col  +12];
                        window[5] = array[row]  [col+1+12];
                        window[6] = array[row+1][col-1+12];
                        window[7] = array[row+1][col  +12];
                        window[8] = array[row+1][col+1+12];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+12]=window[4];

                        window[0] = array[row-1][col-1+13];
                        window[1] = array[row-1][col  +13];
                        window[2] = array[row-1][col+1+13];
                        window[3] = array[row]  [col-1+13];
                        window[4] = array[row]  [col  +13];
                        window[5] = array[row]  [col+1+13];
                        window[6] = array[row+1][col-1+13];
                        window[7] = array[row+1][col  +13];
                        window[8] = array[row+1][col+1+13];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+13]=window[4];

                        window[0] = array[row-1][col-1+14];
                        window[1] = array[row-1][col  +14];
                        window[2] = array[row-1][col+1+14];
                        window[3] = array[row]  [col-1+14];
                        window[4] = array[row]  [col  +14];
                        window[5] = array[row]  [col+1+14];
                        window[6] = array[row+1][col-1+14];
                        window[7] = array[row+1][col  +14];
                        window[8] = array[row+1][col+1+14];
                        //sort window array
                        insertionSort(window,9);
                        //put the median to the new array
                        arr[row][col+14]=window[4];
                }
        }

        ofstream outfile;

        //new file open to stroe the output image
        outfile.open("Medianfilter.pnm");
        outfile<<"P2"<<endl;
        outfile<<numcols<<" "<<numrows<<endl;
        outfile<<"255"<<endl;

        for(row = 1; row <= numrows; ++row)
        {
                for (col = 1; col <= numcols; ++col)
                {
                        //store resultant pixel values to the output file
                        outfile << arr[row][col]<<" ";
                }
        }

        outfile.close();
        infile.close();
        return 0 ;
}

