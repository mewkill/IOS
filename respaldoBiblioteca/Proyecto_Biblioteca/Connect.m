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
#import "ViewController.h"


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
            }else{
            
            UIAlertView *camposIncorrectos=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Usuario y/o password incorrectos" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [camposIncorrectos show];
            }

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
        
        NSLog(@"Response: %lu",(unsigned long)[jsonArray count]);

        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
        //regresa un erro ;
        
    }];
    
    [operation start];
    
    
}



-(void)registraUsuarios:(NSString *)nombre usuario:(NSString *)user  password:(NSString*)pwd  telefono:(NSString *)tel email:(NSString *)email conecta:(UIViewController *)con

{
    
    ViewController *login = [[ViewController alloc] initWithNibName:nil bundle:nil];

    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://proyectobiblioteca.hol.es/"]];
    
    [httpClient setParameterEncoding:AFFormURLParameterEncoding];
    
    NSMutableURLRequest *request = [httpClient requestWithMethod:@"POST"
                                    
                                                            path:@"http://proyectobiblioteca.hol.es/registraUsuario.php"
                                    
                                                      parameters:@{@"nombre":nombre,@"usuario":user,@"contrasena":pwd,@"telefono":tel,@"correo":email}];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [httpClient registerHTTPOperationClass:[AFHTTPRequestOperation class]];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // Print the response body in text
        
        NSLog(@"Response: %@", [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]);
        
        
        
        if([[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding] isEqualToString:@"registrado"]){
        
            
            UIAlertView *registroSuccess=[[UIAlertView alloc]initWithTitle:@"Exito" message:@"Usuario Registrado Exitosamente" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [registroSuccess show];
            
            //[con.navigationController pushViewController:login animated:YES];
            
        }else if ([[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding] isEqualToString:@"existe"]){
            UIAlertView *registroSuccess=[[UIAlertView alloc]initWithTitle:@"Error" message:@"El usuario ya esta registrado" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [registroSuccess show];

            
        }else{
            UIAlertView *registroSuccess=[[UIAlertView alloc]initWithTitle:@"Error" message:@"No pudo registrarse el usuario" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [registroSuccess show];

        }
        
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
        
        UIAlertView *registroError=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Ocurrio un error en el servidor, intentelo mas tarde" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [registroError show];
        
    }];
    
    [operation start];
    
}


@end




-(void)registraLibros:(NSString *)nombre usuario:(NSString *)user  password:(NSString*)pwd  telefono:(NSString *)tel email:(NSString *)email conecta:(UIViewController *)con

{
    
    ViewController *login = [[ViewController alloc] initWithNibName:nil bundle:nil];
    
    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://proyectobiblioteca.hol.es/"]];
    
    [httpClient setParameterEncoding:AFFormURLParameterEncoding];
    
    NSMutableURLRequest *request = [httpClient requestWithMethod:@"POST"
                                    
                                                            path:@"http://proyectobiblioteca.hol.es/registraUsuario.php"
                                    
                                                      parameters:@{@"nombre":nombre,@"usuario":user,@"contrasena":pwd,@"telefono":tel,@"correo":email}];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [httpClient registerHTTPOperationClass:[AFHTTPRequestOperation class]];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // Print the response body in text
        
        NSLog(@"Response: %@", [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]);
        
        
        
        if([[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding] isEqualToString:@"registrado"]){
            
            
            UIAlertView *registroSuccess=[[UIAlertView alloc]initWithTitle:@"Exito" message:@"Usuario Registrado Exitosamente" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [registroSuccess show];
            
            //[con.navigationController pushViewController:login animated:YES];
            
        }else if ([[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding] isEqualToString:@"existe"]){
            UIAlertView *registroSuccess=[[UIAlertView alloc]initWithTitle:@"Error" message:@"El usuario ya esta registrado" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [registroSuccess show];
            
            
        }else{
            UIAlertView *registroSuccess=[[UIAlertView alloc]initWithTitle:@"Error" message:@"No pudo registrarse el usuario" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [registroSuccess show];
            
        }
        
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
        
        UIAlertView *registroError=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Ocurrio un error en el servidor, intentelo mas tarde" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [registroError show];
        
    }];
    
    [operation start];
    
}


@end
