<?php include_once 'header.php'; ?>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row" style="margin-top: 20px;">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>状态</th>
                                    <th>代理姓名</th>
                                    <th>电话号码</th>
                                    <th>身份证号</th>
                                    <th>注册时间</th>
                                    <th width="600">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($datas as $item) { ?>
                                <tr>
                                    <td><?php echo $item->id; ?></td>
                                    <td>
                                    	
                                    	<?php
                  if ($item->grade == 1) {
                    echo '<span style="color: green;">正常</span>';
                  } else if ($item->grade == 2) {
                    echo '<span style="color: blue;">审核中</span>';
                  } else if($item->grade == 3) {
                    echo '<span style="color: red;">永禁</span>';
                  }
                  ?>
                                    	
                                    	
                                    	</td>
                                    <td><?php echo $item->rname; ?></td>
                                    <td><?php echo $item->id_wechat; ?></td>
                                    <td><?php echo $item->idcard; ?></td>
                                    <td><?php echo $item->created_at; ?></td>
                                    <td>
   <a href="/administrator/agentsjok?id_user=<?php echo $item->id_wechat; ?>">审核通过</a> | <a href="/administrator/agentsjrf?id_user=<?php echo $item->id_wechat; ?>">退回重写</a> | <a href="/administrator/agentsjno?id_user=<?php echo $item->id_wechat; ?>">永久禁止</a> 
                
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="10" style="text-align: center;">
                                        <ul class="pagination">
                                            <li class="paginate_button previous"><a href="<?php echo $datas->previousPageUrl(); ?>">上一页</a></li>
                                            <li class="paginate_button active"><a href="#"><?php echo $datas->currentPage(); ?> / <?php echo $datas->lastPage(); ?>, 共 <?php echo $datas->total(); ?> 条记录</a></li>
                                            <li class="paginate_button next"><a href="<?php echo $datas->nextPageUrl(); ?>">下一页</a></li>
                                        </ul>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
       
        
        
        
        
<?php include_once 'footer.php'; ?>