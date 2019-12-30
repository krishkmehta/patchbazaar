<?php

function my_simple_crypt($string, $action = 'e')
{
    // you may change these values to your own
    $secret_key = 'DADnWxTBmqf2RWFuAboe1A3cM1XNhTPI';
    $secret_iv = 'OcU[&ZC/;?>n-=#}AXOE*$v;*p6S,WJA7kZK1%o5;`G~h0;3yE9NGPc"9`wMNYT';

    $output = false;
    $encrypt_method = "AES-256-CBC";
    $key = hash('sha512', $secret_key);
    $iv = substr(hash('sha512', $secret_iv), 0, 16);

    if ($action == 'e') {
        $output = base64_encode(openssl_encrypt($string, $encrypt_method, $key, 0, $iv));
    } else if ($action == 'd') {
        $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
    }

    return $output;
}

 $user= my_simple_crypt('username');
 $pass= my_simple_crypt('password');
 $time= my_simple_crypt('time');
print_r($_REQUEST[$user]);

if(isset($_REQUEST[$user]) && isset($_REQUEST[$pass]) && isset($_REQUEST[$time])){
    echo "Decrypt Username :- ".my_simple_crypt($_REQUEST[$user],'d')."<br/>";
    echo "Decrypt Password :- ".my_simple_crypt($_REQUEST[$pass],'d')."<br/>";
    echo "Decrypt Timer :- ".my_simple_crypt($_REQUEST[$time],'d')."<br/>";


    echo (time() - (my_simple_crypt($_REQUEST[$time],'d')) )/60 . " second";


}