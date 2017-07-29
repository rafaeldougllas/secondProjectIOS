//
//  ViewController.m
//  NavigationProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"
#import "RedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//similar ao OnCreate
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.valor1 = 30;
    self.valor2 = 40;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Serve para verificar antes de passar para proxima view, so funciona com navigationController
-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if([identifier isEqualToString:@"segueAzul"]){
        //Quando for fazer uma verificacao antes de chamar a viewController azul
        if(self.valor1 < self.valor2){
            return FALSE;
        }else{
            return TRUE;
        }
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"segueAmarelo"]){
        YellowViewController * yellow = [segue destinationViewController];
        yellow.nome = @"Yellow Rafael";
        
        //((BlueViewController *) [segue destinationViewController]).nome = @"Rafael";
        
    }else if([segue.identifier isEqualToString:@"segueVermelho"]){
        RedViewController * red = [segue destinationViewController];
        red.nome = @"Red Rafael";
        
    }else if([segue.identifier isEqualToString:@"segueAzul"]){
        BlueViewController * blue = [segue destinationViewController];
        blue.nome = @"Blue Rafael";
    }
}


@end
