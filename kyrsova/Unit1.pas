unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, ComCtrls, Printers, pngimage;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    N4: TMenuItem;
    FontDialog1: TFontDialog;
    TabControl1: TTabControl;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    Email1: TMenuItem;
    N5: TMenuItem;
    Image1: TImage;
    procedure TabControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Email1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Email1Click(Sender: TObject); //Відправка на email
begin
Form3.show;
end;

procedure PrintStrings(Strings: TStrings);   //Процедура друкування
var
  Prn: TextFile;
  i: word;
begin
  AssignPrn(Prn);
  try
    Rewrite(Prn);
    try
      for i := 0 to Strings.Count - 1 do
        writeln(Prn, Strings.Strings[i]);
    finally
      CloseFile(Prn);
    end;
  except
    on EInOutError do
      MessageDlg('Error Printing text.', mtError, [mbOk], 0);
  end;
end;

procedure TForm1.N5Click(Sender: TObject);  //Кнопка друкування
begin
PrintStrings(Form1.Memo1.Lines);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
memo1.Clear;
ListBox2.Visible:=false;
ListBox3.Visible:=false;
end;

procedure TForm1.ListBox1Click(Sender: TObject); // список конкурсів
begin
 if ListBox1.ItemIndex = 0   then begin
 memo1.Lines.LoadFromFile('конкурси/Вступ.txt');
 end;

  if ListBox1.ItemIndex = 1   then begin
 memo1.Lines.LoadFromFile('конкурси/Блеф-тур.txt');
 end;

  if ListBox1.ItemIndex = 2   then begin
 memo1.Lines.LoadFromFile('конкурси/ВИРОК.txt');
 end;

  if ListBox1.ItemIndex = 3   then begin
 memo1.Lines.LoadFromFile('конкурси/Відгадай приз.txt');
 end;

  if ListBox1.ItemIndex = 4   then begin
 memo1.Lines.LoadFromFile('конкурси/Вкласти гроші.txt');
 end;

  if ListBox1.ItemIndex = 5   then begin
 memo1.Lines.LoadFromFile('конкурси/Гарячі танці.txt');
 end;

  if ListBox1.ItemIndex = 6   then begin
 memo1.Lines.LoadFromFile('конкурси/Давайте знайомитись.txt');
 end;

  if ListBox1.ItemIndex = 7   then begin
 memo1.Lines.LoadFromFile('конкурси/Еротичний паровозик.txt');
 end;

  if ListBox1.ItemIndex = 8   then begin
 memo1.Lines.LoadFromFile('конкурси/Казкова гра.txt');
 end;

  if ListBox1.ItemIndex = 9   then begin
 memo1.Lines.LoadFromFile('конкурси/Кенгуру.txt');
 end;

  if ListBox1.ItemIndex = 10   then begin
 memo1.Lines.LoadFromFile('конкурси/Міні футбол.txt');
 end;

  if ListBox1.ItemIndex = 11   then begin
 memo1.Lines.LoadFromFile('конкурси/Млин.txt');
 end;

  if ListBox1.ItemIndex = 12   then begin
 memo1.Lines.LoadFromFile('конкурси/Не смійся.txt');
 end;

  if ListBox1.ItemIndex = 13   then begin
 memo1.Lines.LoadFromFile('конкурси/Номінації.txt');
 end;

  if ListBox1.ItemIndex = 14   then begin
 memo1.Lines.LoadFromFile('конкурси/Одягни чоловіка.txt');
 end;

  if ListBox1.ItemIndex = 15   then begin
 memo1.Lines.LoadFromFile('конкурси/Перша шлюбна ніч.txt');
 end;

  if ListBox1.ItemIndex = 16   then begin
 memo1.Lines.LoadFromFile('конкурси/Пупсик.txt');
 end;

  if ListBox1.ItemIndex = 17   then begin
 memo1.Lines.LoadFromFile('конкурси/Сімейна рада.txt');
 end;

  if ListBox1.ItemIndex = 18   then begin
 memo1.Lines.LoadFromFile('конкурси/Статуя кохання.txt');
 end;

  if ListBox1.ItemIndex = 19   then begin
 memo1.Lines.LoadFromFile('конкурси/Сюрпрайз.txt');
 end;

   if ListBox1.ItemIndex = 20   then begin
 memo1.Lines.LoadFromFile('конкурси/Художники.txt');
 end;
   end;




procedure TForm1.ListBox2Click(Sender: TObject);   //список переспівок
begin
    if ListBox2.ItemIndex = 0   then begin
 memo1.Lines.LoadFromFile('Переспівки/Частина 1.txt');
 end;

     if ListBox2.ItemIndex = 1   then begin
 memo1.Lines.LoadFromFile('Переспівки/Частина 2.txt');
 end;
     if ListBox2.ItemIndex = 2   then begin
 memo1.Lines.LoadFromFile('Переспівки/Частина 3.txt');
 end;
     if ListBox2.ItemIndex = 3   then begin
 memo1.Lines.LoadFromFile('Переспівки/Частина 4.txt');
 end;
end;

procedure TForm1.ListBox3Click(Sender: TObject);    //список тостів
begin
      if ListBox3.ItemIndex = 0   then begin
 memo1.Lines.LoadFromFile('Тости/Весільне привітання №1.txt');
 end;

      if ListBox3.ItemIndex = 1   then begin
 memo1.Lines.LoadFromFile('Тости/Весільне привітання №2.txt');
 end;

     if ListBox3.ItemIndex = 2  then begin
 memo1.Lines.LoadFromFile('Тости/Весільний тост №1.txt');
 end;

      if ListBox3.ItemIndex = 3   then begin
 memo1.Lines.LoadFromFile('Тости/Весільний тост №2.txt');
 end;


      if ListBox3.ItemIndex = 4   then begin
 memo1.Lines.LoadFromFile('Тости/Віршований тост за молодят.txt');
 end;


      if ListBox3.ItemIndex = 5   then begin
 memo1.Lines.LoadFromFile('Тости/Віршований тост на весілля №1.txt');
 end;


      if ListBox3.ItemIndex = 6   then begin
 memo1.Lines.LoadFromFile('Тости/Віршований тост на весілля №2.txt');
 end;


      if ListBox3.ItemIndex = 7   then begin
 memo1.Lines.LoadFromFile('Тости/Вітання молодятам у тості.txt');
 end;


      if ListBox3.ItemIndex = 8   then begin
 memo1.Lines.LoadFromFile('Тости/Жартівливий тост для молодят.txt');
 end;


      if ListBox3.ItemIndex = 9   then begin
 memo1.Lines.LoadFromFile('Тости/За кохання наречених.txt');
 end;


      if ListBox3.ItemIndex = 10   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний віршований тост на весілля.txt');
 end;


      if ListBox3.ItemIndex = 11   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост для молодят.txt');
 end;


      if ListBox3.ItemIndex = 12   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост на весілля №1.txt');
 end;


      if ListBox3.ItemIndex = 13   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост на весілля №2.txt');
 end;


      if ListBox3.ItemIndex = 14   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост на весілля №3.txt');
 end;


      if ListBox3.ItemIndex = 15   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост на весілля №4.txt');
 end;


      if ListBox3.ItemIndex = 16   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост на весілля №5.txt');
 end;


      if ListBox3.ItemIndex = 17   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост на весілля №6.txt');
 end;


      if ListBox3.ItemIndex = 18   then begin
 memo1.Lines.LoadFromFile('Тости/Оригінальний тост.txt');
 end;


      if ListBox3.ItemIndex = 19   then begin
 memo1.Lines.LoadFromFile('Тости/Тост для молодого.txt');
 end;


      if ListBox3.ItemIndex = 20   then begin
 memo1.Lines.LoadFromFile('Тости/Тост за батьків на весілля молодят.txt');
 end;


      if ListBox3.ItemIndex = 21   then begin
 memo1.Lines.LoadFromFile('Тости/Тост за батьків наречених.txt');
 end;

      if ListBox3.ItemIndex = 22  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за здоров’я батьків нареченого.txt');
 end;

      if ListBox3.ItemIndex = 23  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за казкове життя.txt');
 end;

      if ListBox3.ItemIndex = 24  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за красиву розумну дружину.txt');
 end;

      if ListBox3.ItemIndex = 25  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за мир і спокій.txt');
 end;

      if ListBox3.ItemIndex = 26  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за молодят.txt');
 end;

      if ListBox3.ItemIndex = 27  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за наречених.txt');
 end;

      if ListBox3.ItemIndex = 28  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за новостворену сімю.txt');
 end;

      if ListBox3.ItemIndex = 29  then begin
 memo1.Lines.LoadFromFile('Тости/Тост за подружнє життя.txt');
 end;

      if ListBox3.ItemIndex = 30   then begin
 memo1.Lines.LoadFromFile('Тости/Тост молодятам із нагоди весілля.txt');
 end;

      if ListBox3.ItemIndex = 31   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №1.txt');
 end;

      if ListBox3.ItemIndex = 32   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №2.txt');
 end;

      if ListBox3.ItemIndex = 33   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №3.txt');
 end;

      if ListBox3.ItemIndex = 34   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №4.txt');
 end;

      if ListBox3.ItemIndex = 35   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №5.txt');
 end;

      if ListBox3.ItemIndex = 36   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №6.txt');
 end;

      if ListBox3.ItemIndex = 37   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №7.txt');
 end;

      if ListBox3.ItemIndex = 38   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №8.txt');
 end;

      if ListBox3.ItemIndex = 39   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №9.txt');
 end;

     if ListBox3.ItemIndex = 40   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №10.txt');
 end;

     if ListBox3.ItemIndex = 41   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №11.txt');
 end;


     if ListBox3.ItemIndex = 42   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №12.txt');
 end;


     if ListBox3.ItemIndex = 43   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №13.txt');
 end;


     if ListBox3.ItemIndex = 44   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №14.txt');
 end;


     if ListBox3.ItemIndex = 45   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №15.txt');
 end;


     if ListBox3.ItemIndex = 46   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №16.txt');
 end;


     if ListBox3.ItemIndex = 47   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля №17.txt');
 end;


     if ListBox3.ItemIndex = 48   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля у віршах.txt');
 end;


     if ListBox3.ItemIndex = 49   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля у прозі.txt');
 end;
 
      if ListBox3.ItemIndex = 50   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на весілля.txt');
 end;

      if ListBox3.ItemIndex = 51   then begin
 memo1.Lines.LoadFromFile('Тости/Тост на день народження.txt');
 end;

      if ListBox3.ItemIndex = 52   then begin
 memo1.Lines.LoadFromFile('Тости/Тост-привітання для молодят.txt');
 end;

      if ListBox3.ItemIndex = 53   then begin
 memo1.Lines.LoadFromFile('Тости/Тост-привітання.txt');
 end;



end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form2.showmodal;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
if fontdialog1.execute=true then
memo1.font:=fontdialog1.font

end;

procedure TForm1.TabControl1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if TabControl1.tabIndex = 0 then  begin
memo1.Clear;
ListBox1.Visible:=true;
ListBox2.Visible:=false;
ListBox3.Visible:=false;
memo1.Alignment:=taLeftJustify;
end;

if TabControl1.tabIndex = 1 then begin
memo1.Clear;
ListBox1.Visible:=false;
ListBox2.Visible:=true;
ListBox3.Visible:=false;
memo1.Alignment:=taCenter;
end;

if TabControl1.tabIndex = 2 then begin
memo1.Clear;
ListBox1.Visible:=false;
ListBox2.Visible:=false;
ListBox3.Visible:=true;
memo1.Alignment:=taCenter;
end;

end;


end.
