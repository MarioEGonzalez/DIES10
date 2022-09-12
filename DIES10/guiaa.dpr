program guiaa;

uses
  Vcl.Forms,
  principal in 'principal.pas' {Form2},
  menu001 in 'menu001.pas' {Trayectoria},
  texto001 in 'texto001.pas' {Formtexto001},
  menuprb1 in 'menuprb1.pas' {asdasd},
  menu002 in 'menu002.pas' {Angulos},
  anexo01 in 'anexo01.pas' {Anexo1},
  anexo02 in 'anexo02.pas' {Anexo2},
  anexo03 in 'anexo03.pas' {Anexo3},
  anexo04 in 'anexo04.pas' {Anexo4},
  anexo05 in 'anexo05.pas' {Anexo5},
  univer in 'univer.pas' {univ},
  bibliograf in 'bibliograf.pas' {biblio},
  acerca in 'acerca.pas' {vers};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TTrayectoria, Trayectoria);
  Application.CreateForm(TFormtexto001, Formtexto001);
  Application.CreateForm(Tasdasd, asdasd);
  Application.CreateForm(TAngulos, Angulos);
  Application.CreateForm(TAnexo1, Anexo1);
  Application.CreateForm(TAnexo2, Anexo2);
  Application.CreateForm(TAnexo3, Anexo3);
  Application.CreateForm(TAnexo4, Anexo4);
  Application.CreateForm(TAnexo5, Anexo5);
  Application.CreateForm(Tuniv, univ);
  Application.CreateForm(Tbiblio, biblio);
  Application.CreateForm(Tvers, vers);
  Application.Run;
end.
