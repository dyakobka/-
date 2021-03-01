unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    StringGrid1: TStringGrid;
    OpenDialog1: TOpenDialog;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Zap_str1(Sender: TObject);
  private
    { Private declarations }
  public
  pr1, di1, sp1, qu1, fe1, y1, mo1, cur1 : integer;
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1DM;

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
var i, j : integer;
begin

end;
procedure TForm7.FormActivate(Sender: TObject);
begin
formcreate(sender);
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from programs_training order by names');
dm.Q1.Active:=true;
while dm.Q1.Eof=false do
  begin
  combobox1.Items.Add(dm.Q1.fieldbyname('names').AsString);
  dm.Q1.Next;
  end;
zap_str1(sender);
end;
procedure TForm7.ComboBox1Change(Sender: TObject);
begin
pr1:=0; di1:=0; sp1:=0; qu1:=0;fe1:=0;
combobox2.Text:=''; combobox2.Items.Clear;
combobox3.Text:=''; combobox3.Items.Clear;
combobox4.Text:=''; combobox4.Items.Clear;
combobox5.Text:=''; combobox5.Items.Clear;
edit1.Text:=''; edit2.Text:=''; edit3.Text:=''; edit4.Text:='';
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from programs_training where names'+quotedstr(combobox1.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof= false then
  begin
  pr1:=dm.Q1.fieldbyname('id_pt').AsInteger;
  end;
speedbutton4.Caption:='—оздать';
speedbutton4.Enabled:=false;
end;
procedure TForm7.Edit1Exit(Sender: TObject);
begin
di1:=0; sp1:=0; qu1:=0;fe1:=0;
combobox2.Text:=''; combobox2.Items.Clear;
combobox3.Text:=''; combobox3.Items.Clear;
combobox4.Text:=''; combobox4.Items.Clear;
combobox5.Text:=''; combobox5.Items.Clear;
edit2.Text:=''; edit3.Text:=''; edit4.Text:='';
if strtointdef(edit1.Text,0)<1 then
  begin
  edit1.Text:='';
  edit1.SetFocus;
  end else
  begin
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from directions order by names');
  dm.Q1.Active:=true;
  while dm.Q1.Eof=false do
    begin
    combobox2.Items.Add(dm.Q1.fieldbyname('names').AsString);
    dm.Q1.Next;
    end;
  end;
end;

procedure TForm7.ComboBox2Change(Sender: TObject);
begin
di1:=0; sp1:=0; qu1:=0;fe1:=0;
combobox3.Text:=''; combobox3.Items.Clear;
combobox4.Text:=''; combobox4.Items.Clear;
combobox5.Text:=''; combobox5.Items.Clear;
edit2.Text:=''; edit3.Text:=''; edit4.Text:='';
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from directions where names'+quotedstr(combobox2.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof= false then
  begin
  di1:=dm.Q1.fieldbyname('id_dir').AsInteger;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from professions where id_dir='+inttostr(di1)+'order by names');
  dm.Q1.Active:=true;
  while dm.Q1.Eof=false do
    begin
    combobox3.Items.Add(dm.Q1.fieldbyname('names').AsString);
    dm.Q1.Next;
    end;
  end;
end;

procedure TForm7.ComboBox3Change(Sender: TObject);
begin
sp1:=0; qu1:=0;fe1:=0;
combobox4.Text:=''; combobox4.Items.Clear;
combobox5.Text:=''; combobox5.Items.Clear;
edit2.Text:=''; edit3.Text:=''; edit4.Text:='';
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from professions where names'+quotedstr(combobox3.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof= false then
  begin
  
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from qualifcations where id_pe='+inttostr(sp1));
  dm.Q1.Active:=true;
  while dm.Q1.Eof=false do
    begin
    combobox4.Items.Add(dm.Q1.fieldbyname('names').AsString);
    dm.Q1.Next;
    end;
  end;
end;

procedure TForm7.ComboBox4Change(Sender: TObject);
begin
qu1:=0;fe1:=0;
combobox5.Text:=''; combobox5.Items.Clear;
edit2.Text:=''; edit3.Text:=''; edit4.Text:='';
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from qualifcations where names'+quotedstr(combobox4.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof= false then
  begin
  qu1:=dm.Q1.fieldbyname('id_qe').AsInteger;
  combobox5.Items.Add('очна€');
  combobox5.Items.Add('очно-заочна€');
  combobox5.Items.Add('заочна€');
  combobox5.Items.Add('дистанционна€');
  combobox5.Items.Add('вечерн€€');
  end;
end;

procedure TForm7.ComboBox5Change(Sender: TObject);
begin
fe1:=combobox5.ItemIndex+1;
edit2.Text:=''; edit3.Text:='';
label6.Caption:=''; label7.Caption:='';
end;
procedure TForm7.Edit2Exit(Sender: TObject);
begin
label6.Caption:=''; label7.Caption:='';
if (strtointdef(edit2.Text,0)<1) or (strtointdef(edit2.Text,0)>7) then
  begin
  edit2.Text:='';
  edit2.SetFocus;
  end else
  begin
  y1:=strtoint(edit2.Text);
  case y1 of
  1: label6.Caption:='год';
  2..4: label6.Caption:='года';
  5..7: label6.Caption:='лет';
  end;
  end;
end;
procedure TForm7.Edit3Exit(Sender: TObject);
begin
label7.Caption:='';
if (strtointdef(edit3.Text,0)<0) or (strtointdef(edit3.Text,0)>11) then
  begin
  edit2.Text:='';
  edit2.SetFocus;
  end else
  begin
  mo1:=strtointdef(edit3.Text,0);
  case mo1 of
  0: label7.Caption:='';
  1: label7.Caption:='мес€ц';
  2..4: label7.Caption:='мес€ца';
  5..11: label7.Caption:='мес€цев';
  end;
  end;
end;

procedure TForm7.Edit4Exit(Sender: TObject);
begin
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from curriculmns where id_dir'+inttostr(di1)+' and id_prof='+
inttostr(sp1)+' and id_qual='+inttostr(qu1)+' and id_fe='+inttostr(fe1)+' and id_se='+inttostr(strtointdef(edit1.Text,0))+
' and id_pt='+inttostr(pr1)+' and years='+inttostr(y1)+' and moths='+
inttostr(strtointdef(edit3.Text,0))+' and names='+quotedstr(edit4.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof= false then
  begin
  speedbutton4.Enabled:=true;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from curriculmns order by id_cur');
  dm.Q1.Active:=true;
  dm.Q1.Last;
  cur1:=dm.Q1.fieldbyname('id_cur').AsInteger+1;
  end else speedbutton4.Enabled:=false;
end;

procedure TForm7.SpeedButton4Click(Sender: TObject);
begin
if speedbutton4.Caption='—оздать' then
  begin
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('insert into curriculumns(id_dir, id_prof, id_qual, id_subdiv, id_pt, id_fe, years, months, es, id_cur,' +
  'names) values(' + inttostr(di1)+ ',' +inttostr(pr1)+ ',' + inttostr(fe1)+',' +
  inttostr(y1)+','+inttostr(strtointdef(edit3.Text,0))+','+
  inttostr(strtointdef(edit1.Text,0))+inttostr(cur1)+','+quotedstr(edit4.Text)+')');
  dm.Q1.ExecSQL;
  Zap_STR1(sender);
  end;
if speedbutton4.Caption='–едактировать' then
  begin
  cur1:=strtointdef(stringgrid1.Cells[7,stringgrid1.Row],0);
  end;
if speedbutton4.Caption='ѕросмотр' then
  begin

  end;
//form8.ShowModal;
end;

procedure TForm7.Zap_STR1(Sender: TObject);
var i, j : integer;
begin
for i:=0 to stringgrid1.ColCount-1 do
for j:=1 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from curriculumns order by id_cur');
dm.Q1.Active:=true;
j:=0;
while dm.Q1.Eof=false do
  begin
  inc(j);
  stringgrid1.RowCount:=j+1;
  stringgrid1.Cells[0,j]:=inttostr(j);
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from subdivisions where id_subdiv='+ inttostr(dm.Q1.fieldbyname('id_subdiv').AsInteger));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then
    begin
    stringgrid1.Cells[2,j]:=dm.Q2.fieldbyname('title').AsString;
    dm.Q3.Close;
    dm.Q3.SQL.Clear;
    dm.Q3.SQL.Add('select * from divisions where id_div='+ inttostr(dm.Q1.fieldbyname('id_div').AsInteger));
    dm.Q3.Active:=true;
    if dm.Q3.Eof=false then
      begin
      stringgrid1.Cells[1,j]:=dm.Q3.fieldbyname('title').AsString;
      stringgrid1.Cells[3,j]:=dm.Q1.fieldbyname('names').AsString;
      stringgrid1.Cells[4,j]:=dm.Q1.fieldbyname('es').AsString;
      if dm.Q1.FieldByName('co_ord').AsInteger=1 then stringgrid1.Cells[5,j]:='да' else stringgrid1.Cells[5,j]:='нет';
      if dm.Q1.FieldByName('app').AsInteger=1 then stringgrid1.Cells[6,j]:='да' else stringgrid1.Cells[6,j]:='нет';
      stringgrid1.Cells[7,j]:=dm.Q1.fieldbyname('id_cur').AsString;
      end;
    end;
  dm.Q1.Next;
end;
end;
end.
