unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, math,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.Imaging.jpeg;

type
  TForm2 = class(TForm)
    StaticText2: TStaticText;
    asdfasd: TMainMenu;
    Inicio1: TMenuItem;
    Version1: TMenuItem;
    Bibliografia1: TMenuItem;
    Autores1: TMenuItem;
    Universidad1: TMenuItem;
    Salir1: TMenuItem;
    llamar1: TButton;
    Button1: TButton;
    StaticText1: TStaticText;
    Memo1: TMemo;
    Image2: TImage;
    Version1011: TMenuItem;
    Image1: TImage;
    Image3: TImage;
    procedure llamar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Autores1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Universidad1Click(Sender: TObject);
    procedure Bibliografia1Click(Sender: TObject);
    procedure Version1011Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses menu001, texto001, menuprb1, univer, bibliograf, acerca, menu002;

procedure TForm2.Autores1Click(Sender: TObject);
begin
asdasd.show;
end;

procedure TForm2.Bibliografia1Click(Sender: TObject);
begin
biblio.show;
end;

procedure TForm2.Button1Click(Sender: TObject);


begin
Trayectoria.ShowModal;
end;

procedure TForm2.llamar1Click(Sender: TObject);
begin
Angulos.showModal;
end;

procedure TForm2.Salir1Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.Universidad1Click(Sender: TObject);
begin
  univ.show;
end;

procedure TForm2.Version1011Click(Sender: TObject);
begin
vers.show;
end;

end.
