unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox2: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
  d1, d2 : TDateTime;
  ey1, ey2, m1, tc1 : integer;
  c1, p1_st : string;
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}




procedure TForm11.ComboBox1Change(Sender: TObject);
var t1, t2, t3: word;
  st1 : string;
  re, i, j : integer;
begin
combobox2.Text:=''; combobox2.Items.Clear;
speedbutton4.Caption:='Создать'; speedbutton4.Enabled:=false;
label6.Caption:='';
d1:=strtodate('01.09.'+copy(combobox1.Text,1,4));
d2:=strtodate('13.06.'+copy(combobox1.Text,6,4));
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from education_years where names='+quotedstr(combobox1.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof=false then
  begin
  ey2:=dm.Q1.fieldbyname('id_ey').AsInteger;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from collaborators where id_div='+inttostr(form1.d1));
  dm.Q1.Active:=true;
  while dm.Q1.Eof=false do
    begin
    re:=0;
    if (dm.Q1.FieldByName('reality').AsInteger=1) and
    (dm.Q1.FieldByName('date_s').AsDateTime<=strtodate('01.09.'+copy(combobox1.Text,1,4))) then re:=1;
    if (dm.Q1.FieldByName('reality').AsInteger=0) and

    (dm.Q1.FieldByName('date_s'),AsDateTime>=strtodate('01.09.'+copy(combobox1.Text,1,4))) and
    (dm.Q1.FieldByName('date_f'),AsDateTime<=strtodate('13.06.'+copy(combobox1.Text,6,4))) then re:=1;
    if re=1 then
      begin
      dm.Q2.Close;
      dm.Q2.SQL.Clear;
      dm.Q2.SQL.Add('select * from mans where id_man='+inttostr(dm.Q1.fieldbyname('id_man').AsInteger));
      dm.Q2.Active:=true;
      if dm.Q2.Eof=false then
        begin
        st1:=dm.Q2.fieldbyname('lastname').AsString+' '+dm.Q2.fialbyname('names').AsString+' '+
        dm.Q2.fieldbyname('patronymic').AsSrting;
        end;
      j:=0;
      for i:=0 to combobox2.Items.Count-1 do if st1=combobox2.Items[i] then inc(j);
      if j=0 then combobox2.Items.Add(st1);
      end;
    dm.Q1.Next;
    end;
  end;
end;

procedure TForm11.ComboBox2Change(Sender: TObject);
var st1, st2, st3 : string;
  rate : real;
begin
m1:=0; speedbutton4.Caption:='Создать'; speedbutton4.Enabled:=false;
if combobox2.ItemIndex>-1 then
  begin
  st3:=combobox2.Text;
  st1:=copy(st3,1,pos(' ',st3)-1);
  delete(st3,1,pos(' ',st3));
  st2:=copy(st3,1,pos(' ',st3)-1);
  delete(st3,1,pos(' ',st3));
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from mans where lastname='+quotedstr(st1)+' and names='+quotedstr(st2)+
  ' and patronymic='+quotedstr(st3));
  dm.Q1.Active:=true;
  if dm.Q1.Eof=false then
    begin
    m1:=dm.Q1.fieldbyname('id_man').AsInteger;
    dm.Q1.Close;
    dm.Q1.SQL.Clear;
    dm.Q1.SQL.Add('select * from collaborators where id_man='+inttostr(m1)+' and id_div='+
    inttostr(form1.d1));
    dm.Q1.Active:=true;
    if dm.Q1.Eof=false then
    begin

    c1:=dm.Q1.fieldbyname('id_coll').AsString;
    p1_st:='';
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from posts where id_post='+inttostr(dm.Q1.fieldbyname('id_post').AsInteger));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then p1_st:=ansilowercase(dm.Q2.fieldbyname('names').AsSrting);
    dm.Q1.Close;
    dm.Q1.SQL.Clear;
    dm.Q1.SQL.Add('select * from collaborators where id_coll='+quotedstr(c1)+' and id_div='+
    inttostr(form1.d1));
    dm.Q1.Active:=true;
    rate:=0; label6.Caption:='';
    while dm.Q1.Eof=FalseBoolStrs do
      begin
      if (dm.Q1.FieldByName('reality').AsInteger=1) and
      (dm.Q1.FieldByName('date_s').AsDateTime<=strtodate('01.09.'+copy(combobox1.Text,1,4))) then
      rate:=rate+dm.Q1.fieldbyname('rate').AsFloat;
      if (dm.Q1.FieldByName('reality').AsInteger=0) and
      (dm.Q1.FieldByName('date_s'),AsDateTime>=strtodate('01.09.'+copy(combobox1.Text,1,4))) and
      (dm.Q1.FieldByName('date_f'),AsDateTime<=strtodate('13.06.'+copy(combobox1.Text,6,4))) then
      rate:=rate+dm.Q1.fieldbyname('rate').AsFloat;
      dm.Q1.Next;
      end;
    label16.Caption:=floattostr(rate);
    if label6.Caption>'' then
      begin
      speedbutton4.Enabled:=true;
      dm.Q1.Close;
      dm.Q1.SQL.Clear;
      dm.Q1.SQL.Add('select * from teachers where id_ey='+inttostr(ey2)+' and id_coll='+
      quotedstr(c1)+' and id_div='+inttostr(form1.d1));
      dm.Q1.Active:=true;
      if dm.Q1.Eof=false then
        begin
        tc1:=dm.Q1.fieldbyname('id_tc').AsInteger;
        speedbutton4.Caption:='Редактировать';
        end;
      end;
    end;
  end;
end;
end;

procedure TForm11.SpeedButton4Click(Sender: TObject);
begin
if speedbutton4.Caption='Создать' then
  begin
  dm.IBQ1.Close;
  dm.IBQ1.SQL.Clear;
  dm.IBQ1.SQL.Add('select * from teachers where id_ey='+inttostr(ey2)+' and id_coll='+
  quotedstr(c1)+' and id_div='+inttostr(form1.d1));
  dm.IBQ1.Active:=true;
  dm.IBQ1.Last;
  tc1:=dm.IBQ1.fieldbyname('id_tc').AsInteger+1;
  dm.IBQ1.Close;
  dm.IBQ1.SQL.Clear;

  dm.IBQ1.SQL.Add('insert into teachers_card(id_ey,id_coll,id_subdiv,id_tc) values('+quotedstr(inttostr(ey2))+','+
  quotedstr(c1)+','+quotedstr(inttostr(form1.sd1))+','+quotedstr(inttostr(tc1))+')');
  dm.IBQ1.ExecSQL;
  end;
form12.Caption:='Карточка учебных поручений. '+combobox2.Text;
form12.Label2:='учебных поручений на '+combobox1.Text+' учебный год';
form12.Label2:=combobox2.Text+', '+p1_st+' , размер ставки: '+label6.Caption;
end;
end;

end.
