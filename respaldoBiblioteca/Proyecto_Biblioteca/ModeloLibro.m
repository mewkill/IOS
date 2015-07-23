//
//  ModeloLibro.m
//  Proyecto_Biblioteca
//
//  Created by MAC COMPARTIDA4 on 23/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "ModeloLibro.h"

@implementation ModeloLibro


-(instancetype)initWhitAutor:(NSString *)autor
               Clasificacion:(NSString *)clasificacion
                 Descripcion:(NSString*)descripcion
                   Editorial:(NSString*)editorial
                      Imagen:(NSString*)imagen
                      Titulo:(NSString*)titulo
                 Existencias:(NSString*)existencias
                    IdLibros:(NSString*)idLibros
                     Paginas:(NSString*)paginas{
    
    self=[super init];
    
    if(self){ //self != nil
        
        _autor=autor; //Es lo mismo que self.title;
        //self.autor=autor;
        _clasificacion=clasificacion;
        _descripcion=descripcion;
        _editorial=editorial;
        _imagen=imagen;
        _titulo=titulo;
        _existencias=existencias;
        _idLibros=idLibros;
        _paginas=paginas;
        
        
        
    }
    
    return self;
}




@end
