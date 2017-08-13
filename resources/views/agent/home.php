<?php include_once 'header.php'; ?>
<style>
    .list-group-item {
        border: 0;
        border-top: 1px solid #ddd;
    }
    .list-group-item:first-child {
        border-radius: 0;
        border: 0;
    }
</style>

        <div id="page-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">数据总览</h1>
                    </div>
                </div>



                    
                    
                                        <div class="col-lg-3 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-support fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                       <div class="huge">平台公告 </div>
                                        <div></div>
                                    </div>
                                </div>
                            </div>
                         
                                <div class="panel-footer" style="border-top: 0;">
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $agentnote->agentnote; ?>
                                   
                                    <div class="clearfix"></div>
                                </div>
                            
                        </div>
                    </div>









                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-comments fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge"><?php echo number_format($data['today']['users']);?></div>
                                        <div>今日新增用户</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/agent/users">
                                <div class="panel-footer" style="border-top: 0;">
                                    <span class="pull-left">查看所有用户</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>


            </div>
        </div>
<?php include_once 'footer.php'; ?>