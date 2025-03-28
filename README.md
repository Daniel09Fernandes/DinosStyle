# DinosStyle
DinosStyle - Unigui
![image](https://github.com/user-attachments/assets/739cf197-ed53-4b1c-a7f9-c9cfedab8867)


Como utilizar: 
  - Incluir na raiz do seu projeto, jutno ao exe ou a dll, as pastas css e js que estão dentro da pasta assets.
  - No Library Path ou no projeto, adicionar todos os fontes que estão dentro da pasta Boostrap.
  - No evento onCreate do ServeModule, adicionar as seguintes linhas de codigo:

```pascal
  UniServerModule.CustomFiles.Add('css\bootstrap.css');
  UniServerModule.CustomFiles.Add('css\dinos.css');
  UniServerModule.CustomFiles.Add('js\bootstrap.js');
  UniServerModule.CustomFiles.Add('js\dinos.js');
  UniServerModule.CustomMeta.Add('<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>');
```

Para utilizar, para olhar o fonte da pasta Sample, pode se basear pela Main.Pas.

Video explicando como instalar e usar: https://www.youtube.com/watch?v=gzoqG8Dhlp8 
