unit uPrincipal;

interface


uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.Menus,
	Winapi.ShellAPI,
	Vcl.StdCtrls,
	Vcl.ExtCtrls,
	Vcl.Buttons,
  Vcl.AppEvnts,
  System.Threading;

const
	WM_ICONTRAY = WM_USER + 1;

type
	TForm_Principal = class(TForm)
		PopupMenu1 : TPopupMenu;
		Abrir1 : TMenuItem;
		Button1 : TButton;
		TrayIcon1 : TTrayIcon;
		FileOpenDialog1 : TFileOpenDialog;
		Panel1 : TPanel;
		Edit_Origem : TLabeledEdit;
		Edit_Destino : TLabeledEdit;
		Button_Copy : TButton;
		SpeedButton1 : TSpeedButton;
		SpeedButton2 : TSpeedButton;
		Panel2 : TPanel;
		SpeedButton3 : TSpeedButton;
		Edit_CriarDir : TLabeledEdit;
		Button_CriarDir : TButton;
		Panel3 : TPanel;
		SpeedButton4 : TSpeedButton;
		SpeedButton5 : TSpeedButton;
		Edit_OrigemSelecto : TLabeledEdit;
		Edit_DestinoSeleto : TLabeledEdit;
		Button2 : TButton;
		FileOpenDialog2 : TFileOpenDialog;
		Panel4 : TPanel;
		SpeedButton6 : TSpeedButton;
		Edit_Diretorio : TLabeledEdit;
		Button_ValidarDir : TButton;
    ApplicationEvents1: TApplicationEvents;
		procedure Abrir1Click(Sender : TObject);
		procedure FormCreate(Sender : TObject);
		procedure FormClose(Sender : TObject; var Action : TCloseAction);
		procedure Button1Click(Sender : TObject);
		procedure TrayIcon1Click(Sender : TObject);
		procedure SpeedButton1Click(Sender : TObject);
		procedure SpeedButton2Click(Sender : TObject);
		procedure Button_CopyClick(Sender : TObject);
		procedure SpeedButton3Click(Sender : TObject);
		procedure Button2Click(Sender : TObject);
		procedure SpeedButton6Click(Sender : TObject);
		procedure Button_ValidarDirClick(Sender : TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
		private
			procedure IconTray(var Msg : TMessage); message WM_ICONTRAY;
			function validarDiretorio(caminho : String) : Boolean;
			function ArquivoExiste(caminhoComExtensao : String) : Boolean;
			function mudarExtensao(caminhoComExtensao : String; extensaoPretendida : String) : String;
			function renomearArquivo(caminhoComExtensao : String; novoNome : String) : Boolean;
			function version(caminhoComExtensao : String; var v1, v2, v3 : Cardinal) : String;overload;
			function version(caminhoComExtensao : String) : String; overload;
		public
			{ Public declarations }
	end;

var
	Form_Principal : TForm_Principal;
	NotifyIconData : TNotifyIconData;

implementation


{$R *.dfm}

{ TForm_Principal }

procedure TForm_Principal.Abrir1Click(Sender : TObject);
begin
	Show;
	WindowState := wsNormal;
	Application.BringToFront;
end;

procedure TForm_Principal.ApplicationEvents1Minimize(Sender: TObject);
begin
  Self.Hide;
end;

function TForm_Principal.ArquivoExiste(caminhoComExtensao : String) : Boolean;
begin
	Result := FileExists(caminhoComExtensao);
end;

procedure TForm_Principal.Button1Click(Sender : TObject);
begin
	// Shell_NotifyIcon(NIM_DELETE, @NotifyIconData);
	Application.ProcessMessages;
	Application.Terminate;
end;

procedure TForm_Principal.Button2Click(Sender : TObject);
var
	osDados : TSHFileOpStruct;
begin
	with osDados do
	begin
		Wnd    := 0;
		wFunc  := FO_DELETE;
		pFrom  := pChar(Edit_OrigemSelecto.Text + '*.txt');
		pTo    := pChar(Edit_DestinoSeleto.Text);
		fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION;
	end;
	SHFileOperation(osDados);

end;

procedure TForm_Principal.Button_CopyClick(Sender : TObject);
begin
	CopyFile(PwideChar(Edit_Origem.Text + '\Calculadora.exe'), PwideChar(Edit_Destino.Text + '\Calculadora.exe'), False);
end;

procedure TForm_Principal.Button_ValidarDirClick(Sender : TObject);
var
	ver1, ver2, ver3 : Cardinal;
begin
	// if ArquivoExiste(Edit_Diretorio.Text) then
	// ShowMessage('Arquivo existe')
	// else
	// ShowMessage('Arquivo não encontrado!');
	// Edit_Diretorio.Text := mudarExtensao(Edit_Diretorio.Text, '.tmp');

	// ShowMessage('Drive = ' + ExtractFileDrive(Edit_Diretorio.Text));
	// ShowMessage('Diretório   = ' + ExtractFileDir(Edit_Diretorio.Text));
	// ShowMessage('Caminho  = ' + ExtractFilePath(Edit_Diretorio.Text));
	// ShowMessage('Nome  = ' + ExtractFileName(Edit_Diretorio.Text));
	// ShowMessage('Extensão   = ' + ExtractFileExt(Edit_Diretorio.Text));
	// renomearArquivo(Edit_Diretorio.Text,mudarExtensao(Edit_Diretorio.Text, '.tmp'));

	//version(Edit_Diretorio.Text, ver1,ver2,ver3);

	ShowMessage(version(Edit_Diretorio.Text));
end;

procedure TForm_Principal.FormClose(Sender : TObject; var Action : TCloseAction);
begin
	// Shell_NotifyIcon(NIM_DELETE, @NotifyIconData);
end;

procedure TForm_Principal.FormCreate(Sender : TObject);
begin
	// with NotifyIconData do
	// begin
	// hIcon := Icon.Handle;
	// StrPCopy(szTip, Application.Title);
	// Wnd := Handle;
	// uCallbackMessage := WM_ICONTRAY;
	// uID := 1;
	// uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
	// cbSize := sizeof;
	// end;
	// Shell_NotifyIcon(NIM_ADD, @NotifyIconData);

end;

procedure TForm_Principal.IconTray(var Msg : TMessage);
var
	CursorPos : TPoint;
begin
	// if Msg.LParam = WM_RBUTTONDOWN then
	// begin
	// GetCursorPos(CursorPos);
	// SetForegroundWindow(Handle);
	// PopupMenu1.Popup(CursorPos.x, CursorPos.y);
	// PostMessage(Handle, WM_NULL, 0, 0);
	// end
	// else
	// if Msg.LParam = WM_LBUTTONDOWN then
	// begin
	// Abrir1Click(nil);
	// end;

end;

function TForm_Principal.mudarExtensao(caminhoComExtensao, extensaoPretendida : String) : String;
begin
	Result := ChangeFileExt(caminhoComExtensao, extensaoPretendida);

end;

function TForm_Principal.renomearArquivo(caminhoComExtensao, novoNome : String) : Boolean;
begin
	Result := RenameFile(caminhoComExtensao, novoNome);
end;

procedure TForm_Principal.SpeedButton1Click(Sender : TObject);
begin
	if FileOpenDialog1.Execute then
	begin
		Edit_Origem.Text := FileOpenDialog1.FileName;
	end;
end;

procedure TForm_Principal.SpeedButton2Click(Sender : TObject);
begin
	if FileOpenDialog1.Execute then
	begin
		Edit_Destino.Text := FileOpenDialog1.FileName;
	end;
end;

procedure TForm_Principal.SpeedButton3Click(Sender : TObject);
begin
	if FileOpenDialog1.Execute then
	begin
		Edit_CriarDir.Text := FileOpenDialog1.FileName;
	end;
end;

procedure TForm_Principal.SpeedButton6Click(Sender : TObject);
begin
	if FileOpenDialog2.Execute then
	begin
		Edit_Diretorio.Text := FileOpenDialog2.FileName;
	end;
end;

procedure TForm_Principal.TrayIcon1Click(Sender : TObject);
begin
	Abrir1Click(Sender);
end;

function TForm_Principal.validarDiretorio(caminho : String) : Boolean;
begin
	Result := DirectoryExists(caminho);
end;

function TForm_Principal.version(caminhoComExtensao: String): String;
var
	VerInfoSize    : DWORD;
	VerInfo        : Pointer;
	VerValueSize   : DWORD;
	VerValue       : PVSFixedFileInfo;
	Dummy          : DWORD;
	V1, V2, V3, V4 : Word;
begin
	try
		VerInfoSize := GetFileVersionInfoSize(PChar(caminhoComExtensao), Dummy);
		GetMem(VerInfo, VerInfoSize);
		GetFileVersionInfo(PChar(caminhoComExtensao), 0, VerInfoSize, VerInfo);
		VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
		with (VerValue^) do
		begin
			V1 := dwFileVersionMS shr 16;
			V2 := dwFileVersionMS and $FFFF;
			V3 := dwFileVersionLS shr 16;
			V4 := dwFileVersionLS and $FFFF;
		end;
		FreeMem(VerInfo, VerInfoSize);
		Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4]);
	except
		Result := '0.0.0.0';
	end;
end;

function TForm_Principal.version(caminhoComExtensao : String; var v1, v2, v3 : Cardinal) : String;
begin
	GetProductVersion(caminhoComExtensao, v1, v2, v3);
end;

end.
