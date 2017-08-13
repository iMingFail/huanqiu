<?php include_once 'header.php'; ?>

<body>
<form method="post">

  <div class="weui_cells weui_cells_access">
    <a class="weui_cell" href="#">
      <div class="weui_cell_bd weui_cell_primary">
        <p>申请成为代理   (请填写真实资料，我们将认真审核 )</p>
      </div>
    
    </a>

  </div>

  <div class="weui_cells weui_cells_form">
    <div class="weui_cell">
      <div class="weui_cell_hd"><label class="weui_label">姓名</label></div>
      <div class="weui_cell_bd weui_cell_primary">
        <input name="name" class="weui_input" type="text" placeholder="您的姓名">
      </div>
    </div>
    <div class="weui_cell">
      <div class="weui_cell_hd"><label class="weui_label">身份证</label></div>
      <div class="weui_cell_bd weui_cell_primary">
        <input name="number" class="weui_input" type="number" placeholder="身份证号码">
      </div>
    </div>
        <div class="weui_cell">
      <div class="weui_cell_hd"><label class="weui_label">手机号</label></div>
      <div class="weui_cell_bd weui_cell_primary">
        <input value="<?php echo $user->id_wechat; ?>" class="weui_input" type="text" disabled="true"
               style="padding-left: 10px;">
      </div>
    </div>

  </div>

  <div class="weui_cells weui_cells_access">

    <div class="weui_cell">
      <div class="weui_cell_hd"><label class="weui_label">申明</label></div>
      <div class="weui_cell_bd weui_cell_primary">
        本人保证以上信息真实有效，如有虚假，愿承担一切责任，包括放弃所有代理佣金。
      </div>
    </div>
  </div>

  <div class="weui_btn_area">
    <a href="javascript:document.getElementsByTagName('form')[0].submit();" class="weui_btn weui_btn_primary">确认</a>
  </div>

</form>

<?php include_once 'footer.php'; ?>
