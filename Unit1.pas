unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  c1: string;
  s1: integer;
  o1, sd1, p1, m1, gr1, d1 : integer;
  o1_st, d1_st, sd1_st, p1_st, m1_st, gr1_st, ey_st : string;
  course_t, sem_t : integer;
  y_s, y_f : integer;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit1DM, Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
var
t1, t2, t3 : word;
begin
s1:=0;
if (edit1.Text>'') and (edit2.Text>'') then
  begin
  if ord(key)=13 then
    begin
    dm.Q1.Close;
    dm.Q1.SQL.Clear;
    dm.Q1.SQL.Add('select * from USERS where logins='+quotedstr(edit1.Text)+' and passwords='+quotedstr(edit2.Text));
    dm.Q1.Active:=true;
    if dm.Q1.Eof=false then
      begin
      c1:=dm.Q1.fieldbyname('ID_Users').AsString;
      s1:=dm.Q1.fieldbyname('ID_Status').AsInteger;
        case s1 of
        2..4: begin
              dm.Q1.Close;
              dm.Q1.SQL.Clear;
              if s1=2 then dm.Q1.SQL.Add('select * from collaborators where ID_Coll='+quotedstr(c1)+' and ID_SubDiv>0');
              if (s1=3)or (s1=4) then dm.Q1.SQL.Add('select * from collaborators where ID_Coll='+quotedstr(c1)+' and ID_SubDiv=0');
              dm.Q1.Active:=true;
              if dm.Q1.Eof=false then
                begin
                d1:=dm.Q1.fieldbyname('ID_Div').AsInteger;
                sd1:=dm.Q1.fieldbyname('ID_SubDiv').AsInteger;
                p1:=dm.Q1.fieldbyname('ID_Post').AsInteger;
                m1:=dm.Q1.fieldbyname('ID_Man').AsInteger;
                end;
              end;
       1:     begin
              dm.Q1.Close;
              dm.Q1.SQL.Clear;
              dm.Q1.SQL.Add('select * from students where ID_Stud='+quotedstr(c1));
              dm.Q1.Active:=true;
              if dm.Q1.Eof=false then
                begin
                gr1:=dm.Q1.fieldbyname('ID_Group').AsInteger;
                m1:=dm.Q1.fieldbyname('ID_Man').AsInteger;
                dm.Q1.Close;
                dm.Q1.SQL.Clear;
                dm.Q1.SQL.Add('select * from groups where ID_Group='+inttostr(gr1));
                dm.Q1.Active:=true;
                if dm.Q1.Eof=false then
                  begin
                    d1:=dm.Q1.fieldbyname('ID_Div').AsInteger;
                    sd1:=dm.Q1.fieldbyname('ID_SubDiv').AsInteger;
                  end;
                end else
                begin
                gr1:=0; m1:=0;

                d1:=0;  sd1:=0;
                end;
              end;
        end;
        dm.Q1.Close;
        dm.Q1.SQL.Clear;
        dm.Q1.SQL.Add('select * from divisions where ID_Div='+inttostr(sd1));
        dm.Q1.Active:=true;
        if dm.Q1.Eof=false then
          begin
          d1_st:=dm.Q1.fieldbyname('Name').AsString;
          o1:=dm.Q1.fieldbyname('ID_Org').AsInteger;
          dm.Q1.Close;
          dm.Q1.SQL.Clear;
          dm.Q1.SQL.Add('select * from organizations where ID_Org='+inttostr(o1));
          dm.Q1.Active:=true;
          if dm.Q1.Eof=false then o1_st:=dm.Q1.fieldbyname('Name').AsString else o1_st:='';
          end else d1_st:='';
        dm.Q1.Close;
        dm.Q1.SQL.Clear;
        dm.Q1.SQL.Add('select * from subdivisions where ID_SubDiv='+inttostr(sd1));
        dm.Q1.Active:=true;

        if dm.Q1.Eof=false then sd1_st:=dm.Q1.fieldbyname('Name').AsString else sd1_st:='';
        dm.Q1.Close;
        dm.Q1.SQL.Clear;
        dm.Q1.SQL.Add('select * from posts where ID_Post='+inttostr(p1));
        dm.Q1.Active:=true;

        if dm.Q1.Eof=false then p1_st:=dm.Q1.fieldbyname('Name').AsString else p1_st:='';

        dm.Q1.Close;
        dm.Q1.SQL.Clear;
        dm.Q1.SQL.Add('select * from mans where ID_Man='+inttostr(m1));
        dm.Q1.Active:=true;
        if dm.Q1.Eof=false then m1_st:=dm.Q1.fieldbyname('LastName').AsString+' '+dm.Q1.fieldbyname('Names').AsString+' '+dm.Q1.fieldbyname('Patronimic').AsString else m1_st:='';

        dm.Q1.Close;
        dm.Q1.SQL.Clear;
        dm.Q1.SQL.Add('select * from groups where id_group='+inttostr(gr1));
        dm.Q1.Active:=true;
        if dm.Q1.Eof=false then
         begin
         gr1_st:=dm.Q1.fieldbyname('Name').AsString;
         y_s:=dm.Q1.fieldbyname('Year_S').AsInteger;
         course_t:=dm.Q1.fieldbyname('Course').AsInteger;
         decodedate(date(),t3,t2,t1);
         if date()>strtodate('01.09.'+inttostr(t3)) then
          begin
          sem_t:=course_t*2-1;
          ey_st:=inttostr(t3)+'-'+inttostr(t3+1);
          end else
          begin
          sem_t:=course_t*2;
          ey_st:=inttostr(t3-1)+'-'+inttostr(t3);

          end;
        end else gr1_st:='';
      case s1 of
      1: form2.ShowModal;
      2: form3.ShowModal;
      3: form4.ShowModal;
      4: form5.ShowModal;
      end;
      end;
    end;
  end;

end;

end.
