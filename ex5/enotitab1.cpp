#include<stdio.h>
#include<stdlib.h>
#include <ap_int.h>

typedef ap_int<12> inttype1;
typedef ap_int<24> inttype2;



void mult_function (inttype1 A[4][4],inttype1 B[4][4], inttype2 C[4][4])
{
#pragma HLS ARRAY_PARTITION variable=A type=complete dim=2
#pragma HLS ARRAY_PARTITION variable=B type=complete dim=2
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=2 dim=2




	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
#pragma HLS unroll factor=2
			C[i][j]=0;
#pragma HLS pipeline II=1
			for(int k=0;k<4;k++)
			{
				C[i][j]= C[i][j] + A[i][k]*B[k][j];
			}
		}
	}
}
