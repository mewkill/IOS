//
//  Connect.m
//  Proyecto_Biblioteca
//
//  Created by MAC COMPARTIDA4 on 22/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "Connect.h"
#import "BookListViewViewController.h"
#import "AFNetworking.h"


@implementation Connect


-(void)login:(NSString *)user password:(NSString *)pass conecta:(UIViewController *)con

{
    
    NSUserDefaults *banderaAdministrador = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *usuario = [NSUserDefaults standardUserDefaults];
    
    BookListViewViewController *bookListView = [[BookListViewViewController alloc] initWithNibName:nil bundle:nil];
    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://proyectobiblioteca.hol.es/"]];
    
    [httpClient setParameterEncoding:AFFormURLParameterEncoding];
    
    NSMutableURLRequest *request = [httpClient requestWithMethod:@"POST"
                                    
                                                            path:@"http://proyectobiblioteca.hol.es/validarUsuario.php"
                                    
                                                      parameters:@{@"usuario":user,@"contrasena":pass}];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [httpClient registerHTTPOperationClass:[AFHTTPRequestOperation class]];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // Print the response body in text
        
        NSLog(@"Response: %@", [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]);
        
        
        
        if([[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding] isEqualToString:@"true"]){
            
            [banderaAdministrador setInteger:1 forKey:@"admin"];
            
            [usuario setObject:user forKey:@"user"]; //GUARDO USUARIO PARA RECUPERLO EN LA TABLA_VENTA
            
            
            [con.navigationController pushViewController:bookListView animated:YES];
            
            NSLog(@"Entra user");
            
        }else{
            
            if([[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding] isEqualToString:@"administrador"]){
                
                
                
                [banderaAdministrador setInteger:0 forKey:@"admin"];
                
                [con.navigationController pushViewController:bookListView animated:YES];
                
                NSLog(@"Entra admin");
            }
            
            UIAlertView *camposIncorrectos=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Usuario y/o password incorrectos" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [camposIncorrectos show];
            

        }
 
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
        //return false;
        
    }];
    
    [operation start];

    
}
//metodo para obtener el Json
-(void)GetListOfBook{
    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://proyectobiblioteca.hol.es/"]];
    
    [httpClient setParameterEncoding:AFFormURLParameterEncoding];
    
    NSMutableURLRequest *request = [httpClient requestWithMethod:@"POST"
                                    
                                                            path:@"http://proyectobiblioteca.hol.es/verLibros.php"
                                    
                                                      parameters:@{}];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [httpClient registerHTTPOperationClass:[AFHTTPRequestOperation class]];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        //Mensaje en consola
        
        NSLog(@"Response: %@", [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]);
        
        
        ////
        NSError *jsonError = nil;
        NSArray *jsonArray = (NSArray *)[NSJSONSerialization JSONObjectWithData:responseObject options:kNilOptions error:&jsonError];
        
     
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
        //regresa un erro ;
        
    }];
    
    [operation start];
    
    
}



-(void)registraUsuarios:(NSString *)nombre usuario:(NSString *)user email:(NSString *)email password:(NSString*)pwd

{
    
    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://pruebajava.hol.es/"]];
    
    [httpClient setParameterEncoding:AFFormURLParameterEncoding];
    
    NSMutableURLRequest *request = [httpClient requestWithMethod:@"POST"
                                    
                                                            path:@"http://pruebajava.hol.es/registraUser.php"
                                    
                                                      parameters:@{@"nombre":nombre,@"usuario":user,@"correo":email,@"pwd":pwd}];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [httpClient registerHTTPOperationClass:[AFHTTPRequestOperation class]];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // Print the response body in text
        
        NSLog(@"Response: %@", [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]);
        
        
        
        if([[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding] isEqualToString:@"OK"]){
            
            
            
            
            
            [utils showMessage:@"Registro" mensaje:@"Registrado con exito"];
            
            
            
            
            
        }
        
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
        
        
        [utils showMessage:@"Error" mensaje:@"Error en el servidor, intente de nuevo"];
        
        
        
        
        
    }];
    
    [operation start];
    
}


@end
