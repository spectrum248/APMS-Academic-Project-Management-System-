#include<stdio.h>
int no_of_sli;
float density,area,weight,height,length,bredth,area_hole=0,weight_of_one;
struct enter
{
	float start_at,end_at,hole_x_axis,hole_y_axis,t_hole_lenght,radius;//dimentions for insertion of hole .eg.axis,total length,redius
	struct enter *next;
}*new1,*start,*temp;

void ist_hole();
void calculations();
void display_holes();
main()
{
	int i,j;
		//Basic info about cheese  dimentions are entered.
	printf("\nEnter the dimentions of cheese  :  \n");
	do
	{
		printf("\nEnter length : ");
		scanf("%f",&length);
		if(length<=0)
			printf("\nDimentions must be greter than 0 ");
	}while(length<=0);
	do
	{
		printf("\nEnter bredth : ");
		scanf("%f",&bredth);
		if(bredth<=0)
			printf("\nDimentions must be greter than 0 ");
	}while(bredth<=0);
	do
	{
		printf("\nEnter height : ");
		scanf("%f",&height);
		if(height<=0)
			printf("\nDimentions must be greter than 0 ");
	}while(height<=0);
		//information about holes		
	do
	{
		printf("\nIf u does not want to insert the hole press  0   :  ");
		scanf("%d",&i);
		if(i!=0)
	 	{
		 	ist_hole();   //called every time to insert the 
		}
	}while(i!=0);
	do
	{	
		printf("\nEnter the weight : ");
		scanf("%f",&weight);
		if(weight<=0)
			printf("\nDimentions must be greter than 0 ");
	}while(weight<=0);
	do
	{
		printf("\nEnter the no of slices u required  : ");
		scanf("%d",&no_of_sli);
		if(no_of_sli<=0)
			printf("\nDimentions must be greter than 0 ");
	}while(no_of_sli<=0);
	area=bredth*length*height;
	density=weight/(area-area_hole);
	printf("\ndensity of cheese is :  %f\t\t",density);
	display_holes();
	calculations();
}

void ist_hole()
{
	int flag;
	new1=(struct enter*)malloc(sizeof(struct enter));
	if(new1==NULL)
       {
		printf("Insufficient storage\n");
	        return;
        }
	do
	{
	  	printf("\nEnter the axis info where u want to enter the hole (of length):  ");
		scanf("%f",&new1->hole_x_axis);
		printf("\nEnter the axis info of bredth:  ");
		scanf("%f",&new1->hole_y_axis);
		do
		{
			printf("\nEnter radius :  ");
			scanf("%f",&new1->radius);
			if(new1->radius>height/2||new1->radius>bredth/2)
				printf("\nRadius should be less than half of the height & bredth");
			if(new1->radius<=0)
			printf("\nDimentions must be greter than 0 ");
		}while(new1->radius<=0||(new1->radius>height/2||new1->radius>bredth/2));
		do
		{
			printf("\nEnter the total length of hole :  ");
			scanf("%f",&new1->t_hole_lenght);
			if(new1->t_hole_lenght<=0)
			printf("\nDimentions must be greter than 0 ");
		}while(new1->t_hole_lenght<=0);
		do
		{
		do
		{
			printf("\nEnter starting point of hole : ");
			scanf("%f",&new1->start_at);
			if(new1->start_at<0)
				printf("\nDimentions must be greter than or equal to 0 ");
			if(new1->start_at>length)
				printf("\ndimention should be less than length of cheese");
		}while(new1->start_at<0||new1->start_at>length);
		
			new1->end_at=new1->start_at+new1->t_hole_lenght;
		
			if(new1->end_at>length)
				printf("\ndimention(Ending point of hole) should be less than length of cheese");
			printf("\nSo ending point of hole is :  %f",new1->end_at);
		}while(new1->end_at<=0||new1->end_at>length);
		if(start==NULL)
	       {
			start=new1;
	 		new1->next=NULL;
			area_hole=area_hole+(3.14*new1->radius*new1->radius*new1->t_hole_lenght);
			printf("\narea of hole is : %f",area_hole);
			return;
		}
		temp=start;
		while(temp->next!=NULL)
		{
			temp=temp->next;
			if((temp->hole_x_axis==new1->hole_x_axis||temp->hole_y_axis==new1->hole_y_axis)&&temp->start_at==new1->start_at)
			{	
				printf("\ninserted dimentions intersects previous hole\n");
				flag=1;
			}
		}
		if(flag!=1)
		{
			temp->next=new1;
			new1->next=NULL;
			area_hole=area_hole+(3.14*new1->radius*new1->radius*new1->t_hole_lenght);
			printf("\narea of hole is : %f",area_hole);
			return;
		}
	}while(flag==1);
}


void display_holes()
{
	if(start==NULL)
	{
		printf("\n\nThere r no element\n");
		return;
	}
	printf("\nelements are : \n");
	temp=start;
	while(1)
	{
		printf("hole_x_axis : %f\n",temp->hole_x_axis);	//printing of info about each hole like hole_x_axis, 													hole_y_axis,t_hole_lenght,radius
		printf("hole_y_axis : %f\n",temp->hole_y_axis);
		printf("t_hole_lenght : %f\n",temp->t_hole_lenght);
		printf("radius : %f",temp->radius);
       	 	if(temp->next==NULL)
		{
			printf("\n\n..............Elements are over..................\n");
			break;
		}
		temp=temp->next;
	}
}


void calculations()
{
	
	int j;
	float i=0.000001;
	float temp_length,temp_weight=0,t_length[no_of_sli],t_weight[no_of_sli],cal_start,cal_end=0,area,holearea;
	cal_start=(float)0-0.000001;//it must as 0-i(variable)
	weight_of_one=weight/no_of_sli;
	for(j=0;j<no_of_sli;j++)
	{	
		
		i=0.000001;
		temp_weight=0;
		area=0;
		holearea=0;
		temp_length=0;
		while(weight_of_one>temp_weight)
		{
			holearea=0;
			temp_length=temp_length+i;
			cal_start=cal_start+i;
			cal_end=cal_end+i;
			area=i*bredth*height;
			if(cal_end<=length)
			{
				
				temp=start;
				while(1)
				{
					if(start==NULL)
					{
						holearea=0;
						break;
					}
					if(temp->next==NULL)
					{
						if(cal_start>=temp->start_at&&cal_end<=temp->end_at)
						{
							holearea=holearea+(3.14*temp->radius*temp->radius*i);
						}
						break;
					}
					if(cal_start>=temp->start_at&&cal_end<=temp->end_at)
					{
						holearea=holearea+(3.14*temp->radius*temp->radius*i);
					}
					temp=temp->next;
				}
				area=area-holearea;
				area=area*density;
				temp_weight=temp_weight+area;
			}
			else
			{
				printf("\ntemp weight is : %f",temp_weight);
				printf("\nlength is : %f",temp_length);
				printf("\n.......Cutting completed.......\n");
				return;
			}
		}
		printf("\ntemp weight is : %f",temp_weight);
		printf("\nlength is : %f",temp_length);
	}
	
	
}

