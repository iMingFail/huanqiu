<?php
ini_set('date.timezone','Asia/Shanghai');
error_reporting(E_ERROR);

require_once "WxPay.Api.php";
require_once 'WxPay.Notify.php';
require_once 'log.php';

//初始化日志
$logHandler= new CLogFileHandler("logs/".date('Y-m-d').'.log');
$log = Log::Init($logHandler, 15);

class PayNotifyCallBack extends WxPayNotify
{
	//查询订单
	public function Queryorder($transaction_id)
	{
		$input = new WxPayOrderQuery();
		$input->SetTransaction_id($transaction_id);
		$result = WxPayApi::orderQuery($input);
		Log::DEBUG("query:" . json_encode($result));
		if(array_key_exists("return_code", $result)
			&& array_key_exists("result_code", $result)
			&& $result["return_code"] == "SUCCESS"
			&& $result["result_code"] == "SUCCESS")
		{
			
            $shouji = $result["attach"]; // 手机id
            $orderid = $result["out_trade_no"];// 订单号
            $amount =  ($result["total_fee"]/100);// 交易金额
            $datetime = $result["time_end"]; // 交易时间
            
            $hdid = '123222';
            $zfkey = '100adc3949ba59abbe56e057f20f883e';  //密钥

$md5str= $hdid.$shouji.$orderid.$amount.$datetime.$zfkey;
$sign = strtoupper(md5($md5str));
$curlPost = 'hdid='.$hdid.'&shouji='.$shouji.'&orderid='.$orderid.'&amount='.$amount.'&datetime='.$datetime.'&sign='.$sign;
$tijiao='http://' . $_SERVER['SERVER_NAME'] . '/callbacks/xinpay';
$ch = curl_init();
curl_setopt($ch,CURLOPT_URL,$tijiao);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 0);
curl_setopt($ch, CURLOPT_POST, 1);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $curlPost);
$a=curl_exec($ch);
curl_close($ch);

			
//header("Content-type: text/html; charset=utf-8");

//$file  = 'log.txt';//要写入文件的文件名（可以是任意文件名），如果文件不存在，将会创建一个
//$content = $orderid;
 
//if($f  = file_put_contents($file, $content,FILE_APPEND)){// 这个函数支持版本(PHP 5) 
//}
		
			
	return true;		
			
			
		}
		return false;
	}
	
	//重写回调处理函数
	public function NotifyProcess($data, &$msg)
	{
		Log::DEBUG("call back:" . json_encode($data));
		$notfiyOutput = array();
		
		if(!array_key_exists("transaction_id", $data)){
			$msg = "输入参数不正确";
			return false;
		}
		//查询订单，判断订单真实性
		if(!$this->Queryorder($data["transaction_id"])){
			$msg = "订单查询失败";
			return false;
		}
		return true;
	}
}

Log::DEBUG("begin notify");
$notify = new PayNotifyCallBack();
$notify->Handle(false);
