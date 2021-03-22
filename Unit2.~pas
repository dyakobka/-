unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, Menus;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ListBox1: TListBox;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure zapstr1(Sender: TObject); 
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
  ey1, sub1 : integer;
  d1, d2, st1 : string;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit1DM;

{$R *.dfm}



procedure TForm2.FormActivate(Sender: TObject);
var i, j : integer;
begin
form2.Width:=screen.Width;
form2.Top:=0;
form2.Left:=0;
form2.Height:=screen.Height-34;
stringgrid1.Left:=1; stringgrid2.Left:=1; stringgrid4.Left:=1;
stringgrid1.Width:=form2.ClientWidth+14;
label8.Caption:='1';
label10.Caption:='1';
speedbutton1.Enabled:=false;
speedbutton2.Enabled:=true;
stringgrid1.ColCount:=13;
stringgrid1.Cells[0,0]:='№';
stringgrid1.Cells[1,0]:='Наименование дисциплины';
stringgrid1.Cells[2,0]:='Часов';
stringgrid1.Cells[3,0]:='Дата';
stringgrid1.Cells[4,0]:='Экзаменационная оценка';
stringgrid1.Cells[5,0]:='Преподователь';
stringgrid1.Cells[6,0]:='';
stringgrid1.Cells[7,0]:='№';
stringgrid1.Cells[8,0]:='Наименование дисциплины';
stringgrid1.Cells[9,0]:='Часов';
stringgrid1.Cells[10,0]:='Дата';
stringgrid1.Cells[11,0]:='Отметка о зачете';
stringgrid1.Cells[12,0]:='Преподователь';
stringgrid1.ColWidths[0]:=18;
stringgrid1.ColWidths[7]:=18;
stringgrid1.ColWidths[1]:=266;
stringgrid1.ColWidths[8]:=266;
stringgrid1.ColWidths[2]:=38;
stringgrid1.ColWidths[9]:=38;
stringgrid1.ColWidths[3]:=59;
stringgrid1.ColWidths[10]:=59;
stringgrid1.ColWidths[4]:=148;
stringgrid1.ColWidths[11]:=148;
stringgrid1.ColWidths[5]:=134;
stringgrid1.ColWidths[12]:=134;
stringgrid1.ColWidths[6]:=3;
stringgrid2.Width:=(stringgrid1.Width div 3)*2;
stringgrid3.Left:=stringgrid2.Left+stringgrid2.Width+3;
stringgrid3.Width:=form2.ClientWidth-1-stringgrid3.Left+16;
stringgrid3.ColCount:=4;
stringgrid3.Cells[0,0]:='Дата';
stringgrid3.Cells[1,0]:='Наименование темы';
stringgrid3.Cells[2,0]:='Задание на СРС';
stringgrid3.Cells[3,0]:='Код';
stringgrid3.ColWidths[0]:=59;
stringgrid3.ColWidths[1]:=274;
stringgrid3.ColWidths[2]:=91;
stringgrid3.ColWidths[3]:=0;
for i:=0 to stringgrid2.ColCount-1 do
for j:=0 to stringgrid2.RowCount-1 do stringgrid2.Cells[i,j]:='';
stringgrid2.RowCount:=3;
stringgrid2.RowHeights[1]:=0;
stringgrid2.Cells[0,0]:='№';
stringgrid2.Cells[1,0]:='Фамилия Имя студента';
stringgrid2.Cells[2,0]:='№ зач.кн.';
stringgrid2.ColWidths[0]:=18;
stringgrid2.ColWidths[1]:=180;
stringgrid2.ColWidths[2]:=0;
stringgrid2.ColCount:=3;
combobox1.Text:='';
combobox1.Items.Clear;
stringgrid4.Width:=stringgrid1.Width;
stringgrid4.Height:=form2.ClientHeight-stringgrid4.Top-2;
stringgrid4.ColCount:=13;
stringgrid4.Cells[0,0]:='№';
stringgrid4.Cells[1,0]:='Заявка от';
stringgrid4.Cells[2,0]:='Тип';
stringgrid4.Cells[3,0]:='Дисциплина';
stringgrid4.Cells[4,0]:='Преподаватель';
stringgrid4.Cells[5,0]:='Попытка';
stringgrid4.Cells[6,0]:='Текущий результат';
stringgrid4.Cells[7,0]:='Рассмотрено';
stringgrid4.Cells[8,0]:='Начало';
stringgrid4.Cells[9,0]:='Конец';
stringgrid4.Cells[10,0]:='Пересдача';
stringgrid4.Cells[11,0]:='Результат';
stringgrid4.Cells[12,0]:='Код протокола';
stringgrid4.ColWidths[0]:=18;
stringgrid4.ColWidths[1]:=58;
stringgrid4.ColWidths[2]:=33;
stringgrid4.ColWidths[3]:=301;
stringgrid4.ColWidths[4]:=277;
stringgrid4.ColWidths[5]:=53;
stringgrid4.ColWidths[6]:=148;
stringgrid4.ColWidths[7]:=77;
stringgrid4.ColWidths[8]:=68;
stringgrid4.ColWidths[9]:=68;
stringgrid4.ColWidths[10]:=68;
stringgrid4.ColWidths[11]:=148;
stringgrid4.ColWidths[12]:=0;
stringgrid3.RowCount:=2;
stringgrid4.RowCount:=2;
label2.Caption:=form1.m1_st;
label4.Caption:=form1.gr1_st;
label12.Caption:=inttostr(form1.y_s)+'-'+inttostr(form1.y_s+1);
speedbutton1.Enabled:=false;
speedbutton2.Enabled:=true;
combobox1.Text:=''; combobox1.Items.Clear;
zapstr1(sender);
combobox1.Text:=''; combobox1.Items.Clear; // crpoxa cymecrayer
if (form1.sem_t mod 2)=0 then d1:='01.01.'+copy(form1.ey_st,6,4) else d1:='01.09.'+copy(form1.ey_st,6,4);
d2:=datetostr (date());
dm.Q1.Close; dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select distinct id_sub from timetable_occupation where id_group='+inttostr(form1.gr1)+
' and date_less>='+quotedstr(d1)+' and date_less<='+quotedstr (d2));
//dm.Q1.Active:=true;
while dm.Q1.Eof=false do
begin
dm.Q2.Close;
dm.Q2.SQL.Clear;
dm.Q2.SQL.Add('select * from subjects where id_sub='+inttostr (dm.Q1.fieldbyname('id_sub').AsInteger));
dm.Q2.Active:=true;
if dm.Q2.Eof=false then combobox1.Items.Add(dm.Q2.fieldbyname('Name').AsString);
dm.Q1.Next;
end;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from students where id_group='+inttostr(form1.gr1)+' and reality');
dm.Q1.Active:=true;
listbox1.Items.Clear;
while dm.Q1.Eof=false do  begin
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from MANS where ID_Man='+inttostr(dm.Q1.fieldbyname('ID_Man').AsInteger));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then listbox1.Items.Add(dm.Q2.fieldbyname('LastName').AsString+' '+
  dm.Q2.fieldbyname('Names').AsString+' '+dm.Q2.fieldbyname('Patronimic').AsString+'#'+
  dm.Q1.fieldbyname('ID_Stud').AsString);
  dm.Q1.Next;
  end;
listbox1.Sorted:=true;
for i:=0 to ListBox1.Items.Count-1 do
  begin
  st1:=listbox1.Items[i];
  stringgrid2.RowCount:=i+3;
  stringgrid2.Cells[0,i+2]:=inttostr(i+1);
  stringgrid2.Cells[1,i+2]:=copy(st1,1,pos ('#', st1)-1);
  delete (st1,1, pos ('#',st1));
  stringgrid2.Cells[2,i+2]:=st1;
  end;
//zapstr4(sender);
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
label10.Caption:=inttostr(strtoint(label10.Caption)-1);
speedbutton2.Enabled:=true;
if (strtoint(label10.Caption) mod 2) = 0 then
  begin
  label8.Caption:=inttostr (strtoint (label8.Caption)-1);
  label12.Caption:=inttostr (form1.y_s + strtoint (label8.Caption) -1) + '-' + inttostr (form1.y_s + strtoint(label8.Caption));
  end;
if strtoint (label10.Caption)=1 then speedbutton1.Enabled:=false;
zapstr1(sender);
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
label10.Caption:=inttostr(strtoint(label10.Caption)+1);
speedbutton1.Enabled:=true;
if (strtoint(label10.Caption) mod 2)=1 then
begin
label8.Caption:=inttostr((strtoint (label10.Caption) div 2)+1);
label12.Caption:=inttostr(form1.y_s+strtoint(label8.Caption)-1)+'-'+inttostr(form1.y_s+strtoint(label8.Caption));
end else
  begin
  label8.Caption:=inttostr((strtoint(label10.Caption) div 2));
  end;
if strtoint(label10.Caption)=form1.sem_t then speedbutton2.Enabled:=false;
zapstr1 (sender);
end;



procedure TForm2.zapstr1(Sender: TOBject);
var i, j : integer;
begin
for i:=0 to stringgrid1.ColCount-1 do
for j:=1 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
dm.Q1.close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from education_years where names='+quotedstr(label10.Caption));
//dm.Q1.Active:=true;
if dm.Q1.Eof=false then ey1:=dm.Q1.fieldbyname('id_ey').AsInteger else
  begin
  dm.Q1.close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from education_years order by id_ey');
  dm.Q1.Active:=true;
  dm.Q1.Last;
  ey1:=dm.Q1.fieldbyname('id_ey').AsInteger+1;
  dm.Q1.close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('insert into education_years(name,id_ey) values('+quotedstr(label10.Caption)+', '+inttostr(ey1)+')');
  dm.Q1.ExecSQL;
  end;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from protocols where id_ey='+inttostr(ey1)+' and semester='+ inttostr(strtoint(label8.Caption))+' and id_ct=l and id_group='+inttostr(form1.gr1));
//dm.Q1.Active:=true;
i:=0;

while dm.Q1.Eof=false do
  begin
  inc(i);
  stringgrid1.Cells[0,i]:=inttostr(i);
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from subjects where id_sub='+inttostr(dm.Q1.fieldbyname('ID_Sub').AsInteger));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then
    begin
    stringgrid1.Cells[1,i]:=dm.Q2.fieldbyname('names').AsString;
    stringgrid1.Cells[2, i]:=dm.Q1.fieldbyname('hours').AsString;
    stringgrid1.Cells[3,i]:=dm.Q1.fieldbyname('date_p').AsString;
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from collaborators where id_coll='+quotedstr(dm.Q1.fieldbyname('id_coll').AsString));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then
      begin
      dm.Q3.Close;
      dm.Q3.SQL.Clear;
      dm.Q3.SQL.Add('select * from mans where id_man='+inttostr(dm.Q2.fieldbyname('id_man').AsInteger));
      dm.Q3.Active:=true ;
      if dm.Q3.Eof=false then
        begin
        stringgrid1.Cells[5,i]:=dm.Q3.fieldbyname('LastName').AsString+' '+
        copy(dm.Q3.fieldbyname('Names').AsString,1,1)+'.'+copy(dm.Q3.fieldbyname('Patronimic').AsString,1,1)+'.';
        if dm.Q2.FieldByName('id_uz').AsInteger>0 then
          begin
          dm.Q3.Close;
          dm.Q3.SQL.Clear;
          dm.Q3.SQL.Add('select * from uch_zvan where id_uz='+Inttostr(dm.Q2.fieldbyname('id_uz').AsInteger));
          dm.Q3.Active:=true;
          if dm.Q3.Eof=false then stringgrid1.Cells[5,i]:=stringgrid1.Cells[5,i]+', '+ dm.Q3.fieldbyname('title').AsString;
          end;
        end;
      end;
dm.Q2.Close;
dm.Q2.SQL.Clear;
dm.Q2.SQL.Add('select * from protocol_body where id_prot='+inttostr(dm.Q1.fieldbyname('id_prot').AsInteger)+ ' and id_stud='+quotedstr(form1.c1));
dm.Q2.Active:=true;
if dm.Q2.Eof=false then
  begin
  if dm.Q2.FieldByName('litera').AsString='A' then stringgrid1.Cells[4,i]:='А(отлично)';
  if dm.Q2.FieldByName('litera').AsString='B' then stringgrid1.Cells[4,i]:='B(отлично)';
  if dm.Q2.FieldByName('litera').AsString='C' then stringgrid1.Cells[4,i]:='С(хорошо)';
  if dm.Q2.FieldByName('litera').AsString='D' then stringgrid1.Cells[4,i]:='D(хорошо)';
  if dm.Q2.FieldByName('litera').AsString='E' then stringgrid1.Cells[4,i]:='E(удовлетворительно)';
  if dm.Q2.FieldByName('litera').AsString='X' then stringgrid1.Cells[4,i]:='FX(неудовлетворительно)';
  if dm.Q2.FieldByName('litera').AsString='F' then stringgrid1.Cells[4,i]:='F(неудовлетворительно)';
  end;
end;
dm.Q1.Next;
end;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from protocols where id_ey='+inttostr(ey1)+' and semester='+ inttostr(strtoint(label8.Caption))+' and id_ct>l and id_group='+inttostr(form1.gr1));
//dm.Q1.Active:=true;
i:=0;
while dm.Q1.Eof=false do
  begin
  inc(i);
  stringgrid1.Cells[7,i]:=inttostr(i);
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from subjects where id_sub='+inttostr(dm.Q1.fieldbyname('id_sub').AsInteger));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then
    begin
  stringgrid1.Cells[8,i]:=dm.Q2.fieldbyname('name').AsString;
  stringgrid1.Cells[9, i]:=dm.Q1.fieldbyname('hours').AsString;
  stringgrid1.Cells[10,i]:=dm.Q1.fieldbyname('date_p').AsString;
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from collaborators where id_coll='+quotedstr(dm.Q1.fieldbyname('id_coll').AsString));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then
    begin
    dm.Q3.Close;
    dm.Q3.SQL.Clear;
    dm.Q3.SQL.Add('select * from mans where id_man='+inttostr(dm.Q2.fieldbyname('id_man').AsInteger));
    dm.Q3.Active:=true;
    if dm.Q3.Eof=false then
      begin
      stringgrid1.Cells[12,i]:=dm.Q3.fieldbyname('LastName').AsString+' '+
      copy(dm.Q3.fieldbyname('Names').AsString,1,1) +'.'+copy(dm.Q3.fieldbyname('Patronymic').AsString, 1,1) + '.';
      if dm.Q2.FieldByName('id_uz').AsInteger>0 then
        begin
        dm.Q3.Close;
        dm.Q3.SQL.Clear;
        dm.Q3.SQL.Add('select * from uch_zvan where id_uz='+inttostr(dm.Q2.fieldbyname('id_uz').AsInteger));
        dm.Q3.Active:=true ;
        if dm.Q3.Eof=false then stringgrid1.Cells[12,i]:=stringgrid1.Cells[12,i]+', '+ dm.Q3.fieldbyname('title').AsString;
        end;
      end;
    end;
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from ptotocol_body where id_prot=' +inttostr(dm.Q1.fieldbyname('id_prot').AsInTeger)+
    ' and id_stud='+quotedstr(form1.c1));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then
      begin
      case dm.Q1.FieldByName('id_tc').AsInteger of
      2: begin
      if dm.Q2.FieldByName('result').AsInteger>90 then stringgrid1.Cells[11,i]:='5(отлично)' else
      if dm.Q2.FieldByName('result').AsInteger>70 then stringgrid1.Cells[11,i]:='4(хорошо)' else
      if dm.Q2.FieldByName('result').AsInteger>50 then stringgrid1.Cells[11,i]:='3(удовлетворительно)' else
      stringgrid1.Cells[11, i]:='2(неудовлетворительно)';
      end;
   3: begin
      if dm.Q2.FieldByName('result').AsInteger<60 then stringgrid1.Cells[11, i]:='незачтено' else
      end;
    end;
    end;
    end;
  dm.Q1.Next;
end;
end;


procedure TForm2.ComboBox1Change(Sender: TObject);
var i, j : integer;
begin
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from subjects where names='+quotedstr (combobox1.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof=false then
  begin
  sub1:=dm.Q1.fieldbyname('id_sub').AsInteger;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from timetable_occupation where id_group='+inttostr(form1.gr1)+
  ' and date_less>='+quotedstr(d1)+' and date_less<='+quotedstr(d2)+' and id_sub='+inttostr(sub1));
  dm.Q1.Active:=true;
  i:=3;
  while dm.Q1.Eof=false do
    begin
    inc(i);
    stringgrid2.Colcount:=i;
    stringgrid2.Cells[i-1,0]:=dm.Q1.fieldbyname('date_less').AsString;
    stringgrid2.Cells[i-1,1]:=dm.Q1.fieldbyname('id_less').AsString;
    stringgrid3.RowCount:=i-2;
    stringgrid3.Cells[0,i-3]:=dm.Q1.fieldbyname('date_less').AsString;
    for j:=2 to stringgrid2.RowCount-1 do
      begin
      dm.Q2.Close;
      dm.Q2.SQL.Clear;
      dm.Q2.SQL.Add('select * from progress where id_less='+inttostr(strtoint (stringgrid2.Cells[i-1,1]))+ ' and id_stud='+quotedstr(stringgrid2.cells[2,j]));
      dm.Q2.Active:=true;
      if dm.Q2.Eof=false then
      stringgrid2.cells[i-1,j]:=dm.Q2.fieldbyname('Result').AsString else
      stringgrid2.Cells[i-1,j]:='';
      end;
      dm.Q1.Next
      end;
end;
end;
end.

