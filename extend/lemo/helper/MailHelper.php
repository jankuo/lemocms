<?php
/**
 * lemocms
 * ============================================================================
 * 版权所有 2018-2027 lemocms，并保留所有权利。
 * 网站地址: https://www.lemocms.com
 * ----------------------------------------------------------------------------
 * 采用最新Thinkphp6实现
 * ============================================================================
 * Author: yuege
 * Date: 2019/9/26
 */
namespace lemo\helper;

class MailHelper{

    /**
     * 邮件发送
     * @param $to    接收人
     * @param string $subject   邮件标题
     * @param string $content   邮件内容(html模板渲染后的内容)
     * @throws Exception
     * @throws phpmailerException
     */
    public static function sendEmail($to,$subject='',$content=''){
        vendor('phpmailer.PHPMailerAutoload'); ////require_once vendor/phpmailer/PHPMailerAutoload.php';
        //判断openssl是否开启
        $openssl_funcs = get_extension_funcs('openssl');
        if(!$openssl_funcs){
            return array('status'=>-1 , 'msg'=>'请先开启openssl扩展');
        }
        $mail = new PHPMailer;
        $config = tpCache('smtp');
        $mail->CharSet  = 'UTF-8'; //设定邮件编码，默认ISO-8859-1，如果发中文此项必须设置，否则乱码
        $mail->isSMTP();
        //Enable SMTP debugging
        // 0 = off (for production use)
        // 1 = client messages
        // 2 = client and server messages
        $mail->SMTPDebug = 0;
        //调试输出格式
        //$mail->Debugoutput = 'html';
        //smtp服务器
        $mail->Host = $config['smtp_server'];
        //端口 - likely to be 25, 465 or 587
        $mail->Port = $config['smtp_port'];

        if($mail->Port == 465) $mail->SMTPSecure = 'ssl';// 使用安全协议
        //Whether to use SMTP authentication
        $mail->SMTPAuth = true;
        //用户名
        $mail->Username = $config['smtp_user'];
        //密码
        $mail->Password = $config['smtp_pwd'];
        //Set who the message is to be sent from
        $mail->setFrom($config['smtp_user']);
        //回复地址
        //$mail->addReplyTo('replyto@example.com', 'First Last');
        //接收邮件方
        if(is_array($to)){
            foreach ($to as $v){
                $mail->addAddress($v);
            }
        }else{
            $mail->addAddress($to);
        }

        $mail->isHTML(true);// send as HTML
        //标题
        $mail->Subject = $subject;
        //HTML内容转换
        $mail->msgHTML($content);
        //Replace the plain text body with one created manually
        //$mail->AltBody = 'This is a plain-text message body';
        //添加附件
        //$mail->addAttachment('images/phpmailer_mini.png');
        //send the message, check for errors
        if (!$mail->send()) {
            return array('status'=>-1 , 'msg'=>'发送失败: '.$mail->ErrorInfo);
        } else {
            return array('status'=>1 , 'msg'=>'发送成功');
        }
    }


}