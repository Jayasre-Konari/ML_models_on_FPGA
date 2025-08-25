// Code1 your design here
module top;
  int x[];
  int y[];
  int x_mean,y_mean,x_diff[5],y_diff[5],xy_prod[5],x_sq[5];
  real b0,b1,xy_sum,x_sq_sum,y_pred[5];
 
  initial begin
    // array initialization
    x=new[5];
    x={95,85,80,70,60};
    y=new[5];
    y={85,95,70,65,70};
    $display("X=%p",x);
    $display("Y=%p",y);
//mean 
    x_mean=x.sum()/$size(x);
    $display("x_mean=%d",x_mean);
    y_mean=y.sum()/$size(y);
    $display("x_mean=%d",y_mean);
 //difference   
    foreach(x[i])
      x_diff[i]=x[i]-x_mean;
    $display("x_diff=%p",x_diff);
    foreach(y[i])
      y_diff[i]=y[i]-y_mean;
    $display("y_diff=%p",y_diff);
 //product
    foreach(x_diff[i])begin
    xy_prod[i]=x_diff[i]*y_diff[i];
      x_sq[i]=x_diff[i]*x_diff[i];
    end
    $display("xy_product=%p",xy_prod);
    $display("x_seq=%p",x_sq);
  //b1
    xy_sum=xy_prod.sum();
    $display("xy_sum=%d",xy_sum);
    x_sq_sum=x_sq.sum();
    $display("x_sq_sum=%d",x_sq_sum);
    b1=xy_sum/x_sq_sum;
    $display("b1=%2f",b1);
   //b0
    b0=y_mean-(b1*x_mean);
    $display("b0=%f",b0);
    //linear regression
    foreach(x[i])
      y_pred[i]=b1*x[i]+b0;
    $display("y_pred=%p",y_pred);
  end
 endmodule  
  