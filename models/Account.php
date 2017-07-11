<?php
/**
 * Created by PhpStorm.
 * User: huy
 * Date: 7/11/17
 * Time: 11:52 AM
 */
 class Account{
     var $username;
     var $password;
     var $authorities;

     /**
      * @return mixed
      */
     public function getAuthorities()
     {
         return $this->authorities;
     }

     /**
      * @return mixed
      */
     public function getPassword()
     {
         return $this->password;
     }

     /**
      * @return mixed
      */
     public function getUsername()
     {
         return $this->username;
     }

     /**
      * @param mixed $authorities
      */
     public function setAuthorities($authorities)
     {
         $this->authorities = $authorities;
     }

     /**
      * @param mixed $password
      */
     public function setPassword($password)
     {
         $this->password = $password;
     }

     /**
      * @param mixed $username
      */
     public function setUsername($username)
     {
         $this->username = $username;
     }

     function _construct($username,$password,$authorities){
         $this->setUsername($username);
         $this->setPassword($password);
         $this->setAuthorities($authorities);
     }
 }
?>