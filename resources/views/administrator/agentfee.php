<?php include_once 'header.php'; ?>
  <style type="text/css">
    .prices {
      float: left;
      width: 200px;
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
               请设置百分比  如0.02 为2%  <br>100元佣金2元
           
              </div>
            </td>
          </tr>
          
                    <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;">一级代理比例</label>
            </th>
            <td>
              <div class="input-group prices"> 
                <div class="input-group-addon">默认0.02</div>
                <input type="text" value="<?php echo $AGENT_1; ?>" name="agent_1" class="form-control"
                       id="exampleInputAmount"
                       placeholder="请输入百分比（%）"> 
              </div>
            </td>
          </tr>
           
           
            <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;">二级代理比例</label>
            </th>
            <td>
              <div class="input-group prices">
                <div class="input-group-addon">默认0.002</div>
                <input type="text" value="<?php echo $AGENT_2; ?>" name="agent_2" class="form-control"
                       id="exampleInputAmount"
                       placeholder="请输入百分比（%）">
              </div>
            </td>
          </tr> 
          
          <tr>
            <th>
              <label for="inputEmail3" class="col-sm-2 control-label"
                     style="width: 100%; line-height: 34px;">三级代理比例</label>
            </th>
            <td>
              <div class="input-group prices">
                <div class="input-group-addon">默认0.0002</div>
                <input type="text" value="<?php echo $AGENT_3; ?>" name="agent_3" class="form-control"
                       id="exampleInputAmount"
                       placeholder="请输入百分比（%）">
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