#include<math.h>
#define PMAX			100
#define PMIN			-100
#define DMAX			100
#define DMIN			-100
#define FMAX			100	 //概率精度			 
double	Fuzzy_kp(int  e, int ec);	//模糊运算函数
double	Fuzzy_kd(int  e, int ec);	//模糊运算函数

/*******************************************************************************
*Description    :模糊算法
*
*modification   ：
*DATA           : 2017-5-29   By: handongdong
*******************************************************************************/
double	Fuzzy_kp(int  e, int ec)	//模糊运算函数
{
  /*采用了调整因子的规则表，大误差时偏重误差，小误差时偏重误变化*/
/* a0=0.3 ,a1=0.55 ,a2=0.74 ,a3=0.89 */
  int rule[7][7] = {
//误差的变化率NB NM NS Z PS PM PB
    { 6,5,5,5,5,4,4 },			//NB
    { 5,4,3,3,2,1,1 },			//NM
    { 2,2,1,1,1,1,1 },			//NS
    { 2,1,0,0,0,1,2 },			//Z
    { 1,1,1,1,1,2,2 },			//PS
    { 1,1,2,3,3,4,5 },			//PM
    { 4,4,5,5,5,5,6 } };		//PB
  int Pn = 0, Dn = 0;
  int Un[4] = { 0 };
  int Pf[2] = { 0 }, Df[2] = { 0 }, Uf[4] = {0};
  double KP;
  int temp1, temp2;
  int	eRule[7] = { -180,-110,-50,0,50,110,180 };  //偏差的论域
  int	ecRule[7] = { -12,-8,-4,0,4,8,12 };  //偏差变化率的论域
  int	KP_Rule[7] = { 0,10,20,30,40,50,60 }; //KP的论域
  
  if (e > eRule[0] && e < eRule[6])  //如果偏差在范围内
  {
    if (e <= eRule[1])  //如果偏差  < -150
    {
      Pn = 0;
      //以下是距离 -230 的隶属度。数越大，隶属度越高
      Pf[0] = FMAX * ((float)(eRule[1] - e) / (eRule[1] - eRule[0])); //这儿计算出来的肯定要是正数
    }
    else if (e <= eRule[2])  //偏差小于 -70
    {
      Pn = 1;
      //以下是距离 -150 的隶属度。数越大，隶属度越高
      Pf[0] = FMAX * ((float)(eRule[2] - e) / (eRule[2] - eRule[1])); //这儿计算出来的肯定要是正数
    }
    else if (e <= eRule[3])  //偏差小于 0
    {
      Pn = 2;
      //以下是距离 -70 的隶属度。数越大，隶属度越高
      Pf[0] = FMAX * ((float)(eRule[3] - e) / (eRule[3] - eRule[2])); //这儿计算出来的肯定要是正数
    }
    else if (e <= eRule[4]) //偏差小于 70
    {
      Pn = 3;
      //以下是距离 0 的隶属度。数越大，隶属度越高
      Pf[0] = FMAX * ((float)(eRule[4] - e) / (eRule[4] - eRule[3])); //这儿计算出来的肯定要是正数
    }
    else if (e <= eRule[5]) //偏差小于 150
    {
      Pn = 4;
      //以下是距离 70 的隶属度。数越大，隶属度越高
      Pf[0] = FMAX * ((float)(eRule[5] - e) / (eRule[5] - eRule[4])); //这儿计算出来的肯定要是正数
    }
    else if (e <= eRule[6]) //偏差小于 230
    {
      Pn = 5;
      //以下是距离 150 的隶属度。数越大，隶属度越高
      Pf[0] = FMAX * ((float)(eRule[6] - e) / (eRule[6] - eRule[5])); //这儿计算出来的肯定要是正数
    }
  }
  else if (e <= eRule[0]) //偏差小于 -230
  {
    Pn = 0;
    Pf[0] = FMAX;
  }
  else if (e >= eRule[5]) //偏差大于230
  {
    Pn = 5;
    Pf[0] = 0;
  }
  
  Pf[1] = FMAX - Pf[0];
  
  
  if (ec > ecRule[0] && ec < ecRule[6])  //如果偏差在范围内
  {
    if (ec <= ecRule[1])  //如果偏差  < -150
    {
      Dn = 0;
      //以下是距离 -230 的隶属度。数越大，隶属度越高
      Df[0] = FMAX * ((float)(ecRule[1] - ec) / (ecRule[1] - ecRule[0])); //这儿计算出来的肯定要是正数
    }
    else if (ec <= ecRule[2])  //偏差小于 -70
    {
      Dn = 1;
      //以下是距离 -150 的隶属度。数越大，隶属度越高
      Df[0] = FMAX * ((float)(ecRule[2] - ec) / (ecRule[2] - ecRule[1])); //这儿计算出来的肯定要是正数
    }
    else if (ec <= ecRule[3])  //偏差小于 0
    {
      Dn = 2;
      //以下是距离 -70 的隶属度。数越大，隶属度越高
      Df[0] = FMAX * ((float)(ecRule[3] - ec) / (ecRule[3] - ecRule[2])); //这儿计算出来的肯定要是正数
    }
    else if (ec <= ecRule[4]) //偏差小于 70
    {
      Dn = 3;
      //以下是距离 0 的隶属度。数越大，隶属度越高
      Df[0] = FMAX * ((float)(ecRule[4] - ec) / (ecRule[4] - ecRule[3])); //这儿计算出来的肯定要是正数
    }
    else if (ec <= ecRule[5]) //偏差小于 150
    {
      Dn = 4;
      //以下是距离 70 的隶属度。数越大，隶属度越高
      Df[0] = FMAX * ((float)(ecRule[5] - ec) / (ecRule[5] - ecRule[4])); //这儿计算出来的肯定要是正数
    }
    else if (ec <= ecRule[6]) //偏差小于 230
    {
      Dn = 5;
      //以下是距离 150 的隶属度。数越大，隶属度越高
      Df[0] = FMAX * ((float)(ecRule[6] - ec) / (ecRule[6] - ecRule[5])); //这儿计算出来的肯定要是正数
    }
  }
  else if (ec <= ecRule[0]) //偏差小于 -230
  {
    Dn = 0;
    Df[0] = FMAX;
  }
  else if (ec >= ecRule[5]) //偏差大于230
  {
    Dn = 5;
    Df[0] = 0;
  }
  
  Df[1] = FMAX - Df[0];
  
  //查表
	Un[0] = rule[Pn][Dn];
	if (Pf[0] <= Df[0])
		Uf[0] = Pf[0];
	else
		Uf[0] = Df[0];

	Un[1] = rule[Pn+1][Dn];
	if (Pf[1] <= Df[0])
		Uf[1] = Pf[1];
	else
		Uf[1] = Df[0];

	Un[2] = rule[Pn][Dn+1];
	if (Pf[0] <= Df[1])
		Uf[2] = Pf[0];
	else
		Uf[2] = Df[1];

	Un[3] = rule[Pn+1][Dn+1];
	if (Pf[1] <= Df[1])
		Uf[3] = Pf[1];
	else
		Uf[3] = Df[1];

  
  //同隶属函数求最大值
  if (Un[0] == Un[1])
  {
    if (Uf[0] > Uf[1])
      Uf[1] = 0;  //直接把概率小的清零
    else
      Uf[0] = 0;
  }
  if (Un[0] == Un[2])
  {
    if (Uf[0] > Uf[2])
      Uf[2] = 0;  //直接把概率小的清零
    else
      Uf[0] = 0;
  }
  if (Un[0] == Un[3])
  {
    if (Uf[0] > Uf[3])
      Uf[3] = 0;  //直接把概率小的清零
    else
      Uf[0] = 0;
  }
  if (Un[1] == Un[2])
  {
    if (Uf[1] > Uf[2])
      Uf[2] = 0;  //直接把概率小的清零
    else
      Uf[1] = 0;
  }
  if (Un[1] == Un[3])
  {
    if (Uf[1] > Uf[3])
      Uf[3] = 0;  //直接把概率小的清零
    else
      Uf[1] = 0;
  }
  if (Un[2] == Un[3])
  {
    if (Uf[2] > Uf[3])
      Uf[3] = 0;  //直接把概率小的清零
    else
      Uf[2] = 0;
  }
  //重心法反模糊
  Un[0] = KP_Rule[Un[0]];
  Un[1] = KP_Rule[Un[1]];
  Un[2] = KP_Rule[Un[2]];
  Un[3] = KP_Rule[Un[3]];
  //可能的取值*这个取值可能的概率
  temp1 = Un[0] * Uf[0] + Un[1] * Uf[1] + Un[2] * Uf[2] + Un[3] * Uf[3];
  //所有可能的概率
  temp2 = Uf[0] + Uf[1] + Uf[2] + Uf[3];
  
  KP = temp1 / temp2;
  KP /= 100;
  return KP;
}
	
/*******************************************************************************
*Description    :模糊算法
*
*modification   ：
*DATA           : 2017-5-29   By: handongdong
*******************************************************************************/
double	Fuzzy_kd(int  e, int ec)	//模糊运算函数
{
	int Pn = 0, Dn = 0;
	int Un[4] = { 0 };
	int Pf[2] = { 0 }, Df[2] = { 0 }, Uf[4] = { 0 };
	double KD;
	int temp1, temp2;
	int	KD_Rule[7] = { 10,20,30,40 }; //KP的论域	
         /* a0=0.3 ,a1=0.55 ,a2=0.74 ,a3=0.89 */
        //D在出弯(偏差和偏差的变化率反向)的时候应该大一点，抑制打角
	int rule[7][7] = {
  //误差的变化率NB NM NS Z PS PM PB
		{ 2,2,1,1,1,3,3 },			//NB
		{ 3,2,1,1,1,3,3 },			//NM
		{ 2,2,1,1,1,3,3 },			//NS
		{ 1,1,0,0,0,1,1 },			//Z
		{ 3,3,1,1,1,2,2 },			//PS
		{ 3,3,1,1,1,2,3 },			//PM
		{ 3,3,1,1,1,2,2 } };		        //PB
	int	eRule[7] = { -180,-110,-50,0,50,110,180 };  //偏差的论域
	int	ecRule[7] = { -12,-8,-4,0,4,8,12 };  //偏差变化率的论域

	if (e > eRule[0] && e < eRule[6])  //如果偏差在范围内
	{
		if (e <= eRule[1])  //如果偏差  < -150
		{
			Pn = 0;
			//以下是距离 -230 的隶属度。数越大，隶属度越高
			Pf[0] = FMAX * ((float)(eRule[1] - e) / (eRule[1] - eRule[0])); //这儿计算出来的肯定要是正数
		}
		else if (e <= eRule[2])  //偏差小于 -70
		{
			Pn = 1;
			//以下是距离 -150 的隶属度。数越大，隶属度越高
			Pf[0] = FMAX * ((float)(eRule[2] - e) / (eRule[2] - eRule[1])); //这儿计算出来的肯定要是正数
		}
		else if (e <= eRule[3])  //偏差小于 0
		{
			Pn = 2;
			//以下是距离 -70 的隶属度。数越大，隶属度越高
			Pf[0] = FMAX * ((float)(eRule[3] - e) / (eRule[3] - eRule[2])); //这儿计算出来的肯定要是正数
		}
		else if (e <= eRule[4]) //偏差小于 70
		{
			Pn = 3;
			//以下是距离 0 的隶属度。数越大，隶属度越高
			Pf[0] = FMAX * ((float)(eRule[4] - e) / (eRule[4] - eRule[3])); //这儿计算出来的肯定要是正数
		}
		else if (e <= eRule[5]) //偏差小于 150
		{
			Pn = 4;
			//以下是距离 70 的隶属度。数越大，隶属度越高
			Pf[0] = FMAX * ((float)(eRule[5] - e) / (eRule[5] - eRule[4])); //这儿计算出来的肯定要是正数
		}
		else if (e <= eRule[6]) //偏差小于 230
		{
			Pn = 5;
			//以下是距离 150 的隶属度。数越大，隶属度越高
			Pf[0] = FMAX * ((float)(eRule[6] - e) / (eRule[6] - eRule[5])); //这儿计算出来的肯定要是正数
		}
	}
	else if (e <= eRule[0]) //偏差小于 -230
	{
		Pn = 0;
		Pf[0] = FMAX;
	}
	else if (e >= eRule[5]) //偏差大于230
	{
		Pn = 5;
		Pf[0] = 0;
	}

	Pf[1] = FMAX - Pf[0];


	if (ec > ecRule[0] && ec < ecRule[6])  //如果偏差在范围内
	{
		if (ec <= ecRule[1])  //如果偏差  < -150
		{
			Dn = 0;
			//以下是距离 -230 的隶属度。数越大，隶属度越高
			Df[0] = FMAX * ((float)(ecRule[1] - ec) / (ecRule[1] - ecRule[0])); //这儿计算出来的肯定要是正数
		}
		else if (ec <= ecRule[2])  //偏差小于 -70
		{
			Dn = 1;
			//以下是距离 -150 的隶属度。数越大，隶属度越高
			Df[0] = FMAX * ((float)(ecRule[2] - ec) / (ecRule[2] - ecRule[1])); //这儿计算出来的肯定要是正数
		}
		else if (ec <= ecRule[3])  //偏差小于 0
		{
			Dn = 2;
			//以下是距离 -70 的隶属度。数越大，隶属度越高
			Df[0] = FMAX * ((float)(ecRule[3] - ec) / (ecRule[3] - ecRule[2])); //这儿计算出来的肯定要是正数
		}
		else if (ec <= ecRule[4]) //偏差小于 70
		{
			Dn = 3;
			//以下是距离 0 的隶属度。数越大，隶属度越高
			Df[0] = FMAX * ((float)(ecRule[4] - ec) / (ecRule[4] - ecRule[3])); //这儿计算出来的肯定要是正数
		}
		else if (ec <= ecRule[5]) //偏差小于 150
		{
			Dn = 4;
			//以下是距离 70 的隶属度。数越大，隶属度越高
			Df[0] = FMAX * ((float)(ecRule[5] - ec) / (ecRule[5] - ecRule[4])); //这儿计算出来的肯定要是正数
		}
		else if (ec <= ecRule[6]) //偏差小于 230
		{
			Dn = 5;
			//以下是距离 150 的隶属度。数越大，隶属度越高
			Df[0] = FMAX * ((float)(ecRule[6] - ec) / (ecRule[6] - ecRule[5])); //这儿计算出来的肯定要是正数
		}
	}
	else if (ec <= ecRule[0]) //偏差小于 -230
	{
		Dn = 0;
		Df[0] = FMAX;
	}
	else if (ec >= ecRule[5]) //偏差大于230
	{
		Dn = 5;
		Df[0] = 0;
	}

	Df[1] = FMAX - Df[0];

	//查表
	Un[0] = rule[Pn][Dn];
	if (Pf[0] <= Df[0])
		Uf[0] = Pf[0];
	else
		Uf[0] = Df[0];

	Un[1] = rule[Pn + 1][Dn];
	if (Pf[1] <= Df[0])
		Uf[1] = Pf[1];
	else
		Uf[1] = Df[0];

	Un[2] = rule[Pn][Dn + 1];
	if (Pf[0] <= Df[1])
		Uf[2] = Pf[0];
	else
		Uf[2] = Df[1];

	Un[3] = rule[Pn + 1][Dn + 1];
	if (Pf[1] <= Df[1])
		Uf[3] = Pf[1];
	else
		Uf[3] = Df[1];

	//同隶属函数求最大值
	if (Un[0] == Un[1])
	{
		if (Uf[0] > Uf[1])
			Uf[1] = 0;  //直接把概率小的清零
		else
			Uf[0] = 0;
	}
	if (Un[0] == Un[2])
	{
		if (Uf[0] > Uf[2])
			Uf[2] = 0;  //直接把概率小的清零
		else
			Uf[0] = 0;
	}
	if (Un[0] == Un[3])
	{
		if (Uf[0] > Uf[3])
			Uf[3] = 0;  //直接把概率小的清零
		else
			Uf[0] = 0;
	}
	if (Un[1] == Un[2])
	{
		if (Uf[1] > Uf[2])
			Uf[2] = 0;  //直接把概率小的清零
		else
			Uf[1] = 0;
	}
	if (Un[1] == Un[3])
	{
		if (Uf[1] > Uf[3])
			Uf[3] = 0;  //直接把概率小的清零
		else
			Uf[1] = 0;
	}
	if (Un[2] == Un[3])
	{
		if (Uf[2] > Uf[3])
			Uf[3] = 0;  //直接把概率小的清零
		else
			Uf[2] = 0;
	}
	//重心法反模糊
	Un[0] = KD_Rule[Un[0]];
	Un[1] = KD_Rule[Un[1]];
	Un[2] = KD_Rule[Un[2]];
	Un[3] = KD_Rule[Un[3]];
	//可能的取值*这个取值可能的概率
	temp1 = Un[0] * Uf[0] + Un[1] * Uf[1] + Un[2] * Uf[2] + Un[3] * Uf[3];
	//所有可能的概率
	temp2 = Uf[0] + Uf[1] + Uf[2] + Uf[3];

	KD = temp1 / temp2;
	KD /= 100;

	return KD;
}