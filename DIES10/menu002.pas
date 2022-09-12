unit menu002;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, menu001,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TAngulos = class(TForm)
    Button2: TButton;
    Image1: TImage;
    procedure angClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
          delta5,delta6 : real;

    { Public declarations }
  end;

var
  Angulos: TAngulos;

implementation

{$R *.dfm}

uses principal;

procedure TAngulos.angClick(Sender: TObject);
 var
 cenital2, cenital3, angh2,angh3, hsscooper11,hspeencer11  : real;


begin
    Formatsettings.DecimalSeparator := ',';
 Formatsettings.DecimalSeparator := '.';


 hsscooper11:= delta5;
  hspeencer11:= delta6;
  //   cenitalcop.Text:=floattostr(22);
   // cenitalscpe.Text:=floattostr(hspeencer11);






end;

procedure TAngulos.Button1Click(Sender: TObject);
begin
Trayectoria.ShowModal;
 Angulos.Close;
end;

procedure TAngulos.Button2Click(Sender: TObject);
begin
Form2.Show;
 Angulos.Close;
end;

end.
