//
//  ModeloLibro.h
//  Proyecto_Biblioteca
//
//  Created by MAC COMPARTIDA4 on 23/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModeloLibro : NSObject

@property (nonatomic,copy) NSString *autor; // se agrega copy para que asigne en otra posicion de memoria
@property (nonatomic,copy) NSString *clasificacion;
@property (nonatomic,copy) NSString *descripcion;
@property (nonatomic,copy) NSString *editorial;
@property(nonatomic,copy)NSString *imagen;
@property(nonatomic,copy)NSString *titulo;
@property(nonatomic,copy)NSString *existencias;
@property(nonatomic,copy)NSString  *idLibros;
@property(nonatomic,copy)NSString  *paginas;

//-(NSString *)localizedTitle;

-(instancetype)initWhitAutor:(NSString *)autor
               Clasificacion:(NSString *)clasificacion
                 Descripcion:(NSString*)descripcion
                   Editorial:(NSString*)editorial
                      Imagen:(NSString*)imagen
                      Titulo:(NSString*)titulo
                 Existencias:(NSString*)existencias
                    IdLibros:(NSString*)idLibros
                     Paginas:(NSString*)paginas;



@end
