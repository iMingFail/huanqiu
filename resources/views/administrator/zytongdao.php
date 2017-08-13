<?php include_once 'header.php'; ?>
  <style type="text/css">
    .prices {
      float: left;
      width: 350px;
    }

    table th, tr, td {
      text-align: center;
    }
  </style>
  <div id="page-wrapper">
    <div class="container-fluid">
      <form method="post" onsubmit="return change();">
        <table class="table table-striped">
          <tr>
            <th>系统名称</th>
            <th>参数值</th>
          </tr>
          <tbody>
          	
          	    	

          <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;"></label>
            </th>
            <td>
              <div class="input-group prices">
            
           
              </div>
            </td>
          </tr>
          
                           <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;">商户号</label>
            </th>
            <td>
              <div class="input-group prices"> 
                <div class="input-group-addon"></div>
                <input type="text" value="<?php echo $PAYMENT_PID; ?>" name="PAYMENT_PID" class="form-control"
                       id="exampleInputAmount"
                       placeholder="请输入商户号"> 
              </div>
            </td>
          </tr>   
                                     <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;">密钥</label>
            </th>
            <td>
              <div class="input-group prices"> 
                <div class="input-group-addon"></div>
                <input type="text" value="<?php echo $PAYMENT_KEY; ?>" name="PAYMENT_KEY" class="form-control"
                       id="exampleInputAmount"
                       placeholder="请输入密钥"> 
              </div>
            </td>
          </tr>   
          
          
          
          
          
                    <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;">微信通道名</label>
            </th>
            <td>
              <div class="input-group prices"> 
                <div class="input-group-addon"></div>
                <input type="text" value="<?php echo $PAYMENT_WXTD; ?>" name="PAYMENT_WXTD" class="form-control"
                       id="exampleInputAmount"
                       placeholder="请输入微信通道名"> 
              </div>
            </td>
          </tr>
           
           
            <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;">支付宝通道名</label>
            </th>
            <td>
              <div class="input-group prices">
                <div class="input-group-addon"></div>
                <input type="text" value="<?php echo $PAYMENT_ALITD; ?>" name="PAYMENT_ALITD" class="form-control"
                       id="exampleInputAmount"
                       placeholder="请输入支付宝通道名">
              </div>
            </td>
          </tr> 

          
          
          
          
          
          
          
          <tr>
            <td colspan="2">
              <button type="submit" class="btn btn-success">提交保存</button>
            </td>
          </tr>
          </tbody>
        </table>
      </form>
    </div>
  </div>
  <script type="text/javascript">
    function change() {
      var min = $('input[name=convert_min]').val();
      var max = $('input[name=convert_max]').val();
      if (min > max) {
        layer.msg('参数错误,最小值不能操作最大值!!');
        return false;
      }
    }
  </script>
<?php include_once 'footer.php'; ?>