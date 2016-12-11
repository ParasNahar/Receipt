<?php
 
 namespace Cart\Factories;
 
 use Mailgun\Mailgun;
 
 class MailgunFactory
 {
     public function emailValidation()
     {
         return new Mailgun(getenv('MAILGUN_PUB_KEY'));
     }
 
     public function emailSending()
     {
         return new Mailgun(getenv('MAILGUN_API_KEY'));
     }
 }