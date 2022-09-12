unit menu001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TTrayectoria = class(TForm)
    Label1: TLabel;
    ene: TEdit;
    Memo1: TMemo;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    lat: TEdit;
    Label6: TLabel;
    DECLINACION: TButton;
    Button1: TButton;
    h: TLabel;
    Button2: TButton;
    DELTA: TEdit;
    DELTA1: TEdit;
    hscooper: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cenitalcop: TEdit;
    angh: TEdit;
    ang: TButton;
    Label15: TLabel;
    Label16: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label11: TLabel;
    p2: TEdit;
    Label2: TLabel;
    hs: TEdit;
    Label12: TLabel;
    ws: TEdit;
    Label13: TLabel;
    acimut: TEdit;
    Label14: TLabel;
    Atras: TButton;
    meridiano: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure DECLINACIONClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure angClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure AtrasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      delta5,delta6, hscooper2,LATITUD,hscooper1 :real ;

  end;

var
  Trayectoria: TTrayectoria;

implementation

{$R *.dfm}

uses menu002, anexo01, anexo02, anexo03, anexo04, anexo05, principal;

procedure TTrayectoria.angClick(Sender: TObject);
var
asd,hs2,hs22,meridiano2, cenitalcop2,ws2,ws3,ws4,acimut1,acimut2,acimut3,acimut4,acimut5,acimut6: real ;

begin
Formatsettings.DecimalSeparator := ',';
 Formatsettings.DecimalSeparator := '.';

                // Angulo horario
     hs2:= strtoFloat(hs.text);
      meridiano2:= strtoFloat(meridiano.text);
      hs22:= meridiano2*(pi/180)*(hs2-0.5)-12;
      //   angh.Text:=strtofloat(hs22);    .
        angh.Text:=floattostr(hs22);
     // angh.Text:=floattostr(hscooper2);

       cenitalcop2:=90 - hscooper2;
       cenitalcop.Text:= floattostr(hscooper2);
       ws2:= (sin(LATITUD)/cos(LATITUD));
         ws3:= (sin(delta6)/cos(delta6));
         ws4:= -ws2*ws3;

         ws.Text:= floattostr(ws4);
         //asimut
            acimut1:= sin (LATITUD)*sin(hscooper1);
            acimut2:= acimut1-sin(delta6);
            acimut3:= cos(LATITUD)*cos(hscooper1);
            acimut4:= acimut2/acimut3;
               acimut.Text:= floattostr(acimut4);
end;

procedure TTrayectoria.AtrasClick(Sender: TObject);
begin
Form2.Show;
Trayectoria.Close;
end;

procedure TTrayectoria.Button1Click(Sender: TObject);
 var
hspencer1, hscooper1,scooper1,spencer1   : Real;

begin
    Formatsettings.DecimalSeparator := ',';
 Formatsettings.DecimalSeparator := '.';


        // halturas
        LATITUD:= strtoFloat(LAT.text);
            hscooper2:=LATITUD-delta6;
 //  hscooper1:=90-(LATITUD-scooper1);
   //  hspencer1:=90-(LATITUD-spencer1);

        hscooper1:=90-(hscooper2);
            hscooper.Text:=floattostr(hscooper1);
       
end;

procedure TTrayectoria.Button2Click(Sender: TObject);
begin
Angulos.showModal;
end;

procedure TTrayectoria.Button3Click(Sender: TObject);
begin
Anexo1.showModal;
end;

procedure TTrayectoria.Button4Click(Sender: TObject);
begin
Anexo2.showModal;
end;

procedure TTrayectoria.Button5Click(Sender: TObject);
begin
Anexo3.showModal;
end;

procedure TTrayectoria.Button6Click(Sender: TObject);
begin
Anexo4.showModal;
end;

procedure TTrayectoria.Button7Click(Sender: TObject);
begin
Anexo5.showModal;
end;

procedure TTrayectoria.Button8Click(Sender: TObject);
var tvs1 : real;
begin
     Formatsettings.DecimalSeparator := ',';
 Formatsettings.DecimalSeparator := '.';
      //     hscooper2:= cos^1* (30);

end;

procedure TTrayectoria.DECLINACIONClick(Sender: TObject);
  VAR
    n, DELTA3,p22,P222 : Real;
begin
    Formatsettings.DecimalSeparator := ',';
 Formatsettings.DecimalSeparator := '.';
 // DECLINACION
     DELTA3:= strtoFloat(ene.text);

     delta5:= 360*((DELTA3-1)/365);
     delta6 :=(23.45* sin((((2*pi)*(284+DELTA3))/365))) ;
     DELTA.Text:=floattostr(delta6);
    DELTA1.Text:=floattostr(delta5);
    p22:= (1+(0.033*cos((360*DELTA3)/365)));
    P222:= (1/P22);
    p2.Text:=floattostr(p222);
end;

end.
