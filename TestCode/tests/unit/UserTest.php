<?php
class UserTest extends \PHPUnit\Framework\TestCase{
    
    //These 2 are successfull in unit testing
    public function testReturnUserName(){
        $user = new \App\Model\User;
        $user->setUserName('Sanzid');
        $this->assertEquals($user->getUserName(), 'Sanzid');
    }
    public function testReturnEmailAddress(){
		$user = new \App\Model\User;
		$user->setEmail('sanzid2546@gmail.com');
        $this->assertEquals($user->getEmail(), 'sanzid2546@gmail.com');
    }


    //This 1 is failed in unit testing
    
    public function testUserNameIsEmptyByDefault(){
        $user = new \App\Model\User;
        $user->setUserName('Sanzid');
        $this->assertEquals($user->getUserName(), '');
    }
    

}
