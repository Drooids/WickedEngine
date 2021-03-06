#ifndef TANGENT_COMFUTE_HF
#define TANGENT_COMPUTE_HF

float3x3 compute_tangent_frame(float3 N, float3 P, float2 UV, out float3 T, out float3 B)
{
	float3 dp1 = ddx(P);
	float3 dp2 = ddy(P);
	float2 duv1 = ddx(UV);
	float2 duv2 = ddy(UV);

	float3x3 M = float3x3(dp1, dp2, cross(dp1, dp2));
	float2x3 inverseM = float2x3( cross( M[1], M[2] ), cross( M[2], M[0] ) );
	T = normalize(mul(float2(duv1.x, duv2.x), inverseM));
	B = normalize(mul(float2(duv1.y, duv2.y), inverseM));

	return float3x3(T, B, N);
}

#endif