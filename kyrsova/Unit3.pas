unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdMessage, IdAntiFreezeBase, IdAntiFreeze,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdExplicitTLSClientServerBase, IdSMTPBase;

type
  TForm3 = class(TForm)
    IdSMTP1: TIdSMTP;
    IdAntiFreeze1: TIdAntiFreeze;
    IdMessage1: TIdMessage;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;

    procedure Button1Click(Sender: TObject);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);     //Відправка email
var
msg:TIdMessage;
begin
  try
IdSMTP1.Host:='smtp.mail.ru';
IdSMTP1.Port:=25;
IdSMTP1.Username:='viesillia@mail.ua';
IdSMTP1.Password:='28021994q';
IdSMTP1.Connect;
  except
on e:Exception do
end;

  try
msg:=TIdMessage.Create(nil);                        //створення пустої форми
msg.ContentType := 'text/plain';                    //тип повідомлення
msg.CharSet := 'windows-1251';                      //кодування
msg.ContentTransferEncoding := '8BITMIME';
msg.Body.Add(form1.Memo1.Text + #13#10 + '                  Dima K'); //повідомлення
msg.Subject:='TAMADA program';                      //від кого
msg.From.Address:='viesillia@mail.ua';
msg.From.Name:='Anonymys';
msg.Recipients.EMailAddresses:= edit1.Text;         //отримувач
msg.IsEncoded:=True;
IdSMTP1.Send(msg);
msg.Free;
IdSMTP1.Disconnect;
  except
on e:Exception do
begin
IdSMTP1.Disconnect;
end;
end;
end;
end.
