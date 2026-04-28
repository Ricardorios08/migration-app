VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form frmAforosdeCementerio
  Caption = "Aforos de Cementerio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15180
  ClientHeight = 10272
  Begin VB.TextBox BimeCtct
    ForeColor = &HFF0000&
    Left = 8220
    Top = 2040
    Width = 375
    Height = 360
    TabIndex = 25
    MaxLength = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox PeriCtctTxt
    ForeColor = &HFF0000&
    Left = 7320
    Top = 2040
    Width = 735
    Height = 360
    TabIndex = 24
    MaxLength = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox CodiTise2Txt
    ForeColor = &HFF0000&
    Left = 3120
    Top = 8160
    Width = 300
    Height = 360
    TabIndex = 41
    MaxLength = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox NumeDifu2Txt
    ForeColor = &HFF0000&
    Left = 7800
    Top = 8160
    Width = 780
    Height = 360
    TabIndex = 47
    MaxLength = 4
    DataField = "NumeDifu"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox FilaDifu2Txt
    ForeColor = &HFF0000&
    Left = 6000
    Top = 8160
    Width = 540
    Height = 360
    TabIndex = 45
    MaxLength = 2
    DataField = "FilaDifu"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Padrón Territorial"
  End
  Begin VB.TextBox SeccDifu2Txt
    ForeColor = &HFF0000&
    Left = 4560
    Top = 8160
    Width = 660
    Height = 360
    TabIndex = 43
    MaxLength = 3
    DataField = "SeccDifu"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox SeccDifuTxt
    ForeColor = &HFF0000&
    Left = 4245
    Top = 600
    Width = 660
    Height = 360
    TabIndex = 7
    MaxLength = 3
    DataField = "SeccDifu"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox FilaDifuTxt
    ForeColor = &HFF0000&
    Left = 5520
    Top = 600
    Width = 540
    Height = 360
    TabIndex = 9
    MaxLength = 2
    DataField = "FilaDifu"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Padrón Territorial"
  End
  Begin VB.TextBox NumeDifuTxt
    ForeColor = &HFF0000&
    Left = 6840
    Top = 600
    Width = 780
    Height = 360
    TabIndex = 11
    MaxLength = 4
    DataField = "NumeDifu"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox CodiTiseTxt
    ForeColor = &HFF0000&
    Left = 2880
    Top = 600
    Width = 300
    Height = 360
    TabIndex = 5
    MaxLength = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CheckBox ImprimeChk
    Caption = "¿Imprime Boleto?"
    Left = 7080
    Top = 6000
    Width = 2415
    Height = 495
    TabIndex = 35
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton ConfirmarCmd
    Left = 4560
    Top = 6000
    Width = 1935
    Height = 495
    TabIndex = 34
    Picture = "frmAforosdeCementerio.frx":0000
    Style = 1
  End
  Begin VB.TextBox DetalleTxt
    ForeColor = &HFF0000&
    Left = 1080
    Top = 5040
    Width = 7935
    Height = 735
    TabIndex = 30
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 1000
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox TotaBoleTxt
    Left = 10980
    Top = 5040
    Width = 1455
    Height = 330
    TabIndex = 28
    Alignment = 1 'Right Justify
    MaxLength = 10
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CheckBox DescuentoChk
    Caption = "Descuento"
    Left = 12900
    Top = 5640
    Width = 1575
    Height = 255
    TabIndex = 33
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox TotalTxt
    Left = 10980
    Top = 6000
    Width = 1455
    Height = 330
    TabIndex = 37
    Alignment = 1 'Right Justify
    MaxLength = 10
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox DescBoleTxt
    ForeColor = &H0&
    Left = 10980
    Top = 5520
    Width = 1455
    Height = 345
    TabIndex = 32
    Alignment = 1 'Right Justify
    MaxLength = 12
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox PorcDescTxt
    ForeColor = &H0&
    Left = 12900
    Top = 6000
    Width = 1455
    Height = 345
    TabIndex = 38
    Alignment = 1 'Right Justify
    MaxLength = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4440
    Top = 120
    Width = 1935
    Height = 345
    TabIndex = 1
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton SalirCmd
    Left = 13440
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 49
    Picture = "frmAforosdeCementerio.frx":032E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FeveCtctMsk
    Left = 2880
    Top = 1080
    Width = 1335
    Height = 345
    TabIndex = 14
    OleObjectBlob = "frmAforosdeCementerio.frx":0580
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSFlexGridLib.MSFlexGrid ServDifuFlex
    Left = 1080
    Top = 2520
    Width = 11535
    Height = 2295
    TabIndex = 26
    OleObjectBlob = "frmAforosdeCementerio.frx":0630
  End
  Begin MSMask.MaskEdBox FefaDifuMsk
    Left = 7320
    Top = 1680
    Width = 1335
    Height = 345
    TabIndex = 20
    OleObjectBlob = "frmAforosdeCementerio.frx":071C
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 6720
    Width = 14700
    Height = 1185
    TabIndex = 39
    OleObjectBlob = "frmAforosdeCementerio.frx":07CC
  End
  Begin MSDataGridLib.DataGrid dgdABMS2
    Left = 240
    Top = 8640
    Width = 14700
    Height = 1185
    TabIndex = 48
    OleObjectBlob = "frmAforosdeCementerio.frx":0C90
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 13440
    Top = 1800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 50
    OleObjectBlob = "frmAforosdeCementerio.frx":1154
  End
  Begin VB.Line Line
    X1 = 8100
    Y1 = 2280
    X2 = 8220
    Y2 = 2040
  End
  Begin VB.Label Label2
    Caption = "Periodo:"
    Left = 6360
    Top = 2040
    Width = 870
    Height = 300
    TabIndex = 23
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CodiTise2Lbl
    Caption = "Tipo:"
    Left = 2400
    Top = 8160
    Width = 510
    Height = 300
    TabIndex = 40
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label SeccDifu2Lbl
    Caption = "Galeria:"
    Left = 3600
    Top = 8160
    Width = 840
    Height = 300
    TabIndex = 42
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label FilaDifu2Lbl
    Caption = "Fila:"
    Left = 5520
    Top = 8160
    Width = 450
    Height = 300
    TabIndex = 44
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label NumeDifu2Lbl
    Caption = "Nicho:"
    Left = 6960
    Top = 8160
    Width = 660
    Height = 300
    TabIndex = 46
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label NumeDifuLbl
    Caption = "Nicho:"
    Left = 6165
    Top = 600
    Width = 660
    Height = 300
    TabIndex = 10
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label FilaDifuLbl
    Caption = "Fila:"
    Left = 5040
    Top = 600
    Width = 450
    Height = 300
    TabIndex = 8
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label SeccDifuLbl
    Caption = "Galeria:"
    Left = 3360
    Top = 600
    Width = 840
    Height = 300
    TabIndex = 6
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CodiTiseLbl
    Caption = "Tipo:"
    Left = 2280
    Top = 600
    Width = 510
    Height = 300
    TabIndex = 4
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label16
    Caption = "Fecha de Fallecido:"
    Left = 5160
    Top = 1680
    Width = 2070
    Height = 300
    TabIndex = 19
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label15
    Caption = "Nueva Fecha de Fecha Vto:"
    Left = 1320
    Top = 2040
    Width = 2970
    Height = 300
    TabIndex = 21
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label NuevoFeveDifuLbl
    Left = 4320
    Top = 2040
    Width = 1695
    Height = 360
    TabIndex = 22
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label ExpeCtctLbl
    Left = 2880
    Top = 1560
    Width = 1695
    Height = 360
    TabIndex = 18
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label FeveDifuLbl
    Left = 7320
    Top = 1200
    Width = 1695
    Height = 360
    TabIndex = 16
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label13
    Caption = "Fecha Vto:"
    Left = 6120
    Top = 1200
    Width = 1170
    Height = 300
    TabIndex = 15
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label10
    Caption = "Expediente:"
    Left = 1590
    Top = 1560
    Width = 1260
    Height = 300
    TabIndex = 17
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label91
    Caption = "Fecha:"
    Left = 2040
    Top = 1080
    Width = 735
    Height = 300
    TabIndex = 13
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Detalle:"
    Left = 120
    Top = 5040
    Width = 810
    Height = 300
    TabIndex = 29
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label11
    Caption = "Total del Boleto:"
    Left = 9180
    Top = 5040
    Width = 1710
    Height = 300
    TabIndex = 27
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label DescBoleLbl
    Caption = "Descuento:"
    Left = 9660
    Top = 5520
    Width = 1230
    Height = 300
    TabIndex = 31
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label TotalLbl
    Caption = "Total:"
    Left = 10260
    Top = 6000
    Width = 585
    Height = 300
    TabIndex = 36
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 9840
    Top = 240
    Width = 5175
    Height = 315
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 7920
    Top = 240
    Width = 1695
    Height = 315
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7920
    Top = 720
    Width = 6975
    Height = 315
    TabIndex = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3480
    Top = 120
    Width = 840
    Height = 300
    TabIndex = 0
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmAforosdeCementerio"


Private Sub FilaDifuTxt_GotFocus() '9BECE8
  'Data Table: 526984
  loc_9BECD4: FLdPr Me
  loc_9BECD7: VCallAd Control_ID_FilaDifuTxt
  loc_9BECDA: CVarAd
  loc_9BECDE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BECE3: FFree1Var var_94 = ""
  loc_9BECE6: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_KeyPress(KeyAscii As Integer) '9D1AEC
  'Data Table: 526984
  loc_9D1AD4: LitStr "0123456789"
  loc_9D1AD7: FStStrCopy var_88
  loc_9D1ADA: FLdRfVar var_88
  loc_9D1ADD: ILdRf KeyAscii
  loc_9D1AE0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D1AE5: IStI2 KeyAscii
  loc_9D1AE8: FFree1Str var_88
  loc_9D1AEB: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_Validate(Cancel As Boolean) 'AAB268
  'Data Table: 526984
  loc_AAB19C: FLdRfVar var_8A
  loc_AAB19F: FLdPr Me
  loc_AAB1A2: VCallAd Control_ID_FilaDifuTxt
  loc_AAB1A5: FStAdFunc var_88
  loc_AAB1A8: FLdPr var_88
  loc_AAB1AB:  = Me.Enabled
  loc_AAB1B0: FLdI2 var_8A
  loc_AAB1B3: LitI2_Byte &HFF
  loc_AAB1B5: EqI2
  loc_AAB1B6: FFree1Ad var_88
  loc_AAB1B9: BranchF loc_AAB264
  loc_AAB1BC: FLdRfVar var_90
  loc_AAB1BF: FLdPr Me
  loc_AAB1C2: VCallAd Control_ID_FilaDifuTxt
  loc_AAB1C5: FStAdFunc var_88
  loc_AAB1C8: FLdPr var_88
  loc_AAB1CB:  = Me.Text
  loc_AAB1D0: FLdZeroAd var_90
  loc_AAB1D3: CVarStr var_A0
  loc_AAB1D6: ImpAdCallI2 IsNumeric()
  loc_AAB1DB: NotI4
  loc_AAB1DC: FFree1Ad var_88
  loc_AAB1DF: FFree1Var var_A0 = ""
  loc_AAB1E2: BranchF loc_AAB1FC
  loc_AAB1E5: LitStr "0"
  loc_AAB1E8: FLdPr Me
  loc_AAB1EB: VCallAd Control_ID_FilaDifuTxt
  loc_AAB1EE: FStAdFunc var_88
  loc_AAB1F1: FLdPr var_88
  loc_AAB1F4: Me.Text = from_stack_1
  loc_AAB1F9: FFree1Ad var_88
  loc_AAB1FC: FLdRfVar var_90
  loc_AAB1FF: FLdPr Me
  loc_AAB202: VCallAd Control_ID_FilaDifuTxt
  loc_AAB205: FStAdFunc var_88
  loc_AAB208: FLdPr var_88
  loc_AAB20B:  = Me.Text
  loc_AAB210: LitI2_Byte &HFF
  loc_AAB212: LitI2_Byte 0
  loc_AAB214: ILdRf var_90
  loc_AAB217: LitStr "ingrese la FILA"
  loc_AAB21A: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AAB21F: FStStrNoPop var_A4
  loc_AAB222: FLdPr Me
  loc_AAB225: MemStStrCopy
  loc_AAB229: FFreeStr var_90 = ""
  loc_AAB230: FFree1Ad var_88
  loc_AAB233: FLdPr Me
  loc_AAB236: MemLdStr global_72
  loc_AAB239: LitStr vbNullString
  loc_AAB23C: NeStr
  loc_AAB23E: BranchF loc_AAB264
  loc_AAB241: FLdPr Me
  loc_AAB244: MemLdStr global_72
  loc_AAB247: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAB24C: FLdPr Me
  loc_AAB24F: VCallAd Control_ID_FilaDifuTxt
  loc_AAB252: CVarAd
  loc_AAB256: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAB25B: FFree1Var var_A0 = ""
  loc_AAB25E: LitI2_Byte &HFF
  loc_AAB260: IStI2 Cancel
  loc_AAB263: ExitProcHresult
  loc_AAB264: ExitProcHresult
End Sub

Private Sub FefaDifuMsk_UnknownEvent_0 '9BC198
  'Data Table: 526984
  loc_9BC184: FLdPr Me
  loc_9BC187: VCallAd Control_ID_FefaDifuMsk
  loc_9BC18A: CVarAd
  loc_9BC18E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC193: FFree1Var var_94 = ""
  loc_9BC196: ExitProcHresult
End Sub

Private Sub FefaDifuMsk_UnknownEvent_8 'A80B2C
  'Data Table: 526984
  loc_A80AA8: FLdPr Me
  loc_A80AAB: VCallAd Control_ID_FefaDifuMsk
  loc_A80AAE: FStAdFunc var_88
  loc_A80AB1: FLdPr var_88
  loc_A80AB4: LateIdLdVar var_98 DispID_13 -32767
  loc_A80ABB: CBoolVar
  loc_A80ABD: FFree1Ad var_88
  loc_A80AC0: FFree1Var var_98 = ""
  loc_A80AC3: BranchF loc_A80B29
  loc_A80AC6: FLdPr Me
  loc_A80AC9: VCallAd Control_ID_FefaDifuMsk
  loc_A80ACC: FStAdFunc var_88
  loc_A80ACF: FLdPr var_88
  loc_A80AD2: LateIdLdVar var_98 DispID_15 0
  loc_A80AD9: CStrVarTmp
  loc_A80ADA: FStStrNoPop var_9C
  loc_A80ADD: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A80AE2: FStStrNoPop var_A0
  loc_A80AE5: FLdPr Me
  loc_A80AE8: MemStStrCopy
  loc_A80AEC: FFreeStr var_9C = ""
  loc_A80AF3: FFree1Ad var_88
  loc_A80AF6: FFree1Var var_98 = ""
  loc_A80AF9: FLdPr Me
  loc_A80AFC: MemLdStr global_72
  loc_A80AFF: LitStr vbNullString
  loc_A80B02: NeStr
  loc_A80B04: BranchF loc_A80B29
  loc_A80B07: FLdPr Me
  loc_A80B0A: MemLdStr global_72
  loc_A80B0D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A80B12: FLdPr Me
  loc_A80B15: VCallAd Control_ID_FefaDifuMsk
  loc_A80B18: CVarAd
  loc_A80B1C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A80B21: FFree1Var var_98 = ""
  loc_A80B24: LitI2_Byte &HFF
  loc_A80B26: IStI2 Cancel
  loc_A80B29: ExitProcHresult
End Sub

Private Sub FefaDifuMsk_KeyPress(KeyAscii As Integer) 'A21034
  'Data Table: 526984
  loc_A20FEC: ILdI2 KeyAscii
  loc_A20FEF: CI4UI1
  loc_A20FF0: LitI4 &H20
  loc_A20FF5: EqI4
  loc_A20FF6: BranchF loc_A21033
  loc_A20FF9: LitVar_Missing var_A4
  loc_A20FFC: PopAdLdVar
  loc_A20FFD: LitVarI4
  loc_A21005: PopAdLdVar
  loc_A21006: ImpAdLdRf MemVar_D930A4
  loc_A21009: NewIfNullPr frmCalendario
  loc_A2100C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21011: ImpAdLdRf MemVar_D93028
  loc_A21014: CDargRef
  loc_A21018: FLdPr Me
  loc_A2101B: VCallAd Control_ID_FefaDifuMsk
  loc_A2101E: FStAdFunc var_A8
  loc_A21021: FLdPr var_A8
  loc_A21024: LateIdSt
  loc_A21029: FFree1Ad var_A8
  loc_A2102C: LitStr vbNullString
  loc_A2102F: ImpAdStStrCopy MemVar_D93028
  loc_A21033: ExitProcHresult
End Sub

Private Sub PorcDescTxt_GotFocus() '9BC030
  'Data Table: 526984
  loc_9BC01C: FLdPr Me
  loc_9BC01F: VCallAd Control_ID_PorcDescTxt
  loc_9BC022: CVarAd
  loc_9BC026: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC02B: FFree1Var var_94 = ""
  loc_9BC02E: ExitProcHresult
End Sub

Private Sub PorcDescTxt_KeyPress(KeyAscii As Integer) 'A084E8
  'Data Table: 526984
  loc_A084B4: LitStr "1234567890,."
  loc_A084B7: FStStrCopy var_88
  loc_A084BA: FLdRfVar var_88
  loc_A084BD: ILdRf KeyAscii
  loc_A084C0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A084C5: IStI2 KeyAscii
  loc_A084C8: FFree1Str var_88
  loc_A084CB: ILdI2 KeyAscii
  loc_A084CE: LitStr "."
  loc_A084D1: ImpAdCallI2 Asc()
  loc_A084D6: EqI2
  loc_A084D7: BranchF loc_A084E5
  loc_A084DA: LitStr ","
  loc_A084DD: ImpAdCallI2 Asc()
  loc_A084E2: IStI2 KeyAscii
  loc_A084E5: ExitProcHresult
End Sub

Private Sub PorcDescTxt_LostFocus() 'AF97CC
  'Data Table: 526984
  loc_AF9604: FLdRfVar var_8C
  loc_AF9607: FLdPr Me
  loc_AF960A: VCallAd Control_ID_TotaBoleTxt
  loc_AF960D: FStAdFunc var_88
  loc_AF9610: FLdPr var_88
  loc_AF9613:  = Me.Text
  loc_AF9618: FLdZeroAd var_8C
  loc_AF961B: CVarStr var_9C
  loc_AF961E: ImpAdCallI2 IsNumeric()
  loc_AF9623: FLdRfVar var_A4
  loc_AF9626: FLdPr Me
  loc_AF9629: VCallAd Control_ID_PorcDescTxt
  loc_AF962C: FStAdFunc var_A0
  loc_AF962F: FLdPr var_A0
  loc_AF9632:  = Me.Text
  loc_AF9637: FLdZeroAd var_A4
  loc_AF963A: CVarStr var_B4
  loc_AF963D: ImpAdCallI2 IsNumeric()
  loc_AF9642: AndI4
  loc_AF9643: FFreeAd var_88 = ""
  loc_AF964A: FFreeVar var_9C = ""
  loc_AF9651: BranchF loc_AF97C8
  loc_AF9654: FLdRfVar var_8C
  loc_AF9657: FLdPr Me
  loc_AF965A: VCallAd Control_ID_TotaBoleTxt
  loc_AF965D: FStAdFunc var_88
  loc_AF9660: FLdPr var_88
  loc_AF9663:  = Me.Text
  loc_AF9668: FLdRfVar var_A4
  loc_AF966B: FLdPr Me
  loc_AF966E: VCallAd Control_ID_PorcDescTxt
  loc_AF9671: FStAdFunc var_A0
  loc_AF9674: FLdPr var_A0
  loc_AF9677:  = Me.Text
  loc_AF967C: LitI4 1
  loc_AF9681: LitI4 1
  loc_AF9686: LitVarStr var_D4, "0.00"
  loc_AF968B: FStVarCopyObj var_B4
  loc_AF968E: FLdRfVar var_B4
  loc_AF9691: ILdRf var_8C
  loc_AF9694: CR8Str
  loc_AF9696: ILdRf var_A4
  loc_AF9699: CR8Str
  loc_AF969B: MulR8
  loc_AF969C: LitI2_Byte &H64
  loc_AF969E: CR8I2
  loc_AF969F: DivR8
  loc_AF96A0: CVarR8
  loc_AF96A4: FLdRfVar var_E4
  loc_AF96A7: ImpAdCallFPR4  = Format(, )
  loc_AF96AC: FLdRfVar var_E4
  loc_AF96AF: CStrVarVal var_E8
  loc_AF96B3: FLdPr Me
  loc_AF96B6: VCallAd Control_ID_DescBoleTxt
  loc_AF96B9: FStAdFunc var_EC
  loc_AF96BC: FLdPr var_EC
  loc_AF96BF: Me.Text = from_stack_1
  loc_AF96C4: FFreeStr var_8C = "": var_A4 = ""
  loc_AF96CD: FFreeAd var_88 = "": var_A0 = ""
  loc_AF96D6: FFreeVar var_9C = "": var_B4 = ""
  loc_AF96DF: FLdRfVar var_8C
  loc_AF96E2: FLdPr Me
  loc_AF96E5: VCallAd Control_ID_TotaBoleTxt
  loc_AF96E8: FStAdFunc var_88
  loc_AF96EB: FLdPr var_88
  loc_AF96EE:  = Me.Text
  loc_AF96F3: FLdRfVar var_A4
  loc_AF96F6: FLdPr Me
  loc_AF96F9: VCallAd Control_ID_DescBoleTxt
  loc_AF96FC: FStAdFunc var_A0
  loc_AF96FF: FLdPr var_A0
  loc_AF9702:  = Me.Text
  loc_AF9707: LitI4 1
  loc_AF970C: LitI4 1
  loc_AF9711: LitVarStr var_D4, "0.00"
  loc_AF9716: FStVarCopyObj var_B4
  loc_AF9719: FLdRfVar var_B4
  loc_AF971C: ILdRf var_8C
  loc_AF971F: CR8Str
  loc_AF9721: ILdRf var_A4
  loc_AF9724: CR8Str
  loc_AF9726: SubR4
  loc_AF9727: CVarR8
  loc_AF972B: FLdRfVar var_E4
  loc_AF972E: ImpAdCallFPR4  = Format(, )
  loc_AF9733: FLdRfVar var_E4
  loc_AF9736: CStrVarVal var_E8
  loc_AF973A: FLdPr Me
  loc_AF973D: VCallAd Control_ID_TotalTxt
  loc_AF9740: FStAdFunc var_EC
  loc_AF9743: FLdPr var_EC
  loc_AF9746: Me.Text = from_stack_1
  loc_AF974B: FFreeStr var_8C = "": var_A4 = ""
  loc_AF9754: FFreeAd var_88 = "": var_A0 = ""
  loc_AF975D: FFreeVar var_9C = "": var_B4 = ""
  loc_AF9766: FLdRfVar var_8C
  loc_AF9769: FLdPr Me
  loc_AF976C: VCallAd Control_ID_PorcDescTxt
  loc_AF976F: FStAdFunc var_88
  loc_AF9772: FLdPr var_88
  loc_AF9775:  = Me.Text
  loc_AF977A: LitI4 1
  loc_AF977F: LitI4 1
  loc_AF9784: LitVarStr var_C4, "0.00"
  loc_AF9789: FStVarCopyObj var_B4
  loc_AF978C: FLdRfVar var_B4
  loc_AF978F: FLdZeroAd var_8C
  loc_AF9792: CVarStr var_9C
  loc_AF9795: FLdRfVar var_E4
  loc_AF9798: ImpAdCallFPR4  = Format(, )
  loc_AF979D: FLdRfVar var_E4
  loc_AF97A0: CStrVarVal var_A4
  loc_AF97A4: FLdPr Me
  loc_AF97A7: VCallAd Control_ID_PorcDescTxt
  loc_AF97AA: FStAdFunc var_A0
  loc_AF97AD: FLdPr var_A0
  loc_AF97B0: Me.Text = from_stack_1
  loc_AF97B5: FFree1Str var_A4
  loc_AF97B8: FFreeAd var_88 = ""
  loc_AF97BF: FFreeVar var_9C = "": var_B4 = ""
  loc_AF97C8: ExitProcHresult
End Sub

Private Sub DescuentoChk_Click() 'B0A398
  'Data Table: 526984
  loc_B0A174: FLdRfVar var_8A
  loc_B0A177: FLdPr Me
  loc_B0A17A: VCallAd Control_ID_DescuentoChk
  loc_B0A17D: FStAdFunc var_88
  loc_B0A180: FLdPr var_88
  loc_B0A183:  = Me.Value
  loc_B0A188: FLdI2 var_8A
  loc_B0A18B: LitI2_Byte 0
  loc_B0A18D: EqI2
  loc_B0A18E: FFree1Ad var_88
  loc_B0A191: BranchF loc_B0A297
  loc_B0A194: LitI2_Byte 0
  loc_B0A196: FLdPr Me
  loc_B0A199: VCallAd Control_ID_PorcDescTxt
  loc_B0A19C: FStAdFunc var_88
  loc_B0A19F: FLdPr var_88
  loc_B0A1A2: Me.Visible = from_stack_1b
  loc_B0A1A7: FFree1Ad var_88
  loc_B0A1AA: LitI2_Byte 0
  loc_B0A1AC: FLdPr Me
  loc_B0A1AF: VCallAd Control_ID_DescBoleLbl
  loc_B0A1B2: FStAdFunc var_88
  loc_B0A1B5: FLdPr var_88
  loc_B0A1B8: Me.Visible = from_stack_1b
  loc_B0A1BD: FFree1Ad var_88
  loc_B0A1C0: LitI2_Byte 0
  loc_B0A1C2: FLdPr Me
  loc_B0A1C5: VCallAd Control_ID_DescBoleTxt
  loc_B0A1C8: FStAdFunc var_88
  loc_B0A1CB: FLdPr var_88
  loc_B0A1CE: Me.Visible = from_stack_1b
  loc_B0A1D3: FFree1Ad var_88
  loc_B0A1D6: LitI2_Byte 0
  loc_B0A1D8: FLdPr Me
  loc_B0A1DB: VCallAd Control_ID_TotalLbl
  loc_B0A1DE: FStAdFunc var_88
  loc_B0A1E1: FLdPr var_88
  loc_B0A1E4: Me.Visible = from_stack_1b
  loc_B0A1E9: FFree1Ad var_88
  loc_B0A1EC: LitI2_Byte 0
  loc_B0A1EE: FLdPr Me
  loc_B0A1F1: VCallAd Control_ID_TotalTxt
  loc_B0A1F4: FStAdFunc var_88
  loc_B0A1F7: FLdPr var_88
  loc_B0A1FA: Me.Visible = from_stack_1b
  loc_B0A1FF: FFree1Ad var_88
  loc_B0A202: LitI4 1
  loc_B0A207: LitI4 1
  loc_B0A20C: LitVarStr var_BC, "0.00"
  loc_B0A211: FStVarCopyObj var_CC
  loc_B0A214: FLdRfVar var_CC
  loc_B0A217: LitVarI2 var_AC, 0
  loc_B0A21C: FLdRfVar var_DC
  loc_B0A21F: ImpAdCallFPR4  = Format(, )
  loc_B0A224: FLdRfVar var_DC
  loc_B0A227: CStrVarVal var_E0
  loc_B0A22B: FLdPr Me
  loc_B0A22E: VCallAd Control_ID_DescBoleTxt
  loc_B0A231: FStAdFunc var_88
  loc_B0A234: FLdPr var_88
  loc_B0A237: Me.Text = from_stack_1
  loc_B0A23C: FFree1Str var_E0
  loc_B0A23F: FFree1Ad var_88
  loc_B0A242: FFreeVar var_AC = "": var_CC = ""
  loc_B0A24B: LitI4 1
  loc_B0A250: LitI4 1
  loc_B0A255: LitVarStr var_BC, "0.00"
  loc_B0A25A: FStVarCopyObj var_CC
  loc_B0A25D: FLdRfVar var_CC
  loc_B0A260: LitVarI2 var_AC, 0
  loc_B0A265: FLdRfVar var_DC
  loc_B0A268: ImpAdCallFPR4  = Format(, )
  loc_B0A26D: FLdRfVar var_DC
  loc_B0A270: CStrVarVal var_E0
  loc_B0A274: FLdPr Me
  loc_B0A277: VCallAd Control_ID_PorcDescTxt
  loc_B0A27A: FStAdFunc var_88
  loc_B0A27D: FLdPr var_88
  loc_B0A280: Me.Text = from_stack_1
  loc_B0A285: FFree1Str var_E0
  loc_B0A288: FFree1Ad var_88
  loc_B0A28B: FFreeVar var_AC = "": var_CC = ""
  loc_B0A294: Branch loc_B0A397
  loc_B0A297: LitI2_Byte &HFF
  loc_B0A299: FLdPr Me
  loc_B0A29C: VCallAd Control_ID_PorcDescTxt
  loc_B0A29F: FStAdFunc var_88
  loc_B0A2A2: FLdPr var_88
  loc_B0A2A5: Me.Visible = from_stack_1b
  loc_B0A2AA: FFree1Ad var_88
  loc_B0A2AD: LitI2_Byte &HFF
  loc_B0A2AF: FLdPr Me
  loc_B0A2B2: VCallAd Control_ID_DescBoleLbl
  loc_B0A2B5: FStAdFunc var_88
  loc_B0A2B8: FLdPr var_88
  loc_B0A2BB: Me.Visible = from_stack_1b
  loc_B0A2C0: FFree1Ad var_88
  loc_B0A2C3: LitI2_Byte &HFF
  loc_B0A2C5: FLdPr Me
  loc_B0A2C8: VCallAd Control_ID_DescBoleTxt
  loc_B0A2CB: FStAdFunc var_88
  loc_B0A2CE: FLdPr var_88
  loc_B0A2D1: Me.Visible = from_stack_1b
  loc_B0A2D6: FFree1Ad var_88
  loc_B0A2D9: LitI2_Byte &HFF
  loc_B0A2DB: FLdPr Me
  loc_B0A2DE: VCallAd Control_ID_TotalLbl
  loc_B0A2E1: FStAdFunc var_88
  loc_B0A2E4: FLdPr var_88
  loc_B0A2E7: Me.Visible = from_stack_1b
  loc_B0A2EC: FFree1Ad var_88
  loc_B0A2EF: LitI2_Byte &HFF
  loc_B0A2F1: FLdPr Me
  loc_B0A2F4: VCallAd Control_ID_TotalTxt
  loc_B0A2F7: FStAdFunc var_88
  loc_B0A2FA: FLdPr var_88
  loc_B0A2FD: Me.Visible = from_stack_1b
  loc_B0A302: FFree1Ad var_88
  loc_B0A305: LitI4 1
  loc_B0A30A: LitI4 1
  loc_B0A30F: LitVarStr var_BC, "0.00"
  loc_B0A314: FStVarCopyObj var_CC
  loc_B0A317: FLdRfVar var_CC
  loc_B0A31A: LitVarI2 var_AC, 0
  loc_B0A31F: FLdRfVar var_DC
  loc_B0A322: ImpAdCallFPR4  = Format(, )
  loc_B0A327: FLdRfVar var_DC
  loc_B0A32A: CStrVarVal var_E0
  loc_B0A32E: FLdPr Me
  loc_B0A331: VCallAd Control_ID_DescBoleTxt
  loc_B0A334: FStAdFunc var_88
  loc_B0A337: FLdPr var_88
  loc_B0A33A: Me.Text = from_stack_1
  loc_B0A33F: FFree1Str var_E0
  loc_B0A342: FFree1Ad var_88
  loc_B0A345: FFreeVar var_AC = "": var_CC = ""
  loc_B0A34E: LitI4 1
  loc_B0A353: LitI4 1
  loc_B0A358: LitVarStr var_BC, "0.00"
  loc_B0A35D: FStVarCopyObj var_CC
  loc_B0A360: FLdRfVar var_CC
  loc_B0A363: LitVarI2 var_AC, 0
  loc_B0A368: FLdRfVar var_DC
  loc_B0A36B: ImpAdCallFPR4  = Format(, )
  loc_B0A370: FLdRfVar var_DC
  loc_B0A373: CStrVarVal var_E0
  loc_B0A377: FLdPr Me
  loc_B0A37A: VCallAd Control_ID_PorcDescTxt
  loc_B0A37D: FStAdFunc var_88
  loc_B0A380: FLdPr var_88
  loc_B0A383: Me.Text = from_stack_1
  loc_B0A388: FFree1Str var_E0
  loc_B0A38B: FFree1Ad var_88
  loc_B0A38E: FFreeVar var_AC = "": var_CC = ""
  loc_B0A397: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_GotFocus() '9BCED0
  'Data Table: 526984
  loc_9BCEBC: FLdPr Me
  loc_9BCEBF: VCallAd Control_ID_CodiTiseTxt
  loc_9BCEC2: CVarAd
  loc_9BCEC6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCECB: FFree1Var var_94 = ""
  loc_9BCECE: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_KeyPress(KeyAscii As Integer) '9CA218
  'Data Table: 526984
  loc_9CA200: LitStr "NFMU"
  loc_9CA203: FStStrCopy var_88
  loc_9CA206: FLdRfVar var_88
  loc_9CA209: ILdRf KeyAscii
  loc_9CA20C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA211: IStI2 KeyAscii
  loc_9CA214: FFree1Str var_88
  loc_9CA217: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_Validate(Cancel As Boolean) 'A7B748
  'Data Table: 526984
  loc_A7B6D8: FLdRfVar var_8C
  loc_A7B6DB: FLdPr Me
  loc_A7B6DE: VCallAd Control_ID_CodiTiseTxt
  loc_A7B6E1: FStAdFunc var_88
  loc_A7B6E4: FLdPr var_88
  loc_A7B6E7:  = Me.Text
  loc_A7B6EC: ILdRf var_8C
  loc_A7B6EF: Call Proc_259_57_C1970C()
  loc_A7B6F4: FFree1Str var_8C
  loc_A7B6F7: FFree1Ad var_88
  loc_A7B6FA: FLdRfVar var_8C
  loc_A7B6FD: FLdPr Me
  loc_A7B700: VCallAd Control_ID_CodiTiseTxt
  loc_A7B703: FStAdFunc var_88
  loc_A7B706: FLdPr var_88
  loc_A7B709:  = Me.Text
  loc_A7B70E: FLdZeroAd var_8C
  loc_A7B711: CVarStr var_9C
  loc_A7B714: FLdRfVar var_AC
  loc_A7B717: ImpAdCallFPR4  = Ucase()
  loc_A7B71C: FLdRfVar var_AC
  loc_A7B71F: CStrVarVal var_B0
  loc_A7B723: FLdPr Me
  loc_A7B726: VCallAd Control_ID_CodiTiseTxt
  loc_A7B729: FStAdFunc var_B4
  loc_A7B72C: FLdPr var_B4
  loc_A7B72F: Me.Text = from_stack_1
  loc_A7B734: FFree1Str var_B0
  loc_A7B737: FFreeAd var_88 = ""
  loc_A7B73E: FFreeVar var_9C = ""
  loc_A7B745: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_GotFocus() '9BDF20
  'Data Table: 526984
  loc_9BDF0C: FLdPr Me
  loc_9BDF0F: VCallAd Control_ID_SeccDifuTxt
  loc_9BDF12: CVarAd
  loc_9BDF16: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDF1B: FFree1Var var_94 = ""
  loc_9BDF1E: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_Validate(Cancel As Boolean) 'AC10F0
  'Data Table: 526984
  loc_AC0FFC: FLdRfVar var_8A
  loc_AC0FFF: FLdPr Me
  loc_AC1002: VCallAd Control_ID_SeccDifuTxt
  loc_AC1005: FStAdFunc var_88
  loc_AC1008: FLdPr var_88
  loc_AC100B:  = Me.Enabled
  loc_AC1010: FLdI2 var_8A
  loc_AC1013: FFree1Ad var_88
  loc_AC1016: BranchF loc_AC10A2
  loc_AC1019: FLdRfVar var_90
  loc_AC101C: FLdPr Me
  loc_AC101F: VCallAd Control_ID_SeccDifuTxt
  loc_AC1022: FStAdFunc var_88
  loc_AC1025: FLdPr var_88
  loc_AC1028:  = Me.Text
  loc_AC102D: ILdRf var_90
  loc_AC1030: LitStr vbNullString
  loc_AC1033: NeStr
  loc_AC1035: FFree1Str var_90
  loc_AC1038: FFree1Ad var_88
  loc_AC103B: BranchF loc_AC10A2
  loc_AC103E: FLdRfVar var_90
  loc_AC1041: FLdPr Me
  loc_AC1044: VCallAd Control_ID_SeccDifuTxt
  loc_AC1047: FStAdFunc var_88
  loc_AC104A: FLdPr var_88
  loc_AC104D:  = Me.Text
  loc_AC1052: ILdRf var_90
  loc_AC1055: LitStr "ingrese el sector"
  loc_AC1058: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AC105D: FStStrNoPop var_94
  loc_AC1060: FLdPr Me
  loc_AC1063: MemStStrCopy
  loc_AC1067: FFreeStr var_90 = ""
  loc_AC106E: FFree1Ad var_88
  loc_AC1071: FLdPr Me
  loc_AC1074: MemLdStr global_72
  loc_AC1077: LitStr vbNullString
  loc_AC107A: NeStr
  loc_AC107C: BranchF loc_AC10A2
  loc_AC107F: FLdPr Me
  loc_AC1082: MemLdStr global_72
  loc_AC1085: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC108A: FLdPr Me
  loc_AC108D: VCallAd Control_ID_SeccDifuTxt
  loc_AC1090: CVarAd
  loc_AC1094: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC1099: FFree1Var var_A4 = ""
  loc_AC109C: LitI2_Byte &HFF
  loc_AC109E: IStI2 Cancel
  loc_AC10A1: ExitProcHresult
  loc_AC10A2: FLdRfVar var_90
  loc_AC10A5: FLdPr Me
  loc_AC10A8: VCallAd Control_ID_SeccDifuTxt
  loc_AC10AB: FStAdFunc var_88
  loc_AC10AE: FLdPr var_88
  loc_AC10B1:  = Me.Text
  loc_AC10B6: FLdZeroAd var_90
  loc_AC10B9: CVarStr var_A4
  loc_AC10BC: FLdRfVar var_B4
  loc_AC10BF: ImpAdCallFPR4  = Ucase()
  loc_AC10C4: FLdRfVar var_B4
  loc_AC10C7: CStrVarVal var_94
  loc_AC10CB: FLdPr Me
  loc_AC10CE: VCallAd Control_ID_SeccDifuTxt
  loc_AC10D1: FStAdFunc var_B8
  loc_AC10D4: FLdPr var_B8
  loc_AC10D7: Me.Text = from_stack_1
  loc_AC10DC: FFree1Str var_94
  loc_AC10DF: FFreeAd var_88 = ""
  loc_AC10E6: FFreeVar var_A4 = ""
  loc_AC10ED: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_GotFocus() '9BE988
  'Data Table: 526984
  loc_9BE974: FLdPr Me
  loc_9BE977: VCallAd Control_ID_NumeDifuTxt
  loc_9BE97A: CVarAd
  loc_9BE97E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE983: FFree1Var var_94 = ""
  loc_9BE986: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_KeyPress(KeyAscii As Integer) '9CFE6C
  'Data Table: 526984
  loc_9CFE54: LitStr "0123456789"
  loc_9CFE57: FStStrCopy var_88
  loc_9CFE5A: FLdRfVar var_88
  loc_9CFE5D: ILdRf KeyAscii
  loc_9CFE60: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CFE65: IStI2 KeyAscii
  loc_9CFE68: FFree1Str var_88
  loc_9CFE6B: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_Validate(Cancel As Boolean) 'AFE8CC
  'Data Table: 526984
  loc_AFE700: FLdRfVar var_8A
  loc_AFE703: FLdPr Me
  loc_AFE706: VCallAd Control_ID_NumeDifuTxt
  loc_AFE709: FStAdFunc var_88
  loc_AFE70C: FLdPr var_88
  loc_AFE70F:  = Me.Enabled
  loc_AFE714: FLdI2 var_8A
  loc_AFE717: LitI2_Byte &HFF
  loc_AFE719: EqI2
  loc_AFE71A: FFree1Ad var_88
  loc_AFE71D: BranchF loc_AFE8C9
  loc_AFE720: FLdRfVar var_90
  loc_AFE723: FLdPr Me
  loc_AFE726: VCallAd Control_ID_NumeDifuTxt
  loc_AFE729: FStAdFunc var_88
  loc_AFE72C: FLdPr var_88
  loc_AFE72F:  = Me.Text
  loc_AFE734: FLdZeroAd var_90
  loc_AFE737: CVarStr var_A0
  loc_AFE73A: ImpAdCallI2 IsNumeric()
  loc_AFE73F: NotI4
  loc_AFE740: FFree1Ad var_88
  loc_AFE743: FFree1Var var_A0 = ""
  loc_AFE746: BranchF loc_AFE760
  loc_AFE749: LitStr "0"
  loc_AFE74C: FLdPr Me
  loc_AFE74F: VCallAd Control_ID_NumeDifuTxt
  loc_AFE752: FStAdFunc var_88
  loc_AFE755: FLdPr var_88
  loc_AFE758: Me.Text = from_stack_1
  loc_AFE75D: FFree1Ad var_88
  loc_AFE760: FLdRfVar var_90
  loc_AFE763: FLdPr Me
  loc_AFE766: VCallAd Control_ID_NumeDifuTxt
  loc_AFE769: FStAdFunc var_88
  loc_AFE76C: FLdPr var_88
  loc_AFE76F:  = Me.Text
  loc_AFE774: LitI2_Byte &HFF
  loc_AFE776: LitI2_Byte 0
  loc_AFE778: ILdRf var_90
  loc_AFE77B: LitStr "ingrese el NUMERO"
  loc_AFE77E: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AFE783: FStStrNoPop var_A4
  loc_AFE786: FLdPr Me
  loc_AFE789: MemStStrCopy
  loc_AFE78D: FFreeStr var_90 = ""
  loc_AFE794: FFree1Ad var_88
  loc_AFE797: FLdPr Me
  loc_AFE79A: MemLdStr global_72
  loc_AFE79D: LitStr vbNullString
  loc_AFE7A0: NeStr
  loc_AFE7A2: BranchF loc_AFE7C8
  loc_AFE7A5: FLdPr Me
  loc_AFE7A8: MemLdStr global_72
  loc_AFE7AB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFE7B0: FLdPr Me
  loc_AFE7B3: VCallAd Control_ID_NumeDifuTxt
  loc_AFE7B6: CVarAd
  loc_AFE7BA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AFE7BF: FFree1Var var_A0 = ""
  loc_AFE7C2: LitI2_Byte &HFF
  loc_AFE7C4: IStI2 Cancel
  loc_AFE7C7: ExitProcHresult
  loc_AFE7C8: FLdRfVar var_90
  loc_AFE7CB: FLdPr Me
  loc_AFE7CE: VCallAd Control_ID_NumeDifuTxt
  loc_AFE7D1: FStAdFunc var_88
  loc_AFE7D4: FLdPr var_88
  loc_AFE7D7:  = Me.Text
  loc_AFE7DC: FLdZeroAd var_90
  loc_AFE7DF: CVarStr var_A0
  loc_AFE7E2: FLdRfVar var_B4
  loc_AFE7E5: ImpAdCallFPR4  = Ucase()
  loc_AFE7EA: FLdRfVar var_B4
  loc_AFE7ED: CStrVarVal var_A4
  loc_AFE7F1: FLdPr Me
  loc_AFE7F4: VCallAd Control_ID_NumeDifuTxt
  loc_AFE7F7: FStAdFunc var_B8
  loc_AFE7FA: FLdPr var_B8
  loc_AFE7FD: Me.Text = from_stack_1
  loc_AFE802: FFree1Str var_A4
  loc_AFE805: FFreeAd var_88 = ""
  loc_AFE80C: FFreeVar var_A0 = ""
  loc_AFE813: LitI2_Byte 0
  loc_AFE815: PopTmpLdAd2 var_8A
  loc_AFE818: Call FilaDifuTxt_Validate(from_stack_1v)
  loc_AFE81D: FLdRfVar var_90
  loc_AFE820: FLdPr Me
  loc_AFE823: VCallAd Control_ID_CodiTiseTxt
  loc_AFE826: FStAdFunc var_88
  loc_AFE829: FLdPr var_88
  loc_AFE82C:  = Me.Text
  loc_AFE831: FLdRfVar var_A4
  loc_AFE834: FLdPr Me
  loc_AFE837: VCallAd Control_ID_SeccDifuTxt
  loc_AFE83A: FStAdFunc var_B8
  loc_AFE83D: FLdPr var_B8
  loc_AFE840:  = Me.Text
  loc_AFE845: FLdRfVar var_C0
  loc_AFE848: FLdPr Me
  loc_AFE84B: VCallAd Control_ID_FilaDifuTxt
  loc_AFE84E: FStAdFunc var_BC
  loc_AFE851: FLdPr var_BC
  loc_AFE854:  = Me.Text
  loc_AFE859: FLdRfVar var_C8
  loc_AFE85C: FLdPr Me
  loc_AFE85F: VCallAd Control_ID_NumeDifuTxt
  loc_AFE862: FStAdFunc var_C4
  loc_AFE865: FLdPr var_C4
  loc_AFE868:  = Me.Text
  loc_AFE86D: ILdRf var_C8
  loc_AFE870: CI2Str
  loc_AFE872: ILdRf var_C0
  loc_AFE875: CI2Str
  loc_AFE877: ILdRf var_A4
  loc_AFE87A: ILdRf var_90
  loc_AFE87D: ImpAdCallI2 Proc_270_92_ADBFCC(, , , )
  loc_AFE882: FStStrNoPop var_CC
  loc_AFE885: FLdPr Me
  loc_AFE888: VCallAd Control_ID_NumeCtaTxt
  loc_AFE88B: FStAdFunc var_D0
  loc_AFE88E: FLdPr var_D0
  loc_AFE891: Me.Text = from_stack_1
  loc_AFE896: FFreeStr var_90 = "": var_A4 = "": var_C0 = "": var_C8 = ""
  loc_AFE8A3: FFreeAd var_88 = "": var_B8 = "": var_BC = "": var_C4 = ""
  loc_AFE8B0: LitI2_Byte 0
  loc_AFE8B2: PopTmpLdAd2 var_8A
  loc_AFE8B5: Call NumeCtaTxt_Validate(from_stack_1v)
  loc_AFE8BA: FLdPr Me
  loc_AFE8BD: MemLdStr global_72
  loc_AFE8C0: LitStr vbNullString
  loc_AFE8C3: NeStr
  loc_AFE8C5: BranchF loc_AFE8C9
  loc_AFE8C8: ExitProcHresult
  loc_AFE8C9: ExitProcHresult
End Sub

Private Sub ServDifuFlex_UnknownEvent_8 'CB7614
  'Data Table: 526984
  loc_CB55BC: LitI2_Byte 1
  loc_CB55BE: FLdPr Me
  loc_CB55C1: MemLdRfVar from_stack_1.global_76
  loc_CB55C4: FLdPr Me
  loc_CB55C7: VCallAd Control_ID_ServDifuFlex
  loc_CB55CA: FStAdFunc var_88
  loc_CB55CD: FLdPr var_88
  loc_CB55D0: LateIdLdVar var_98 DispID_4 0
  loc_CB55D7: CI4Var
  loc_CB55D9: LitI4 1
  loc_CB55DE: SubI4
  loc_CB55DF: CI2I4
  loc_CB55E0: FFree1Ad var_88
  loc_CB55E3: FFree1Var var_98 = ""
  loc_CB55E6: ForI2 var_9C
  loc_CB55EC: FLdPr Me
  loc_CB55EF: MemLdI2 global_76
  loc_CB55F2: CI4UI1
  loc_CB55F3: CVarI4
  loc_CB55F7: PopAdLdVar
  loc_CB55F8: LitVarI4
  loc_CB5600: PopAdLdVar
  loc_CB5601: FLdPr Me
  loc_CB5604: VCallAd Control_ID_ServDifuFlex
  loc_CB5607: FStAdFunc var_88
  loc_CB560A: FLdPr var_88
  loc_CB560D: LateIdCallLdVar
  loc_CB5617: CStrVarTmp
  loc_CB5618: CVarStr var_EC
  loc_CB561B: ImpAdCallI2 IsNumeric()
  loc_CB5620: NotI4
  loc_CB5621: FFree1Ad var_88
  loc_CB5624: FFreeVar var_98 = ""
  loc_CB562B: BranchF loc_CB565B
  loc_CB562E: LitStr "Debe ingresar la cantidad. Verifique..."
  loc_CB5631: FLdPr Me
  loc_CB5634: MemStStrCopy
  loc_CB5638: FLdPr Me
  loc_CB563B: MemLdStr global_72
  loc_CB563E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB5643: FLdPr Me
  loc_CB5646: VCallAd Control_ID_ServDifuFlex
  loc_CB5649: FStAdFunc var_88
  loc_CB564C: FLdPr var_88
  loc_CB564F: LateIdCall
  loc_CB5657: FFree1Ad var_88
  loc_CB565A: ExitProcHresult
  loc_CB565B: FLdPr Me
  loc_CB565E: MemLdI2 global_76
  loc_CB5661: CI4UI1
  loc_CB5662: CVarI4
  loc_CB5666: PopAdLdVar
  loc_CB5667: LitVarI4
  loc_CB566F: PopAdLdVar
  loc_CB5670: FLdPr Me
  loc_CB5673: VCallAd Control_ID_ServDifuFlex
  loc_CB5676: FStAdFunc var_88
  loc_CB5679: FLdPr var_88
  loc_CB567C: LateIdCallLdVar
  loc_CB5686: CStrVarTmp
  loc_CB5687: CVarStr var_EC
  loc_CB568A: ImpAdCallI2 IsNumeric()
  loc_CB568F: FFree1Ad var_88
  loc_CB5692: FFreeVar var_98 = ""
  loc_CB5699: BranchF loc_CB72D1
  loc_CB569C: FLdRfVar var_114
  loc_CB569F: FLdPr Me
  loc_CB56A2: MemLdRfVar from_stack_1.global_96
  loc_CB56A5: NewIfNullPr tblDifunto
  loc_CB56A8: from_stack_1v = tblDifunto.CodiCemeGet()
  loc_CB56AD: FLdRfVar var_1A0
  loc_CB56B0: FLdPr Me
  loc_CB56B3: MemLdRfVar from_stack_1.global_96
  loc_CB56B6: NewIfNullPr tblDifunto
  loc_CB56B9: from_stack_1v = tblDifunto.CodiTiseGet()
  loc_CB56BE: FLdRfVar var_22C
  loc_CB56C1: FLdPr Me
  loc_CB56C4: MemLdRfVar from_stack_1.global_96
  loc_CB56C7: NewIfNullPr tblDifunto
  loc_CB56CA: from_stack_1v = tblDifunto.FilaDifuGet()
  loc_CB56CF: LitStr "SELECT DetaSece, UntrPage * servceme.ImpoSece as ImpoSece, servceme.PeriInfo, servceme.CodiConc, concepto.TiafConc, servceme.AnioSece FROM servceme "
  loc_CB56D2: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servceme.PeriInfo"
  loc_CB56D5: ConcatStr
  loc_CB56D6: FStStrNoPop var_F0
  loc_CB56D9: LitStr " AND concepto.CodiConc = servceme.CodiConc"
  loc_CB56DC: ConcatStr
  loc_CB56DD: FStStrNoPop var_F4
  loc_CB56E0: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CB56E3: ConcatStr
  loc_CB56E4: FStStrNoPop var_F8
  loc_CB56E7: LitStr " WHERE servceme.PeriOrde = "
  loc_CB56EA: ConcatStr
  loc_CB56EB: FStStrNoPop var_FC
  loc_CB56EE: ImpAdLdI2 MemVar_D93036
  loc_CB56F1: CStrUI1
  loc_CB56F3: FStStrNoPop var_100
  loc_CB56F6: ConcatStr
  loc_CB56F7: FStStrNoPop var_104
  loc_CB56FA: LitStr " AND CodiSece = "
  loc_CB56FD: ConcatStr
  loc_CB56FE: FStStrNoPop var_108
  loc_CB5701: FLdPr Me
  loc_CB5704: MemLdI2 global_76
  loc_CB5707: CI4UI1
  loc_CB5708: CVarI4
  loc_CB570C: PopAdLdVar
  loc_CB570D: LitVarI4
  loc_CB5715: PopAdLdVar
  loc_CB5716: FLdPr Me
  loc_CB5719: VCallAd Control_ID_ServDifuFlex
  loc_CB571C: FStAdFunc var_88
  loc_CB571F: FLdPr var_88
  loc_CB5722: LateIdCallLdVar
  loc_CB572C: CStrVarTmp
  loc_CB572D: FStStrNoPop var_10C
  loc_CB5730: ConcatStr
  loc_CB5731: FStStrNoPop var_110
  loc_CB5734: LitStr " AND (CodiCeme = 0 OR "
  loc_CB5737: ConcatStr
  loc_CB5738: CVarStr var_16C
  loc_CB573B: LitStr " CodiCeme = "
  loc_CB573E: FLdRfVar var_118
  loc_CB5741: FLdPr Me
  loc_CB5744: MemLdRfVar from_stack_1.global_96
  loc_CB5747: NewIfNullPr tblDifunto
  loc_CB574A: from_stack_1v = tblDifunto.CodiCemeGet()
  loc_CB574F: ILdRf var_118
  loc_CB5752: ConcatStr
  loc_CB5753: FStStrNoPop var_11C
  loc_CB5756: LitStr ")"
  loc_CB5759: ConcatStr
  loc_CB575A: CVarStr var_14C
  loc_CB575D: LitVarStr var_13C, " CodiCeme >= 0)"
  loc_CB5762: FStVarCopyObj var_EC
  loc_CB5765: FLdRfVar var_EC
  loc_CB5768: ILdRf var_114
  loc_CB576B: CR8Str
  loc_CB576D: LitI2_Byte 0
  loc_CB576F: CR8I2
  loc_CB5770: EqR4
  loc_CB5771: CVarBoolI2 var_12C
  loc_CB5775: FLdRfVar var_15C
  loc_CB5778: ImpAdCallFPR4  = IIf(, , )
  loc_CB577D: FLdRfVar var_15C
  loc_CB5780: ConcatVar var_17C
  loc_CB5784: LitVarStr var_18C, " AND (CodiTise = 0 OR "
  loc_CB5789: ConcatVar var_19C
  loc_CB578D: LitStr " CodiTise = "
  loc_CB5790: FLdRfVar var_1A4
  loc_CB5793: FLdPr Me
  loc_CB5796: MemLdRfVar from_stack_1.global_96
  loc_CB5799: NewIfNullPr tblDifunto
  loc_CB579C: from_stack_1v = tblDifunto.CodiTiseGet()
  loc_CB57A1: ILdRf var_1A4
  loc_CB57A4: ConcatStr
  loc_CB57A5: FStStrNoPop var_1A8
  loc_CB57A8: LitStr ")"
  loc_CB57AB: ConcatStr
  loc_CB57AC: CVarStr var_1E8
  loc_CB57AF: LitVarStr var_1C8, " CodiTise >= 0)"
  loc_CB57B4: FStVarCopyObj var_1D8
  loc_CB57B7: FLdRfVar var_1D8
  loc_CB57BA: ILdRf var_1A0
  loc_CB57BD: CR8Str
  loc_CB57BF: LitI2_Byte 0
  loc_CB57C1: CR8I2
  loc_CB57C2: EqR4
  loc_CB57C3: CVarBoolI2 var_1B8
  loc_CB57C7: FLdRfVar var_1F8
  loc_CB57CA: ImpAdCallFPR4  = IIf(, , )
  loc_CB57CF: FLdRfVar var_1F8
  loc_CB57D2: ConcatVar var_208
  loc_CB57D6: LitVarStr var_218, " AND (FilaDifu = 0 OR "
  loc_CB57DB: ConcatVar var_228
  loc_CB57DF: LitStr " FilaDifu = "
  loc_CB57E2: FLdRfVar var_230
  loc_CB57E5: FLdPr Me
  loc_CB57E8: MemLdRfVar from_stack_1.global_96
  loc_CB57EB: NewIfNullPr tblDifunto
  loc_CB57EE: from_stack_1v = tblDifunto.FilaDifuGet()
  loc_CB57F3: ILdRf var_230
  loc_CB57F6: ConcatStr
  loc_CB57F7: FStStrNoPop var_234
  loc_CB57FA: LitStr ")"
  loc_CB57FD: ConcatStr
  loc_CB57FE: CVarStr var_274
  loc_CB5801: LitVarStr var_254, " FilaDifu >= 0)"
  loc_CB5806: FStVarCopyObj var_264
  loc_CB5809: FLdRfVar var_264
  loc_CB580C: ILdRf var_22C
  loc_CB580F: CR8Str
  loc_CB5811: LitI2_Byte 0
  loc_CB5813: CR8I2
  loc_CB5814: EqR4
  loc_CB5815: CVarBoolI2 var_244
  loc_CB5819: FLdRfVar var_284
  loc_CB581C: ImpAdCallFPR4  = IIf(, , )
  loc_CB5821: FLdRfVar var_284
  loc_CB5824: ConcatVar var_294
  loc_CB5828: LitVarStr var_2A4, " AND servceme.ParvSece = "
  loc_CB582D: ConcatVar var_2B4
  loc_CB5831: FLdRfVar var_2B8
  loc_CB5834: FLdPr Me
  loc_CB5837: MemLdRfVar from_stack_1.global_96
  loc_CB583A: NewIfNullPr tblDifunto
  loc_CB583D: from_stack_1v = tblDifunto.ParvDifuGet()
  loc_CB5842: FLdZeroAd var_2B8
  loc_CB5845: CVarStr var_2C8
  loc_CB5848: ConcatVar var_2D8
  loc_CB584C: LitVarStr var_2E8, " AND EmisSece = 'Normal'"
  loc_CB5851: ConcatVar var_2F8
  loc_CB5855: LitVarStr var_308, " ORDER BY CodiSece"
  loc_CB585A: ConcatVar var_318
  loc_CB585E: CStrVarVal var_31C
  loc_CB5862: FLdPr Me
  loc_CB5865: MemLdRfVar from_stack_1.global_52
  loc_CB5868: NewIfNullPr clsservceme
  loc_CB586B: Call clsservceme.RedefineRS(from_stack_1v)
  loc_CB5870: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_22C = "": var_230 = "": var_234 = ""
  loc_CB5899: FFree1Ad var_88
  loc_CB589C: FFreeVar var_98 = "": var_12C = "": var_EC = "": var_14C = "": var_16C = "": var_15C = "": var_17C = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_19C = "": var_1F8 = "": var_208 = "": var_244 = "": var_264 = "": var_274 = "": var_228 = "": var_284 = "": var_294 = "": var_2B4 = "": var_2C8 = "": var_2D8 = "": var_2F8 = ""
  loc_CB58CF: FLdRfVar var_320
  loc_CB58D2: FLdPr Me
  loc_CB58D5: MemLdRfVar from_stack_1.global_52
  loc_CB58D8: NewIfNullPr clsservceme
  loc_CB58DB: from_stack_1 = clsservceme.RecordCount
  loc_CB58E0: ILdRf var_320
  loc_CB58E3: LitI4 0
  loc_CB58E8: GtI4
  loc_CB58E9: BranchF loc_CB710C
  loc_CB58EC: FLdRfVar var_322
  loc_CB58EF: FLdPr Me
  loc_CB58F2: MemLdRfVar from_stack_1.global_52
  loc_CB58F5: NewIfNullPr clsservceme
  loc_CB58F8: from_stack_1 = clsservceme.PeriInfo
  loc_CB58FD: FLdI2 var_322
  loc_CB5900: ImpAdLdI2 MemVar_D93034
  loc_CB5903: NeI2
  loc_CB5904: BranchF loc_CB5AFE
  loc_CB5907: FLdPr Me
  loc_CB590A: MemLdI2 global_76
  loc_CB590D: CI4UI1
  loc_CB590E: CVarI4
  loc_CB5912: PopAdLdVar
  loc_CB5913: LitVarI4
  loc_CB591B: PopAdLdVar
  loc_CB591C: LitVarStr var_12C, vbNullString
  loc_CB5921: PopAdLdVar
  loc_CB5922: FLdPr Me
  loc_CB5925: VCallAd Control_ID_ServDifuFlex
  loc_CB5928: FStAdFunc var_88
  loc_CB592B: FLdPr var_88
  loc_CB592E: LateIdCallSt
  loc_CB5936: FFree1Ad var_88
  loc_CB5939: FLdPr Me
  loc_CB593C: MemLdI2 global_76
  loc_CB593F: CI4UI1
  loc_CB5940: CVarI4
  loc_CB5944: PopAdLdVar
  loc_CB5945: LitVarI4
  loc_CB594D: PopAdLdVar
  loc_CB594E: LitVarStr var_12C, vbNullString
  loc_CB5953: PopAdLdVar
  loc_CB5954: FLdPr Me
  loc_CB5957: VCallAd Control_ID_ServDifuFlex
  loc_CB595A: FStAdFunc var_88
  loc_CB595D: FLdPr var_88
  loc_CB5960: LateIdCallSt
  loc_CB5968: FFree1Ad var_88
  loc_CB596B: FLdPr Me
  loc_CB596E: MemLdI2 global_76
  loc_CB5971: CI4UI1
  loc_CB5972: CVarI4
  loc_CB5976: PopAdLdVar
  loc_CB5977: LitVarI4
  loc_CB597F: PopAdLdVar
  loc_CB5980: LitVarStr var_12C, vbNullString
  loc_CB5985: PopAdLdVar
  loc_CB5986: FLdPr Me
  loc_CB5989: VCallAd Control_ID_ServDifuFlex
  loc_CB598C: FStAdFunc var_88
  loc_CB598F: FLdPr var_88
  loc_CB5992: LateIdCallSt
  loc_CB599A: FFree1Ad var_88
  loc_CB599D: FLdPr Me
  loc_CB59A0: MemLdI2 global_76
  loc_CB59A3: CI4UI1
  loc_CB59A4: CVarI4
  loc_CB59A8: PopAdLdVar
  loc_CB59A9: LitVarI4
  loc_CB59B1: PopAdLdVar
  loc_CB59B2: LitVarStr var_12C, vbNullString
  loc_CB59B7: PopAdLdVar
  loc_CB59B8: FLdPr Me
  loc_CB59BB: VCallAd Control_ID_ServDifuFlex
  loc_CB59BE: FStAdFunc var_88
  loc_CB59C1: FLdPr var_88
  loc_CB59C4: LateIdCallSt
  loc_CB59CC: FFree1Ad var_88
  loc_CB59CF: FLdPr Me
  loc_CB59D2: MemLdI2 global_76
  loc_CB59D5: CI4UI1
  loc_CB59D6: CVarI4
  loc_CB59DA: PopAdLdVar
  loc_CB59DB: LitVarI4
  loc_CB59E3: PopAdLdVar
  loc_CB59E4: LitVarStr var_12C, vbNullString
  loc_CB59E9: PopAdLdVar
  loc_CB59EA: FLdPr Me
  loc_CB59ED: VCallAd Control_ID_ServDifuFlex
  loc_CB59F0: FStAdFunc var_88
  loc_CB59F3: FLdPr var_88
  loc_CB59F6: LateIdCallSt
  loc_CB59FE: FFree1Ad var_88
  loc_CB5A01: FLdPr Me
  loc_CB5A04: MemLdI2 global_76
  loc_CB5A07: CI4UI1
  loc_CB5A08: CVarI4
  loc_CB5A0C: PopAdLdVar
  loc_CB5A0D: LitVarI4
  loc_CB5A15: PopAdLdVar
  loc_CB5A16: LitVarStr var_12C, vbNullString
  loc_CB5A1B: PopAdLdVar
  loc_CB5A1C: FLdPr Me
  loc_CB5A1F: VCallAd Control_ID_ServDifuFlex
  loc_CB5A22: FStAdFunc var_88
  loc_CB5A25: FLdPr var_88
  loc_CB5A28: LateIdCallSt
  loc_CB5A30: FFree1Ad var_88
  loc_CB5A33: FLdPr Me
  loc_CB5A36: MemLdI2 global_76
  loc_CB5A39: CI4UI1
  loc_CB5A3A: CVarI4
  loc_CB5A3E: PopAdLdVar
  loc_CB5A3F: LitVarI4
  loc_CB5A47: PopAdLdVar
  loc_CB5A48: LitVarStr var_12C, vbNullString
  loc_CB5A4D: PopAdLdVar
  loc_CB5A4E: FLdPr Me
  loc_CB5A51: VCallAd Control_ID_ServDifuFlex
  loc_CB5A54: FStAdFunc var_88
  loc_CB5A57: FLdPr var_88
  loc_CB5A5A: LateIdCallSt
  loc_CB5A62: FFree1Ad var_88
  loc_CB5A65: FLdPr Me
  loc_CB5A68: MemLdI2 global_76
  loc_CB5A6B: CI4UI1
  loc_CB5A6C: CVarI4
  loc_CB5A70: PopAdLdVar
  loc_CB5A71: LitVarI4
  loc_CB5A79: PopAdLdVar
  loc_CB5A7A: LitVarStr var_12C, vbNullString
  loc_CB5A7F: PopAdLdVar
  loc_CB5A80: FLdPr Me
  loc_CB5A83: VCallAd Control_ID_ServDifuFlex
  loc_CB5A86: FStAdFunc var_88
  loc_CB5A89: FLdPr var_88
  loc_CB5A8C: LateIdCallSt
  loc_CB5A94: FFree1Ad var_88
  loc_CB5A97: FLdPr Me
  loc_CB5A9A: MemLdI2 global_76
  loc_CB5A9D: CI4UI1
  loc_CB5A9E: CVarI4
  loc_CB5AA2: PopAdLdVar
  loc_CB5AA3: LitVarI4
  loc_CB5AAB: PopAdLdVar
  loc_CB5AAC: LitVarStr var_12C, vbNullString
  loc_CB5AB1: PopAdLdVar
  loc_CB5AB2: FLdPr Me
  loc_CB5AB5: VCallAd Control_ID_ServDifuFlex
  loc_CB5AB8: FStAdFunc var_88
  loc_CB5ABB: FLdPr var_88
  loc_CB5ABE: LateIdCallSt
  loc_CB5AC6: FFree1Ad var_88
  loc_CB5AC9: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CB5ACC: FLdPr Me
  loc_CB5ACF: MemStStrCopy
  loc_CB5AD3: FLdPr Me
  loc_CB5AD6: MemLdStr global_72
  loc_CB5AD9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB5ADE: FLdPr Me
  loc_CB5AE1: VCallAd Control_ID_ServDifuFlex
  loc_CB5AE4: FStAdFunc var_88
  loc_CB5AE7: FLdPr var_88
  loc_CB5AEA: LateIdCall
  loc_CB5AF2: FFree1Ad var_88
  loc_CB5AF5: LitI2_Byte &HFF
  loc_CB5AF7: IStI2 Cancel
  loc_CB5AFA: ExitProcHresult
  loc_CB5AFB: Branch loc_CB7109
  loc_CB5AFE: FLdRfVar var_322
  loc_CB5B01: FLdPr Me
  loc_CB5B04: MemLdRfVar from_stack_1.global_52
  loc_CB5B07: NewIfNullPr clsservceme
  loc_CB5B0A: from_stack_1 = clsservceme.PeriInfo
  loc_CB5B0F: FLdRfVar var_F0
  loc_CB5B12: FLdPr Me
  loc_CB5B15: MemLdRfVar from_stack_1.global_52
  loc_CB5B18: NewIfNullPr clsservceme
  loc_CB5B1B: from_stack_1 = clsservceme.CodiConc
  loc_CB5B20: ILdRf var_F0
  loc_CB5B23: FLdI2 var_322
  loc_CB5B26: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CB5B2B: FStStrNoPop var_F4
  loc_CB5B2E: LitStr vbNullString
  loc_CB5B31: EqStr
  loc_CB5B33: FFreeStr var_F0 = ""
  loc_CB5B3A: BranchF loc_CB5B9A
  loc_CB5B3D: LitStr "El concepto: "
  loc_CB5B40: FLdRfVar var_F0
  loc_CB5B43: FLdPr Me
  loc_CB5B46: MemLdRfVar from_stack_1.global_52
  loc_CB5B49: NewIfNullPr clsservceme
  loc_CB5B4C: from_stack_1 = clsservceme.CodiConc
  loc_CB5B51: ILdRf var_F0
  loc_CB5B54: ConcatStr
  loc_CB5B55: FStStrNoPop var_F4
  loc_CB5B58: LitStr " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CB5B5B: ConcatStr
  loc_CB5B5C: FStStrNoPop var_F8
  loc_CB5B5F: FLdPr Me
  loc_CB5B62: MemStStrCopy
  loc_CB5B66: FFreeStr var_F0 = "": var_F4 = ""
  loc_CB5B6F: FLdPr Me
  loc_CB5B72: MemLdStr global_72
  loc_CB5B75: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB5B7A: FLdPr Me
  loc_CB5B7D: VCallAd Control_ID_ServDifuFlex
  loc_CB5B80: FStAdFunc var_88
  loc_CB5B83: FLdPr var_88
  loc_CB5B86: LateIdCall
  loc_CB5B8E: FFree1Ad var_88
  loc_CB5B91: LitI2_Byte &HFF
  loc_CB5B93: IStI2 Cancel
  loc_CB5B96: ExitProcHresult
  loc_CB5B97: Branch loc_CB7109
  loc_CB5B9A: FLdRfVar var_322
  loc_CB5B9D: FLdPr Me
  loc_CB5BA0: MemLdRfVar from_stack_1.global_52
  loc_CB5BA3: NewIfNullPr clsservceme
  loc_CB5BA6: from_stack_1 = clsservceme.TiafConc
  loc_CB5BAB: FLdUI1
  loc_CB5BAF: CI2UI1
  loc_CB5BB1: LitI2_Byte 0
  loc_CB5BB3: EqI2
  loc_CB5BB4: BranchF loc_CB5C14
  loc_CB5BB7: LitStr "El concepto: "
  loc_CB5BBA: FLdRfVar var_F0
  loc_CB5BBD: FLdPr Me
  loc_CB5BC0: MemLdRfVar from_stack_1.global_52
  loc_CB5BC3: NewIfNullPr clsservceme
  loc_CB5BC6: from_stack_1 = clsservceme.CodiConc
  loc_CB5BCB: ILdRf var_F0
  loc_CB5BCE: ConcatStr
  loc_CB5BCF: FStStrNoPop var_F4
  loc_CB5BD2: LitStr " No tiene asociado ningún tipo de movimiento. No se emite el boleto."
  loc_CB5BD5: ConcatStr
  loc_CB5BD6: FStStrNoPop var_F8
  loc_CB5BD9: FLdPr Me
  loc_CB5BDC: MemStStrCopy
  loc_CB5BE0: FFreeStr var_F0 = "": var_F4 = ""
  loc_CB5BE9: FLdPr Me
  loc_CB5BEC: MemLdStr global_72
  loc_CB5BEF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB5BF4: FLdPr Me
  loc_CB5BF7: VCallAd Control_ID_ServDifuFlex
  loc_CB5BFA: FStAdFunc var_88
  loc_CB5BFD: FLdPr var_88
  loc_CB5C00: LateIdCall
  loc_CB5C08: FFree1Ad var_88
  loc_CB5C0B: LitI2_Byte &HFF
  loc_CB5C0D: IStI2 Cancel
  loc_CB5C10: ExitProcHresult
  loc_CB5C11: Branch loc_CB7109
  loc_CB5C14: FLdPr Me
  loc_CB5C17: MemLdI2 global_76
  loc_CB5C1A: CI4UI1
  loc_CB5C1B: CVarI4
  loc_CB5C1F: PopAdLdVar
  loc_CB5C20: LitVarI4
  loc_CB5C28: PopAdLdVar
  loc_CB5C29: LitVarStr var_12C, "0"
  loc_CB5C2E: PopAdLdVar
  loc_CB5C2F: FLdPr Me
  loc_CB5C32: VCallAd Control_ID_ServDifuFlex
  loc_CB5C35: FStAdFunc var_88
  loc_CB5C38: FLdPr var_88
  loc_CB5C3B: LateIdCallSt
  loc_CB5C43: FFree1Ad var_88
  loc_CB5C46: FLdPr Me
  loc_CB5C49: MemLdI2 global_76
  loc_CB5C4C: CI4UI1
  loc_CB5C4D: CVarI4
  loc_CB5C51: PopAdLdVar
  loc_CB5C52: LitVarI4
  loc_CB5C5A: PopAdLdVar
  loc_CB5C5B: FLdRfVar var_F0
  loc_CB5C5E: FLdPr Me
  loc_CB5C61: MemLdRfVar from_stack_1.global_52
  loc_CB5C64: NewIfNullPr clsservceme
  loc_CB5C67: from_stack_1 = clsservceme.DetaSece
  loc_CB5C6C: FLdZeroAd var_F0
  loc_CB5C6F: CVarStr var_98
  loc_CB5C72: PopAdLdVar
  loc_CB5C73: FLdPr Me
  loc_CB5C76: VCallAd Control_ID_ServDifuFlex
  loc_CB5C79: FStAdFunc var_88
  loc_CB5C7C: FLdPr var_88
  loc_CB5C7F: LateIdCallSt
  loc_CB5C87: FFree1Ad var_88
  loc_CB5C8A: FFree1Var var_98 = ""
  loc_CB5C8D: FLdPr Me
  loc_CB5C90: MemLdI2 global_76
  loc_CB5C93: CI4UI1
  loc_CB5C94: CVarI4
  loc_CB5C98: PopAdLdVar
  loc_CB5C99: LitVarI4
  loc_CB5CA1: PopAdLdVar
  loc_CB5CA2: FLdPr Me
  loc_CB5CA5: VCallAd Control_ID_ServDifuFlex
  loc_CB5CA8: FStAdFunc var_88
  loc_CB5CAB: FLdPr var_88
  loc_CB5CAE: LateIdCallLdVar
  loc_CB5CB8: CStrVarTmp
  loc_CB5CB9: FStStrNoPop var_F0
  loc_CB5CBC: LitStr "0"
  loc_CB5CBF: EqStr
  loc_CB5CC1: FFree1Str var_F0
  loc_CB5CC4: FFree1Ad var_88
  loc_CB5CC7: FFree1Var var_98 = ""
  loc_CB5CCA: BranchF loc_CB5D44
  loc_CB5CCD: FLdRfVar var_32C
  loc_CB5CD0: FLdPr Me
  loc_CB5CD3: MemLdRfVar from_stack_1.global_52
  loc_CB5CD6: NewIfNullPr clsservceme
  loc_CB5CD9: from_stack_1 = clsservceme.ImpoSece
  loc_CB5CDE: FLdPr Me
  loc_CB5CE1: MemLdI2 global_76
  loc_CB5CE4: CI4UI1
  loc_CB5CE5: CVarI4
  loc_CB5CE9: PopAdLdVar
  loc_CB5CEA: LitVarI4
  loc_CB5CF2: PopAdLdVar
  loc_CB5CF3: LitI4 1
  loc_CB5CF8: LitI4 1
  loc_CB5CFD: LitVarStr var_BC, "0.00"
  loc_CB5D02: FStVarCopyObj var_EC
  loc_CB5D05: FLdRfVar var_EC
  loc_CB5D08: FLdFPR8 var_32C
  loc_CB5D0B: CVarR8
  loc_CB5D0F: FLdRfVar var_14C
  loc_CB5D12: ImpAdCallFPR4  = Format(, )
  loc_CB5D17: FLdRfVar var_14C
  loc_CB5D1A: CStrVarTmp
  loc_CB5D1B: CVarStr var_15C
  loc_CB5D1E: PopAdLdVar
  loc_CB5D1F: FLdPr Me
  loc_CB5D22: VCallAd Control_ID_ServDifuFlex
  loc_CB5D25: FStAdFunc var_88
  loc_CB5D28: FLdPr var_88
  loc_CB5D2B: LateIdCallSt
  loc_CB5D33: FFree1Ad var_88
  loc_CB5D36: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB5D41: Branch loc_CB5F50
  loc_CB5D44: FLdPr Me
  loc_CB5D47: MemLdI2 global_76
  loc_CB5D4A: CI4UI1
  loc_CB5D4B: CVarI4
  loc_CB5D4F: PopAdLdVar
  loc_CB5D50: LitVarI4
  loc_CB5D58: PopAdLdVar
  loc_CB5D59: FLdPr Me
  loc_CB5D5C: VCallAd Control_ID_ServDifuFlex
  loc_CB5D5F: FStAdFunc var_88
  loc_CB5D62: FLdPr var_88
  loc_CB5D65: LateIdCallLdVar
  loc_CB5D6F: CStrVarTmp
  loc_CB5D70: FStStrNoPop var_F0
  loc_CB5D73: LitStr "1"
  loc_CB5D76: EqStr
  loc_CB5D78: FFree1Str var_F0
  loc_CB5D7B: FFree1Ad var_88
  loc_CB5D7E: FFree1Var var_98 = ""
  loc_CB5D81: BranchF loc_CB5F50
  loc_CB5D84: FLdPr Me
  loc_CB5D87: MemLdI2 global_76
  loc_CB5D8A: CI4UI1
  loc_CB5D8B: CVarI4
  loc_CB5D8F: PopAdLdVar
  loc_CB5D90: LitVarI4
  loc_CB5D98: PopAdLdVar
  loc_CB5D99: FLdPr Me
  loc_CB5D9C: VCallAd Control_ID_ServDifuFlex
  loc_CB5D9F: FStAdFunc var_88
  loc_CB5DA2: FLdPr var_88
  loc_CB5DA5: LateIdCallLdVar
  loc_CB5DAF: CStrVarTmp
  loc_CB5DB0: CVarStr var_EC
  loc_CB5DB3: ImpAdCallI2 IsNumeric()
  loc_CB5DB8: FLdPr Me
  loc_CB5DBB: MemLdI2 global_76
  loc_CB5DBE: CI4UI1
  loc_CB5DBF: CVarI4
  loc_CB5DC3: PopAdLdVar
  loc_CB5DC4: LitVarI4
  loc_CB5DCC: PopAdLdVar
  loc_CB5DCD: FLdPr Me
  loc_CB5DD0: VCallAd Control_ID_ServDifuFlex
  loc_CB5DD3: FStAdFunc var_330
  loc_CB5DD6: FLdPr var_330
  loc_CB5DD9: LateIdCallLdVar
  loc_CB5DE3: CStrVarTmp
  loc_CB5DE4: CVarStr var_15C
  loc_CB5DE7: ImpAdCallI2 IsNumeric()
  loc_CB5DEC: AndI4
  loc_CB5DED: FFreeAd var_88 = ""
  loc_CB5DF4: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB5DFF: BranchF loc_CB5EEC
  loc_CB5E02: FLdPr Me
  loc_CB5E05: MemLdI2 global_76
  loc_CB5E08: CI4UI1
  loc_CB5E09: CVarI4
  loc_CB5E0D: PopAdLdVar
  loc_CB5E0E: LitVarI4
  loc_CB5E16: PopAdLdVar
  loc_CB5E17: FLdPr Me
  loc_CB5E1A: VCallAd Control_ID_ServDifuFlex
  loc_CB5E1D: FStAdFunc var_88
  loc_CB5E20: FLdPr var_88
  loc_CB5E23: LateIdCallLdVar
  loc_CB5E2D: CStrVarTmp
  loc_CB5E2E: FStStrNoPop var_F0
  loc_CB5E31: CR8Str
  loc_CB5E33: LitI2_Byte 0
  loc_CB5E35: CR8I2
  loc_CB5E36: EqR4
  loc_CB5E37: FLdPr Me
  loc_CB5E3A: MemLdI2 global_76
  loc_CB5E3D: CI4UI1
  loc_CB5E3E: CVarI4
  loc_CB5E42: PopAdLdVar
  loc_CB5E43: LitVarI4
  loc_CB5E4B: PopAdLdVar
  loc_CB5E4C: FLdPr Me
  loc_CB5E4F: VCallAd Control_ID_ServDifuFlex
  loc_CB5E52: FStAdFunc var_330
  loc_CB5E55: FLdPr var_330
  loc_CB5E58: LateIdCallLdVar
  loc_CB5E62: CStrVarTmp
  loc_CB5E63: FStStrNoPop var_F4
  loc_CB5E66: CR8Str
  loc_CB5E68: LitI2_Byte 0
  loc_CB5E6A: CR8I2
  loc_CB5E6B: EqR4
  loc_CB5E6C: AndI4
  loc_CB5E6D: FFreeStr var_F0 = ""
  loc_CB5E74: FFreeAd var_88 = ""
  loc_CB5E7B: FFreeVar var_98 = ""
  loc_CB5E82: BranchF loc_CB5EE9
  loc_CB5E85: FLdPr Me
  loc_CB5E88: MemLdI2 global_76
  loc_CB5E8B: CI4UI1
  loc_CB5E8C: CVarI4
  loc_CB5E90: PopAdLdVar
  loc_CB5E91: LitVarI4
  loc_CB5E99: PopAdLdVar
  loc_CB5E9A: LitVarStr var_12C, vbNullString
  loc_CB5E9F: PopAdLdVar
  loc_CB5EA0: FLdPr Me
  loc_CB5EA3: VCallAd Control_ID_ServDifuFlex
  loc_CB5EA6: FStAdFunc var_88
  loc_CB5EA9: FLdPr var_88
  loc_CB5EAC: LateIdCallSt
  loc_CB5EB4: FFree1Ad var_88
  loc_CB5EB7: FLdPr Me
  loc_CB5EBA: MemLdI2 global_76
  loc_CB5EBD: CI4UI1
  loc_CB5EBE: CVarI4
  loc_CB5EC2: PopAdLdVar
  loc_CB5EC3: LitVarI4
  loc_CB5ECB: PopAdLdVar
  loc_CB5ECC: LitVarStr var_12C, vbNullString
  loc_CB5ED1: PopAdLdVar
  loc_CB5ED2: FLdPr Me
  loc_CB5ED5: VCallAd Control_ID_ServDifuFlex
  loc_CB5ED8: FStAdFunc var_88
  loc_CB5EDB: FLdPr var_88
  loc_CB5EDE: LateIdCallSt
  loc_CB5EE6: FFree1Ad var_88
  loc_CB5EE9: Branch loc_CB5F50
  loc_CB5EEC: FLdPr Me
  loc_CB5EEF: MemLdI2 global_76
  loc_CB5EF2: CI4UI1
  loc_CB5EF3: CVarI4
  loc_CB5EF7: PopAdLdVar
  loc_CB5EF8: LitVarI4
  loc_CB5F00: PopAdLdVar
  loc_CB5F01: LitVarStr var_12C, vbNullString
  loc_CB5F06: PopAdLdVar
  loc_CB5F07: FLdPr Me
  loc_CB5F0A: VCallAd Control_ID_ServDifuFlex
  loc_CB5F0D: FStAdFunc var_88
  loc_CB5F10: FLdPr var_88
  loc_CB5F13: LateIdCallSt
  loc_CB5F1B: FFree1Ad var_88
  loc_CB5F1E: FLdPr Me
  loc_CB5F21: MemLdI2 global_76
  loc_CB5F24: CI4UI1
  loc_CB5F25: CVarI4
  loc_CB5F29: PopAdLdVar
  loc_CB5F2A: LitVarI4
  loc_CB5F32: PopAdLdVar
  loc_CB5F33: LitVarStr var_12C, vbNullString
  loc_CB5F38: PopAdLdVar
  loc_CB5F39: FLdPr Me
  loc_CB5F3C: VCallAd Control_ID_ServDifuFlex
  loc_CB5F3F: FStAdFunc var_88
  loc_CB5F42: FLdPr var_88
  loc_CB5F45: LateIdCallSt
  loc_CB5F4D: FFree1Ad var_88
  loc_CB5F50: FLdPr Me
  loc_CB5F53: MemLdI2 global_76
  loc_CB5F56: CI4UI1
  loc_CB5F57: CVarI4
  loc_CB5F5B: PopAdLdVar
  loc_CB5F5C: LitVarI4
  loc_CB5F64: PopAdLdVar
  loc_CB5F65: FLdPr Me
  loc_CB5F68: VCallAd Control_ID_ServDifuFlex
  loc_CB5F6B: FStAdFunc var_88
  loc_CB5F6E: FLdPr var_88
  loc_CB5F71: LateIdCallLdVar
  loc_CB5F7B: CStrVarTmp
  loc_CB5F7C: CVarStr var_EC
  loc_CB5F7F: ImpAdCallI2 IsNumeric()
  loc_CB5F84: FLdPr Me
  loc_CB5F87: MemLdI2 global_76
  loc_CB5F8A: CI4UI1
  loc_CB5F8B: CVarI4
  loc_CB5F8F: PopAdLdVar
  loc_CB5F90: LitVarI4
  loc_CB5F98: PopAdLdVar
  loc_CB5F99: FLdPr Me
  loc_CB5F9C: VCallAd Control_ID_ServDifuFlex
  loc_CB5F9F: FStAdFunc var_330
  loc_CB5FA2: FLdPr var_330
  loc_CB5FA5: LateIdCallLdVar
  loc_CB5FAF: CStrVarTmp
  loc_CB5FB0: CVarStr var_15C
  loc_CB5FB3: ImpAdCallI2 IsNumeric()
  loc_CB5FB8: AndI4
  loc_CB5FB9: FFreeAd var_88 = ""
  loc_CB5FC0: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB5FCB: BranchF loc_CB60AF
  loc_CB5FCE: FLdPr Me
  loc_CB5FD1: MemLdI2 global_76
  loc_CB5FD4: CI4UI1
  loc_CB5FD5: CVarI4
  loc_CB5FD9: PopAdLdVar
  loc_CB5FDA: LitVarI4
  loc_CB5FE2: PopAdLdVar
  loc_CB5FE3: FLdPr Me
  loc_CB5FE6: VCallAd Control_ID_ServDifuFlex
  loc_CB5FE9: FStAdFunc var_88
  loc_CB5FEC: FLdPr var_88
  loc_CB5FEF: LateIdCallLdVar
  loc_CB5FF9: PopAd
  loc_CB5FFB: FLdPr Me
  loc_CB5FFE: MemLdI2 global_76
  loc_CB6001: CI4UI1
  loc_CB6002: CVarI4
  loc_CB6006: PopAdLdVar
  loc_CB6007: LitVarI4
  loc_CB600F: PopAdLdVar
  loc_CB6010: FLdPr Me
  loc_CB6013: VCallAd Control_ID_ServDifuFlex
  loc_CB6016: FStAdFunc var_330
  loc_CB6019: FLdPr var_330
  loc_CB601C: LateIdCallLdVar
  loc_CB6026: PopAd
  loc_CB6028: FLdPr Me
  loc_CB602B: MemLdI2 global_76
  loc_CB602E: CI4UI1
  loc_CB602F: CVarI4
  loc_CB6033: PopAdLdVar
  loc_CB6034: LitVarI4
  loc_CB603C: PopAdLdVar
  loc_CB603D: LitI4 1
  loc_CB6042: LitI4 1
  loc_CB6047: LitVarStr var_218, "0.00"
  loc_CB604C: FStVarCopyObj var_15C
  loc_CB604F: FLdRfVar var_15C
  loc_CB6052: FLdRfVar var_98
  loc_CB6055: CStrVarTmp
  loc_CB6056: FStStrNoPop var_F0
  loc_CB6059: CR8Str
  loc_CB605B: FLdRfVar var_EC
  loc_CB605E: CStrVarTmp
  loc_CB605F: FStStrNoPop var_F4
  loc_CB6062: CR8Str
  loc_CB6064: MulR8
  loc_CB6065: CVarR8
  loc_CB6069: FLdRfVar var_16C
  loc_CB606C: ImpAdCallFPR4  = Format(, )
  loc_CB6071: FLdRfVar var_16C
  loc_CB6074: CStrVarTmp
  loc_CB6075: CVarStr var_17C
  loc_CB6078: PopAdLdVar
  loc_CB6079: FLdPr Me
  loc_CB607C: VCallAd Control_ID_ServDifuFlex
  loc_CB607F: FStAdFunc var_334
  loc_CB6082: FLdPr var_334
  loc_CB6085: LateIdCallSt
  loc_CB608D: FFreeStr var_F0 = ""
  loc_CB6094: FFreeAd var_88 = "": var_330 = ""
  loc_CB609D: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_CB60AC: Branch loc_CB618F
  loc_CB60AF: FLdPr Me
  loc_CB60B2: MemLdI2 global_76
  loc_CB60B5: CI4UI1
  loc_CB60B6: CVarI4
  loc_CB60BA: PopAdLdVar
  loc_CB60BB: LitVarI4
  loc_CB60C3: PopAdLdVar
  loc_CB60C4: FLdPr Me
  loc_CB60C7: VCallAd Control_ID_ServDifuFlex
  loc_CB60CA: FStAdFunc var_88
  loc_CB60CD: FLdPr var_88
  loc_CB60D0: LateIdCallLdVar
  loc_CB60DA: CStrVarTmp
  loc_CB60DB: CVarStr var_EC
  loc_CB60DE: ImpAdCallI2 IsNumeric()
  loc_CB60E3: FFree1Ad var_88
  loc_CB60E6: FFreeVar var_98 = ""
  loc_CB60ED: BranchF loc_CB618F
  loc_CB60F0: FLdPr Me
  loc_CB60F3: MemLdI2 global_76
  loc_CB60F6: CI4UI1
  loc_CB60F7: CVarI4
  loc_CB60FB: PopAdLdVar
  loc_CB60FC: LitVarI4
  loc_CB6104: PopAdLdVar
  loc_CB6105: FLdPr Me
  loc_CB6108: VCallAd Control_ID_ServDifuFlex
  loc_CB610B: FStAdFunc var_88
  loc_CB610E: FLdPr var_88
  loc_CB6111: LateIdCallLdVar
  loc_CB611B: PopAd
  loc_CB611D: FLdPr Me
  loc_CB6120: MemLdI2 global_76
  loc_CB6123: CI4UI1
  loc_CB6124: CVarI4
  loc_CB6128: PopAdLdVar
  loc_CB6129: LitVarI4
  loc_CB6131: PopAdLdVar
  loc_CB6132: LitI4 1
  loc_CB6137: LitI4 1
  loc_CB613C: LitVarStr var_13C, "0.00"
  loc_CB6141: FStVarCopyObj var_14C
  loc_CB6144: FLdRfVar var_14C
  loc_CB6147: FLdRfVar var_98
  loc_CB614A: CStrVarTmp
  loc_CB614B: FStStrNoPop var_F0
  loc_CB614E: CR8Str
  loc_CB6150: CVarR8
  loc_CB6154: FLdRfVar var_15C
  loc_CB6157: ImpAdCallFPR4  = Format(, )
  loc_CB615C: FLdRfVar var_15C
  loc_CB615F: CStrVarTmp
  loc_CB6160: CVarStr var_16C
  loc_CB6163: PopAdLdVar
  loc_CB6164: FLdPr Me
  loc_CB6167: VCallAd Control_ID_ServDifuFlex
  loc_CB616A: FStAdFunc var_330
  loc_CB616D: FLdPr var_330
  loc_CB6170: LateIdCallSt
  loc_CB6178: FFree1Str var_F0
  loc_CB617B: FFreeAd var_88 = ""
  loc_CB6182: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = ""
  loc_CB618F: FLdPr Me
  loc_CB6192: MemLdI2 global_76
  loc_CB6195: CI4UI1
  loc_CB6196: CVarI4
  loc_CB619A: PopAdLdVar
  loc_CB619B: LitVarI4
  loc_CB61A3: PopAdLdVar
  loc_CB61A4: FLdRfVar var_98
  loc_CB61A7: FLdRfVar var_334
  loc_CB61AA: LitVarStr var_AC, "PeriInfo"
  loc_CB61AF: PopAdLdVar
  loc_CB61B0: FLdRfVar var_330
  loc_CB61B3: FLdRfVar var_88
  loc_CB61B6: FLdPr Me
  loc_CB61B9: MemLdRfVar from_stack_1.global_52
  loc_CB61BC: NewIfNullPr clsservceme
  loc_CB61BF: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB61C4: FLdPr var_88
  loc_CB61C7:  = Me.Fields
  loc_CB61CC: FLdPr var_330
  loc_CB61CF: from_stack_2 = Me.Item(from_stack_1)
  loc_CB61D4: FLdPr var_334
  loc_CB61D7:  = Me.Value
  loc_CB61DC: FLdRfVar var_98
  loc_CB61DF: CStrVarTmp
  loc_CB61E0: CVarStr var_EC
  loc_CB61E3: PopAdLdVar
  loc_CB61E4: FLdPr Me
  loc_CB61E7: VCallAd Control_ID_ServDifuFlex
  loc_CB61EA: FStAdFunc var_338
  loc_CB61ED: FLdPr var_338
  loc_CB61F0: LateIdCallSt
  loc_CB61F8: FFreeAd var_88 = "": var_330 = "": var_334 = ""
  loc_CB6203: FFreeVar var_98 = ""
  loc_CB620A: FLdPr Me
  loc_CB620D: MemLdI2 global_76
  loc_CB6210: CI4UI1
  loc_CB6211: CVarI4
  loc_CB6215: PopAdLdVar
  loc_CB6216: LitVarI4
  loc_CB621E: PopAdLdVar
  loc_CB621F: FLdRfVar var_98
  loc_CB6222: FLdRfVar var_334
  loc_CB6225: LitVarStr var_AC, "CodiConc"
  loc_CB622A: PopAdLdVar
  loc_CB622B: FLdRfVar var_330
  loc_CB622E: FLdRfVar var_88
  loc_CB6231: FLdPr Me
  loc_CB6234: MemLdRfVar from_stack_1.global_52
  loc_CB6237: NewIfNullPr clsservceme
  loc_CB623A: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB623F: FLdPr var_88
  loc_CB6242:  = Me.Fields
  loc_CB6247: FLdPr var_330
  loc_CB624A: from_stack_2 = Me.Item(from_stack_1)
  loc_CB624F: FLdPr var_334
  loc_CB6252:  = Me.Value
  loc_CB6257: FLdRfVar var_98
  loc_CB625A: CStrVarTmp
  loc_CB625B: CVarStr var_EC
  loc_CB625E: PopAdLdVar
  loc_CB625F: FLdPr Me
  loc_CB6262: VCallAd Control_ID_ServDifuFlex
  loc_CB6265: FStAdFunc var_338
  loc_CB6268: FLdPr var_338
  loc_CB626B: LateIdCallSt
  loc_CB6273: FFreeAd var_88 = "": var_330 = "": var_334 = ""
  loc_CB627E: FFreeVar var_98 = ""
  loc_CB6285: FLdPr Me
  loc_CB6288: MemLdI2 global_76
  loc_CB628B: CI4UI1
  loc_CB628C: CVarI4
  loc_CB6290: PopAdLdVar
  loc_CB6291: LitVarI4
  loc_CB6299: PopAdLdVar
  loc_CB629A: FLdRfVar var_98
  loc_CB629D: FLdRfVar var_334
  loc_CB62A0: LitVarStr var_AC, "TiafConc"
  loc_CB62A5: PopAdLdVar
  loc_CB62A6: FLdRfVar var_330
  loc_CB62A9: FLdRfVar var_88
  loc_CB62AC: FLdPr Me
  loc_CB62AF: MemLdRfVar from_stack_1.global_52
  loc_CB62B2: NewIfNullPr clsservceme
  loc_CB62B5: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB62BA: FLdPr var_88
  loc_CB62BD:  = Me.Fields
  loc_CB62C2: FLdPr var_330
  loc_CB62C5: from_stack_2 = Me.Item(from_stack_1)
  loc_CB62CA: FLdPr var_334
  loc_CB62CD:  = Me.Value
  loc_CB62D2: FLdRfVar var_98
  loc_CB62D5: CStrVarTmp
  loc_CB62D6: CVarStr var_EC
  loc_CB62D9: PopAdLdVar
  loc_CB62DA: FLdPr Me
  loc_CB62DD: VCallAd Control_ID_ServDifuFlex
  loc_CB62E0: FStAdFunc var_338
  loc_CB62E3: FLdPr var_338
  loc_CB62E6: LateIdCallSt
  loc_CB62EE: FFreeAd var_88 = "": var_330 = "": var_334 = ""
  loc_CB62F9: FFreeVar var_98 = ""
  loc_CB6300: FLdPr Me
  loc_CB6303: MemLdI2 global_76
  loc_CB6306: CI4UI1
  loc_CB6307: CVarI4
  loc_CB630B: PopAdLdVar
  loc_CB630C: LitVarI4
  loc_CB6314: PopAdLdVar
  loc_CB6315: FLdRfVar var_98
  loc_CB6318: FLdRfVar var_334
  loc_CB631B: LitVarStr var_AC, "AnioSece"
  loc_CB6320: PopAdLdVar
  loc_CB6321: FLdRfVar var_330
  loc_CB6324: FLdRfVar var_88
  loc_CB6327: FLdPr Me
  loc_CB632A: MemLdRfVar from_stack_1.global_52
  loc_CB632D: NewIfNullPr clsservceme
  loc_CB6330: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB6335: FLdPr var_88
  loc_CB6338:  = Me.Fields
  loc_CB633D: FLdPr var_330
  loc_CB6340: from_stack_2 = Me.Item(from_stack_1)
  loc_CB6345: FLdPr var_334
  loc_CB6348:  = Me.Value
  loc_CB634D: FLdRfVar var_98
  loc_CB6350: CStrVarTmp
  loc_CB6351: CVarStr var_EC
  loc_CB6354: PopAdLdVar
  loc_CB6355: FLdPr Me
  loc_CB6358: VCallAd Control_ID_ServDifuFlex
  loc_CB635B: FStAdFunc var_338
  loc_CB635E: FLdPr var_338
  loc_CB6361: LateIdCallSt
  loc_CB6369: FFreeAd var_88 = "": var_330 = "": var_334 = ""
  loc_CB6374: FFreeVar var_98 = ""
  loc_CB637B: FLdPr Me
  loc_CB637E: MemLdI2 global_76
  loc_CB6381: CI4UI1
  loc_CB6382: CVarI4
  loc_CB6386: PopAdLdVar
  loc_CB6387: LitVarI4
  loc_CB638F: PopAdLdVar
  loc_CB6390: FLdPr Me
  loc_CB6393: VCallAd Control_ID_ServDifuFlex
  loc_CB6396: FStAdFunc var_88
  loc_CB6399: FLdPr var_88
  loc_CB639C: LateIdCallLdVar
  loc_CB63A6: CStrVarTmp
  loc_CB63A7: CVarStr var_EC
  loc_CB63AA: ImpAdCallI2 IsNumeric()
  loc_CB63AF: FLdPr Me
  loc_CB63B2: MemLdI2 global_76
  loc_CB63B5: CI4UI1
  loc_CB63B6: CVarI4
  loc_CB63BA: PopAdLdVar
  loc_CB63BB: LitVarI4
  loc_CB63C3: PopAdLdVar
  loc_CB63C4: FLdPr Me
  loc_CB63C7: VCallAd Control_ID_ServDifuFlex
  loc_CB63CA: FStAdFunc var_330
  loc_CB63CD: FLdPr var_330
  loc_CB63D0: LateIdCallLdVar
  loc_CB63DA: CStrVarTmp
  loc_CB63DB: CVarStr var_15C
  loc_CB63DE: ImpAdCallI2 IsNumeric()
  loc_CB63E3: AndI4
  loc_CB63E4: FFreeAd var_88 = ""
  loc_CB63EB: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB63F6: BranchF loc_CB68D4
  loc_CB63F9: FLdPr Me
  loc_CB63FC: MemLdI2 global_76
  loc_CB63FF: CI4UI1
  loc_CB6400: CVarI4
  loc_CB6404: PopAdLdVar
  loc_CB6405: LitVarI4
  loc_CB640D: PopAdLdVar
  loc_CB640E: FLdPr Me
  loc_CB6411: VCallAd Control_ID_ServDifuFlex
  loc_CB6414: FStAdFunc var_330
  loc_CB6417: FLdPr var_330
  loc_CB641A: LateIdCallLdVar
  loc_CB6424: PopAd
  loc_CB6426: FLdPr Me
  loc_CB6429: MemLdI2 global_76
  loc_CB642C: CI4UI1
  loc_CB642D: CVarI4
  loc_CB6431: PopAdLdVar
  loc_CB6432: LitVarI4
  loc_CB643A: PopAdLdVar
  loc_CB643B: FLdPr Me
  loc_CB643E: VCallAd Control_ID_ServDifuFlex
  loc_CB6441: FStAdFunc var_88
  loc_CB6444: FLdPr var_88
  loc_CB6447: LateIdCallLdVar
  loc_CB6451: CStrVarTmp
  loc_CB6452: FStStrNoPop var_F0
  loc_CB6455: CI2Str
  loc_CB6457: LitI2_Byte 0
  loc_CB6459: NeI2
  loc_CB645A: CVarBoolI2 var_244
  loc_CB645E: LitVarI2 var_15C, 9
  loc_CB6463: LitI4 1
  loc_CB6468: FLdRfVar var_EC
  loc_CB646B: CStrVarTmp
  loc_CB646C: CVarStr var_14C
  loc_CB646F: FLdRfVar var_16C
  loc_CB6472: ImpAdCallFPR4  = Mid(, , )
  loc_CB6477: FLdRfVar var_16C
  loc_CB647A: LitVarStr var_218, "CONCESION"
  loc_CB647F: HardType
  loc_CB6480: EqVar var_17C
  loc_CB6484: AndVar var_19C
  loc_CB6488: CBoolVarNull
  loc_CB648A: FFree1Str var_F0
  loc_CB648D: FFreeAd var_88 = ""
  loc_CB6494: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_CB64A3: BranchF loc_CB67F3
  loc_CB64A6: FLdPr Me
  loc_CB64A9: VCallAd Control_ID_FefaDifuMsk
  loc_CB64AC: FStAdFunc var_88
  loc_CB64AF: FLdPr var_88
  loc_CB64B2: LateIdLdVar var_98 DispID_15 0
  loc_CB64B9: CStrVarTmp
  loc_CB64BA: CVarStr var_EC
  loc_CB64BD: FLdRfVar var_14C
  loc_CB64C0: ImpAdCallFPR4  = Day()
  loc_CB64C5: FLdRfVar var_14C
  loc_CB64C8: LitVarI2 var_AC, 15
  loc_CB64CD: HardType
  loc_CB64CE: LeVarBool
  loc_CB64D0: FFree1Ad var_88
  loc_CB64D3: FFreeVar var_98 = "": var_EC = ""
  loc_CB64DC: BranchF loc_CB652D
  loc_CB64DF: LitVarI2 var_AC, 12
  loc_CB64E4: FLdPr Me
  loc_CB64E7: VCallAd Control_ID_FefaDifuMsk
  loc_CB64EA: FStAdFunc var_88
  loc_CB64ED: FLdPr var_88
  loc_CB64F0: LateIdLdVar var_98 DispID_15 0
  loc_CB64F7: CStrVarTmp
  loc_CB64F8: CVarStr var_EC
  loc_CB64FB: FLdRfVar var_14C
  loc_CB64FE: ImpAdCallFPR4  = Month()
  loc_CB6503: FLdRfVar var_14C
  loc_CB6506: SubVar var_15C
  loc_CB650A: LitVarI2 var_BC, 1
  loc_CB650F: AddVar var_16C
  loc_CB6513: CUI1Var
  loc_CB6515: FLdPr Me
  loc_CB6518: MemStUI1
  loc_CB651C: FFree1Ad var_88
  loc_CB651F: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB652A: Branch loc_CB656D
  loc_CB652D: LitVarI2 var_AC, 12
  loc_CB6532: FLdPr Me
  loc_CB6535: VCallAd Control_ID_FefaDifuMsk
  loc_CB6538: FStAdFunc var_88
  loc_CB653B: FLdPr var_88
  loc_CB653E: LateIdLdVar var_98 DispID_15 0
  loc_CB6545: CStrVarTmp
  loc_CB6546: CVarStr var_EC
  loc_CB6549: FLdRfVar var_14C
  loc_CB654C: ImpAdCallFPR4  = Month()
  loc_CB6551: FLdRfVar var_14C
  loc_CB6554: SubVar var_15C
  loc_CB6558: CUI1Var
  loc_CB655A: FLdPr Me
  loc_CB655D: MemStUI1
  loc_CB6561: FFree1Ad var_88
  loc_CB6564: FFreeVar var_98 = "": var_EC = ""
  loc_CB656D: FLdPr Me
  loc_CB6570: MemLdUI1 global_86
  loc_CB6574: CI2UI1
  loc_CB6576: LitI2_Byte 0
  loc_CB6578: GtI2
  loc_CB6579: BranchF loc_CB6712
  loc_CB657C: FLdPr Me
  loc_CB657F: MemLdI2 global_76
  loc_CB6582: CI4UI1
  loc_CB6583: CVarI4
  loc_CB6587: PopAdLdVar
  loc_CB6588: LitVarI4
  loc_CB6590: PopAdLdVar
  loc_CB6591: FLdPr Me
  loc_CB6594: VCallAd Control_ID_ServDifuFlex
  loc_CB6597: FStAdFunc var_88
  loc_CB659A: FLdPr var_88
  loc_CB659D: LateIdCallLdVar
  loc_CB65A7: PopAd
  loc_CB65A9: FLdPr Me
  loc_CB65AC: MemLdI2 global_76
  loc_CB65AF: CI4UI1
  loc_CB65B0: CVarI4
  loc_CB65B4: PopAdLdVar
  loc_CB65B5: LitVarI4
  loc_CB65BD: PopAdLdVar
  loc_CB65BE: FLdPr Me
  loc_CB65C1: VCallAd Control_ID_ServDifuFlex
  loc_CB65C4: FStAdFunc var_330
  loc_CB65C7: FLdPr var_330
  loc_CB65CA: LateIdCallLdVar
  loc_CB65D4: PopAd
  loc_CB65D6: LitI4 2
  loc_CB65DB: FLdRfVar var_98
  loc_CB65DE: CStrVarTmp
  loc_CB65DF: FStStrNoPop var_F0
  loc_CB65E2: CR8Str
  loc_CB65E4: FLdRfVar var_EC
  loc_CB65E7: CStrVarTmp
  loc_CB65E8: FStStrNoPop var_F4
  loc_CB65EB: CR8Str
  loc_CB65ED: DivR8
  loc_CB65EE: LitI2_Byte &HC
  loc_CB65F0: CR8I2
  loc_CB65F1: DivR8
  loc_CB65F2: CVarR8
  loc_CB65F6: FLdRfVar var_15C
  loc_CB65F9: ImpAdCallFPR4  = Round(, )
  loc_CB65FE: FLdRfVar var_15C
  loc_CB6601: CR4Var
  loc_CB6602: FLdPr Me
  loc_CB6605: MemStFPR8 global_88
  loc_CB6608: FFreeStr var_F0 = ""
  loc_CB660F: FFreeAd var_88 = ""
  loc_CB6616: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB6621: FLdPr Me
  loc_CB6624: MemLdI2 global_76
  loc_CB6627: CI4UI1
  loc_CB6628: CVarI4
  loc_CB662C: PopAdLdVar
  loc_CB662D: LitVarI4
  loc_CB6635: PopAdLdVar
  loc_CB6636: FLdPr Me
  loc_CB6639: VCallAd Control_ID_ServDifuFlex
  loc_CB663C: FStAdFunc var_88
  loc_CB663F: FLdPr var_88
  loc_CB6642: LateIdCallLdVar
  loc_CB664C: PopAd
  loc_CB664E: FLdPr Me
  loc_CB6651: MemLdI2 global_76
  loc_CB6654: CI4UI1
  loc_CB6655: CVarI4
  loc_CB6659: PopAdLdVar
  loc_CB665A: LitVarI4
  loc_CB6662: PopAdLdVar
  loc_CB6663: FLdPr Me
  loc_CB6666: VCallAd Control_ID_ServDifuFlex
  loc_CB6669: FStAdFunc var_330
  loc_CB666C: FLdPr var_330
  loc_CB666F: LateIdCallLdVar
  loc_CB6679: PopAd
  loc_CB667B: FLdPr Me
  loc_CB667E: MemLdI2 global_76
  loc_CB6681: CI4UI1
  loc_CB6682: CVarI4
  loc_CB6686: PopAdLdVar
  loc_CB6687: LitVarI4
  loc_CB668F: PopAdLdVar
  loc_CB6690: LitI4 1
  loc_CB6695: LitI4 1
  loc_CB669A: LitVarStr var_218, "0.00"
  loc_CB669F: FStVarCopyObj var_15C
  loc_CB66A2: FLdRfVar var_15C
  loc_CB66A5: FLdRfVar var_98
  loc_CB66A8: CStrVarTmp
  loc_CB66A9: FStStrNoPop var_F0
  loc_CB66AC: CR8Str
  loc_CB66AE: FLdRfVar var_EC
  loc_CB66B1: CStrVarTmp
  loc_CB66B2: FStStrNoPop var_F4
  loc_CB66B5: CR8Str
  loc_CB66B7: MulR8
  loc_CB66B8: FLdPr Me
  loc_CB66BB: MemLdFPR8 global_88
  loc_CB66BE: FLdPr Me
  loc_CB66C1: MemLdUI1 global_86
  loc_CB66C5: CR8I2
  loc_CB66C6: MulR8
  loc_CB66C7: AddR8
  loc_CB66C8: CVarR8
  loc_CB66CC: FLdRfVar var_16C
  loc_CB66CF: ImpAdCallFPR4  = Format(, )
  loc_CB66D4: FLdRfVar var_16C
  loc_CB66D7: CStrVarTmp
  loc_CB66D8: CVarStr var_17C
  loc_CB66DB: PopAdLdVar
  loc_CB66DC: FLdPr Me
  loc_CB66DF: VCallAd Control_ID_ServDifuFlex
  loc_CB66E2: FStAdFunc var_334
  loc_CB66E5: FLdPr var_334
  loc_CB66E8: LateIdCallSt
  loc_CB66F0: FFreeStr var_F0 = ""
  loc_CB66F7: FFreeAd var_88 = "": var_330 = ""
  loc_CB6700: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_CB670F: Branch loc_CB67F0
  loc_CB6712: FLdPr Me
  loc_CB6715: MemLdI2 global_76
  loc_CB6718: CI4UI1
  loc_CB6719: CVarI4
  loc_CB671D: PopAdLdVar
  loc_CB671E: LitVarI4
  loc_CB6726: PopAdLdVar
  loc_CB6727: FLdPr Me
  loc_CB672A: VCallAd Control_ID_ServDifuFlex
  loc_CB672D: FStAdFunc var_88
  loc_CB6730: FLdPr var_88
  loc_CB6733: LateIdCallLdVar
  loc_CB673D: PopAd
  loc_CB673F: FLdPr Me
  loc_CB6742: MemLdI2 global_76
  loc_CB6745: CI4UI1
  loc_CB6746: CVarI4
  loc_CB674A: PopAdLdVar
  loc_CB674B: LitVarI4
  loc_CB6753: PopAdLdVar
  loc_CB6754: FLdPr Me
  loc_CB6757: VCallAd Control_ID_ServDifuFlex
  loc_CB675A: FStAdFunc var_330
  loc_CB675D: FLdPr var_330
  loc_CB6760: LateIdCallLdVar
  loc_CB676A: PopAd
  loc_CB676C: FLdPr Me
  loc_CB676F: MemLdI2 global_76
  loc_CB6772: CI4UI1
  loc_CB6773: CVarI4
  loc_CB6777: PopAdLdVar
  loc_CB6778: LitVarI4
  loc_CB6780: PopAdLdVar
  loc_CB6781: LitI4 1
  loc_CB6786: LitI4 1
  loc_CB678B: LitVarStr var_218, "0.00"
  loc_CB6790: FStVarCopyObj var_15C
  loc_CB6793: FLdRfVar var_15C
  loc_CB6796: FLdRfVar var_98
  loc_CB6799: CStrVarTmp
  loc_CB679A: FStStrNoPop var_F0
  loc_CB679D: CR8Str
  loc_CB679F: FLdRfVar var_EC
  loc_CB67A2: CStrVarTmp
  loc_CB67A3: FStStrNoPop var_F4
  loc_CB67A6: CR8Str
  loc_CB67A8: MulR8
  loc_CB67A9: CVarR8
  loc_CB67AD: FLdRfVar var_16C
  loc_CB67B0: ImpAdCallFPR4  = Format(, )
  loc_CB67B5: FLdRfVar var_16C
  loc_CB67B8: CStrVarTmp
  loc_CB67B9: CVarStr var_17C
  loc_CB67BC: PopAdLdVar
  loc_CB67BD: FLdPr Me
  loc_CB67C0: VCallAd Control_ID_ServDifuFlex
  loc_CB67C3: FStAdFunc var_334
  loc_CB67C6: FLdPr var_334
  loc_CB67C9: LateIdCallSt
  loc_CB67D1: FFreeStr var_F0 = ""
  loc_CB67D8: FFreeAd var_88 = "": var_330 = ""
  loc_CB67E1: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_CB67F0: Branch loc_CB68D1
  loc_CB67F3: FLdPr Me
  loc_CB67F6: MemLdI2 global_76
  loc_CB67F9: CI4UI1
  loc_CB67FA: CVarI4
  loc_CB67FE: PopAdLdVar
  loc_CB67FF: LitVarI4
  loc_CB6807: PopAdLdVar
  loc_CB6808: FLdPr Me
  loc_CB680B: VCallAd Control_ID_ServDifuFlex
  loc_CB680E: FStAdFunc var_88
  loc_CB6811: FLdPr var_88
  loc_CB6814: LateIdCallLdVar
  loc_CB681E: PopAd
  loc_CB6820: FLdPr Me
  loc_CB6823: MemLdI2 global_76
  loc_CB6826: CI4UI1
  loc_CB6827: CVarI4
  loc_CB682B: PopAdLdVar
  loc_CB682C: LitVarI4
  loc_CB6834: PopAdLdVar
  loc_CB6835: FLdPr Me
  loc_CB6838: VCallAd Control_ID_ServDifuFlex
  loc_CB683B: FStAdFunc var_330
  loc_CB683E: FLdPr var_330
  loc_CB6841: LateIdCallLdVar
  loc_CB684B: PopAd
  loc_CB684D: FLdPr Me
  loc_CB6850: MemLdI2 global_76
  loc_CB6853: CI4UI1
  loc_CB6854: CVarI4
  loc_CB6858: PopAdLdVar
  loc_CB6859: LitVarI4
  loc_CB6861: PopAdLdVar
  loc_CB6862: LitI4 1
  loc_CB6867: LitI4 1
  loc_CB686C: LitVarStr var_218, "0.00"
  loc_CB6871: FStVarCopyObj var_15C
  loc_CB6874: FLdRfVar var_15C
  loc_CB6877: FLdRfVar var_98
  loc_CB687A: CStrVarTmp
  loc_CB687B: FStStrNoPop var_F0
  loc_CB687E: CR8Str
  loc_CB6880: FLdRfVar var_EC
  loc_CB6883: CStrVarTmp
  loc_CB6884: FStStrNoPop var_F4
  loc_CB6887: CR8Str
  loc_CB6889: MulR8
  loc_CB688A: CVarR8
  loc_CB688E: FLdRfVar var_16C
  loc_CB6891: ImpAdCallFPR4  = Format(, )
  loc_CB6896: FLdRfVar var_16C
  loc_CB6899: CStrVarTmp
  loc_CB689A: CVarStr var_17C
  loc_CB689D: PopAdLdVar
  loc_CB689E: FLdPr Me
  loc_CB68A1: VCallAd Control_ID_ServDifuFlex
  loc_CB68A4: FStAdFunc var_334
  loc_CB68A7: FLdPr var_334
  loc_CB68AA: LateIdCallSt
  loc_CB68B2: FFreeStr var_F0 = ""
  loc_CB68B9: FFreeAd var_88 = "": var_330 = ""
  loc_CB68C2: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_CB68D1: Branch loc_CB6CEF
  loc_CB68D4: FLdPr Me
  loc_CB68D7: MemLdI2 global_76
  loc_CB68DA: CI4UI1
  loc_CB68DB: CVarI4
  loc_CB68DF: PopAdLdVar
  loc_CB68E0: LitVarI4
  loc_CB68E8: PopAdLdVar
  loc_CB68E9: FLdPr Me
  loc_CB68EC: VCallAd Control_ID_ServDifuFlex
  loc_CB68EF: FStAdFunc var_330
  loc_CB68F2: FLdPr var_330
  loc_CB68F5: LateIdCallLdVar
  loc_CB68FF: PopAd
  loc_CB6901: FLdPr Me
  loc_CB6904: MemLdI2 global_76
  loc_CB6907: CI4UI1
  loc_CB6908: CVarI4
  loc_CB690C: PopAdLdVar
  loc_CB690D: LitVarI4
  loc_CB6915: PopAdLdVar
  loc_CB6916: FLdPr Me
  loc_CB6919: VCallAd Control_ID_ServDifuFlex
  loc_CB691C: FStAdFunc var_88
  loc_CB691F: FLdPr var_88
  loc_CB6922: LateIdCallLdVar
  loc_CB692C: CStrVarTmp
  loc_CB692D: FStStrNoPop var_F0
  loc_CB6930: CI2Str
  loc_CB6932: LitI2_Byte 0
  loc_CB6934: NeI2
  loc_CB6935: CVarBoolI2 var_244
  loc_CB6939: LitVarI2 var_15C, 9
  loc_CB693E: LitI4 1
  loc_CB6943: FLdRfVar var_EC
  loc_CB6946: CStrVarTmp
  loc_CB6947: CVarStr var_14C
  loc_CB694A: FLdRfVar var_16C
  loc_CB694D: ImpAdCallFPR4  = Mid(, , )
  loc_CB6952: FLdRfVar var_16C
  loc_CB6955: LitVarStr var_218, "CONCESION"
  loc_CB695A: HardType
  loc_CB695B: EqVar var_17C
  loc_CB695F: AndVar var_19C
  loc_CB6963: CBoolVarNull
  loc_CB6965: FFree1Str var_F0
  loc_CB6968: FFreeAd var_88 = ""
  loc_CB696F: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_CB697E: BranchF loc_CB6C50
  loc_CB6981: FLdPr Me
  loc_CB6984: VCallAd Control_ID_FefaDifuMsk
  loc_CB6987: FStAdFunc var_88
  loc_CB698A: FLdPr var_88
  loc_CB698D: LateIdLdVar var_98 DispID_22 0
  loc_CB6994: CStrVarTmp
  loc_CB6995: CVarStr var_EC
  loc_CB6998: FLdRfVar var_14C
  loc_CB699B: ImpAdCallFPR4  = Day()
  loc_CB69A0: FLdRfVar var_14C
  loc_CB69A3: LitVarI2 var_AC, 15
  loc_CB69A8: HardType
  loc_CB69A9: LeVarBool
  loc_CB69AB: FFree1Ad var_88
  loc_CB69AE: FFreeVar var_98 = "": var_EC = ""
  loc_CB69B7: BranchF loc_CB6A08
  loc_CB69BA: LitVarI2 var_AC, 12
  loc_CB69BF: FLdPr Me
  loc_CB69C2: VCallAd Control_ID_FefaDifuMsk
  loc_CB69C5: FStAdFunc var_88
  loc_CB69C8: FLdPr var_88
  loc_CB69CB: LateIdLdVar var_98 DispID_15 0
  loc_CB69D2: CStrVarTmp
  loc_CB69D3: CVarStr var_EC
  loc_CB69D6: FLdRfVar var_14C
  loc_CB69D9: ImpAdCallFPR4  = Month()
  loc_CB69DE: FLdRfVar var_14C
  loc_CB69E1: SubVar var_15C
  loc_CB69E5: LitVarI2 var_BC, 1
  loc_CB69EA: AddVar var_16C
  loc_CB69EE: CUI1Var
  loc_CB69F0: FLdPr Me
  loc_CB69F3: MemStUI1
  loc_CB69F7: FFree1Ad var_88
  loc_CB69FA: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB6A05: Branch loc_CB6A48
  loc_CB6A08: LitVarI2 var_AC, 12
  loc_CB6A0D: FLdPr Me
  loc_CB6A10: VCallAd Control_ID_FefaDifuMsk
  loc_CB6A13: FStAdFunc var_88
  loc_CB6A16: FLdPr var_88
  loc_CB6A19: LateIdLdVar var_98 DispID_15 0
  loc_CB6A20: CStrVarTmp
  loc_CB6A21: CVarStr var_EC
  loc_CB6A24: FLdRfVar var_14C
  loc_CB6A27: ImpAdCallFPR4  = Month()
  loc_CB6A2C: FLdRfVar var_14C
  loc_CB6A2F: SubVar var_15C
  loc_CB6A33: CUI1Var
  loc_CB6A35: FLdPr Me
  loc_CB6A38: MemStUI1
  loc_CB6A3C: FFree1Ad var_88
  loc_CB6A3F: FFreeVar var_98 = "": var_EC = ""
  loc_CB6A48: FLdPr Me
  loc_CB6A4B: MemLdUI1 global_86
  loc_CB6A4F: CI2UI1
  loc_CB6A51: LitI2_Byte 0
  loc_CB6A53: GtI2
  loc_CB6A54: BranchF loc_CB6BAE
  loc_CB6A57: FLdPr Me
  loc_CB6A5A: MemLdI2 global_76
  loc_CB6A5D: CI4UI1
  loc_CB6A5E: CVarI4
  loc_CB6A62: PopAdLdVar
  loc_CB6A63: LitVarI4
  loc_CB6A6B: PopAdLdVar
  loc_CB6A6C: FLdPr Me
  loc_CB6A6F: VCallAd Control_ID_ServDifuFlex
  loc_CB6A72: FStAdFunc var_88
  loc_CB6A75: FLdPr var_88
  loc_CB6A78: LateIdCallLdVar
  loc_CB6A82: PopAd
  loc_CB6A84: FLdPr Me
  loc_CB6A87: MemLdI2 global_76
  loc_CB6A8A: CI4UI1
  loc_CB6A8B: CVarI4
  loc_CB6A8F: PopAdLdVar
  loc_CB6A90: LitVarI4
  loc_CB6A98: PopAdLdVar
  loc_CB6A99: FLdPr Me
  loc_CB6A9C: VCallAd Control_ID_ServDifuFlex
  loc_CB6A9F: FStAdFunc var_330
  loc_CB6AA2: FLdPr var_330
  loc_CB6AA5: LateIdCallLdVar
  loc_CB6AAF: PopAd
  loc_CB6AB1: LitI4 2
  loc_CB6AB6: FLdRfVar var_98
  loc_CB6AB9: CStrVarTmp
  loc_CB6ABA: FStStrNoPop var_F0
  loc_CB6ABD: CR8Str
  loc_CB6ABF: FLdRfVar var_EC
  loc_CB6AC2: CStrVarTmp
  loc_CB6AC3: FStStrNoPop var_F4
  loc_CB6AC6: CR8Str
  loc_CB6AC8: DivR8
  loc_CB6AC9: LitI2_Byte &HC
  loc_CB6ACB: CR8I2
  loc_CB6ACC: DivR8
  loc_CB6ACD: CVarR8
  loc_CB6AD1: FLdRfVar var_15C
  loc_CB6AD4: ImpAdCallFPR4  = Round(, )
  loc_CB6AD9: FLdRfVar var_15C
  loc_CB6ADC: CR4Var
  loc_CB6ADD: FLdPr Me
  loc_CB6AE0: MemStFPR8 global_88
  loc_CB6AE3: FFreeStr var_F0 = ""
  loc_CB6AEA: FFreeAd var_88 = ""
  loc_CB6AF1: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB6AFC: FLdPr Me
  loc_CB6AFF: MemLdI2 global_76
  loc_CB6B02: CI4UI1
  loc_CB6B03: CVarI4
  loc_CB6B07: PopAdLdVar
  loc_CB6B08: LitVarI4
  loc_CB6B10: PopAdLdVar
  loc_CB6B11: FLdPr Me
  loc_CB6B14: VCallAd Control_ID_ServDifuFlex
  loc_CB6B17: FStAdFunc var_88
  loc_CB6B1A: FLdPr var_88
  loc_CB6B1D: LateIdCallLdVar
  loc_CB6B27: PopAd
  loc_CB6B29: FLdPr Me
  loc_CB6B2C: MemLdI2 global_76
  loc_CB6B2F: CI4UI1
  loc_CB6B30: CVarI4
  loc_CB6B34: PopAdLdVar
  loc_CB6B35: LitVarI4
  loc_CB6B3D: PopAdLdVar
  loc_CB6B3E: LitI4 1
  loc_CB6B43: LitI4 1
  loc_CB6B48: LitVarStr var_13C, "0.00"
  loc_CB6B4D: FStVarCopyObj var_14C
  loc_CB6B50: FLdRfVar var_14C
  loc_CB6B53: FLdRfVar var_98
  loc_CB6B56: CStrVarTmp
  loc_CB6B57: FStStrNoPop var_F0
  loc_CB6B5A: CR8Str
  loc_CB6B5C: FLdPr Me
  loc_CB6B5F: MemLdFPR8 global_88
  loc_CB6B62: FLdPr Me
  loc_CB6B65: MemLdUI1 global_86
  loc_CB6B69: CR8I2
  loc_CB6B6A: MulR8
  loc_CB6B6B: AddR8
  loc_CB6B6C: CVarR8
  loc_CB6B70: FLdRfVar var_15C
  loc_CB6B73: ImpAdCallFPR4  = Format(, )
  loc_CB6B78: FLdRfVar var_15C
  loc_CB6B7B: CStrVarTmp
  loc_CB6B7C: CVarStr var_16C
  loc_CB6B7F: PopAdLdVar
  loc_CB6B80: FLdPr Me
  loc_CB6B83: VCallAd Control_ID_ServDifuFlex
  loc_CB6B86: FStAdFunc var_330
  loc_CB6B89: FLdPr var_330
  loc_CB6B8C: LateIdCallSt
  loc_CB6B94: FFree1Str var_F0
  loc_CB6B97: FFreeAd var_88 = ""
  loc_CB6B9E: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = ""
  loc_CB6BAB: Branch loc_CB6C4D
  loc_CB6BAE: FLdPr Me
  loc_CB6BB1: MemLdI2 global_76
  loc_CB6BB4: CI4UI1
  loc_CB6BB5: CVarI4
  loc_CB6BB9: PopAdLdVar
  loc_CB6BBA: LitVarI4
  loc_CB6BC2: PopAdLdVar
  loc_CB6BC3: FLdPr Me
  loc_CB6BC6: VCallAd Control_ID_ServDifuFlex
  loc_CB6BC9: FStAdFunc var_88
  loc_CB6BCC: FLdPr var_88
  loc_CB6BCF: LateIdCallLdVar
  loc_CB6BD9: PopAd
  loc_CB6BDB: FLdPr Me
  loc_CB6BDE: MemLdI2 global_76
  loc_CB6BE1: CI4UI1
  loc_CB6BE2: CVarI4
  loc_CB6BE6: PopAdLdVar
  loc_CB6BE7: LitVarI4
  loc_CB6BEF: PopAdLdVar
  loc_CB6BF0: LitI4 1
  loc_CB6BF5: LitI4 1
  loc_CB6BFA: LitVarStr var_13C, "0.00"
  loc_CB6BFF: FStVarCopyObj var_14C
  loc_CB6C02: FLdRfVar var_14C
  loc_CB6C05: FLdRfVar var_98
  loc_CB6C08: CStrVarTmp
  loc_CB6C09: FStStrNoPop var_F0
  loc_CB6C0C: CR8Str
  loc_CB6C0E: CVarR8
  loc_CB6C12: FLdRfVar var_15C
  loc_CB6C15: ImpAdCallFPR4  = Format(, )
  loc_CB6C1A: FLdRfVar var_15C
  loc_CB6C1D: CStrVarTmp
  loc_CB6C1E: CVarStr var_16C
  loc_CB6C21: PopAdLdVar
  loc_CB6C22: FLdPr Me
  loc_CB6C25: VCallAd Control_ID_ServDifuFlex
  loc_CB6C28: FStAdFunc var_330
  loc_CB6C2B: FLdPr var_330
  loc_CB6C2E: LateIdCallSt
  loc_CB6C36: FFree1Str var_F0
  loc_CB6C39: FFreeAd var_88 = ""
  loc_CB6C40: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = ""
  loc_CB6C4D: Branch loc_CB6CEF
  loc_CB6C50: FLdPr Me
  loc_CB6C53: MemLdI2 global_76
  loc_CB6C56: CI4UI1
  loc_CB6C57: CVarI4
  loc_CB6C5B: PopAdLdVar
  loc_CB6C5C: LitVarI4
  loc_CB6C64: PopAdLdVar
  loc_CB6C65: FLdPr Me
  loc_CB6C68: VCallAd Control_ID_ServDifuFlex
  loc_CB6C6B: FStAdFunc var_88
  loc_CB6C6E: FLdPr var_88
  loc_CB6C71: LateIdCallLdVar
  loc_CB6C7B: PopAd
  loc_CB6C7D: FLdPr Me
  loc_CB6C80: MemLdI2 global_76
  loc_CB6C83: CI4UI1
  loc_CB6C84: CVarI4
  loc_CB6C88: PopAdLdVar
  loc_CB6C89: LitVarI4
  loc_CB6C91: PopAdLdVar
  loc_CB6C92: LitI4 1
  loc_CB6C97: LitI4 1
  loc_CB6C9C: LitVarStr var_13C, "0.00"
  loc_CB6CA1: FStVarCopyObj var_14C
  loc_CB6CA4: FLdRfVar var_14C
  loc_CB6CA7: FLdRfVar var_98
  loc_CB6CAA: CStrVarTmp
  loc_CB6CAB: FStStrNoPop var_F0
  loc_CB6CAE: CR8Str
  loc_CB6CB0: CVarR8
  loc_CB6CB4: FLdRfVar var_15C
  loc_CB6CB7: ImpAdCallFPR4  = Format(, )
  loc_CB6CBC: FLdRfVar var_15C
  loc_CB6CBF: CStrVarTmp
  loc_CB6CC0: CVarStr var_16C
  loc_CB6CC3: PopAdLdVar
  loc_CB6CC4: FLdPr Me
  loc_CB6CC7: VCallAd Control_ID_ServDifuFlex
  loc_CB6CCA: FStAdFunc var_330
  loc_CB6CCD: FLdPr var_330
  loc_CB6CD0: LateIdCallSt
  loc_CB6CD8: FFree1Str var_F0
  loc_CB6CDB: FFreeAd var_88 = ""
  loc_CB6CE2: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_15C = ""
  loc_CB6CEF: FLdRfVar var_98
  loc_CB6CF2: FLdRfVar var_334
  loc_CB6CF5: LitVarStr var_AC, "AnioSece"
  loc_CB6CFA: PopAdLdVar
  loc_CB6CFB: FLdRfVar var_330
  loc_CB6CFE: FLdRfVar var_88
  loc_CB6D01: FLdPr Me
  loc_CB6D04: MemLdRfVar from_stack_1.global_52
  loc_CB6D07: NewIfNullPr clsservceme
  loc_CB6D0A: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB6D0F: FLdPr var_88
  loc_CB6D12:  = Me.Fields
  loc_CB6D17: FLdPr var_330
  loc_CB6D1A: from_stack_2 = Me.Item(from_stack_1)
  loc_CB6D1F: FLdPr var_334
  loc_CB6D22:  = Me.Value
  loc_CB6D27: FLdRfVar var_98
  loc_CB6D2A: FnCIntVar
  loc_CB6D2C: LitI2_Byte 0
  loc_CB6D2E: GtI2
  loc_CB6D2F: FFreeAd var_88 = "": var_330 = ""
  loc_CB6D38: FFree1Var var_98 = ""
  loc_CB6D3B: BranchF loc_CB7109
  loc_CB6D3E: FLdPr Me
  loc_CB6D41: MemLdI2 global_76
  loc_CB6D44: CI4UI1
  loc_CB6D45: CVarI4
  loc_CB6D49: PopAdLdVar
  loc_CB6D4A: LitVarI4
  loc_CB6D52: PopAdLdVar
  loc_CB6D53: FLdPr Me
  loc_CB6D56: VCallAd Control_ID_ServDifuFlex
  loc_CB6D59: FStAdFunc var_88
  loc_CB6D5C: FLdPr var_88
  loc_CB6D5F: LateIdCallLdVar
  loc_CB6D69: PopAd
  loc_CB6D6B: LitVarI2 var_14C, 9
  loc_CB6D70: LitI4 1
  loc_CB6D75: FLdRfVar var_98
  loc_CB6D78: CStrVarTmp
  loc_CB6D79: CVarStr var_EC
  loc_CB6D7C: FLdRfVar var_15C
  loc_CB6D7F: ImpAdCallFPR4  = Mid(, , )
  loc_CB6D84: FLdRfVar var_15C
  loc_CB6D87: LitVarStr var_13C, "CONCESION"
  loc_CB6D8C: HardType
  loc_CB6D8D: EqVarBool
  loc_CB6D8F: FFree1Ad var_88
  loc_CB6D92: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_CB6D9D: BranchF loc_CB6F13
  loc_CB6DA0: FLdPr Me
  loc_CB6DA3: VCallAd Control_ID_FefaDifuMsk
  loc_CB6DA6: FStAdFunc var_88
  loc_CB6DA9: FLdPr var_88
  loc_CB6DAC: LateIdLdVar var_98 DispID_22 0
  loc_CB6DB3: CStrVarTmp
  loc_CB6DB4: CVarStr var_EC
  loc_CB6DB7: ImpAdCallI2 IsDate()
  loc_CB6DBC: FFree1Ad var_88
  loc_CB6DBF: FFreeVar var_98 = ""
  loc_CB6DC6: BranchF loc_CB6E76
  loc_CB6DC9: FLdPr Me
  loc_CB6DCC: VCallAd Control_ID_FefaDifuMsk
  loc_CB6DCF: FStAdFunc var_88
  loc_CB6DD2: FLdPr var_88
  loc_CB6DD5: LateIdLdVar var_98 DispID_22 0
  loc_CB6DDC: CStrVarTmp
  loc_CB6DDD: CVarStr var_EC
  loc_CB6DE0: FLdRfVar var_14C
  loc_CB6DE3: ImpAdCallFPR4  = Year()
  loc_CB6DE8: FLdRfVar var_15C
  loc_CB6DEB: FLdRfVar var_338
  loc_CB6DEE: LitVarStr var_AC, "AnioSece"
  loc_CB6DF3: PopAdLdVar
  loc_CB6DF4: FLdRfVar var_334
  loc_CB6DF7: FLdRfVar var_330
  loc_CB6DFA: FLdPr Me
  loc_CB6DFD: MemLdRfVar from_stack_1.global_52
  loc_CB6E00: NewIfNullPr clsservceme
  loc_CB6E03: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB6E08: FLdPr var_330
  loc_CB6E0B:  = Me.Fields
  loc_CB6E10: FLdPr var_334
  loc_CB6E13: from_stack_2 = Me.Item(from_stack_1)
  loc_CB6E18: FLdPr var_338
  loc_CB6E1B:  = Me.Value
  loc_CB6E20: LitI2_Byte &H1F
  loc_CB6E22: LitI2_Byte &HC
  loc_CB6E24: FLdRfVar var_14C
  loc_CB6E27: FLdRfVar var_15C
  loc_CB6E2A: FnCIntVar
  loc_CB6E2C: CVarI2 var_BC
  loc_CB6E2F: AddVar var_16C
  loc_CB6E33: CI2Var
  loc_CB6E34: FLdRfVar var_17C
  loc_CB6E37: ImpAdCallFPR4  = DateSerial(, , )
  loc_CB6E3C: FLdRfVar var_17C
  loc_CB6E3F: CStrVarVal var_F0
  loc_CB6E43: FLdPr Me
  loc_CB6E46: VCallAd Control_ID_NuevoFeveDifuLbl
  loc_CB6E49: FStAdFunc var_33C
  loc_CB6E4C: FLdPr var_33C
  loc_CB6E4F: Me.Caption = from_stack_1
  loc_CB6E54: FFree1Str var_F0
  loc_CB6E57: FFreeAd var_88 = "": var_330 = "": var_334 = "": var_338 = ""
  loc_CB6E64: FFreeVar var_98 = "": var_EC = "": var_15C = "": var_14C = "": var_16C = ""
  loc_CB6E73: Branch loc_CB6F10
  loc_CB6E76: LitI2_Byte 0
  loc_CB6E78: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB6E7D: CVarDate var_98
  loc_CB6E81: FLdRfVar var_EC
  loc_CB6E84: ImpAdCallFPR4  = Year()
  loc_CB6E89: FLdRfVar var_14C
  loc_CB6E8C: FLdRfVar var_334
  loc_CB6E8F: LitVarStr var_BC, "AnioSece"
  loc_CB6E94: PopAdLdVar
  loc_CB6E95: FLdRfVar var_330
  loc_CB6E98: FLdRfVar var_88
  loc_CB6E9B: FLdPr Me
  loc_CB6E9E: MemLdRfVar from_stack_1.global_52
  loc_CB6EA1: NewIfNullPr clsservceme
  loc_CB6EA4: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB6EA9: FLdPr var_88
  loc_CB6EAC:  = Me.Fields
  loc_CB6EB1: FLdPr var_330
  loc_CB6EB4: from_stack_2 = Me.Item(from_stack_1)
  loc_CB6EB9: FLdPr var_334
  loc_CB6EBC:  = Me.Value
  loc_CB6EC1: LitI2_Byte &H1F
  loc_CB6EC3: LitI2_Byte &HC
  loc_CB6EC5: FLdRfVar var_EC
  loc_CB6EC8: FLdRfVar var_14C
  loc_CB6ECB: FnCIntVar
  loc_CB6ECD: CVarI2 var_CC
  loc_CB6ED0: AddVar var_15C
  loc_CB6ED4: CI2Var
  loc_CB6ED5: FLdRfVar var_16C
  loc_CB6ED8: ImpAdCallFPR4  = DateSerial(, , )
  loc_CB6EDD: FLdRfVar var_16C
  loc_CB6EE0: CStrVarVal var_F0
  loc_CB6EE4: FLdPr Me
  loc_CB6EE7: VCallAd Control_ID_NuevoFeveDifuLbl
  loc_CB6EEA: FStAdFunc var_338
  loc_CB6EED: FLdPr var_338
  loc_CB6EF0: Me.Caption = from_stack_1
  loc_CB6EF5: FFree1Str var_F0
  loc_CB6EF8: FFreeAd var_88 = "": var_330 = "": var_334 = ""
  loc_CB6F03: FFreeVar var_98 = "": var_14C = "": var_EC = "": var_15C = ""
  loc_CB6F10: Branch loc_CB7109
  loc_CB6F13: FLdRfVar var_F0
  loc_CB6F16: FLdPr Me
  loc_CB6F19: VCallAd Control_ID_FeveDifuLbl
  loc_CB6F1C: FStAdFunc var_88
  loc_CB6F1F: FLdPr var_88
  loc_CB6F22:  = Me.Caption
  loc_CB6F27: FLdZeroAd var_F0
  loc_CB6F2A: CVarStr var_98
  loc_CB6F2D: ImpAdCallI2 IsDate()
  loc_CB6F32: FFree1Ad var_88
  loc_CB6F35: FFree1Var var_98 = ""
  loc_CB6F38: BranchF loc_CB703D
  loc_CB6F3B: FLdRfVar var_F0
  loc_CB6F3E: FLdPr Me
  loc_CB6F41: VCallAd Control_ID_FeveDifuLbl
  loc_CB6F44: FStAdFunc var_88
  loc_CB6F47: FLdPr var_88
  loc_CB6F4A:  = Me.Caption
  loc_CB6F4F: FLdZeroAd var_F0
  loc_CB6F52: CVarStr var_98
  loc_CB6F55: FLdRfVar var_EC
  loc_CB6F58: ImpAdCallFPR4  = Year()
  loc_CB6F5D: FLdRfVar var_14C
  loc_CB6F60: FLdRfVar var_338
  loc_CB6F63: LitVarStr var_AC, "AnioSece"
  loc_CB6F68: PopAdLdVar
  loc_CB6F69: FLdRfVar var_334
  loc_CB6F6C: FLdRfVar var_330
  loc_CB6F6F: FLdPr Me
  loc_CB6F72: MemLdRfVar from_stack_1.global_52
  loc_CB6F75: NewIfNullPr clsservceme
  loc_CB6F78: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB6F7D: FLdPr var_330
  loc_CB6F80:  = Me.Fields
  loc_CB6F85: FLdPr var_334
  loc_CB6F88: from_stack_2 = Me.Item(from_stack_1)
  loc_CB6F8D: FLdPr var_338
  loc_CB6F90:  = Me.Value
  loc_CB6F95: FLdRfVar var_F4
  loc_CB6F98: FLdPr Me
  loc_CB6F9B: VCallAd Control_ID_FeveDifuLbl
  loc_CB6F9E: FStAdFunc var_33C
  loc_CB6FA1: FLdPr var_33C
  loc_CB6FA4:  = Me.Caption
  loc_CB6FA9: FLdZeroAd var_F4
  loc_CB6FAC: CVarStr var_16C
  loc_CB6FAF: FLdRfVar var_17C
  loc_CB6FB2: ImpAdCallFPR4  = Month()
  loc_CB6FB7: FLdRfVar var_F8
  loc_CB6FBA: FLdPr Me
  loc_CB6FBD: VCallAd Control_ID_FeveDifuLbl
  loc_CB6FC0: FStAdFunc var_340
  loc_CB6FC3: FLdPr var_340
  loc_CB6FC6:  = Me.Caption
  loc_CB6FCB: FLdZeroAd var_F8
  loc_CB6FCE: CVarStr var_19C
  loc_CB6FD1: FLdRfVar var_1D8
  loc_CB6FD4: ImpAdCallFPR4  = Day()
  loc_CB6FD9: FLdRfVar var_1D8
  loc_CB6FDC: CI2Var
  loc_CB6FDD: FLdRfVar var_17C
  loc_CB6FE0: CI2Var
  loc_CB6FE1: FLdRfVar var_EC
  loc_CB6FE4: FLdRfVar var_14C
  loc_CB6FE7: FnCIntVar
  loc_CB6FE9: CVarI2 var_BC
  loc_CB6FEC: AddVar var_15C
  loc_CB6FF0: CI2Var
  loc_CB6FF1: FLdRfVar var_1E8
  loc_CB6FF4: ImpAdCallFPR4  = DateSerial(, , )
  loc_CB6FF9: FLdRfVar var_1E8
  loc_CB6FFC: CStrVarVal var_FC
  loc_CB7000: FLdPr Me
  loc_CB7003: VCallAd Control_ID_NuevoFeveDifuLbl
  loc_CB7006: FStAdFunc var_344
  loc_CB7009: FLdPr var_344
  loc_CB700C: Me.Caption = from_stack_1
  loc_CB7011: FFree1Str var_FC
  loc_CB7014: FFreeAd var_88 = "": var_330 = "": var_334 = "": var_338 = "": var_33C = "": var_340 = ""
  loc_CB7025: FFreeVar var_98 = "": var_14C = "": var_EC = "": var_16C = "": var_19C = "": var_15C = "": var_17C = "": var_1D8 = ""
  loc_CB703A: Branch loc_CB7109
  loc_CB703D: LitI2_Byte 0
  loc_CB703F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB7044: CVarDate var_98
  loc_CB7048: FLdRfVar var_EC
  loc_CB704B: ImpAdCallFPR4  = Year()
  loc_CB7050: FLdRfVar var_14C
  loc_CB7053: FLdRfVar var_334
  loc_CB7056: LitVarStr var_BC, "AnioSece"
  loc_CB705B: PopAdLdVar
  loc_CB705C: FLdRfVar var_330
  loc_CB705F: FLdRfVar var_88
  loc_CB7062: FLdPr Me
  loc_CB7065: MemLdRfVar from_stack_1.global_52
  loc_CB7068: NewIfNullPr clsservceme
  loc_CB706B: from_stack_1v = clsservceme.RsFrmGet()
  loc_CB7070: FLdPr var_88
  loc_CB7073:  = Me.Fields
  loc_CB7078: FLdPr var_330
  loc_CB707B: from_stack_2 = Me.Item(from_stack_1)
  loc_CB7080: FLdPr var_334
  loc_CB7083:  = Me.Value
  loc_CB7088: LitI2_Byte 0
  loc_CB708A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB708F: CVarDate var_16C
  loc_CB7093: FLdRfVar var_17C
  loc_CB7096: ImpAdCallFPR4  = Month()
  loc_CB709B: LitI2_Byte 0
  loc_CB709D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB70A2: CVarDate var_19C
  loc_CB70A6: FLdRfVar var_1D8
  loc_CB70A9: ImpAdCallFPR4  = Day()
  loc_CB70AE: FLdRfVar var_1D8
  loc_CB70B1: CI2Var
  loc_CB70B2: FLdRfVar var_17C
  loc_CB70B5: CI2Var
  loc_CB70B6: FLdRfVar var_EC
  loc_CB70B9: FLdRfVar var_14C
  loc_CB70BC: FnCIntVar
  loc_CB70BE: CVarI2 var_CC
  loc_CB70C1: AddVar var_15C
  loc_CB70C5: CI2Var
  loc_CB70C6: FLdRfVar var_1E8
  loc_CB70C9: ImpAdCallFPR4  = DateSerial(, , )
  loc_CB70CE: FLdRfVar var_1E8
  loc_CB70D1: CStrVarVal var_F0
  loc_CB70D5: FLdPr Me
  loc_CB70D8: VCallAd Control_ID_NuevoFeveDifuLbl
  loc_CB70DB: FStAdFunc var_338
  loc_CB70DE: FLdPr var_338
  loc_CB70E1: Me.Caption = from_stack_1
  loc_CB70E6: FFree1Str var_F0
  loc_CB70E9: FFreeAd var_88 = "": var_330 = "": var_334 = ""
  loc_CB70F4: FFreeVar var_98 = "": var_14C = "": var_EC = "": var_16C = "": var_19C = "": var_15C = "": var_17C = "": var_1D8 = ""
  loc_CB7109: Branch loc_CB72CE
  loc_CB710C: FLdPr Me
  loc_CB710F: MemLdI2 global_76
  loc_CB7112: CI4UI1
  loc_CB7113: CVarI4
  loc_CB7117: PopAdLdVar
  loc_CB7118: LitVarI4
  loc_CB7120: PopAdLdVar
  loc_CB7121: LitVarStr var_12C, vbNullString
  loc_CB7126: PopAdLdVar
  loc_CB7127: FLdPr Me
  loc_CB712A: VCallAd Control_ID_ServDifuFlex
  loc_CB712D: FStAdFunc var_88
  loc_CB7130: FLdPr var_88
  loc_CB7133: LateIdCallSt
  loc_CB713B: FFree1Ad var_88
  loc_CB713E: FLdPr Me
  loc_CB7141: MemLdI2 global_76
  loc_CB7144: CI4UI1
  loc_CB7145: CVarI4
  loc_CB7149: PopAdLdVar
  loc_CB714A: LitVarI4
  loc_CB7152: PopAdLdVar
  loc_CB7153: LitVarStr var_12C, vbNullString
  loc_CB7158: PopAdLdVar
  loc_CB7159: FLdPr Me
  loc_CB715C: VCallAd Control_ID_ServDifuFlex
  loc_CB715F: FStAdFunc var_88
  loc_CB7162: FLdPr var_88
  loc_CB7165: LateIdCallSt
  loc_CB716D: FFree1Ad var_88
  loc_CB7170: FLdPr Me
  loc_CB7173: MemLdI2 global_76
  loc_CB7176: CI4UI1
  loc_CB7177: CVarI4
  loc_CB717B: PopAdLdVar
  loc_CB717C: LitVarI4
  loc_CB7184: PopAdLdVar
  loc_CB7185: LitVarStr var_12C, vbNullString
  loc_CB718A: PopAdLdVar
  loc_CB718B: FLdPr Me
  loc_CB718E: VCallAd Control_ID_ServDifuFlex
  loc_CB7191: FStAdFunc var_88
  loc_CB7194: FLdPr var_88
  loc_CB7197: LateIdCallSt
  loc_CB719F: FFree1Ad var_88
  loc_CB71A2: FLdPr Me
  loc_CB71A5: MemLdI2 global_76
  loc_CB71A8: CI4UI1
  loc_CB71A9: CVarI4
  loc_CB71AD: PopAdLdVar
  loc_CB71AE: LitVarI4
  loc_CB71B6: PopAdLdVar
  loc_CB71B7: LitVarStr var_12C, vbNullString
  loc_CB71BC: PopAdLdVar
  loc_CB71BD: FLdPr Me
  loc_CB71C0: VCallAd Control_ID_ServDifuFlex
  loc_CB71C3: FStAdFunc var_88
  loc_CB71C6: FLdPr var_88
  loc_CB71C9: LateIdCallSt
  loc_CB71D1: FFree1Ad var_88
  loc_CB71D4: FLdPr Me
  loc_CB71D7: MemLdI2 global_76
  loc_CB71DA: CI4UI1
  loc_CB71DB: CVarI4
  loc_CB71DF: PopAdLdVar
  loc_CB71E0: LitVarI4
  loc_CB71E8: PopAdLdVar
  loc_CB71E9: LitVarStr var_12C, vbNullString
  loc_CB71EE: PopAdLdVar
  loc_CB71EF: FLdPr Me
  loc_CB71F2: VCallAd Control_ID_ServDifuFlex
  loc_CB71F5: FStAdFunc var_88
  loc_CB71F8: FLdPr var_88
  loc_CB71FB: LateIdCallSt
  loc_CB7203: FFree1Ad var_88
  loc_CB7206: FLdPr Me
  loc_CB7209: MemLdI2 global_76
  loc_CB720C: CI4UI1
  loc_CB720D: CVarI4
  loc_CB7211: PopAdLdVar
  loc_CB7212: LitVarI4
  loc_CB721A: PopAdLdVar
  loc_CB721B: LitVarStr var_12C, vbNullString
  loc_CB7220: PopAdLdVar
  loc_CB7221: FLdPr Me
  loc_CB7224: VCallAd Control_ID_ServDifuFlex
  loc_CB7227: FStAdFunc var_88
  loc_CB722A: FLdPr var_88
  loc_CB722D: LateIdCallSt
  loc_CB7235: FFree1Ad var_88
  loc_CB7238: FLdPr Me
  loc_CB723B: MemLdI2 global_76
  loc_CB723E: CI4UI1
  loc_CB723F: CVarI4
  loc_CB7243: PopAdLdVar
  loc_CB7244: LitVarI4
  loc_CB724C: PopAdLdVar
  loc_CB724D: LitVarStr var_12C, vbNullString
  loc_CB7252: PopAdLdVar
  loc_CB7253: FLdPr Me
  loc_CB7256: VCallAd Control_ID_ServDifuFlex
  loc_CB7259: FStAdFunc var_88
  loc_CB725C: FLdPr var_88
  loc_CB725F: LateIdCallSt
  loc_CB7267: FFree1Ad var_88
  loc_CB726A: FLdPr Me
  loc_CB726D: MemLdI2 global_76
  loc_CB7270: CI4UI1
  loc_CB7271: CVarI4
  loc_CB7275: PopAdLdVar
  loc_CB7276: LitVarI4
  loc_CB727E: PopAdLdVar
  loc_CB727F: LitVarStr var_12C, vbNullString
  loc_CB7284: PopAdLdVar
  loc_CB7285: FLdPr Me
  loc_CB7288: VCallAd Control_ID_ServDifuFlex
  loc_CB728B: FStAdFunc var_88
  loc_CB728E: FLdPr var_88
  loc_CB7291: LateIdCallSt
  loc_CB7299: FFree1Ad var_88
  loc_CB729C: LitStr "No existe el código del servicio, por favor verifique..."
  loc_CB729F: FLdPr Me
  loc_CB72A2: MemStStrCopy
  loc_CB72A6: FLdPr Me
  loc_CB72A9: MemLdStr global_72
  loc_CB72AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB72B1: FLdPr Me
  loc_CB72B4: VCallAd Control_ID_ServDifuFlex
  loc_CB72B7: FStAdFunc var_88
  loc_CB72BA: FLdPr var_88
  loc_CB72BD: LateIdCall
  loc_CB72C5: FFree1Ad var_88
  loc_CB72C8: LitI2_Byte &HFF
  loc_CB72CA: IStI2 Cancel
  loc_CB72CD: ExitProcHresult
  loc_CB72CE: Branch loc_CB74C5
  loc_CB72D1: FLdPr Me
  loc_CB72D4: MemLdI2 global_76
  loc_CB72D7: CI4UI1
  loc_CB72D8: CVarI4
  loc_CB72DC: PopAdLdVar
  loc_CB72DD: LitVarI4
  loc_CB72E5: PopAdLdVar
  loc_CB72E6: LitVarStr var_12C, vbNullString
  loc_CB72EB: PopAdLdVar
  loc_CB72EC: FLdPr Me
  loc_CB72EF: VCallAd Control_ID_ServDifuFlex
  loc_CB72F2: FStAdFunc var_88
  loc_CB72F5: FLdPr var_88
  loc_CB72F8: LateIdCallSt
  loc_CB7300: FFree1Ad var_88
  loc_CB7303: FLdPr Me
  loc_CB7306: MemLdI2 global_76
  loc_CB7309: CI4UI1
  loc_CB730A: CVarI4
  loc_CB730E: PopAdLdVar
  loc_CB730F: LitVarI4
  loc_CB7317: PopAdLdVar
  loc_CB7318: LitVarStr var_12C, vbNullString
  loc_CB731D: PopAdLdVar
  loc_CB731E: FLdPr Me
  loc_CB7321: VCallAd Control_ID_ServDifuFlex
  loc_CB7324: FStAdFunc var_88
  loc_CB7327: FLdPr var_88
  loc_CB732A: LateIdCallSt
  loc_CB7332: FFree1Ad var_88
  loc_CB7335: FLdPr Me
  loc_CB7338: MemLdI2 global_76
  loc_CB733B: CI4UI1
  loc_CB733C: CVarI4
  loc_CB7340: PopAdLdVar
  loc_CB7341: LitVarI4
  loc_CB7349: PopAdLdVar
  loc_CB734A: LitVarStr var_12C, vbNullString
  loc_CB734F: PopAdLdVar
  loc_CB7350: FLdPr Me
  loc_CB7353: VCallAd Control_ID_ServDifuFlex
  loc_CB7356: FStAdFunc var_88
  loc_CB7359: FLdPr var_88
  loc_CB735C: LateIdCallSt
  loc_CB7364: FFree1Ad var_88
  loc_CB7367: FLdPr Me
  loc_CB736A: MemLdI2 global_76
  loc_CB736D: CI4UI1
  loc_CB736E: CVarI4
  loc_CB7372: PopAdLdVar
  loc_CB7373: LitVarI4
  loc_CB737B: PopAdLdVar
  loc_CB737C: LitVarStr var_12C, vbNullString
  loc_CB7381: PopAdLdVar
  loc_CB7382: FLdPr Me
  loc_CB7385: VCallAd Control_ID_ServDifuFlex
  loc_CB7388: FStAdFunc var_88
  loc_CB738B: FLdPr var_88
  loc_CB738E: LateIdCallSt
  loc_CB7396: FFree1Ad var_88
  loc_CB7399: FLdPr Me
  loc_CB739C: MemLdI2 global_76
  loc_CB739F: CI4UI1
  loc_CB73A0: CVarI4
  loc_CB73A4: PopAdLdVar
  loc_CB73A5: LitVarI4
  loc_CB73AD: PopAdLdVar
  loc_CB73AE: LitVarStr var_12C, vbNullString
  loc_CB73B3: PopAdLdVar
  loc_CB73B4: FLdPr Me
  loc_CB73B7: VCallAd Control_ID_ServDifuFlex
  loc_CB73BA: FStAdFunc var_88
  loc_CB73BD: FLdPr var_88
  loc_CB73C0: LateIdCallSt
  loc_CB73C8: FFree1Ad var_88
  loc_CB73CB: FLdPr Me
  loc_CB73CE: MemLdI2 global_76
  loc_CB73D1: CI4UI1
  loc_CB73D2: CVarI4
  loc_CB73D6: PopAdLdVar
  loc_CB73D7: LitVarI4
  loc_CB73DF: PopAdLdVar
  loc_CB73E0: LitVarStr var_12C, vbNullString
  loc_CB73E5: PopAdLdVar
  loc_CB73E6: FLdPr Me
  loc_CB73E9: VCallAd Control_ID_ServDifuFlex
  loc_CB73EC: FStAdFunc var_88
  loc_CB73EF: FLdPr var_88
  loc_CB73F2: LateIdCallSt
  loc_CB73FA: FFree1Ad var_88
  loc_CB73FD: FLdPr Me
  loc_CB7400: MemLdI2 global_76
  loc_CB7403: CI4UI1
  loc_CB7404: CVarI4
  loc_CB7408: PopAdLdVar
  loc_CB7409: LitVarI4
  loc_CB7411: PopAdLdVar
  loc_CB7412: LitVarStr var_12C, vbNullString
  loc_CB7417: PopAdLdVar
  loc_CB7418: FLdPr Me
  loc_CB741B: VCallAd Control_ID_ServDifuFlex
  loc_CB741E: FStAdFunc var_88
  loc_CB7421: FLdPr var_88
  loc_CB7424: LateIdCallSt
  loc_CB742C: FFree1Ad var_88
  loc_CB742F: FLdPr Me
  loc_CB7432: MemLdI2 global_76
  loc_CB7435: CI4UI1
  loc_CB7436: CVarI4
  loc_CB743A: PopAdLdVar
  loc_CB743B: LitVarI4
  loc_CB7443: PopAdLdVar
  loc_CB7444: LitVarStr var_12C, vbNullString
  loc_CB7449: PopAdLdVar
  loc_CB744A: FLdPr Me
  loc_CB744D: VCallAd Control_ID_ServDifuFlex
  loc_CB7450: FStAdFunc var_88
  loc_CB7453: FLdPr var_88
  loc_CB7456: LateIdCallSt
  loc_CB745E: FFree1Ad var_88
  loc_CB7461: FLdPr Me
  loc_CB7464: MemLdI2 global_76
  loc_CB7467: CI4UI1
  loc_CB7468: CVarI4
  loc_CB746C: PopAdLdVar
  loc_CB746D: LitVarI4
  loc_CB7475: PopAdLdVar
  loc_CB7476: LitVarStr var_12C, vbNullString
  loc_CB747B: PopAdLdVar
  loc_CB747C: FLdPr Me
  loc_CB747F: VCallAd Control_ID_ServDifuFlex
  loc_CB7482: FStAdFunc var_88
  loc_CB7485: FLdPr var_88
  loc_CB7488: LateIdCallSt
  loc_CB7490: FFree1Ad var_88
  loc_CB7493: LitStr "Debe ingresar el código. Verifique..."
  loc_CB7496: FLdPr Me
  loc_CB7499: MemStStrCopy
  loc_CB749D: FLdPr Me
  loc_CB74A0: MemLdStr global_72
  loc_CB74A3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB74A8: FLdPr Me
  loc_CB74AB: VCallAd Control_ID_ServDifuFlex
  loc_CB74AE: FStAdFunc var_88
  loc_CB74B1: FLdPr var_88
  loc_CB74B4: LateIdCall
  loc_CB74BC: FFree1Ad var_88
  loc_CB74BF: LitI2_Byte &HFF
  loc_CB74C1: IStI2 Cancel
  loc_CB74C4: ExitProcHresult
  loc_CB74C5: FLdPr Me
  loc_CB74C8: MemLdRfVar from_stack_1.global_76
  loc_CB74CB: NextI2 var_9C, loc_CB55EC
  loc_CB74D0: LitI2_Byte 1
  loc_CB74D2: FLdPr Me
  loc_CB74D5: MemLdRfVar from_stack_1.global_76
  loc_CB74D8: FLdPr Me
  loc_CB74DB: VCallAd Control_ID_ServDifuFlex
  loc_CB74DE: FStAdFunc var_88
  loc_CB74E1: FLdPr var_88
  loc_CB74E4: LateIdLdVar var_98 DispID_4 0
  loc_CB74EB: CI4Var
  loc_CB74ED: LitI4 1
  loc_CB74F2: SubI4
  loc_CB74F3: CI2I4
  loc_CB74F4: FFree1Ad var_88
  loc_CB74F7: FFree1Var var_98 = ""
  loc_CB74FA: ForI2 var_348
  loc_CB7500: FLdPr Me
  loc_CB7503: MemLdI2 global_76
  loc_CB7506: CI4UI1
  loc_CB7507: FLdPr Me
  loc_CB750A: VCallAd Control_ID_ServDifuFlex
  loc_CB750D: FStAdFunc var_88
  loc_CB7510: FLdPr var_88
  loc_CB7513: LateIdLdVar var_98 DispID_10 0
  loc_CB751A: CI4Var
  loc_CB751C: NeI4
  loc_CB751D: FFree1Ad var_88
  loc_CB7520: FFree1Var var_98 = ""
  loc_CB7523: BranchF loc_CB7601
  loc_CB7526: FLdPr Me
  loc_CB7529: MemLdI2 global_76
  loc_CB752C: CI4UI1
  loc_CB752D: CVarI4
  loc_CB7531: PopAdLdVar
  loc_CB7532: LitVarI4
  loc_CB753A: PopAdLdVar
  loc_CB753B: FLdPr Me
  loc_CB753E: VCallAd Control_ID_ServDifuFlex
  loc_CB7541: FStAdFunc var_88
  loc_CB7544: FLdPr var_88
  loc_CB7547: LateIdCallLdVar
  loc_CB7551: CStrVarTmp
  loc_CB7552: FStStrNoPop var_F0
  loc_CB7555: FLdPr Me
  loc_CB7558: VCallAd Control_ID_ServDifuFlex
  loc_CB755B: FStAdFunc var_330
  loc_CB755E: FLdPr var_330
  loc_CB7561: LateIdLdVar var_EC DispID_10 0
  loc_CB7568: CI4Var
  loc_CB756A: CVarI4
  loc_CB756E: PopAdLdVar
  loc_CB756F: LitVarI4
  loc_CB7577: PopAdLdVar
  loc_CB7578: FLdPr Me
  loc_CB757B: VCallAd Control_ID_ServDifuFlex
  loc_CB757E: FStAdFunc var_334
  loc_CB7581: FLdPr var_334
  loc_CB7584: LateIdCallLdVar
  loc_CB758E: CStrVarTmp
  loc_CB758F: FStStrNoPop var_F4
  loc_CB7592: EqStr
  loc_CB7594: FFreeStr var_F0 = ""
  loc_CB759B: FFreeAd var_88 = "": var_330 = ""
  loc_CB75A4: FFreeVar var_98 = "": var_EC = ""
  loc_CB75AD: BranchF loc_CB7601
  loc_CB75B0: LitStr "El valor que esta ingresando, ya se encuentra ingresado en la fila: "
  loc_CB75B3: FLdPr Me
  loc_CB75B6: MemLdI2 global_76
  loc_CB75B9: CStrUI1
  loc_CB75BB: FStStrNoPop var_F0
  loc_CB75BE: ConcatStr
  loc_CB75BF: FStStrNoPop var_F4
  loc_CB75C2: LitStr ". Verifique"
  loc_CB75C5: ConcatStr
  loc_CB75C6: FStStrNoPop var_F8
  loc_CB75C9: FLdPr Me
  loc_CB75CC: MemStStrCopy
  loc_CB75D0: FFreeStr var_F0 = "": var_F4 = ""
  loc_CB75D9: FLdPr Me
  loc_CB75DC: MemLdStr global_72
  loc_CB75DF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB75E4: FLdPr Me
  loc_CB75E7: VCallAd Control_ID_ServDifuFlex
  loc_CB75EA: FStAdFunc var_88
  loc_CB75ED: FLdPr var_88
  loc_CB75F0: LateIdCall
  loc_CB75F8: FFree1Ad var_88
  loc_CB75FB: LitI2_Byte &HFF
  loc_CB75FD: IStI2 Cancel
  loc_CB7600: ExitProcHresult
  loc_CB7601: FLdPr Me
  loc_CB7604: MemLdRfVar from_stack_1.global_76
  loc_CB7607: NextI2 var_348, loc_CB7500
  loc_CB760C: Call Proc_259_55_B03CE4()
  loc_CB7611: ExitProcHresult
End Sub

Private Sub ServDifuFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'B251D8
  'Data Table: 526984
  loc_B24F70: ILdI2 KeyCode
  loc_B24F73: CI4UI1
  loc_B24F74: LitI4 &H2E
  loc_B24F79: EqI4
  loc_B24F7A: BranchF loc_B24FDF
  loc_B24F7D: FLdPr Me
  loc_B24F80: VCallAd Control_ID_ServDifuFlex
  loc_B24F83: FStAdFunc var_88
  loc_B24F86: FLdPr var_88
  loc_B24F89: LateIdLdVar var_98 DispID_4 0
  loc_B24F90: CI4Var
  loc_B24F92: LitI4 1
  loc_B24F97: GtI4
  loc_B24F98: FFree1Ad var_88
  loc_B24F9B: FFree1Var var_98 = ""
  loc_B24F9E: BranchF loc_B24FDC
  loc_B24FA1: OnErrorGoto loc_B251AA
  loc_B24FA4: FLdPr Me
  loc_B24FA7: VCallAd Control_ID_ServDifuFlex
  loc_B24FAA: FStAdFunc var_88
  loc_B24FAD: FLdPr var_88
  loc_B24FB0: LateIdLdVar var_98 DispID_10 0
  loc_B24FB7: CI4Var
  loc_B24FB9: CVarI4
  loc_B24FBD: PopAdLdVar
  loc_B24FBE: FLdPr Me
  loc_B24FC1: VCallAd Control_ID_ServDifuFlex
  loc_B24FC4: FStAdFunc var_BC
  loc_B24FC7: FLdPr var_BC
  loc_B24FCA: LateIdCall
  loc_B24FD2: FFreeAd var_88 = ""
  loc_B24FD9: FFree1Var var_98 = ""
  loc_B24FDC: Branch loc_B251AA
  loc_B24FDF: ILdI2 KeyCode
  loc_B24FE2: CI4UI1
  loc_B24FE3: LitI4 &H2D
  loc_B24FE8: EqI4
  loc_B24FE9: BranchF loc_B251AA
  loc_B24FEC: LitVarStr var_A8, vbNullString
  loc_B24FF1: LitI4 9
  loc_B24FF6: FLdRfVar var_98
  loc_B24FF9: ImpAdCallFPR4  = Chr()
  loc_B24FFE: FLdRfVar var_98
  loc_B25001: ConcatVar var_CC
  loc_B25005: LitVarStr var_B8, vbNullString
  loc_B2500A: ConcatVar var_DC
  loc_B2500E: LitI4 9
  loc_B25013: FLdRfVar var_EC
  loc_B25016: ImpAdCallFPR4  = Chr()
  loc_B2501B: FLdRfVar var_EC
  loc_B2501E: ConcatVar var_FC
  loc_B25022: LitVarStr var_10C, vbNullString
  loc_B25027: ConcatVar var_11C
  loc_B2502B: LitI4 9
  loc_B25030: FLdRfVar var_12C
  loc_B25033: ImpAdCallFPR4  = Chr()
  loc_B25038: FLdRfVar var_12C
  loc_B2503B: ConcatVar var_13C
  loc_B2503F: LitVarStr var_14C, vbNullString
  loc_B25044: ConcatVar var_15C
  loc_B25048: LitI4 9
  loc_B2504D: FLdRfVar var_16C
  loc_B25050: ImpAdCallFPR4  = Chr()
  loc_B25055: FLdRfVar var_16C
  loc_B25058: ConcatVar var_17C
  loc_B2505C: LitVarStr var_18C, vbNullString
  loc_B25061: ConcatVar var_19C
  loc_B25065: LitI4 9
  loc_B2506A: FLdRfVar var_1AC
  loc_B2506D: ImpAdCallFPR4  = Chr()
  loc_B25072: FLdRfVar var_1AC
  loc_B25075: ConcatVar var_1BC
  loc_B25079: LitVarStr var_1CC, vbNullString
  loc_B2507E: ConcatVar var_1DC
  loc_B25082: LitI4 9
  loc_B25087: FLdRfVar var_1EC
  loc_B2508A: ImpAdCallFPR4  = Chr()
  loc_B2508F: FLdRfVar var_1EC
  loc_B25092: ConcatVar var_1FC
  loc_B25096: LitVarStr var_20C, vbNullString
  loc_B2509B: ConcatVar var_21C
  loc_B2509F: LitI4 9
  loc_B250A4: FLdRfVar var_22C
  loc_B250A7: ImpAdCallFPR4  = Chr()
  loc_B250AC: FLdRfVar var_22C
  loc_B250AF: ConcatVar var_23C
  loc_B250B3: LitVarStr var_24C, "0"
  loc_B250B8: ConcatVar var_25C
  loc_B250BC: LitI4 9
  loc_B250C1: FLdRfVar var_26C
  loc_B250C4: ImpAdCallFPR4  = Chr()
  loc_B250C9: FLdRfVar var_26C
  loc_B250CC: ConcatVar var_27C
  loc_B250D0: LitVarStr var_28C, "0"
  loc_B250D5: ConcatVar var_29C
  loc_B250D9: CStrVarTmp
  loc_B250DA: FStStrNoPop var_2A0
  loc_B250DD: FLdPr Me
  loc_B250E0: MemStStrCopy
  loc_B250E4: FFree1Str var_2A0
  loc_B250E7: FFreeVar var_98 = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_21C = "": var_22C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = ""
  loc_B2511A: FLdPr Me
  loc_B2511D: MemLdRfVar from_stack_1.global_80
  loc_B25120: CDargRef
  loc_B25124: FLdPr Me
  loc_B25127: VCallAd Control_ID_ServDifuFlex
  loc_B2512A: FStAdFunc var_88
  loc_B2512D: FLdPr var_88
  loc_B25130: LateIdCall
  loc_B25138: FFree1Ad var_88
  loc_B2513B: FLdPr Me
  loc_B2513E: VCallAd Control_ID_ServDifuFlex
  loc_B25141: FStAdFunc var_88
  loc_B25144: FLdPr var_88
  loc_B25147: LateIdLdVar var_98 DispID_10 0
  loc_B2514E: CI4Var
  loc_B25150: LitI4 1
  loc_B25155: AddI4
  loc_B25156: CVarI4
  loc_B2515A: PopAdLdVar
  loc_B2515B: FLdPr Me
  loc_B2515E: VCallAd Control_ID_ServDifuFlex
  loc_B25161: FStAdFunc var_BC
  loc_B25164: FLdPr var_BC
  loc_B25167: LateIdSt
  loc_B2516C: FFreeAd var_88 = ""
  loc_B25173: FFree1Var var_98 = ""
  loc_B25176: LitVarI4
  loc_B2517E: PopAdLdVar
  loc_B2517F: FLdPr Me
  loc_B25182: VCallAd Control_ID_ServDifuFlex
  loc_B25185: FStAdFunc var_88
  loc_B25188: FLdPr var_88
  loc_B2518B: LateIdSt
  loc_B25190: FFree1Ad var_88
  loc_B25193: FLdPr Me
  loc_B25196: VCallAd Control_ID_ServDifuFlex
  loc_B25199: FStAdFunc var_88
  loc_B2519C: FLdPr var_88
  loc_B2519F: LateIdCall
  loc_B251A7: FFree1Ad var_88
  loc_B251AA: FLdRfVar var_2A4
  loc_B251AD: ImpAdCallI2 Err 'rtcErrObj
  loc_B251B2: FStAdFunc var_88
  loc_B251B5: FLdPr var_88
  loc_B251B8:  = Err.Number
  loc_B251BD: ILdRf var_2A4
  loc_B251C0: LitI4 &H753F
  loc_B251C5: EqI4
  loc_B251C6: FFree1Ad var_88
  loc_B251C9: BranchF loc_B251D1
  loc_B251CC: Call Proc_259_54_B463DC()
  loc_B251D1: Call Proc_259_55_B03CE4()
  loc_B251D6: ExitProcHresult
End Sub

Private Sub ServDifuFlex_KeyPress(KeyAscii As Integer) 'C30820
  'Data Table: 526984
  loc_C2FCC8: ILdI2 KeyAscii
  loc_C2FCCB: LitI2_Byte 8
  loc_C2FCCD: EqI2
  loc_C2FCCE: BranchF loc_C2FECE
  loc_C2FCD1: FLdPr Me
  loc_C2FCD4: VCallAd Control_ID_ServDifuFlex
  loc_C2FCD7: FStAdFunc var_88
  loc_C2FCDA: FLdPr var_88
  loc_C2FCDD: LateIdLdVar var_98 DispID_11 0
  loc_C2FCE4: CI4Var
  loc_C2FCE6: LitI4 0
  loc_C2FCEB: EqI4
  loc_C2FCEC: FLdPr Me
  loc_C2FCEF: VCallAd Control_ID_ServDifuFlex
  loc_C2FCF2: FStAdFunc var_9C
  loc_C2FCF5: FLdPr var_9C
  loc_C2FCF8: LateIdLdVar var_AC DispID_11 0
  loc_C2FCFF: CI4Var
  loc_C2FD01: LitI4 1
  loc_C2FD06: EqI4
  loc_C2FD07: OrI4
  loc_C2FD08: FFreeAd var_88 = ""
  loc_C2FD0F: FFreeVar var_98 = ""
  loc_C2FD16: BranchF loc_C2FDB5
  loc_C2FD19: FLdPr Me
  loc_C2FD1C: VCallAd Control_ID_ServDifuFlex
  loc_C2FD1F: FStAdFunc var_88
  loc_C2FD22: FLdPr var_88
  loc_C2FD25: LateIdLdVar var_98 DispID_0 0
  loc_C2FD2C: CStrVarTmp
  loc_C2FD2D: FStStrNoPop var_B0
  loc_C2FD30: LitStr vbNullString
  loc_C2FD33: NeStr
  loc_C2FD35: FFree1Str var_B0
  loc_C2FD38: FFree1Ad var_88
  loc_C2FD3B: FFree1Var var_98 = ""
  loc_C2FD3E: BranchF loc_C2FDB5
  loc_C2FD41: FLdPr Me
  loc_C2FD44: VCallAd Control_ID_ServDifuFlex
  loc_C2FD47: FStAdFunc var_88
  loc_C2FD4A: FLdPr var_88
  loc_C2FD4D: LateIdLdVar var_98 DispID_0 0
  loc_C2FD54: PopAd
  loc_C2FD56: FLdPr Me
  loc_C2FD59: VCallAd Control_ID_ServDifuFlex
  loc_C2FD5C: FStAdFunc var_9C
  loc_C2FD5F: FLdPr var_9C
  loc_C2FD62: LateIdLdVar var_AC DispID_0 0
  loc_C2FD69: CStrVarTmp
  loc_C2FD6A: FStStrNoPop var_B0
  loc_C2FD6D: FnLenStr
  loc_C2FD6E: LitI4 1
  loc_C2FD73: SubI4
  loc_C2FD74: FLdRfVar var_98
  loc_C2FD77: CStrVarTmp
  loc_C2FD78: CVarStr var_C0
  loc_C2FD7B: FLdRfVar var_D0
  loc_C2FD7E: ImpAdCallFPR4  = Left(, )
  loc_C2FD83: FLdRfVar var_D0
  loc_C2FD86: CStrVarTmp
  loc_C2FD87: CVarStr var_E0
  loc_C2FD8A: PopAdLdVar
  loc_C2FD8B: FLdPr Me
  loc_C2FD8E: VCallAd Control_ID_ServDifuFlex
  loc_C2FD91: FStAdFunc var_F4
  loc_C2FD94: FLdPr var_F4
  loc_C2FD97: LateIdSt
  loc_C2FD9C: FFree1Str var_B0
  loc_C2FD9F: FFreeAd var_88 = "": var_9C = ""
  loc_C2FDA8: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C2FDB5: FLdPr Me
  loc_C2FDB8: VCallAd Control_ID_ServDifuFlex
  loc_C2FDBB: FStAdFunc var_88
  loc_C2FDBE: FLdPr var_88
  loc_C2FDC1: LateIdLdVar var_98 DispID_11 0
  loc_C2FDC8: CI4Var
  loc_C2FDCA: LitI4 3
  loc_C2FDCF: EqI4
  loc_C2FDD0: FFree1Ad var_88
  loc_C2FDD3: FFree1Var var_98 = ""
  loc_C2FDD6: BranchF loc_C2FECB
  loc_C2FDD9: FLdPr Me
  loc_C2FDDC: VCallAd Control_ID_ServDifuFlex
  loc_C2FDDF: FStAdFunc var_88
  loc_C2FDE2: FLdPr var_88
  loc_C2FDE5: LateIdLdVar var_98 DispID_10 0
  loc_C2FDEC: CI4Var
  loc_C2FDEE: CVarI4
  loc_C2FDF2: PopAdLdVar
  loc_C2FDF3: LitVarI4
  loc_C2FDFB: PopAdLdVar
  loc_C2FDFC: FLdPr Me
  loc_C2FDFF: VCallAd Control_ID_ServDifuFlex
  loc_C2FE02: FStAdFunc var_9C
  loc_C2FE05: FLdPr var_9C
  loc_C2FE08: LateIdCallLdVar
  loc_C2FE12: CStrVarTmp
  loc_C2FE13: FStStrNoPop var_B0
  loc_C2FE16: LitStr "1"
  loc_C2FE19: EqStr
  loc_C2FE1B: FFree1Str var_B0
  loc_C2FE1E: FFreeAd var_88 = ""
  loc_C2FE25: FFreeVar var_98 = ""
  loc_C2FE2C: BranchF loc_C2FECB
  loc_C2FE2F: FLdPr Me
  loc_C2FE32: VCallAd Control_ID_ServDifuFlex
  loc_C2FE35: FStAdFunc var_88
  loc_C2FE38: FLdPr var_88
  loc_C2FE3B: LateIdLdVar var_98 DispID_0 0
  loc_C2FE42: CStrVarTmp
  loc_C2FE43: FStStrNoPop var_B0
  loc_C2FE46: LitStr vbNullString
  loc_C2FE49: NeStr
  loc_C2FE4B: FFree1Str var_B0
  loc_C2FE4E: FFree1Ad var_88
  loc_C2FE51: FFree1Var var_98 = ""
  loc_C2FE54: BranchF loc_C2FECB
  loc_C2FE57: FLdPr Me
  loc_C2FE5A: VCallAd Control_ID_ServDifuFlex
  loc_C2FE5D: FStAdFunc var_88
  loc_C2FE60: FLdPr var_88
  loc_C2FE63: LateIdLdVar var_98 DispID_0 0
  loc_C2FE6A: PopAd
  loc_C2FE6C: FLdPr Me
  loc_C2FE6F: VCallAd Control_ID_ServDifuFlex
  loc_C2FE72: FStAdFunc var_9C
  loc_C2FE75: FLdPr var_9C
  loc_C2FE78: LateIdLdVar var_AC DispID_0 0
  loc_C2FE7F: CStrVarTmp
  loc_C2FE80: FStStrNoPop var_B0
  loc_C2FE83: FnLenStr
  loc_C2FE84: LitI4 1
  loc_C2FE89: SubI4
  loc_C2FE8A: FLdRfVar var_98
  loc_C2FE8D: CStrVarTmp
  loc_C2FE8E: CVarStr var_C0
  loc_C2FE91: FLdRfVar var_D0
  loc_C2FE94: ImpAdCallFPR4  = Left(, )
  loc_C2FE99: FLdRfVar var_D0
  loc_C2FE9C: CStrVarTmp
  loc_C2FE9D: CVarStr var_E0
  loc_C2FEA0: PopAdLdVar
  loc_C2FEA1: FLdPr Me
  loc_C2FEA4: VCallAd Control_ID_ServDifuFlex
  loc_C2FEA7: FStAdFunc var_F4
  loc_C2FEAA: FLdPr var_F4
  loc_C2FEAD: LateIdSt
  loc_C2FEB2: FFree1Str var_B0
  loc_C2FEB5: FFreeAd var_88 = "": var_9C = ""
  loc_C2FEBE: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C2FECB: Branch loc_C3081F
  loc_C2FECE: ILdI2 KeyAscii
  loc_C2FED1: LitI2_Byte &H20
  loc_C2FED3: EqI2
  loc_C2FED4: BranchF loc_C3056A
  loc_C2FED7: FLdPr Me
  loc_C2FEDA: VCallAd Control_ID_ServDifuFlex
  loc_C2FEDD: FStAdFunc var_88
  loc_C2FEE0: FLdPr var_88
  loc_C2FEE3: LateIdLdVar var_98 DispID_11 0
  loc_C2FEEA: CI4Var
  loc_C2FEEC: LitI4 1
  loc_C2FEF1: EqI4
  loc_C2FEF2: FLdPr Me
  loc_C2FEF5: VCallAd Control_ID_ServDifuFlex
  loc_C2FEF8: FStAdFunc var_9C
  loc_C2FEFB: FLdPr var_9C
  loc_C2FEFE: LateIdLdVar var_AC DispID_11 0
  loc_C2FF05: CI4Var
  loc_C2FF07: LitI4 2
  loc_C2FF0C: EqI4
  loc_C2FF0D: OrI4
  loc_C2FF0E: FFreeAd var_88 = ""
  loc_C2FF15: FFreeVar var_98 = ""
  loc_C2FF1C: BranchF loc_C30562
  loc_C2FF1F: FLdRfVar var_B0
  loc_C2FF22: FLdPr Me
  loc_C2FF25: MemLdRfVar from_stack_1.global_96
  loc_C2FF28: NewIfNullPr tblDifunto
  loc_C2FF2B: from_stack_1v = tblDifunto.CodiCemeGet()
  loc_C2FF30: ILdRf var_B0
  loc_C2FF33: LitStr vbNullString
  loc_C2FF36: NeStr
  loc_C2FF38: FFree1Str var_B0
  loc_C2FF3B: BranchF loc_C30562
  loc_C2FF3E: FLdRfVar var_B0
  loc_C2FF41: FLdPr Me
  loc_C2FF44: MemLdRfVar from_stack_1.global_96
  loc_C2FF47: NewIfNullPr tblDifunto
  loc_C2FF4A: from_stack_1v = tblDifunto.CodiCemeGet()
  loc_C2FF4F: ILdRf var_B0
  loc_C2FF52: CUI1Str
  loc_C2FF54: ImpAdLdRf MemVar_D94A60
  loc_C2FF57: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C2FF5A: Call dlgBuscarServiciodeCementerio.byCodiCemePut(from_stack_1v)
  loc_C2FF5F: FFree1Str var_B0
  loc_C2FF62: FLdRfVar var_B0
  loc_C2FF65: FLdPr Me
  loc_C2FF68: MemLdRfVar from_stack_1.global_96
  loc_C2FF6B: NewIfNullPr tblDifunto
  loc_C2FF6E: from_stack_1v = tblDifunto.CodiTiseGet()
  loc_C2FF73: ILdRf var_B0
  loc_C2FF76: CI2Str
  loc_C2FF78: ImpAdLdRf MemVar_D94A60
  loc_C2FF7B: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C2FF7E: Call dlgBuscarServiciodeCementerio.iCodiTisePut(from_stack_1v)
  loc_C2FF83: FFree1Str var_B0
  loc_C2FF86: FLdRfVar var_B0
  loc_C2FF89: FLdPr Me
  loc_C2FF8C: MemLdRfVar from_stack_1.global_96
  loc_C2FF8F: NewIfNullPr tblDifunto
  loc_C2FF92: from_stack_1v = tblDifunto.ParvDifuGet()
  loc_C2FF97: ILdRf var_B0
  loc_C2FF9A: CUI1Str
  loc_C2FF9C: ImpAdLdRf MemVar_D94A60
  loc_C2FF9F: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C2FFA2: Call dlgBuscarServiciodeCementerio.byParvDifuPut(from_stack_1v)
  loc_C2FFA7: FFree1Str var_B0
  loc_C2FFAA: FLdRfVar var_B0
  loc_C2FFAD: FLdPr Me
  loc_C2FFB0: MemLdRfVar from_stack_1.global_96
  loc_C2FFB3: NewIfNullPr tblDifunto
  loc_C2FFB6: from_stack_1v = tblDifunto.FilaDifuGet()
  loc_C2FFBB: ILdRf var_B0
  loc_C2FFBE: CUI1Str
  loc_C2FFC0: ImpAdLdRf MemVar_D94A60
  loc_C2FFC3: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C2FFC6: Call dlgBuscarServiciodeCementerio.byFilaDifuPut(from_stack_1v)
  loc_C2FFCB: FFree1Str var_B0
  loc_C2FFCE: LitStr "Normal"
  loc_C2FFD1: ImpAdLdRf MemVar_D94A60
  loc_C2FFD4: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C2FFD7: Call dlgBuscarServiciodeCementerio.sEmisSecePut(from_stack_1v)
  loc_C2FFDC: LitVar_Missing var_104
  loc_C2FFDF: PopAdLdVar
  loc_C2FFE0: LitVarI4
  loc_C2FFE8: PopAdLdVar
  loc_C2FFE9: ImpAdLdRf MemVar_D94A60
  loc_C2FFEC: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C2FFEF: dlgBuscarServiciodeCementerio.Show from_stack_1, from_stack_2
  loc_C2FFF4: FLdRfVar var_128
  loc_C2FFF7: FLdRfVar var_88
  loc_C2FFFA: ImpAdLdRf MemVar_D94A60
  loc_C2FFFD: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C30000: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30005: FLdPr var_88
  loc_C30008: from_stack_1 = clsservceme.RecordCount
  loc_C3000D: ILdRf var_128
  loc_C30010: LitI4 0
  loc_C30015: GtI4
  loc_C30016: FFree1Ad var_88
  loc_C30019: BranchF loc_C30562
  loc_C3001C: FLdRfVar var_12A
  loc_C3001F: FLdRfVar var_88
  loc_C30022: ImpAdLdRf MemVar_D94A60
  loc_C30025: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C30028: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C3002D: FLdPr var_88
  loc_C30030: from_stack_1 = clsservceme.PeriInfo
  loc_C30035: FLdI2 var_12A
  loc_C30038: ImpAdLdI2 MemVar_D93034
  loc_C3003B: NeI2
  loc_C3003C: FFree1Ad var_88
  loc_C3003F: BranchF loc_C30062
  loc_C30042: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_C30045: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C3004A: FLdPr Me
  loc_C3004D: VCallAd Control_ID_ServDifuFlex
  loc_C30050: FStAdFunc var_88
  loc_C30053: FLdPr var_88
  loc_C30056: LateIdCall
  loc_C3005E: FFree1Ad var_88
  loc_C30061: ExitProcHresult
  loc_C30062: FLdRfVar var_12A
  loc_C30065: FLdRfVar var_88
  loc_C30068: ImpAdLdRf MemVar_D94A60
  loc_C3006B: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C3006E: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30073: FLdPr var_88
  loc_C30076: from_stack_1 = clsservceme.PeriInfo
  loc_C3007B: FLdRfVar var_B0
  loc_C3007E: FLdRfVar var_9C
  loc_C30081: ImpAdLdRf MemVar_D94A60
  loc_C30084: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C30087: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C3008C: FLdPr var_9C
  loc_C3008F: from_stack_1 = clsservceme.CodiConc
  loc_C30094: ILdRf var_B0
  loc_C30097: FLdI2 var_12A
  loc_C3009A: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_C3009F: FStStrNoPop var_130
  loc_C300A2: LitStr vbNullString
  loc_C300A5: EqStr
  loc_C300A7: FFreeStr var_B0 = ""
  loc_C300AE: FFreeAd var_88 = ""
  loc_C300B5: BranchF loc_C300F4
  loc_C300B8: LitStr "El concepto: "
  loc_C300BB: FLdRfVar var_B0
  loc_C300BE: FLdRfVar var_88
  loc_C300C1: ImpAdLdRf MemVar_D94A60
  loc_C300C4: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C300C7: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C300CC: FLdPr var_88
  loc_C300CF: from_stack_1 = clsservceme.CodiConc
  loc_C300D4: ILdRf var_B0
  loc_C300D7: ConcatStr
  loc_C300D8: FStStrNoPop var_130
  loc_C300DB: LitStr " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_C300DE: ConcatStr
  loc_C300DF: FStStrNoPop var_134
  loc_C300E2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C300E7: FFreeStr var_B0 = "": var_130 = ""
  loc_C300F0: FFree1Ad var_88
  loc_C300F3: ExitProcHresult
  loc_C300F4: FLdRfVar var_12A
  loc_C300F7: FLdRfVar var_88
  loc_C300FA: ImpAdLdRf MemVar_D94A60
  loc_C300FD: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C30100: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30105: FLdPr var_88
  loc_C30108: from_stack_1 = clsservceme.TiafConc
  loc_C3010D: FLdUI1
  loc_C30111: CI2UI1
  loc_C30113: LitI2_Byte 0
  loc_C30115: EqI2
  loc_C30116: FFree1Ad var_88
  loc_C30119: BranchF loc_C30158
  loc_C3011C: LitStr "El concepto: "
  loc_C3011F: FLdRfVar var_B0
  loc_C30122: FLdRfVar var_88
  loc_C30125: ImpAdLdRf MemVar_D94A60
  loc_C30128: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C3012B: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30130: FLdPr var_88
  loc_C30133: from_stack_1 = clsservceme.CodiConc
  loc_C30138: ILdRf var_B0
  loc_C3013B: ConcatStr
  loc_C3013C: FStStrNoPop var_130
  loc_C3013F: LitStr " No tiene ningún tipo de movimiento. No se emite el boleto."
  loc_C30142: ConcatStr
  loc_C30143: FStStrNoPop var_134
  loc_C30146: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C3014B: FFreeStr var_B0 = "": var_130 = ""
  loc_C30154: FFree1Ad var_88
  loc_C30157: ExitProcHresult
  loc_C30158: FLdPr Me
  loc_C3015B: VCallAd Control_ID_ServDifuFlex
  loc_C3015E: FStAdFunc var_9C
  loc_C30161: FLdPr var_9C
  loc_C30164: LateIdLdVar var_98 DispID_10 0
  loc_C3016B: CI4Var
  loc_C3016D: CVarI4
  loc_C30171: PopAdLdVar
  loc_C30172: LitVarI4
  loc_C3017A: PopAdLdVar
  loc_C3017B: FLdRfVar var_12A
  loc_C3017E: FLdRfVar var_88
  loc_C30181: ImpAdLdRf MemVar_D94A60
  loc_C30184: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C30187: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C3018C: FLdPr var_88
  loc_C3018F: from_stack_1 = clsservceme.CodiSece
  loc_C30194: FLdI2 var_12A
  loc_C30197: CStrUI1
  loc_C30199: CVarStr var_AC
  loc_C3019C: PopAdLdVar
  loc_C3019D: FLdPr Me
  loc_C301A0: VCallAd Control_ID_ServDifuFlex
  loc_C301A3: FStAdFunc var_F4
  loc_C301A6: FLdPr var_F4
  loc_C301A9: LateIdCallSt
  loc_C301B1: FFreeAd var_88 = "": var_9C = ""
  loc_C301BA: FFreeVar var_98 = ""
  loc_C301C1: FLdPr Me
  loc_C301C4: VCallAd Control_ID_ServDifuFlex
  loc_C301C7: FStAdFunc var_9C
  loc_C301CA: FLdPr var_9C
  loc_C301CD: LateIdLdVar var_98 DispID_10 0
  loc_C301D4: CI4Var
  loc_C301D6: CVarI4
  loc_C301DA: PopAdLdVar
  loc_C301DB: LitVarI4
  loc_C301E3: PopAdLdVar
  loc_C301E4: FLdRfVar var_B0
  loc_C301E7: FLdRfVar var_88
  loc_C301EA: ImpAdLdRf MemVar_D94A60
  loc_C301ED: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C301F0: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C301F5: FLdPr var_88
  loc_C301F8: from_stack_1 = clsservceme.DetaSece
  loc_C301FD: FLdZeroAd var_B0
  loc_C30200: CVarStr var_AC
  loc_C30203: PopAdLdVar
  loc_C30204: FLdPr Me
  loc_C30207: VCallAd Control_ID_ServDifuFlex
  loc_C3020A: FStAdFunc var_F4
  loc_C3020D: FLdPr var_F4
  loc_C30210: LateIdCallSt
  loc_C30218: FFreeAd var_88 = "": var_9C = ""
  loc_C30221: FFreeVar var_98 = ""
  loc_C30228: FLdRfVar var_14C
  loc_C3022B: FLdRfVar var_88
  loc_C3022E: ImpAdLdRf MemVar_D94A60
  loc_C30231: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C30234: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30239: FLdPr var_88
  loc_C3023C: from_stack_1 = clsservceme.ImpoSece
  loc_C30241: FLdPr Me
  loc_C30244: VCallAd Control_ID_ServDifuFlex
  loc_C30247: FStAdFunc var_9C
  loc_C3024A: FLdPr var_9C
  loc_C3024D: LateIdLdVar var_D0 DispID_10 0
  loc_C30254: CI4Var
  loc_C30256: CVarI4
  loc_C3025A: PopAdLdVar
  loc_C3025B: LitVarI4
  loc_C30263: PopAdLdVar
  loc_C30264: LitI4 1
  loc_C30269: LitI4 1
  loc_C3026E: LitVarStr var_104, "0.00"
  loc_C30273: FStVarCopyObj var_AC
  loc_C30276: FLdRfVar var_AC
  loc_C30279: FLdFPR8 var_14C
  loc_C3027C: CVarR8
  loc_C30280: FLdRfVar var_C0
  loc_C30283: ImpAdCallFPR4  = Format(, )
  loc_C30288: FLdRfVar var_C0
  loc_C3028B: CStrVarTmp
  loc_C3028C: CVarStr var_E0
  loc_C3028F: PopAdLdVar
  loc_C30290: FLdPr Me
  loc_C30293: VCallAd Control_ID_ServDifuFlex
  loc_C30296: FStAdFunc var_F4
  loc_C30299: FLdPr var_F4
  loc_C3029C: LateIdCallSt
  loc_C302A4: FFreeAd var_88 = "": var_9C = ""
  loc_C302AD: FFreeVar var_98 = "": var_AC = "": var_D0 = "": var_C0 = ""
  loc_C302BA: FLdPr Me
  loc_C302BD: VCallAd Control_ID_ServDifuFlex
  loc_C302C0: FStAdFunc var_174
  loc_C302C3: FLdPr var_174
  loc_C302C6: LateIdLdVar var_98 DispID_10 0
  loc_C302CD: CI4Var
  loc_C302CF: CVarI4
  loc_C302D3: PopAdLdVar
  loc_C302D4: LitVarI4
  loc_C302DC: PopAdLdVar
  loc_C302DD: FLdRfVar var_AC
  loc_C302E0: FLdRfVar var_170
  loc_C302E3: LitVarStr var_F0, "PeriInfo"
  loc_C302E8: PopAdLdVar
  loc_C302E9: FLdRfVar var_F4
  loc_C302EC: FLdRfVar var_9C
  loc_C302EF: FLdRfVar var_88
  loc_C302F2: ImpAdLdRf MemVar_D94A60
  loc_C302F5: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C302F8: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C302FD: FLdPr var_88
  loc_C30300: from_stack_1v = clsservceme.RsFrmGet()
  loc_C30305: FLdPr var_9C
  loc_C30308:  = Me.Fields
  loc_C3030D: FLdPr var_F4
  loc_C30310: from_stack_2 = Me.Item(from_stack_1)
  loc_C30315: FLdPr var_170
  loc_C30318:  = Me.Value
  loc_C3031D: FLdRfVar var_AC
  loc_C30320: CStrVarTmp
  loc_C30321: CVarStr var_C0
  loc_C30324: PopAdLdVar
  loc_C30325: FLdPr Me
  loc_C30328: VCallAd Control_ID_ServDifuFlex
  loc_C3032B: FStAdFunc var_178
  loc_C3032E: FLdPr var_178
  loc_C30331: LateIdCallSt
  loc_C30339: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_174 = "": var_170 = ""
  loc_C30348: FFreeVar var_98 = "": var_AC = ""
  loc_C30351: FLdPr Me
  loc_C30354: VCallAd Control_ID_ServDifuFlex
  loc_C30357: FStAdFunc var_174
  loc_C3035A: FLdPr var_174
  loc_C3035D: LateIdLdVar var_98 DispID_10 0
  loc_C30364: CI4Var
  loc_C30366: CVarI4
  loc_C3036A: PopAdLdVar
  loc_C3036B: LitVarI4
  loc_C30373: PopAdLdVar
  loc_C30374: FLdRfVar var_AC
  loc_C30377: FLdRfVar var_170
  loc_C3037A: LitVarStr var_F0, "CodiConc"
  loc_C3037F: PopAdLdVar
  loc_C30380: FLdRfVar var_F4
  loc_C30383: FLdRfVar var_9C
  loc_C30386: FLdRfVar var_88
  loc_C30389: ImpAdLdRf MemVar_D94A60
  loc_C3038C: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C3038F: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30394: FLdPr var_88
  loc_C30397: from_stack_1v = clsservceme.RsFrmGet()
  loc_C3039C: FLdPr var_9C
  loc_C3039F:  = Me.Fields
  loc_C303A4: FLdPr var_F4
  loc_C303A7: from_stack_2 = Me.Item(from_stack_1)
  loc_C303AC: FLdPr var_170
  loc_C303AF:  = Me.Value
  loc_C303B4: FLdRfVar var_AC
  loc_C303B7: CStrVarTmp
  loc_C303B8: CVarStr var_C0
  loc_C303BB: PopAdLdVar
  loc_C303BC: FLdPr Me
  loc_C303BF: VCallAd Control_ID_ServDifuFlex
  loc_C303C2: FStAdFunc var_178
  loc_C303C5: FLdPr var_178
  loc_C303C8: LateIdCallSt
  loc_C303D0: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_174 = "": var_170 = ""
  loc_C303DF: FFreeVar var_98 = "": var_AC = ""
  loc_C303E8: FLdPr Me
  loc_C303EB: VCallAd Control_ID_ServDifuFlex
  loc_C303EE: FStAdFunc var_88
  loc_C303F1: FLdPr var_88
  loc_C303F4: LateIdLdVar var_98 DispID_10 0
  loc_C303FB: CI4Var
  loc_C303FD: CVarI4
  loc_C30401: PopAdLdVar
  loc_C30402: LitVarI4
  loc_C3040A: PopAdLdVar
  loc_C3040B: LitVarStr var_144, "0"
  loc_C30410: PopAdLdVar
  loc_C30411: FLdPr Me
  loc_C30414: VCallAd Control_ID_ServDifuFlex
  loc_C30417: FStAdFunc var_9C
  loc_C3041A: FLdPr var_9C
  loc_C3041D: LateIdCallSt
  loc_C30425: FFreeAd var_88 = ""
  loc_C3042C: FFree1Var var_98 = ""
  loc_C3042F: FLdPr Me
  loc_C30432: VCallAd Control_ID_ServDifuFlex
  loc_C30435: FStAdFunc var_174
  loc_C30438: FLdPr var_174
  loc_C3043B: LateIdLdVar var_98 DispID_10 0
  loc_C30442: CI4Var
  loc_C30444: CVarI4
  loc_C30448: PopAdLdVar
  loc_C30449: LitVarI4
  loc_C30451: PopAdLdVar
  loc_C30452: FLdRfVar var_AC
  loc_C30455: FLdRfVar var_170
  loc_C30458: LitVarStr var_F0, "TiafConc"
  loc_C3045D: PopAdLdVar
  loc_C3045E: FLdRfVar var_F4
  loc_C30461: FLdRfVar var_9C
  loc_C30464: FLdRfVar var_88
  loc_C30467: ImpAdLdRf MemVar_D94A60
  loc_C3046A: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C3046D: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30472: FLdPr var_88
  loc_C30475: from_stack_1v = clsservceme.RsFrmGet()
  loc_C3047A: FLdPr var_9C
  loc_C3047D:  = Me.Fields
  loc_C30482: FLdPr var_F4
  loc_C30485: from_stack_2 = Me.Item(from_stack_1)
  loc_C3048A: FLdPr var_170
  loc_C3048D:  = Me.Value
  loc_C30492: FLdRfVar var_AC
  loc_C30495: CStrVarTmp
  loc_C30496: CVarStr var_C0
  loc_C30499: PopAdLdVar
  loc_C3049A: FLdPr Me
  loc_C3049D: VCallAd Control_ID_ServDifuFlex
  loc_C304A0: FStAdFunc var_178
  loc_C304A3: FLdPr var_178
  loc_C304A6: LateIdCallSt
  loc_C304AE: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_174 = "": var_170 = ""
  loc_C304BD: FFreeVar var_98 = "": var_AC = ""
  loc_C304C6: FLdPr Me
  loc_C304C9: VCallAd Control_ID_ServDifuFlex
  loc_C304CC: FStAdFunc var_174
  loc_C304CF: FLdPr var_174
  loc_C304D2: LateIdLdVar var_98 DispID_10 0
  loc_C304D9: CI4Var
  loc_C304DB: CVarI4
  loc_C304DF: PopAdLdVar
  loc_C304E0: LitVarI4
  loc_C304E8: PopAdLdVar
  loc_C304E9: FLdRfVar var_AC
  loc_C304EC: FLdRfVar var_170
  loc_C304EF: LitVarStr var_F0, "AnioSece"
  loc_C304F4: PopAdLdVar
  loc_C304F5: FLdRfVar var_F4
  loc_C304F8: FLdRfVar var_9C
  loc_C304FB: FLdRfVar var_88
  loc_C304FE: ImpAdLdRf MemVar_D94A60
  loc_C30501: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_C30504: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_C30509: FLdPr var_88
  loc_C3050C: from_stack_1v = clsservceme.RsFrmGet()
  loc_C30511: FLdPr var_9C
  loc_C30514:  = Me.Fields
  loc_C30519: FLdPr var_F4
  loc_C3051C: from_stack_2 = Me.Item(from_stack_1)
  loc_C30521: FLdPr var_170
  loc_C30524:  = Me.Value
  loc_C30529: FLdRfVar var_AC
  loc_C3052C: CStrVarTmp
  loc_C3052D: CVarStr var_C0
  loc_C30530: PopAdLdVar
  loc_C30531: FLdPr Me
  loc_C30534: VCallAd Control_ID_ServDifuFlex
  loc_C30537: FStAdFunc var_178
  loc_C3053A: FLdPr var_178
  loc_C3053D: LateIdCallSt
  loc_C30545: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_174 = "": var_170 = ""
  loc_C30554: FFreeVar var_98 = "": var_AC = ""
  loc_C3055D: Call Proc_259_56_C2E4D4()
  loc_C30562: Call Proc_259_55_B03CE4()
  loc_C30567: Branch loc_C3081F
  loc_C3056A: FLdPr Me
  loc_C3056D: VCallAd Control_ID_ServDifuFlex
  loc_C30570: FStAdFunc var_88
  loc_C30573: FLdPr var_88
  loc_C30576: LateIdLdVar var_98 DispID_11 0
  loc_C3057D: CI4Var
  loc_C3057F: LitI4 0
  loc_C30584: EqI4
  loc_C30585: FFree1Ad var_88
  loc_C30588: FFree1Var var_98 = ""
  loc_C3058B: BranchF loc_C3063D
  loc_C3058E: FLdPr Me
  loc_C30591: VCallAd Control_ID_ServDifuFlex
  loc_C30594: FStAdFunc var_88
  loc_C30597: FLdPr var_88
  loc_C3059A: LateIdLdVar var_98 DispID_0 0
  loc_C305A1: CStrVarTmp
  loc_C305A2: FStStrNoPop var_B0
  loc_C305A5: FnLenStr
  loc_C305A6: LitI4 4
  loc_C305AB: LeI4
  loc_C305AC: FFree1Str var_B0
  loc_C305AF: FFree1Ad var_88
  loc_C305B2: FFree1Var var_98 = ""
  loc_C305B5: BranchF loc_C3063D
  loc_C305B8: LitStr "1234567890,."
  loc_C305BB: FStStrCopy var_B0
  loc_C305BE: FLdRfVar var_B0
  loc_C305C1: ILdRf KeyAscii
  loc_C305C4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C305C9: IStI2 KeyAscii
  loc_C305CC: FFree1Str var_B0
  loc_C305CF: ILdI2 KeyAscii
  loc_C305D2: LitStr "."
  loc_C305D5: ImpAdCallI2 Asc()
  loc_C305DA: EqI2
  loc_C305DB: BranchF loc_C305E9
  loc_C305DE: LitStr ","
  loc_C305E1: ImpAdCallI2 Asc()
  loc_C305E6: IStI2 KeyAscii
  loc_C305E9: FLdPr Me
  loc_C305EC: VCallAd Control_ID_ServDifuFlex
  loc_C305EF: FStAdFunc var_88
  loc_C305F2: FLdPr var_88
  loc_C305F5: LateIdLdVar var_98 DispID_0 0
  loc_C305FC: CStrVarTmp
  loc_C305FD: CVarStr var_C0
  loc_C30600: ILdI2 KeyAscii
  loc_C30603: CI4UI1
  loc_C30604: FLdRfVar var_AC
  loc_C30607: ImpAdCallFPR4  = Chr()
  loc_C3060C: FLdRfVar var_AC
  loc_C3060F: AddVar var_D0
  loc_C30613: CStrVarTmp
  loc_C30614: CVarStr var_E0
  loc_C30617: PopAdLdVar
  loc_C30618: FLdPr Me
  loc_C3061B: VCallAd Control_ID_ServDifuFlex
  loc_C3061E: FStAdFunc var_9C
  loc_C30621: FLdPr var_9C
  loc_C30624: LateIdSt
  loc_C30629: FFreeAd var_88 = ""
  loc_C30630: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C3063D: FLdPr Me
  loc_C30640: VCallAd Control_ID_ServDifuFlex
  loc_C30643: FStAdFunc var_88
  loc_C30646: FLdPr var_88
  loc_C30649: LateIdLdVar var_98 DispID_11 0
  loc_C30650: CI4Var
  loc_C30652: LitI4 1
  loc_C30657: EqI4
  loc_C30658: FFree1Ad var_88
  loc_C3065B: FFree1Var var_98 = ""
  loc_C3065E: BranchF loc_C306F6
  loc_C30661: FLdPr Me
  loc_C30664: VCallAd Control_ID_ServDifuFlex
  loc_C30667: FStAdFunc var_88
  loc_C3066A: FLdPr var_88
  loc_C3066D: LateIdLdVar var_98 DispID_0 0
  loc_C30674: CStrVarTmp
  loc_C30675: FStStrNoPop var_B0
  loc_C30678: FnLenStr
  loc_C30679: LitI4 4
  loc_C3067E: LeI4
  loc_C3067F: FFree1Str var_B0
  loc_C30682: FFree1Ad var_88
  loc_C30685: FFree1Var var_98 = ""
  loc_C30688: BranchF loc_C306F6
  loc_C3068B: LitStr "1234567890"
  loc_C3068E: FStStrCopy var_B0
  loc_C30691: FLdRfVar var_B0
  loc_C30694: ILdRf KeyAscii
  loc_C30697: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C3069C: IStI2 KeyAscii
  loc_C3069F: FFree1Str var_B0
  loc_C306A2: FLdPr Me
  loc_C306A5: VCallAd Control_ID_ServDifuFlex
  loc_C306A8: FStAdFunc var_88
  loc_C306AB: FLdPr var_88
  loc_C306AE: LateIdLdVar var_98 DispID_0 0
  loc_C306B5: CStrVarTmp
  loc_C306B6: CVarStr var_C0
  loc_C306B9: ILdI2 KeyAscii
  loc_C306BC: CI4UI1
  loc_C306BD: FLdRfVar var_AC
  loc_C306C0: ImpAdCallFPR4  = Chr()
  loc_C306C5: FLdRfVar var_AC
  loc_C306C8: AddVar var_D0
  loc_C306CC: CStrVarTmp
  loc_C306CD: CVarStr var_E0
  loc_C306D0: PopAdLdVar
  loc_C306D1: FLdPr Me
  loc_C306D4: VCallAd Control_ID_ServDifuFlex
  loc_C306D7: FStAdFunc var_9C
  loc_C306DA: FLdPr var_9C
  loc_C306DD: LateIdSt
  loc_C306E2: FFreeAd var_88 = ""
  loc_C306E9: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C306F6: FLdPr Me
  loc_C306F9: VCallAd Control_ID_ServDifuFlex
  loc_C306FC: FStAdFunc var_88
  loc_C306FF: FLdPr var_88
  loc_C30702: LateIdLdVar var_98 DispID_11 0
  loc_C30709: CI4Var
  loc_C3070B: LitI4 3
  loc_C30710: EqI4
  loc_C30711: FFree1Ad var_88
  loc_C30714: FFree1Var var_98 = ""
  loc_C30717: BranchF loc_C3081F
  loc_C3071A: FLdPr Me
  loc_C3071D: VCallAd Control_ID_ServDifuFlex
  loc_C30720: FStAdFunc var_88
  loc_C30723: FLdPr var_88
  loc_C30726: LateIdLdVar var_98 DispID_10 0
  loc_C3072D: CI4Var
  loc_C3072F: CVarI4
  loc_C30733: PopAdLdVar
  loc_C30734: LitVarI4
  loc_C3073C: PopAdLdVar
  loc_C3073D: FLdPr Me
  loc_C30740: VCallAd Control_ID_ServDifuFlex
  loc_C30743: FStAdFunc var_9C
  loc_C30746: FLdPr var_9C
  loc_C30749: LateIdCallLdVar
  loc_C30753: CStrVarTmp
  loc_C30754: FStStrNoPop var_B0
  loc_C30757: LitStr "1"
  loc_C3075A: EqStr
  loc_C3075C: FFree1Str var_B0
  loc_C3075F: FFreeAd var_88 = ""
  loc_C30766: FFreeVar var_98 = ""
  loc_C3076D: BranchF loc_C3081F
  loc_C30770: FLdPr Me
  loc_C30773: VCallAd Control_ID_ServDifuFlex
  loc_C30776: FStAdFunc var_88
  loc_C30779: FLdPr var_88
  loc_C3077C: LateIdLdVar var_98 DispID_0 0
  loc_C30783: CStrVarTmp
  loc_C30784: FStStrNoPop var_B0
  loc_C30787: FnLenStr
  loc_C30788: LitI4 &HA
  loc_C3078D: LeI4
  loc_C3078E: FFree1Str var_B0
  loc_C30791: FFree1Ad var_88
  loc_C30794: FFree1Var var_98 = ""
  loc_C30797: BranchF loc_C3081F
  loc_C3079A: LitStr "1234567890,."
  loc_C3079D: FStStrCopy var_B0
  loc_C307A0: FLdRfVar var_B0
  loc_C307A3: ILdRf KeyAscii
  loc_C307A6: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C307AB: IStI2 KeyAscii
  loc_C307AE: FFree1Str var_B0
  loc_C307B1: ILdI2 KeyAscii
  loc_C307B4: LitStr "."
  loc_C307B7: ImpAdCallI2 Asc()
  loc_C307BC: EqI2
  loc_C307BD: BranchF loc_C307CB
  loc_C307C0: LitStr ","
  loc_C307C3: ImpAdCallI2 Asc()
  loc_C307C8: IStI2 KeyAscii
  loc_C307CB: FLdPr Me
  loc_C307CE: VCallAd Control_ID_ServDifuFlex
  loc_C307D1: FStAdFunc var_88
  loc_C307D4: FLdPr var_88
  loc_C307D7: LateIdLdVar var_98 DispID_0 0
  loc_C307DE: CStrVarTmp
  loc_C307DF: CVarStr var_C0
  loc_C307E2: ILdI2 KeyAscii
  loc_C307E5: CI4UI1
  loc_C307E6: FLdRfVar var_AC
  loc_C307E9: ImpAdCallFPR4  = Chr()
  loc_C307EE: FLdRfVar var_AC
  loc_C307F1: AddVar var_D0
  loc_C307F5: CStrVarTmp
  loc_C307F6: CVarStr var_E0
  loc_C307F9: PopAdLdVar
  loc_C307FA: FLdPr Me
  loc_C307FD: VCallAd Control_ID_ServDifuFlex
  loc_C30800: FStAdFunc var_9C
  loc_C30803: FLdPr var_9C
  loc_C30806: LateIdSt
  loc_C3080B: FFreeAd var_88 = ""
  loc_C30812: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C3081F: ExitProcHresult
End Sub

Private Sub ServDifuFlex_LeaveCell() 'C3E034
  'Data Table: 526984
  loc_C3D4A8: FLdPr Me
  loc_C3D4AB: VCallAd Control_ID_ServDifuFlex
  loc_C3D4AE: FStAdFunc var_88
  loc_C3D4B1: FLdPr var_88
  loc_C3D4B4: LateIdLdVar var_98 DispID_10 0
  loc_C3D4BB: CI4Var
  loc_C3D4BD: CVarI4
  loc_C3D4C1: PopAdLdVar
  loc_C3D4C2: LitVarI4
  loc_C3D4CA: PopAdLdVar
  loc_C3D4CB: FLdPr Me
  loc_C3D4CE: VCallAd Control_ID_ServDifuFlex
  loc_C3D4D1: FStAdFunc var_DC
  loc_C3D4D4: FLdPr var_DC
  loc_C3D4D7: LateIdCallLdVar
  loc_C3D4E1: CStrVarTmp
  loc_C3D4E2: CVarStr var_FC
  loc_C3D4E5: ImpAdCallI2 IsNumeric()
  loc_C3D4EA: NotI4
  loc_C3D4EB: FFreeAd var_88 = ""
  loc_C3D4F2: FFreeVar var_98 = "": var_EC = ""
  loc_C3D4FB: BranchF loc_C3D545
  loc_C3D4FE: FLdPr Me
  loc_C3D501: VCallAd Control_ID_ServDifuFlex
  loc_C3D504: FStAdFunc var_88
  loc_C3D507: FLdPr var_88
  loc_C3D50A: LateIdLdVar var_98 DispID_10 0
  loc_C3D511: CI4Var
  loc_C3D513: CVarI4
  loc_C3D517: PopAdLdVar
  loc_C3D518: LitVarI4
  loc_C3D520: PopAdLdVar
  loc_C3D521: LitVarStr var_10C, "1"
  loc_C3D526: PopAdLdVar
  loc_C3D527: FLdPr Me
  loc_C3D52A: VCallAd Control_ID_ServDifuFlex
  loc_C3D52D: FStAdFunc var_DC
  loc_C3D530: FLdPr var_DC
  loc_C3D533: LateIdCallSt
  loc_C3D53B: FFreeAd var_88 = ""
  loc_C3D542: FFree1Var var_98 = ""
  loc_C3D545: FLdPr Me
  loc_C3D548: VCallAd Control_ID_ServDifuFlex
  loc_C3D54B: FStAdFunc var_88
  loc_C3D54E: FLdPr var_88
  loc_C3D551: LateIdLdVar var_98 DispID_10 0
  loc_C3D558: CI4Var
  loc_C3D55A: CVarI4
  loc_C3D55E: PopAdLdVar
  loc_C3D55F: LitVarI4
  loc_C3D567: PopAdLdVar
  loc_C3D568: FLdPr Me
  loc_C3D56B: VCallAd Control_ID_ServDifuFlex
  loc_C3D56E: FStAdFunc var_DC
  loc_C3D571: FLdPr var_DC
  loc_C3D574: LateIdCallLdVar
  loc_C3D57E: PopAd
  loc_C3D580: FLdPr Me
  loc_C3D583: VCallAd Control_ID_ServDifuFlex
  loc_C3D586: FStAdFunc var_144
  loc_C3D589: FLdPr var_144
  loc_C3D58C: LateIdLdVar var_154 DispID_10 0
  loc_C3D593: CI4Var
  loc_C3D595: CVarI4
  loc_C3D599: PopAdLdVar
  loc_C3D59A: LitVarI4
  loc_C3D5A2: PopAdLdVar
  loc_C3D5A3: LitI4 1
  loc_C3D5A8: LitI4 1
  loc_C3D5AD: LitVarStr var_11C, "0.00"
  loc_C3D5B2: FStVarCopyObj var_130
  loc_C3D5B5: FLdRfVar var_130
  loc_C3D5B8: FLdRfVar var_EC
  loc_C3D5BB: CStrVarTmp
  loc_C3D5BC: FStStrNoPop var_120
  loc_C3D5BF: CR8Str
  loc_C3D5C1: CVarR8
  loc_C3D5C5: FLdRfVar var_140
  loc_C3D5C8: ImpAdCallFPR4  = Format(, )
  loc_C3D5CD: FLdRfVar var_140
  loc_C3D5D0: CStrVarTmp
  loc_C3D5D1: CVarStr var_1A4
  loc_C3D5D4: PopAdLdVar
  loc_C3D5D5: FLdPr Me
  loc_C3D5D8: VCallAd Control_ID_ServDifuFlex
  loc_C3D5DB: FStAdFunc var_1B8
  loc_C3D5DE: FLdPr var_1B8
  loc_C3D5E1: LateIdCallSt
  loc_C3D5E9: FFree1Str var_120
  loc_C3D5EC: FFreeAd var_88 = "": var_DC = "": var_144 = ""
  loc_C3D5F7: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_154 = "": var_140 = ""
  loc_C3D608: FLdPr Me
  loc_C3D60B: VCallAd Control_ID_ServDifuFlex
  loc_C3D60E: FStAdFunc var_88
  loc_C3D611: FLdPr var_88
  loc_C3D614: LateIdLdVar var_98 DispID_10 0
  loc_C3D61B: CI4Var
  loc_C3D61D: CVarI4
  loc_C3D621: PopAdLdVar
  loc_C3D622: LitVarI4
  loc_C3D62A: PopAdLdVar
  loc_C3D62B: FLdPr Me
  loc_C3D62E: VCallAd Control_ID_ServDifuFlex
  loc_C3D631: FStAdFunc var_DC
  loc_C3D634: FLdPr var_DC
  loc_C3D637: LateIdCallLdVar
  loc_C3D641: CStrVarTmp
  loc_C3D642: CVarStr var_FC
  loc_C3D645: ImpAdCallI2 IsNumeric()
  loc_C3D64A: FFreeAd var_88 = ""
  loc_C3D651: FFreeVar var_98 = "": var_EC = ""
  loc_C3D65A: BranchF loc_C3E02D
  loc_C3D65D: FLdRfVar var_1DC
  loc_C3D660: FLdPr Me
  loc_C3D663: MemLdRfVar from_stack_1.global_96
  loc_C3D666: NewIfNullPr tblDifunto
  loc_C3D669: from_stack_1v = tblDifunto.CodiCemeGet()
  loc_C3D66E: FLdRfVar var_1F8
  loc_C3D671: FLdPr Me
  loc_C3D674: MemLdRfVar from_stack_1.global_96
  loc_C3D677: NewIfNullPr tblDifunto
  loc_C3D67A: from_stack_1v = tblDifunto.CodiTiseGet()
  loc_C3D67F: FLdRfVar var_254
  loc_C3D682: FLdPr Me
  loc_C3D685: MemLdRfVar from_stack_1.global_96
  loc_C3D688: NewIfNullPr tblDifunto
  loc_C3D68B: from_stack_1v = tblDifunto.FilaDifuGet()
  loc_C3D690: LitStr "SELECT DetaSece, UntrPage * servceme.ImpoSece ImpoSece, servceme.PeriInfo, servceme.CodiConc, concepto.TiafConc, servceme.AnioSece FROM servceme "
  loc_C3D693: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servceme.PeriInfo"
  loc_C3D696: ConcatStr
  loc_C3D697: FStStrNoPop var_120
  loc_C3D69A: LitStr " AND concepto.CodiConc = servceme.CodiConc"
  loc_C3D69D: ConcatStr
  loc_C3D69E: FStStrNoPop var_1BC
  loc_C3D6A1: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_C3D6A4: ConcatStr
  loc_C3D6A5: FStStrNoPop var_1C0
  loc_C3D6A8: LitStr " WHERE servceme.PeriOrde = "
  loc_C3D6AB: ConcatStr
  loc_C3D6AC: FStStrNoPop var_1C4
  loc_C3D6AF: ImpAdLdI2 MemVar_D93036
  loc_C3D6B2: CStrUI1
  loc_C3D6B4: FStStrNoPop var_1C8
  loc_C3D6B7: ConcatStr
  loc_C3D6B8: FStStrNoPop var_1CC
  loc_C3D6BB: LitStr " AND CodiSece = "
  loc_C3D6BE: ConcatStr
  loc_C3D6BF: FStStrNoPop var_1D0
  loc_C3D6C2: FLdPr Me
  loc_C3D6C5: VCallAd Control_ID_ServDifuFlex
  loc_C3D6C8: FStAdFunc var_88
  loc_C3D6CB: FLdPr var_88
  loc_C3D6CE: LateIdLdVar var_98 DispID_10 0
  loc_C3D6D5: CI4Var
  loc_C3D6D7: CVarI4
  loc_C3D6DB: PopAdLdVar
  loc_C3D6DC: LitVarI4
  loc_C3D6E4: PopAdLdVar
  loc_C3D6E5: FLdPr Me
  loc_C3D6E8: VCallAd Control_ID_ServDifuFlex
  loc_C3D6EB: FStAdFunc var_DC
  loc_C3D6EE: FLdPr var_DC
  loc_C3D6F1: LateIdCallLdVar
  loc_C3D6FB: CStrVarTmp
  loc_C3D6FC: FStStrNoPop var_1D4
  loc_C3D6FF: ConcatStr
  loc_C3D700: FStStrNoPop var_1D8
  loc_C3D703: LitStr " AND (CodiCeme = 0 OR "
  loc_C3D706: ConcatStr
  loc_C3D707: CVarStr var_154
  loc_C3D70A: LitStr " CodiCeme = "
  loc_C3D70D: FLdRfVar var_1E0
  loc_C3D710: FLdPr Me
  loc_C3D713: MemLdRfVar from_stack_1.global_96
  loc_C3D716: NewIfNullPr tblDifunto
  loc_C3D719: from_stack_1v = tblDifunto.CodiCemeGet()
  loc_C3D71E: ILdRf var_1E0
  loc_C3D721: ConcatStr
  loc_C3D722: FStStrNoPop var_1E4
  loc_C3D725: LitStr ")"
  loc_C3D728: ConcatStr
  loc_C3D729: CVarStr var_130
  loc_C3D72C: LitVarStr var_11C, " CodiCeme >= 0)"
  loc_C3D731: FStVarCopyObj var_FC
  loc_C3D734: FLdRfVar var_FC
  loc_C3D737: ILdRf var_1DC
  loc_C3D73A: CR8Str
  loc_C3D73C: LitI2_Byte 0
  loc_C3D73E: CR8I2
  loc_C3D73F: EqR4
  loc_C3D740: CVarBoolI2 var_10C
  loc_C3D744: FLdRfVar var_140
  loc_C3D747: ImpAdCallFPR4  = IIf(, , )
  loc_C3D74C: FLdRfVar var_140
  loc_C3D74F: ConcatVar var_1A4
  loc_C3D753: LitVarStr var_164, " AND (CodiTise = 0 OR "
  loc_C3D758: ConcatVar var_1F4
  loc_C3D75C: LitStr " CodiTise = "
  loc_C3D75F: FLdRfVar var_1FC
  loc_C3D762: FLdPr Me
  loc_C3D765: MemLdRfVar from_stack_1.global_96
  loc_C3D768: NewIfNullPr tblDifunto
  loc_C3D76B: from_stack_1v = tblDifunto.CodiTiseGet()
  loc_C3D770: ILdRf var_1FC
  loc_C3D773: ConcatStr
  loc_C3D774: FStStrNoPop var_200
  loc_C3D777: LitStr ")"
  loc_C3D77A: ConcatStr
  loc_C3D77B: CVarStr var_220
  loc_C3D77E: LitVarStr var_184, " CodiTise >= 0)"
  loc_C3D783: FStVarCopyObj var_210
  loc_C3D786: FLdRfVar var_210
  loc_C3D789: ILdRf var_1F8
  loc_C3D78C: CR8Str
  loc_C3D78E: LitI2_Byte 0
  loc_C3D790: CR8I2
  loc_C3D791: EqR4
  loc_C3D792: CVarBoolI2 var_174
  loc_C3D796: FLdRfVar var_230
  loc_C3D799: ImpAdCallFPR4  = IIf(, , )
  loc_C3D79E: FLdRfVar var_230
  loc_C3D7A1: ConcatVar var_240
  loc_C3D7A5: LitVarStr var_194, " AND (FilaDifu = 0 OR "
  loc_C3D7AA: ConcatVar var_250
  loc_C3D7AE: LitStr " FilaDifu = "
  loc_C3D7B1: FLdRfVar var_258
  loc_C3D7B4: FLdPr Me
  loc_C3D7B7: MemLdRfVar from_stack_1.global_96
  loc_C3D7BA: NewIfNullPr tblDifunto
  loc_C3D7BD: from_stack_1v = tblDifunto.FilaDifuGet()
  loc_C3D7C2: ILdRf var_258
  loc_C3D7C5: ConcatStr
  loc_C3D7C6: FStStrNoPop var_25C
  loc_C3D7C9: LitStr ")"
  loc_C3D7CC: ConcatStr
  loc_C3D7CD: CVarStr var_28C
  loc_C3D7D0: LitVarStr var_26C, " FilaDifu >= 0)"
  loc_C3D7D5: FStVarCopyObj var_27C
  loc_C3D7D8: FLdRfVar var_27C
  loc_C3D7DB: ILdRf var_254
  loc_C3D7DE: CR8Str
  loc_C3D7E0: LitI2_Byte 0
  loc_C3D7E2: CR8I2
  loc_C3D7E3: EqR4
  loc_C3D7E4: CVarBoolI2 var_1B4
  loc_C3D7E8: FLdRfVar var_29C
  loc_C3D7EB: ImpAdCallFPR4  = IIf(, , )
  loc_C3D7F0: FLdRfVar var_29C
  loc_C3D7F3: ConcatVar var_2AC
  loc_C3D7F7: LitVarStr var_2BC, " AND servceme.ParvSece = "
  loc_C3D7FC: ConcatVar var_2CC
  loc_C3D800: FLdRfVar var_2D0
  loc_C3D803: FLdPr Me
  loc_C3D806: MemLdRfVar from_stack_1.global_96
  loc_C3D809: NewIfNullPr tblDifunto
  loc_C3D80C: from_stack_1v = tblDifunto.ParvDifuGet()
  loc_C3D811: FLdZeroAd var_2D0
  loc_C3D814: CVarStr var_2E0
  loc_C3D817: ConcatVar var_2F0
  loc_C3D81B: LitVarStr var_300, " AND EmisSece = 'Normal'"
  loc_C3D820: ConcatVar var_310
  loc_C3D824: LitVarStr var_320, " ORDER BY CodiSece"
  loc_C3D829: ConcatVar var_330
  loc_C3D82D: CStrVarVal var_334
  loc_C3D831: FLdPr Me
  loc_C3D834: MemLdRfVar from_stack_1.global_52
  loc_C3D837: NewIfNullPr clsservceme
  loc_C3D83A: Call clsservceme.RedefineRS(from_stack_1v)
  loc_C3D83F: FFreeStr var_120 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_254 = "": var_258 = "": var_25C = ""
  loc_C3D868: FFreeAd var_88 = ""
  loc_C3D86F: FFreeVar var_98 = "": var_EC = "": var_10C = "": var_FC = "": var_130 = "": var_154 = "": var_140 = "": var_1A4 = "": var_174 = "": var_210 = "": var_220 = "": var_1F4 = "": var_230 = "": var_240 = "": var_1B4 = "": var_27C = "": var_28C = "": var_250 = "": var_29C = "": var_2AC = "": var_2CC = "": var_2E0 = "": var_2F0 = "": var_310 = ""
  loc_C3D8A4: FLdRfVar var_338
  loc_C3D8A7: FLdPr Me
  loc_C3D8AA: MemLdRfVar from_stack_1.global_52
  loc_C3D8AD: NewIfNullPr clsservceme
  loc_C3D8B0: from_stack_1 = clsservceme.RecordCount
  loc_C3D8B5: ILdRf var_338
  loc_C3D8B8: LitI4 0
  loc_C3D8BD: GtI4
  loc_C3D8BE: BranchF loc_C3DDF2
  loc_C3D8C1: FLdPr Me
  loc_C3D8C4: VCallAd Control_ID_ServDifuFlex
  loc_C3D8C7: FStAdFunc var_88
  loc_C3D8CA: FLdPr var_88
  loc_C3D8CD: LateIdLdVar var_98 DispID_10 0
  loc_C3D8D4: CI4Var
  loc_C3D8D6: CVarI4
  loc_C3D8DA: PopAdLdVar
  loc_C3D8DB: LitVarI4
  loc_C3D8E3: PopAdLdVar
  loc_C3D8E4: LitVarStr var_10C, "0"
  loc_C3D8E9: PopAdLdVar
  loc_C3D8EA: FLdPr Me
  loc_C3D8ED: VCallAd Control_ID_ServDifuFlex
  loc_C3D8F0: FStAdFunc var_DC
  loc_C3D8F3: FLdPr var_DC
  loc_C3D8F6: LateIdCallSt
  loc_C3D8FE: FFreeAd var_88 = ""
  loc_C3D905: FFree1Var var_98 = ""
  loc_C3D908: FLdPr Me
  loc_C3D90B: VCallAd Control_ID_ServDifuFlex
  loc_C3D90E: FStAdFunc var_88
  loc_C3D911: FLdPr var_88
  loc_C3D914: LateIdLdVar var_98 DispID_10 0
  loc_C3D91B: CI4Var
  loc_C3D91D: CVarI4
  loc_C3D921: PopAdLdVar
  loc_C3D922: LitVarI4
  loc_C3D92A: PopAdLdVar
  loc_C3D92B: FLdRfVar var_120
  loc_C3D92E: FLdPr Me
  loc_C3D931: MemLdRfVar from_stack_1.global_52
  loc_C3D934: NewIfNullPr clsservceme
  loc_C3D937: from_stack_1 = clsservceme.DetaSece
  loc_C3D93C: FLdZeroAd var_120
  loc_C3D93F: CVarStr var_EC
  loc_C3D942: PopAdLdVar
  loc_C3D943: FLdPr Me
  loc_C3D946: VCallAd Control_ID_ServDifuFlex
  loc_C3D949: FStAdFunc var_DC
  loc_C3D94C: FLdPr var_DC
  loc_C3D94F: LateIdCallSt
  loc_C3D957: FFreeAd var_88 = ""
  loc_C3D95E: FFreeVar var_98 = ""
  loc_C3D965: FLdPr Me
  loc_C3D968: VCallAd Control_ID_ServDifuFlex
  loc_C3D96B: FStAdFunc var_88
  loc_C3D96E: FLdPr var_88
  loc_C3D971: LateIdLdVar var_98 DispID_10 0
  loc_C3D978: CI4Var
  loc_C3D97A: CVarI4
  loc_C3D97E: PopAdLdVar
  loc_C3D97F: LitVarI4
  loc_C3D987: PopAdLdVar
  loc_C3D988: FLdPr Me
  loc_C3D98B: VCallAd Control_ID_ServDifuFlex
  loc_C3D98E: FStAdFunc var_DC
  loc_C3D991: FLdPr var_DC
  loc_C3D994: LateIdCallLdVar
  loc_C3D99E: CStrVarTmp
  loc_C3D99F: FStStrNoPop var_120
  loc_C3D9A2: LitStr "0"
  loc_C3D9A5: EqStr
  loc_C3D9A7: FFree1Str var_120
  loc_C3D9AA: FFreeAd var_88 = ""
  loc_C3D9B1: FFreeVar var_98 = ""
  loc_C3D9B8: BranchF loc_C3DA46
  loc_C3D9BB: FLdRfVar var_340
  loc_C3D9BE: FLdPr Me
  loc_C3D9C1: MemLdRfVar from_stack_1.global_52
  loc_C3D9C4: NewIfNullPr clsservceme
  loc_C3D9C7: from_stack_1 = clsservceme.ImpoSece
  loc_C3D9CC: FLdPr Me
  loc_C3D9CF: VCallAd Control_ID_ServDifuFlex
  loc_C3D9D2: FStAdFunc var_88
  loc_C3D9D5: FLdPr var_88
  loc_C3D9D8: LateIdLdVar var_130 DispID_10 0
  loc_C3D9DF: CI4Var
  loc_C3D9E1: CVarI4
  loc_C3D9E5: PopAdLdVar
  loc_C3D9E6: LitVarI4
  loc_C3D9EE: PopAdLdVar
  loc_C3D9EF: LitI4 1
  loc_C3D9F4: LitI4 1
  loc_C3D9F9: LitVarStr var_B8, "0.00"
  loc_C3D9FE: FStVarCopyObj var_EC
  loc_C3DA01: FLdRfVar var_EC
  loc_C3DA04: FLdFPR8 var_340
  loc_C3DA07: CVarR8
  loc_C3DA0B: FLdRfVar var_FC
  loc_C3DA0E: ImpAdCallFPR4  = Format(, )
  loc_C3DA13: FLdRfVar var_FC
  loc_C3DA16: CStrVarTmp
  loc_C3DA17: CVarStr var_140
  loc_C3DA1A: PopAdLdVar
  loc_C3DA1B: FLdPr Me
  loc_C3DA1E: VCallAd Control_ID_ServDifuFlex
  loc_C3DA21: FStAdFunc var_DC
  loc_C3DA24: FLdPr var_DC
  loc_C3DA27: LateIdCallSt
  loc_C3DA2F: FFreeAd var_88 = ""
  loc_C3DA36: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_C3DA43: Branch loc_C3DC41
  loc_C3DA46: FLdPr Me
  loc_C3DA49: VCallAd Control_ID_ServDifuFlex
  loc_C3DA4C: FStAdFunc var_88
  loc_C3DA4F: FLdPr var_88
  loc_C3DA52: LateIdLdVar var_98 DispID_10 0
  loc_C3DA59: CI4Var
  loc_C3DA5B: CVarI4
  loc_C3DA5F: PopAdLdVar
  loc_C3DA60: LitVarI4
  loc_C3DA68: PopAdLdVar
  loc_C3DA69: FLdPr Me
  loc_C3DA6C: VCallAd Control_ID_ServDifuFlex
  loc_C3DA6F: FStAdFunc var_DC
  loc_C3DA72: FLdPr var_DC
  loc_C3DA75: LateIdCallLdVar
  loc_C3DA7F: CStrVarTmp
  loc_C3DA80: FStStrNoPop var_120
  loc_C3DA83: LitStr "1"
  loc_C3DA86: EqStr
  loc_C3DA88: FLdRfVar var_340
  loc_C3DA8B: FLdPr Me
  loc_C3DA8E: MemLdRfVar from_stack_1.global_52
  loc_C3DA91: NewIfNullPr clsservceme
  loc_C3DA94: from_stack_1 = clsservceme.ImpoSece
  loc_C3DA99: FLdFPR8 var_340
  loc_C3DA9C: FnCDblR8
  loc_C3DA9E: LitI2_Byte 0
  loc_C3DAA0: CR8I2
  loc_C3DAA1: EqR4
  loc_C3DAA2: AndI4
  loc_C3DAA3: FFree1Str var_120
  loc_C3DAA6: FFreeAd var_88 = ""
  loc_C3DAAD: FFreeVar var_98 = ""
  loc_C3DAB4: BranchF loc_C3DB48
  loc_C3DAB7: FLdPr Me
  loc_C3DABA: VCallAd Control_ID_ServDifuFlex
  loc_C3DABD: FStAdFunc var_88
  loc_C3DAC0: FLdPr var_88
  loc_C3DAC3: LateIdLdVar var_98 DispID_10 0
  loc_C3DACA: CI4Var
  loc_C3DACC: CVarI4
  loc_C3DAD0: PopAdLdVar
  loc_C3DAD1: LitVarI4
  loc_C3DAD9: PopAdLdVar
  loc_C3DADA: LitVarStr var_10C, vbNullString
  loc_C3DADF: PopAdLdVar
  loc_C3DAE0: FLdPr Me
  loc_C3DAE3: VCallAd Control_ID_ServDifuFlex
  loc_C3DAE6: FStAdFunc var_DC
  loc_C3DAE9: FLdPr var_DC
  loc_C3DAEC: LateIdCallSt
  loc_C3DAF4: FFreeAd var_88 = ""
  loc_C3DAFB: FFree1Var var_98 = ""
  loc_C3DAFE: FLdPr Me
  loc_C3DB01: VCallAd Control_ID_ServDifuFlex
  loc_C3DB04: FStAdFunc var_88
  loc_C3DB07: FLdPr var_88
  loc_C3DB0A: LateIdLdVar var_98 DispID_10 0
  loc_C3DB11: CI4Var
  loc_C3DB13: CVarI4
  loc_C3DB17: PopAdLdVar
  loc_C3DB18: LitVarI4
  loc_C3DB20: PopAdLdVar
  loc_C3DB21: LitVarStr var_10C, vbNullString
  loc_C3DB26: PopAdLdVar
  loc_C3DB27: FLdPr Me
  loc_C3DB2A: VCallAd Control_ID_ServDifuFlex
  loc_C3DB2D: FStAdFunc var_DC
  loc_C3DB30: FLdPr var_DC
  loc_C3DB33: LateIdCallSt
  loc_C3DB3B: FFreeAd var_88 = ""
  loc_C3DB42: FFree1Var var_98 = ""
  loc_C3DB45: Branch loc_C3DC41
  loc_C3DB48: FLdPr Me
  loc_C3DB4B: VCallAd Control_ID_ServDifuFlex
  loc_C3DB4E: FStAdFunc var_88
  loc_C3DB51: FLdPr var_88
  loc_C3DB54: LateIdLdVar var_98 DispID_10 0
  loc_C3DB5B: CI4Var
  loc_C3DB5D: CVarI4
  loc_C3DB61: PopAdLdVar
  loc_C3DB62: LitVarI4
  loc_C3DB6A: PopAdLdVar
  loc_C3DB6B: FLdPr Me
  loc_C3DB6E: VCallAd Control_ID_ServDifuFlex
  loc_C3DB71: FStAdFunc var_DC
  loc_C3DB74: FLdPr var_DC
  loc_C3DB77: LateIdCallLdVar
  loc_C3DB81: CStrVarTmp
  loc_C3DB82: FStStrNoPop var_120
  loc_C3DB85: LitStr "1"
  loc_C3DB88: EqStr
  loc_C3DB8A: FLdRfVar var_340
  loc_C3DB8D: FLdPr Me
  loc_C3DB90: MemLdRfVar from_stack_1.global_52
  loc_C3DB93: NewIfNullPr clsservceme
  loc_C3DB96: from_stack_1 = clsservceme.ImpoSece
  loc_C3DB9B: FLdFPR8 var_340
  loc_C3DB9E: FnCDblR8
  loc_C3DBA0: LitI2_Byte 0
  loc_C3DBA2: CR8I2
  loc_C3DBA3: GtR4
  loc_C3DBA4: AndI4
  loc_C3DBA5: FFree1Str var_120
  loc_C3DBA8: FFreeAd var_88 = ""
  loc_C3DBAF: FFreeVar var_98 = ""
  loc_C3DBB6: BranchF loc_C3DC41
  loc_C3DBB9: FLdRfVar var_340
  loc_C3DBBC: FLdPr Me
  loc_C3DBBF: MemLdRfVar from_stack_1.global_52
  loc_C3DBC2: NewIfNullPr clsservceme
  loc_C3DBC5: from_stack_1 = clsservceme.ImpoSece
  loc_C3DBCA: FLdPr Me
  loc_C3DBCD: VCallAd Control_ID_ServDifuFlex
  loc_C3DBD0: FStAdFunc var_88
  loc_C3DBD3: FLdPr var_88
  loc_C3DBD6: LateIdLdVar var_130 DispID_10 0
  loc_C3DBDD: CI4Var
  loc_C3DBDF: CVarI4
  loc_C3DBE3: PopAdLdVar
  loc_C3DBE4: LitVarI4
  loc_C3DBEC: PopAdLdVar
  loc_C3DBED: LitI4 1
  loc_C3DBF2: LitI4 1
  loc_C3DBF7: LitVarStr var_B8, "0.00"
  loc_C3DBFC: FStVarCopyObj var_EC
  loc_C3DBFF: FLdRfVar var_EC
  loc_C3DC02: FLdFPR8 var_340
  loc_C3DC05: CVarR8
  loc_C3DC09: FLdRfVar var_FC
  loc_C3DC0C: ImpAdCallFPR4  = Format(, )
  loc_C3DC11: FLdRfVar var_FC
  loc_C3DC14: CStrVarTmp
  loc_C3DC15: CVarStr var_140
  loc_C3DC18: PopAdLdVar
  loc_C3DC19: FLdPr Me
  loc_C3DC1C: VCallAd Control_ID_ServDifuFlex
  loc_C3DC1F: FStAdFunc var_DC
  loc_C3DC22: FLdPr var_DC
  loc_C3DC25: LateIdCallSt
  loc_C3DC2D: FFreeAd var_88 = ""
  loc_C3DC34: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_C3DC41: FLdPr Me
  loc_C3DC44: VCallAd Control_ID_ServDifuFlex
  loc_C3DC47: FStAdFunc var_88
  loc_C3DC4A: FLdPr var_88
  loc_C3DC4D: LateIdLdVar var_98 DispID_10 0
  loc_C3DC54: CI4Var
  loc_C3DC56: CVarI4
  loc_C3DC5A: PopAdLdVar
  loc_C3DC5B: LitVarI4
  loc_C3DC63: PopAdLdVar
  loc_C3DC64: FLdRfVar var_342
  loc_C3DC67: FLdPr Me
  loc_C3DC6A: MemLdRfVar from_stack_1.global_52
  loc_C3DC6D: NewIfNullPr clsservceme
  loc_C3DC70: from_stack_1 = clsservceme.PeriInfo
  loc_C3DC75: FLdI2 var_342
  loc_C3DC78: CStrUI1
  loc_C3DC7A: CVarStr var_EC
  loc_C3DC7D: PopAdLdVar
  loc_C3DC7E: FLdPr Me
  loc_C3DC81: VCallAd Control_ID_ServDifuFlex
  loc_C3DC84: FStAdFunc var_DC
  loc_C3DC87: FLdPr var_DC
  loc_C3DC8A: LateIdCallSt
  loc_C3DC92: FFreeAd var_88 = ""
  loc_C3DC99: FFreeVar var_98 = ""
  loc_C3DCA0: FLdPr Me
  loc_C3DCA3: VCallAd Control_ID_ServDifuFlex
  loc_C3DCA6: FStAdFunc var_88
  loc_C3DCA9: FLdPr var_88
  loc_C3DCAC: LateIdLdVar var_98 DispID_10 0
  loc_C3DCB3: CI4Var
  loc_C3DCB5: CVarI4
  loc_C3DCB9: PopAdLdVar
  loc_C3DCBA: LitVarI4
  loc_C3DCC2: PopAdLdVar
  loc_C3DCC3: FLdRfVar var_120
  loc_C3DCC6: FLdPr Me
  loc_C3DCC9: MemLdRfVar from_stack_1.global_52
  loc_C3DCCC: NewIfNullPr clsservceme
  loc_C3DCCF: from_stack_1 = clsservceme.CodiConc
  loc_C3DCD4: FLdZeroAd var_120
  loc_C3DCD7: CVarStr var_EC
  loc_C3DCDA: PopAdLdVar
  loc_C3DCDB: FLdPr Me
  loc_C3DCDE: VCallAd Control_ID_ServDifuFlex
  loc_C3DCE1: FStAdFunc var_DC
  loc_C3DCE4: FLdPr var_DC
  loc_C3DCE7: LateIdCallSt
  loc_C3DCEF: FFreeAd var_88 = ""
  loc_C3DCF6: FFreeVar var_98 = ""
  loc_C3DCFD: FLdPr Me
  loc_C3DD00: VCallAd Control_ID_ServDifuFlex
  loc_C3DD03: FStAdFunc var_88
  loc_C3DD06: FLdPr var_88
  loc_C3DD09: LateIdLdVar var_98 DispID_10 0
  loc_C3DD10: CI4Var
  loc_C3DD12: CVarI4
  loc_C3DD16: PopAdLdVar
  loc_C3DD17: LitVarI4
  loc_C3DD1F: PopAdLdVar
  loc_C3DD20: FLdRfVar var_342
  loc_C3DD23: FLdPr Me
  loc_C3DD26: MemLdRfVar from_stack_1.global_52
  loc_C3DD29: NewIfNullPr clsservceme
  loc_C3DD2C: from_stack_1 = clsservceme.TiafConc
  loc_C3DD31: FLdUI1
  loc_C3DD35: CStrI2
  loc_C3DD37: CVarStr var_EC
  loc_C3DD3A: PopAdLdVar
  loc_C3DD3B: FLdPr Me
  loc_C3DD3E: VCallAd Control_ID_ServDifuFlex
  loc_C3DD41: FStAdFunc var_DC
  loc_C3DD44: FLdPr var_DC
  loc_C3DD47: LateIdCallSt
  loc_C3DD4F: FFreeAd var_88 = ""
  loc_C3DD56: FFreeVar var_98 = ""
  loc_C3DD5D: FLdPr Me
  loc_C3DD60: VCallAd Control_ID_ServDifuFlex
  loc_C3DD63: FStAdFunc var_1B8
  loc_C3DD66: FLdPr var_1B8
  loc_C3DD69: LateIdLdVar var_98 DispID_10 0
  loc_C3DD70: CI4Var
  loc_C3DD72: CVarI4
  loc_C3DD76: PopAdLdVar
  loc_C3DD77: LitVarI4
  loc_C3DD7F: PopAdLdVar
  loc_C3DD80: FLdRfVar var_EC
  loc_C3DD83: FLdRfVar var_144
  loc_C3DD86: LitVarStr var_A8, "AnioSece"
  loc_C3DD8B: PopAdLdVar
  loc_C3DD8C: FLdRfVar var_DC
  loc_C3DD8F: FLdRfVar var_88
  loc_C3DD92: FLdPr Me
  loc_C3DD95: MemLdRfVar from_stack_1.global_52
  loc_C3DD98: NewIfNullPr clsservceme
  loc_C3DD9B: from_stack_1v = clsservceme.RsFrmGet()
  loc_C3DDA0: FLdPr var_88
  loc_C3DDA3:  = Me.Fields
  loc_C3DDA8: FLdPr var_DC
  loc_C3DDAB: from_stack_2 = Me.Item(from_stack_1)
  loc_C3DDB0: FLdPr var_144
  loc_C3DDB3:  = Me.Value
  loc_C3DDB8: FLdRfVar var_EC
  loc_C3DDBB: CStrVarTmp
  loc_C3DDBC: CVarStr var_FC
  loc_C3DDBF: PopAdLdVar
  loc_C3DDC0: FLdPr Me
  loc_C3DDC3: VCallAd Control_ID_ServDifuFlex
  loc_C3DDC6: FStAdFunc var_348
  loc_C3DDC9: FLdPr var_348
  loc_C3DDCC: LateIdCallSt
  loc_C3DDD4: FFreeAd var_88 = "": var_DC = "": var_1B8 = "": var_144 = ""
  loc_C3DDE1: FFreeVar var_98 = "": var_EC = ""
  loc_C3DDEA: Call Proc_259_56_C2E4D4()
  loc_C3DDEF: Branch loc_C3E02A
  loc_C3DDF2: FLdPr Me
  loc_C3DDF5: VCallAd Control_ID_ServDifuFlex
  loc_C3DDF8: FStAdFunc var_88
  loc_C3DDFB: FLdPr var_88
  loc_C3DDFE: LateIdLdVar var_98 DispID_10 0
  loc_C3DE05: CI4Var
  loc_C3DE07: CVarI4
  loc_C3DE0B: PopAdLdVar
  loc_C3DE0C: LitVarI4
  loc_C3DE14: PopAdLdVar
  loc_C3DE15: LitVarStr var_10C, vbNullString
  loc_C3DE1A: PopAdLdVar
  loc_C3DE1B: FLdPr Me
  loc_C3DE1E: VCallAd Control_ID_ServDifuFlex
  loc_C3DE21: FStAdFunc var_DC
  loc_C3DE24: FLdPr var_DC
  loc_C3DE27: LateIdCallSt
  loc_C3DE2F: FFreeAd var_88 = ""
  loc_C3DE36: FFree1Var var_98 = ""
  loc_C3DE39: FLdPr Me
  loc_C3DE3C: VCallAd Control_ID_ServDifuFlex
  loc_C3DE3F: FStAdFunc var_88
  loc_C3DE42: FLdPr var_88
  loc_C3DE45: LateIdLdVar var_98 DispID_10 0
  loc_C3DE4C: CI4Var
  loc_C3DE4E: CVarI4
  loc_C3DE52: PopAdLdVar
  loc_C3DE53: LitVarI4
  loc_C3DE5B: PopAdLdVar
  loc_C3DE5C: LitVarStr var_10C, vbNullString
  loc_C3DE61: PopAdLdVar
  loc_C3DE62: FLdPr Me
  loc_C3DE65: VCallAd Control_ID_ServDifuFlex
  loc_C3DE68: FStAdFunc var_DC
  loc_C3DE6B: FLdPr var_DC
  loc_C3DE6E: LateIdCallSt
  loc_C3DE76: FFreeAd var_88 = ""
  loc_C3DE7D: FFree1Var var_98 = ""
  loc_C3DE80: FLdPr Me
  loc_C3DE83: VCallAd Control_ID_ServDifuFlex
  loc_C3DE86: FStAdFunc var_88
  loc_C3DE89: FLdPr var_88
  loc_C3DE8C: LateIdLdVar var_98 DispID_10 0
  loc_C3DE93: CI4Var
  loc_C3DE95: CVarI4
  loc_C3DE99: PopAdLdVar
  loc_C3DE9A: LitVarI4
  loc_C3DEA2: PopAdLdVar
  loc_C3DEA3: LitVarStr var_10C, vbNullString
  loc_C3DEA8: PopAdLdVar
  loc_C3DEA9: FLdPr Me
  loc_C3DEAC: VCallAd Control_ID_ServDifuFlex
  loc_C3DEAF: FStAdFunc var_DC
  loc_C3DEB2: FLdPr var_DC
  loc_C3DEB5: LateIdCallSt
  loc_C3DEBD: FFreeAd var_88 = ""
  loc_C3DEC4: FFree1Var var_98 = ""
  loc_C3DEC7: FLdPr Me
  loc_C3DECA: VCallAd Control_ID_ServDifuFlex
  loc_C3DECD: FStAdFunc var_88
  loc_C3DED0: FLdPr var_88
  loc_C3DED3: LateIdLdVar var_98 DispID_10 0
  loc_C3DEDA: CI4Var
  loc_C3DEDC: CVarI4
  loc_C3DEE0: PopAdLdVar
  loc_C3DEE1: LitVarI4
  loc_C3DEE9: PopAdLdVar
  loc_C3DEEA: LitVarStr var_10C, vbNullString
  loc_C3DEEF: PopAdLdVar
  loc_C3DEF0: FLdPr Me
  loc_C3DEF3: VCallAd Control_ID_ServDifuFlex
  loc_C3DEF6: FStAdFunc var_DC
  loc_C3DEF9: FLdPr var_DC
  loc_C3DEFC: LateIdCallSt
  loc_C3DF04: FFreeAd var_88 = ""
  loc_C3DF0B: FFree1Var var_98 = ""
  loc_C3DF0E: FLdPr Me
  loc_C3DF11: VCallAd Control_ID_ServDifuFlex
  loc_C3DF14: FStAdFunc var_88
  loc_C3DF17: FLdPr var_88
  loc_C3DF1A: LateIdLdVar var_98 DispID_10 0
  loc_C3DF21: CI4Var
  loc_C3DF23: CVarI4
  loc_C3DF27: PopAdLdVar
  loc_C3DF28: LitVarI4
  loc_C3DF30: PopAdLdVar
  loc_C3DF31: LitVarStr var_10C, vbNullString
  loc_C3DF36: PopAdLdVar
  loc_C3DF37: FLdPr Me
  loc_C3DF3A: VCallAd Control_ID_ServDifuFlex
  loc_C3DF3D: FStAdFunc var_DC
  loc_C3DF40: FLdPr var_DC
  loc_C3DF43: LateIdCallSt
  loc_C3DF4B: FFreeAd var_88 = ""
  loc_C3DF52: FFree1Var var_98 = ""
  loc_C3DF55: FLdPr Me
  loc_C3DF58: VCallAd Control_ID_ServDifuFlex
  loc_C3DF5B: FStAdFunc var_88
  loc_C3DF5E: FLdPr var_88
  loc_C3DF61: LateIdLdVar var_98 DispID_10 0
  loc_C3DF68: CI4Var
  loc_C3DF6A: CVarI4
  loc_C3DF6E: PopAdLdVar
  loc_C3DF6F: LitVarI4
  loc_C3DF77: PopAdLdVar
  loc_C3DF78: LitVarStr var_10C, vbNullString
  loc_C3DF7D: PopAdLdVar
  loc_C3DF7E: FLdPr Me
  loc_C3DF81: VCallAd Control_ID_ServDifuFlex
  loc_C3DF84: FStAdFunc var_DC
  loc_C3DF87: FLdPr var_DC
  loc_C3DF8A: LateIdCallSt
  loc_C3DF92: FFreeAd var_88 = ""
  loc_C3DF99: FFree1Var var_98 = ""
  loc_C3DF9C: FLdPr Me
  loc_C3DF9F: VCallAd Control_ID_ServDifuFlex
  loc_C3DFA2: FStAdFunc var_88
  loc_C3DFA5: FLdPr var_88
  loc_C3DFA8: LateIdLdVar var_98 DispID_10 0
  loc_C3DFAF: CI4Var
  loc_C3DFB1: CVarI4
  loc_C3DFB5: PopAdLdVar
  loc_C3DFB6: LitVarI4
  loc_C3DFBE: PopAdLdVar
  loc_C3DFBF: LitVarStr var_10C, vbNullString
  loc_C3DFC4: PopAdLdVar
  loc_C3DFC5: FLdPr Me
  loc_C3DFC8: VCallAd Control_ID_ServDifuFlex
  loc_C3DFCB: FStAdFunc var_DC
  loc_C3DFCE: FLdPr var_DC
  loc_C3DFD1: LateIdCallSt
  loc_C3DFD9: FFreeAd var_88 = ""
  loc_C3DFE0: FFree1Var var_98 = ""
  loc_C3DFE3: FLdPr Me
  loc_C3DFE6: VCallAd Control_ID_ServDifuFlex
  loc_C3DFE9: FStAdFunc var_88
  loc_C3DFEC: FLdPr var_88
  loc_C3DFEF: LateIdLdVar var_98 DispID_10 0
  loc_C3DFF6: CI4Var
  loc_C3DFF8: CVarI4
  loc_C3DFFC: PopAdLdVar
  loc_C3DFFD: LitVarI4
  loc_C3E005: PopAdLdVar
  loc_C3E006: LitVarStr var_10C, vbNullString
  loc_C3E00B: PopAdLdVar
  loc_C3E00C: FLdPr Me
  loc_C3E00F: VCallAd Control_ID_ServDifuFlex
  loc_C3E012: FStAdFunc var_DC
  loc_C3E015: FLdPr var_DC
  loc_C3E018: LateIdCallSt
  loc_C3E020: FFreeAd var_88 = ""
  loc_C3E027: FFree1Var var_98 = ""
  loc_C3E02A: Branch loc_C3E02D
  loc_C3E02D: Call Proc_259_55_B03CE4()
  loc_C3E032: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A81B78
  'Data Table: 526984
  loc_A81AF4: LitI4 0
  loc_A81AF9: LitI4 0
  loc_A81AFE: FLdRfVar var_88
  loc_A81B01: Redim
  loc_A81B0B: FLdPr Me
  loc_A81B0E: VCallAd Control_ID_ConfirmarCmd
  loc_A81B11: CVarAd
  loc_A81B15: ParmAry1St
  loc_A81B1B: FLdRfVar var_88
  loc_A81B1E: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A81B23: FLdRfVar var_88
  loc_A81B26: Erase
  loc_A81B27: LitI2_Byte 0
  loc_A81B29: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A81B2E: CStrDate
  loc_A81B30: CVarStr var_98
  loc_A81B33: PopAdLdVar
  loc_A81B34: FLdPr Me
  loc_A81B37: VCallAd Control_ID_FeveCtctMsk
  loc_A81B3A: FStAdFunc var_AC
  loc_A81B3D: FLdPr var_AC
  loc_A81B40: LateIdSt
  loc_A81B45: FFree1Ad var_AC
  loc_A81B48: FFree1Var var_98 = ""
  loc_A81B4B: LitI2_Byte &HFF
  loc_A81B4D: FLdPr Me
  loc_A81B50: VCallAd Control_ID_ConfirmarCmd
  loc_A81B53: FStAdFunc var_AC
  loc_A81B56: FLdPr var_AC
  loc_A81B59: Me.Enabled = from_stack_1b
  loc_A81B5E: FFree1Ad var_AC
  loc_A81B61: Call Proc_259_54_B463DC()
  loc_A81B66: FLdPrThis
  loc_A81B67: VCallAd Control_ID_NumeCtaTxt
  loc_A81B6A: CVarAd
  loc_A81B6E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81B73: FFree1Var var_98 = ""
  loc_A81B76: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B25528
  'Data Table: 526984
  loc_B25274: ILdI2 KeyAscii
  loc_B25277: CI4UI1
  loc_B25278: LitI4 &H20
  loc_B2527D: EqI4
  loc_B2527E: BranchF loc_B25524
  loc_B25281: LitI2_Byte 0
  loc_B25283: IStI2 KeyAscii
  loc_B25286: LitI2_Byte 4
  loc_B25288: CUI1I2
  loc_B2528A: ImpAdStUI1 MemVar_D93038
  loc_B2528E: LitVar_Missing var_A4
  loc_B25291: PopAdLdVar
  loc_B25292: LitVarI4
  loc_B2529A: PopAdLdVar
  loc_B2529B: ImpAdLdRf MemVar_D94034
  loc_B2529E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B252A1: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B252A6: FLdRfVar var_AC
  loc_B252A9: FLdRfVar var_A8
  loc_B252AC: ImpAdLdRf MemVar_D94034
  loc_B252AF: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B252B2: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B252B7: FLdPr var_A8
  loc_B252BA: from_stack_1 = clsbase.RecordCount
  loc_B252BF: ILdRf var_AC
  loc_B252C2: LitI4 0
  loc_B252C7: GtI4
  loc_B252C8: FFree1Ad var_A8
  loc_B252CB: BranchF loc_B25512
  loc_B252CE: FLdRfVar var_C8
  loc_B252D1: FLdRfVar var_B8
  loc_B252D4: LitVarStr var_94, "CuenCtct"
  loc_B252D9: PopAdLdVar
  loc_B252DA: FLdRfVar var_B4
  loc_B252DD: FLdRfVar var_B0
  loc_B252E0: FLdRfVar var_A8
  loc_B252E3: ImpAdLdRf MemVar_D94034
  loc_B252E6: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B252E9: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B252EE: FLdPr var_A8
  loc_B252F1: from_stack_1v = clsbase.RsFrmGet()
  loc_B252F6: FLdPr var_B0
  loc_B252F9:  = Me.Fields
  loc_B252FE: FLdPr var_B4
  loc_B25301: from_stack_2 = Me.Item(from_stack_1)
  loc_B25306: FLdPr var_B8
  loc_B25309:  = Me.Value
  loc_B2530E: FLdRfVar var_C8
  loc_B25311: CStrVarTmp
  loc_B25312: FStStrNoPop var_CC
  loc_B25315: FLdPr Me
  loc_B25318: VCallAd Control_ID_NumeCtaTxt
  loc_B2531B: FStAdFunc var_D0
  loc_B2531E: FLdPr var_D0
  loc_B25321: Me.Text = from_stack_1
  loc_B25326: FFree1Str var_CC
  loc_B25329: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B25336: FFree1Var var_C8 = ""
  loc_B25339: FLdRfVar var_CC
  loc_B2533C: FLdPr Me
  loc_B2533F: VCallAd Control_ID_NumeCtaTxt
  loc_B25342: FStAdFunc var_A8
  loc_B25345: FLdPr var_A8
  loc_B25348:  = Me.Text
  loc_B2534D: FLdPr Me
  loc_B25350: MemLdRfVar from_stack_1.global_96
  loc_B25353: NewIfNullRf
  loc_B25357: ILdRf var_CC
  loc_B2535A: ImpAdCallI2 Proc_270_8_B4BB24(, )
  loc_B2535F: FFree1Str var_CC
  loc_B25362: FFree1Ad var_A8
  loc_B25365: BranchF loc_B254B6
  loc_B25368: FLdRfVar var_CC
  loc_B2536B: FLdPr Me
  loc_B2536E: MemLdRfVar from_stack_1.global_96
  loc_B25371: NewIfNullPr tblDifunto
  loc_B25374: from_stack_1v = tblDifunto.CodiTiseGet()
  loc_B25379: FLdZeroAd var_CC
  loc_B2537C: FStStr var_D4
  loc_B2537F: ILdRf var_D4
  loc_B25382: LitStr "1"
  loc_B25385: EqStr
  loc_B25387: BranchF loc_B253A4
  loc_B2538A: LitStr "N"
  loc_B2538D: FLdPr Me
  loc_B25390: VCallAd Control_ID_CodiTiseTxt
  loc_B25393: FStAdFunc var_A8
  loc_B25396: FLdPr var_A8
  loc_B25399: Me.Text = from_stack_1
  loc_B2539E: FFree1Ad var_A8
  loc_B253A1: Branch loc_B25410
  loc_B253A4: ILdRf var_D4
  loc_B253A7: LitStr "2"
  loc_B253AA: EqStr
  loc_B253AC: BranchF loc_B253C9
  loc_B253AF: LitStr "F"
  loc_B253B2: FLdPr Me
  loc_B253B5: VCallAd Control_ID_CodiTiseTxt
  loc_B253B8: FStAdFunc var_A8
  loc_B253BB: FLdPr var_A8
  loc_B253BE: Me.Text = from_stack_1
  loc_B253C3: FFree1Ad var_A8
  loc_B253C6: Branch loc_B25410
  loc_B253C9: ILdRf var_D4
  loc_B253CC: LitStr "3"
  loc_B253CF: EqStr
  loc_B253D1: BranchF loc_B253EE
  loc_B253D4: LitStr "M"
  loc_B253D7: FLdPr Me
  loc_B253DA: VCallAd Control_ID_CodiTiseTxt
  loc_B253DD: FStAdFunc var_A8
  loc_B253E0: FLdPr var_A8
  loc_B253E3: Me.Text = from_stack_1
  loc_B253E8: FFree1Ad var_A8
  loc_B253EB: Branch loc_B25410
  loc_B253EE: ILdRf var_D4
  loc_B253F1: LitStr "4"
  loc_B253F4: EqStr
  loc_B253F6: BranchF loc_B25410
  loc_B253F9: LitStr "U"
  loc_B253FC: FLdPr Me
  loc_B253FF: VCallAd Control_ID_CodiTiseTxt
  loc_B25402: FStAdFunc var_A8
  loc_B25405: FLdPr var_A8
  loc_B25408: Me.Text = from_stack_1
  loc_B2540D: FFree1Ad var_A8
  loc_B25410: FLdRfVar var_CC
  loc_B25413: FLdPr Me
  loc_B25416: MemLdRfVar from_stack_1.global_96
  loc_B25419: NewIfNullPr tblDifunto
  loc_B2541C: from_stack_1v = tblDifunto.NumeDifuGet()
  loc_B25421: ILdRf var_CC
  loc_B25424: FLdPr Me
  loc_B25427: VCallAd Control_ID_NumeDifuTxt
  loc_B2542A: FStAdFunc var_A8
  loc_B2542D: FLdPr var_A8
  loc_B25430: Me.Text = from_stack_1
  loc_B25435: FFree1Str var_CC
  loc_B25438: FFree1Ad var_A8
  loc_B2543B: FLdRfVar var_CC
  loc_B2543E: FLdPr Me
  loc_B25441: MemLdRfVar from_stack_1.global_96
  loc_B25444: NewIfNullPr tblDifunto
  loc_B25447: from_stack_1v = tblDifunto.FilaDifuGet()
  loc_B2544C: ILdRf var_CC
  loc_B2544F: FLdPr Me
  loc_B25452: VCallAd Control_ID_FilaDifuTxt
  loc_B25455: FStAdFunc var_A8
  loc_B25458: FLdPr var_A8
  loc_B2545B: Me.Text = from_stack_1
  loc_B25460: FFree1Str var_CC
  loc_B25463: FFree1Ad var_A8
  loc_B25466: FLdRfVar var_CC
  loc_B25469: FLdPr Me
  loc_B2546C: MemLdRfVar from_stack_1.global_96
  loc_B2546F: NewIfNullPr tblDifunto
  loc_B25472: from_stack_1v = tblDifunto.SeccDifuGet()
  loc_B25477: ILdRf var_CC
  loc_B2547A: FLdPr Me
  loc_B2547D: VCallAd Control_ID_SeccDifuTxt
  loc_B25480: FStAdFunc var_A8
  loc_B25483: FLdPr var_A8
  loc_B25486: Me.Text = from_stack_1
  loc_B2548B: FFree1Str var_CC
  loc_B2548E: FFree1Ad var_A8
  loc_B25491: FLdRfVar var_CC
  loc_B25494: FLdPr Me
  loc_B25497: VCallAd Control_ID_CodiTiseTxt
  loc_B2549A: FStAdFunc var_A8
  loc_B2549D: FLdPr var_A8
  loc_B254A0:  = Me.Text
  loc_B254A5: ILdRf var_CC
  loc_B254A8: Call Proc_259_57_C1970C()
  loc_B254AD: FFree1Str var_CC
  loc_B254B0: FFree1Ad var_A8
  loc_B254B3: Branch loc_B25512
  loc_B254B6: LitStr vbNullString
  loc_B254B9: FLdPr Me
  loc_B254BC: VCallAd Control_ID_CodiTiseTxt
  loc_B254BF: FStAdFunc var_A8
  loc_B254C2: FLdPr var_A8
  loc_B254C5: Me.Text = from_stack_1
  loc_B254CA: FFree1Ad var_A8
  loc_B254CD: LitStr vbNullString
  loc_B254D0: FLdPr Me
  loc_B254D3: VCallAd Control_ID_NumeDifuTxt
  loc_B254D6: FStAdFunc var_A8
  loc_B254D9: FLdPr var_A8
  loc_B254DC: Me.Text = from_stack_1
  loc_B254E1: FFree1Ad var_A8
  loc_B254E4: LitStr "0"
  loc_B254E7: FLdPr Me
  loc_B254EA: VCallAd Control_ID_FilaDifuTxt
  loc_B254ED: FStAdFunc var_A8
  loc_B254F0: FLdPr var_A8
  loc_B254F3: Me.Text = from_stack_1
  loc_B254F8: FFree1Ad var_A8
  loc_B254FB: LitStr vbNullString
  loc_B254FE: FLdPr Me
  loc_B25501: VCallAd Control_ID_SeccDifuTxt
  loc_B25504: FStAdFunc var_A8
  loc_B25507: FLdPr var_A8
  loc_B2550A: Me.Text = from_stack_1
  loc_B2550F: FFree1Ad var_A8
  loc_B25512: FLdPr Me
  loc_B25515: VCallAd Control_ID_NumeCtaTxt
  loc_B25518: CVarAd
  loc_B2551C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B25521: FFree1Var var_C8 = ""
  loc_B25524: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B9A47C
  'Data Table: 526984
  loc_B99F20: FLdRfVar var_8A
  loc_B99F23: FLdPr Me
  loc_B99F26: VCallAd Control_ID_NumeCtaTxt
  loc_B99F29: FStAdFunc var_88
  loc_B99F2C: FLdPr var_88
  loc_B99F2F:  = Me.Enabled
  loc_B99F34: FLdI2 var_8A
  loc_B99F37: FFree1Ad var_88
  loc_B99F3A: BranchF loc_B9A478
  loc_B99F3D: FLdRfVar var_90
  loc_B99F40: FLdPr Me
  loc_B99F43: VCallAd Control_ID_NumeCtaTxt
  loc_B99F46: FStAdFunc var_88
  loc_B99F49: FLdPr var_88
  loc_B99F4C:  = Me.Text
  loc_B99F51: FLdPr Me
  loc_B99F54: MemLdRfVar from_stack_1.global_96
  loc_B99F57: NewIfNullRf
  loc_B99F5B: ILdRf var_90
  loc_B99F5E: ImpAdCallI2 Proc_270_8_B4BB24(, )
  loc_B99F63: FFree1Str var_90
  loc_B99F66: FFree1Ad var_88
  loc_B99F69: BranchF loc_B9A0C3
  loc_B99F6C: FLdRfVar var_90
  loc_B99F6F: FLdPr Me
  loc_B99F72: MemLdRfVar from_stack_1.global_96
  loc_B99F75: NewIfNullPr tblDifunto
  loc_B99F78: from_stack_1v = tblDifunto.CodiTiseGet()
  loc_B99F7D: FLdZeroAd var_90
  loc_B99F80: FStStr var_94
  loc_B99F83: ILdRf var_94
  loc_B99F86: LitStr "1"
  loc_B99F89: EqStr
  loc_B99F8B: BranchF loc_B99FA8
  loc_B99F8E: LitStr "N"
  loc_B99F91: FLdPr Me
  loc_B99F94: VCallAd Control_ID_CodiTiseTxt
  loc_B99F97: FStAdFunc var_88
  loc_B99F9A: FLdPr var_88
  loc_B99F9D: Me.Text = from_stack_1
  loc_B99FA2: FFree1Ad var_88
  loc_B99FA5: Branch loc_B9A014
  loc_B99FA8: ILdRf var_94
  loc_B99FAB: LitStr "2"
  loc_B99FAE: EqStr
  loc_B99FB0: BranchF loc_B99FCD
  loc_B99FB3: LitStr "F"
  loc_B99FB6: FLdPr Me
  loc_B99FB9: VCallAd Control_ID_CodiTiseTxt
  loc_B99FBC: FStAdFunc var_88
  loc_B99FBF: FLdPr var_88
  loc_B99FC2: Me.Text = from_stack_1
  loc_B99FC7: FFree1Ad var_88
  loc_B99FCA: Branch loc_B9A014
  loc_B99FCD: ILdRf var_94
  loc_B99FD0: LitStr "3"
  loc_B99FD3: EqStr
  loc_B99FD5: BranchF loc_B99FF2
  loc_B99FD8: LitStr "M"
  loc_B99FDB: FLdPr Me
  loc_B99FDE: VCallAd Control_ID_CodiTiseTxt
  loc_B99FE1: FStAdFunc var_88
  loc_B99FE4: FLdPr var_88
  loc_B99FE7: Me.Text = from_stack_1
  loc_B99FEC: FFree1Ad var_88
  loc_B99FEF: Branch loc_B9A014
  loc_B99FF2: ILdRf var_94
  loc_B99FF5: LitStr "4"
  loc_B99FF8: EqStr
  loc_B99FFA: BranchF loc_B9A014
  loc_B99FFD: LitStr "U"
  loc_B9A000: FLdPr Me
  loc_B9A003: VCallAd Control_ID_CodiTiseTxt
  loc_B9A006: FStAdFunc var_88
  loc_B9A009: FLdPr var_88
  loc_B9A00C: Me.Text = from_stack_1
  loc_B9A011: FFree1Ad var_88
  loc_B9A014: FLdRfVar var_90
  loc_B9A017: FLdPr Me
  loc_B9A01A: MemLdRfVar from_stack_1.global_96
  loc_B9A01D: NewIfNullPr tblDifunto
  loc_B9A020: from_stack_1v = tblDifunto.NumeDifuGet()
  loc_B9A025: ILdRf var_90
  loc_B9A028: FLdPr Me
  loc_B9A02B: VCallAd Control_ID_NumeDifuTxt
  loc_B9A02E: FStAdFunc var_88
  loc_B9A031: FLdPr var_88
  loc_B9A034: Me.Text = from_stack_1
  loc_B9A039: FFree1Str var_90
  loc_B9A03C: FFree1Ad var_88
  loc_B9A03F: FLdRfVar var_90
  loc_B9A042: FLdPr Me
  loc_B9A045: MemLdRfVar from_stack_1.global_96
  loc_B9A048: NewIfNullPr tblDifunto
  loc_B9A04B: from_stack_1v = tblDifunto.FilaDifuGet()
  loc_B9A050: ILdRf var_90
  loc_B9A053: FLdPr Me
  loc_B9A056: VCallAd Control_ID_FilaDifuTxt
  loc_B9A059: FStAdFunc var_88
  loc_B9A05C: FLdPr var_88
  loc_B9A05F: Me.Text = from_stack_1
  loc_B9A064: FFree1Str var_90
  loc_B9A067: FFree1Ad var_88
  loc_B9A06A: FLdRfVar var_90
  loc_B9A06D: FLdPr Me
  loc_B9A070: MemLdRfVar from_stack_1.global_96
  loc_B9A073: NewIfNullPr tblDifunto
  loc_B9A076: from_stack_1v = tblDifunto.SeccDifuGet()
  loc_B9A07B: ILdRf var_90
  loc_B9A07E: FLdPr Me
  loc_B9A081: VCallAd Control_ID_SeccDifuTxt
  loc_B9A084: FStAdFunc var_88
  loc_B9A087: FLdPr var_88
  loc_B9A08A: Me.Text = from_stack_1
  loc_B9A08F: FFree1Str var_90
  loc_B9A092: FFree1Ad var_88
  loc_B9A095: FLdRfVar var_90
  loc_B9A098: FLdPr Me
  loc_B9A09B: MemLdRfVar from_stack_1.global_96
  loc_B9A09E: NewIfNullPr tblDifunto
  loc_B9A0A1: from_stack_1v = tblDifunto.FeveDifuGet()
  loc_B9A0A6: ILdRf var_90
  loc_B9A0A9: FLdPr Me
  loc_B9A0AC: VCallAd Control_ID_FeveDifuLbl
  loc_B9A0AF: FStAdFunc var_88
  loc_B9A0B2: FLdPr var_88
  loc_B9A0B5: Me.Caption = from_stack_1
  loc_B9A0BA: FFree1Str var_90
  loc_B9A0BD: FFree1Ad var_88
  loc_B9A0C0: Branch loc_B9A136
  loc_B9A0C3: LitStr vbNullString
  loc_B9A0C6: FLdPr Me
  loc_B9A0C9: VCallAd Control_ID_CodiTiseTxt
  loc_B9A0CC: FStAdFunc var_88
  loc_B9A0CF: FLdPr var_88
  loc_B9A0D2: Me.Text = from_stack_1
  loc_B9A0D7: FFree1Ad var_88
  loc_B9A0DA: LitStr vbNullString
  loc_B9A0DD: FLdPr Me
  loc_B9A0E0: VCallAd Control_ID_NumeDifuTxt
  loc_B9A0E3: FStAdFunc var_88
  loc_B9A0E6: FLdPr var_88
  loc_B9A0E9: Me.Text = from_stack_1
  loc_B9A0EE: FFree1Ad var_88
  loc_B9A0F1: LitStr "0"
  loc_B9A0F4: FLdPr Me
  loc_B9A0F7: VCallAd Control_ID_FilaDifuTxt
  loc_B9A0FA: FStAdFunc var_88
  loc_B9A0FD: FLdPr var_88
  loc_B9A100: Me.Text = from_stack_1
  loc_B9A105: FFree1Ad var_88
  loc_B9A108: LitStr vbNullString
  loc_B9A10B: FLdPr Me
  loc_B9A10E: VCallAd Control_ID_SeccDifuTxt
  loc_B9A111: FStAdFunc var_88
  loc_B9A114: FLdPr var_88
  loc_B9A117: Me.Text = from_stack_1
  loc_B9A11C: FFree1Ad var_88
  loc_B9A11F: LitStr vbNullString
  loc_B9A122: FLdPr Me
  loc_B9A125: VCallAd Control_ID_FeveDifuLbl
  loc_B9A128: FStAdFunc var_88
  loc_B9A12B: FLdPr var_88
  loc_B9A12E: Me.Caption = from_stack_1
  loc_B9A133: FFree1Ad var_88
  loc_B9A136: FLdRfVar var_90
  loc_B9A139: FLdPr Me
  loc_B9A13C: VCallAd Control_ID_NumeCtaTxt
  loc_B9A13F: FStAdFunc var_88
  loc_B9A142: FLdPr var_88
  loc_B9A145:  = Me.Text
  loc_B9A14A: ILdRf var_90
  loc_B9A14D: LitStr vbNullString
  loc_B9A150: NeStr
  loc_B9A152: FLdRfVar var_9C
  loc_B9A155: FLdPr Me
  loc_B9A158: VCallAd Control_ID_NumeCtaTxt
  loc_B9A15B: FStAdFunc var_98
  loc_B9A15E: FLdPr var_98
  loc_B9A161:  = Me.Text
  loc_B9A166: ILdRf var_9C
  loc_B9A169: LitStr "0"
  loc_B9A16C: NeStr
  loc_B9A16E: AndI4
  loc_B9A16F: FFreeStr var_90 = ""
  loc_B9A176: FFreeAd var_88 = ""
  loc_B9A17D: BranchF loc_B9A473
  loc_B9A180: FLdRfVar var_90
  loc_B9A183: FLdPr Me
  loc_B9A186: VCallAd Control_ID_NumeCtaTxt
  loc_B9A189: FStAdFunc var_88
  loc_B9A18C: FLdPr var_88
  loc_B9A18F:  = Me.Text
  loc_B9A194: FLdPr Me
  loc_B9A197: MemLdRfVar from_stack_1.global_68
  loc_B9A19A: NewIfNullRf
  loc_B9A19E: LitStr "Titular"
  loc_B9A1A1: ILdRf var_90
  loc_B9A1A4: LitI2_Byte 4
  loc_B9A1A6: CStrUI1
  loc_B9A1A8: FStStrNoPop var_9C
  loc_B9A1AB: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B9A1B0: FFreeStr var_9C = ""
  loc_B9A1B7: FFree1Ad var_88
  loc_B9A1BA: BranchF loc_B9A3E5
  loc_B9A1BD: FLdRfVar var_90
  loc_B9A1C0: FLdPr Me
  loc_B9A1C3: MemLdRfVar from_stack_1.global_68
  loc_B9A1C6: NewIfNullPr tblPersona
  loc_B9A1C9: from_stack_1v = tblPersona.CucuPersGet()
  loc_B9A1CE: ILdRf var_90
  loc_B9A1D1: FLdPr Me
  loc_B9A1D4: VCallAd Control_ID_CucuPersLbl
  loc_B9A1D7: FStAdFunc var_88
  loc_B9A1DA: FLdPr var_88
  loc_B9A1DD: Me.Caption = from_stack_1
  loc_B9A1E2: FFree1Str var_90
  loc_B9A1E5: FFree1Ad var_88
  loc_B9A1E8: FLdRfVar var_90
  loc_B9A1EB: FLdPr Me
  loc_B9A1EE: MemLdRfVar from_stack_1.global_68
  loc_B9A1F1: NewIfNullPr tblPersona
  loc_B9A1F4: from_stack_1v = tblPersona.DetaPersGet()
  loc_B9A1F9: ILdRf var_90
  loc_B9A1FC: FLdPr Me
  loc_B9A1FF: VCallAd Control_ID_DetaPersLbl
  loc_B9A202: FStAdFunc var_88
  loc_B9A205: FLdPr var_88
  loc_B9A208: Me.Caption = from_stack_1
  loc_B9A20D: FFree1Str var_90
  loc_B9A210: FFree1Ad var_88
  loc_B9A213: FLdRfVar var_9C
  loc_B9A216: FLdPr Me
  loc_B9A219: MemLdRfVar from_stack_1.global_68
  loc_B9A21C: NewIfNullPr tblPersona
  loc_B9A21F: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B9A224: FLdRfVar var_A0
  loc_B9A227: FLdPr Me
  loc_B9A22A: MemLdRfVar from_stack_1.global_68
  loc_B9A22D: NewIfNullPr tblPersona
  loc_B9A230: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B9A235: FLdRfVar var_90
  loc_B9A238: FLdPr Me
  loc_B9A23B: MemLdRfVar from_stack_1.global_68
  loc_B9A23E: NewIfNullPr tblPersona
  loc_B9A241: from_stack_1v = tblPersona.DetaCallGet()
  loc_B9A246: ILdRf var_90
  loc_B9A249: LitStr " "
  loc_B9A24C: ConcatStr
  loc_B9A24D: CVarStr var_100
  loc_B9A250: LitVarStr var_D0, vbNullString
  loc_B9A255: FStVarCopyObj var_E0
  loc_B9A258: FLdRfVar var_E0
  loc_B9A25B: LitStr "Nro: "
  loc_B9A25E: ILdRf var_A0
  loc_B9A261: ConcatStr
  loc_B9A262: CVarStr var_C0
  loc_B9A265: ILdRf var_9C
  loc_B9A268: LitStr "0"
  loc_B9A26B: NeStr
  loc_B9A26D: CVarBoolI2 var_B0
  loc_B9A271: FLdRfVar var_F0
  loc_B9A274: ImpAdCallFPR4  = IIf(, , )
  loc_B9A279: FLdRfVar var_F0
  loc_B9A27C: ConcatVar var_110
  loc_B9A280: LitVarStr var_120, " "
  loc_B9A285: ConcatVar var_130
  loc_B9A289: FLdRfVar var_134
  loc_B9A28C: FLdPr Me
  loc_B9A28F: MemLdRfVar from_stack_1.global_68
  loc_B9A292: NewIfNullPr tblPersona
  loc_B9A295: from_stack_1v = tblPersona.UbicPersGet()
  loc_B9A29A: FLdZeroAd var_134
  loc_B9A29D: CVarStr var_144
  loc_B9A2A0: ConcatVar var_154
  loc_B9A2A4: LitVarStr var_164, " "
  loc_B9A2A9: ConcatVar var_174
  loc_B9A2AD: FLdRfVar var_178
  loc_B9A2B0: FLdPr Me
  loc_B9A2B3: MemLdRfVar from_stack_1.global_68
  loc_B9A2B6: NewIfNullPr tblPersona
  loc_B9A2B9: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B9A2BE: FLdZeroAd var_178
  loc_B9A2C1: CVarStr var_188
  loc_B9A2C4: ConcatVar var_198
  loc_B9A2C8: CStrVarVal var_19C
  loc_B9A2CC: FLdPr Me
  loc_B9A2CF: VCallAd Control_ID_DomiPersLbl
  loc_B9A2D2: FStAdFunc var_88
  loc_B9A2D5: FLdPr var_88
  loc_B9A2D8: Me.Caption = from_stack_1
  loc_B9A2DD: FFreeStr var_90 = "": var_9C = "": var_A0 = ""
  loc_B9A2E8: FFree1Ad var_88
  loc_B9A2EB: FFreeVar var_B0 = "": var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_144 = "": var_154 = "": var_174 = "": var_188 = ""
  loc_B9A306: LitStr "SELECT difunto.CodiDifu, difunto.CucuPers, infogov.persona.DetaPers, difunto.CodiInmu, difunto.CodiCeme, cementerio.DetaCeme, difunto.CodiTise, tiposepu.DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, CacaDifu, CompDifu, ParvDifu, difunto.BajaFeho, difunto.BajaMoti, FeveDifu, PeriDifu, MesDifu, AnioDifu, PerpDifu, ObseDifu, DetaDedi, detadifu.NumeDedi, difunto.EjerDifu, difunto.BimeDifu,"
  loc_B9A309: LitStr " difunto.CocpDifu,difunto.DecpDifu,difunto.NupoDifu,difunto.CobpDifu,difunto.DebpDifu,difunto.MapoDifu,difunto.CapoDifu,difunto.UbpoDifu,difunto.ColpDifu,difunto.DelpDifu,difunto.CoppDifu,difunto.BajaMoti as BajaMotiDifu,difunto.BajaFeho"
  loc_B9A30C: ConcatStr
  loc_B9A30D: FStStrNoPop var_90
  loc_B9A310: LitStr " FROM difunto "
  loc_B9A313: ConcatStr
  loc_B9A314: FStStrNoPop var_9C
  loc_B9A317: LitStr " LEFT JOIN infogov.persona On difunto.CucuPers = infogov.persona.CucuPers"
  loc_B9A31A: ConcatStr
  loc_B9A31B: FStStrNoPop var_A0
  loc_B9A31E: LitStr " LEFT JOIN tiposepu On difunto.CodiTise = tiposepu.CodiTise"
  loc_B9A321: ConcatStr
  loc_B9A322: FStStrNoPop var_134
  loc_B9A325: LitStr " LEFT JOIN cementerio On difunto.CodiCeme = cementerio.CodiCeme "
  loc_B9A328: ConcatStr
  loc_B9A329: FStStrNoPop var_178
  loc_B9A32C: LitStr " INNER JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu AND detadifu.BajaFeho IS NULL"
  loc_B9A32F: ConcatStr
  loc_B9A330: FStStrNoPop var_19C
  loc_B9A333: LitStr " WHERE difunto.CodiDifu = '"
  loc_B9A336: ConcatStr
  loc_B9A337: FStStrNoPop var_1A4
  loc_B9A33A: FLdRfVar var_1A0
  loc_B9A33D: FLdPr Me
  loc_B9A340: VCallAd Control_ID_NumeCtaTxt
  loc_B9A343: FStAdFunc var_88
  loc_B9A346: FLdPr var_88
  loc_B9A349:  = Me.Text
  loc_B9A34E: ILdRf var_1A0
  loc_B9A351: ConcatStr
  loc_B9A352: FStStrNoPop var_1A8
  loc_B9A355: LitStr "'"
  loc_B9A358: ConcatStr
  loc_B9A359: FStStrNoPop var_1AC
  loc_B9A35C: FLdPr Me
  loc_B9A35F: MemLdRfVar from_stack_1.global_56
  loc_B9A362: NewIfNullPr clsdifunto
  loc_B9A365: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_B9A36A: FFreeStr var_90 = "": var_9C = "": var_A0 = "": var_134 = "": var_178 = "": var_19C = "": var_1A4 = "": var_1A0 = "": var_1A8 = ""
  loc_B9A381: FFree1Ad var_88
  loc_B9A384: LitI4 0
  loc_B9A389: LitI4 1
  loc_B9A38E: FLdRfVar var_1B0
  loc_B9A391: Redim
  loc_B9A39B: FLdPr Me
  loc_B9A39E: MemLdRfVar from_stack_1.global_56
  loc_B9A3A1: NewIfNullAd
  loc_B9A3A4: FStAd var_88 
  loc_B9A3A8: FLdRfVar var_88
  loc_B9A3AB: CVarRef
  loc_B9A3B0: ParmAry1St
  loc_B9A3B6: FLdPr Me
  loc_B9A3B9: VCallAd Control_ID_dgdABMS
  loc_B9A3BC: CVarAd
  loc_B9A3C0: ParmAry1St
  loc_B9A3C6: FLdRfVar var_1B0
  loc_B9A3C9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B9A3CE: ILdRf var_88
  loc_B9A3D1: CastAd
  loc_B9A3D4: FLdPr Me
  loc_B9A3D7: MemStAdFunc
  loc_B9A3DB: FLdRfVar var_1B0
  loc_B9A3DE: Erase
  loc_B9A3DF: FFree1Ad var_88
  loc_B9A3E2: Branch loc_B9A470
  loc_B9A3E5: FLdRfVar var_90
  loc_B9A3E8: FLdPr Me
  loc_B9A3EB: MemLdRfVar from_stack_1.global_68
  loc_B9A3EE: NewIfNullPr tblPersona
  loc_B9A3F1: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B9A3F6: ILdRf var_90
  loc_B9A3F9: FLdPr Me
  loc_B9A3FC: MemStStrCopy
  loc_B9A400: FFree1Str var_90
  loc_B9A403: FLdPr Me
  loc_B9A406: MemLdStr global_72
  loc_B9A409: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B9A40E: LitStr vbNullString
  loc_B9A411: FLdPr Me
  loc_B9A414: VCallAd Control_ID_CucuPersLbl
  loc_B9A417: FStAdFunc var_88
  loc_B9A41A: FLdPr var_88
  loc_B9A41D: Me.Caption = from_stack_1
  loc_B9A422: FFree1Ad var_88
  loc_B9A425: LitStr vbNullString
  loc_B9A428: FLdPr Me
  loc_B9A42B: VCallAd Control_ID_DetaPersLbl
  loc_B9A42E: FStAdFunc var_88
  loc_B9A431: FLdPr var_88
  loc_B9A434: Me.Caption = from_stack_1
  loc_B9A439: FFree1Ad var_88
  loc_B9A43C: LitStr vbNullString
  loc_B9A43F: FLdPr Me
  loc_B9A442: VCallAd Control_ID_DomiPersLbl
  loc_B9A445: FStAdFunc var_88
  loc_B9A448: FLdPr var_88
  loc_B9A44B: Me.Caption = from_stack_1
  loc_B9A450: FFree1Ad var_88
  loc_B9A453: Call Proc_259_59_AB0224()
  loc_B9A458: FLdPr Me
  loc_B9A45B: VCallAd Control_ID_NumeCtaTxt
  loc_B9A45E: CVarAd
  loc_B9A462: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B9A467: FFree1Var var_C0 = ""
  loc_B9A46A: LitI2_Byte &HFF
  loc_B9A46C: IStI2 Cancel
  loc_B9A46F: ExitProcHresult
  loc_B9A470: Branch loc_B9A478
  loc_B9A473: Call Proc_259_59_AB0224()
  loc_B9A478: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CD068
  'Data Table: 526984
  loc_9CD050: ILdRf Me
  loc_9CD053: FStAdNoPop
  loc_9CD057: ImpAdLdRf MemVar_D9C5D8
  loc_9CD05A: NewIfNullPr Global
  loc_9CD05D: Global.Unload from_stack_1
  loc_9CD062: FFree1Ad var_88
  loc_9CD065: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_0 '9BC150
  'Data Table: 526984
  loc_9BC13C: FLdPr Me
  loc_9BC13F: VCallAd Control_ID_FeveCtctMsk
  loc_9BC142: CVarAd
  loc_9BC146: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC14B: FFree1Var var_94 = ""
  loc_9BC14E: ExitProcHresult
End Sub

Private Function FeveCtctMsk_UnknownEvent_8(arg_C) 'A809A4
  'Data Table: 526984
  loc_A80920: FLdPr Me
  loc_A80923: VCallAd Control_ID_FeveCtctMsk
  loc_A80926: FStAdFunc var_88
  loc_A80929: FLdPr var_88
  loc_A8092C: LateIdLdVar var_98 DispID_13 -32767
  loc_A80933: CBoolVar
  loc_A80935: FFree1Ad var_88
  loc_A80938: FFree1Var var_98 = ""
  loc_A8093B: BranchF loc_A809A1
  loc_A8093E: FLdPr Me
  loc_A80941: VCallAd Control_ID_FeveCtctMsk
  loc_A80944: FStAdFunc var_88
  loc_A80947: FLdPr var_88
  loc_A8094A: LateIdLdVar var_98 DispID_15 0
  loc_A80951: CStrVarTmp
  loc_A80952: FStStrNoPop var_9C
  loc_A80955: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A8095A: FStStrNoPop var_A0
  loc_A8095D: FLdPr Me
  loc_A80960: MemStStrCopy
  loc_A80964: FFreeStr var_9C = ""
  loc_A8096B: FFree1Ad var_88
  loc_A8096E: FFree1Var var_98 = ""
  loc_A80971: FLdPr Me
  loc_A80974: MemLdStr global_72
  loc_A80977: LitStr vbNullString
  loc_A8097A: NeStr
  loc_A8097C: BranchF loc_A809A1
  loc_A8097F: FLdPr Me
  loc_A80982: MemLdStr global_72
  loc_A80985: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8098A: FLdPr Me
  loc_A8098D: VCallAd Control_ID_FeveCtctMsk
  loc_A80990: CVarAd
  loc_A80994: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A80999: FFree1Var var_98 = ""
  loc_A8099C: LitI2_Byte &HFF
  loc_A8099E: IStI2 arg_C
  loc_A809A1: ExitProcHresult
End Function

Private Sub FeveCtctMsk_KeyPress(KeyAscii As Integer) 'A2229C
  'Data Table: 526984
  loc_A22254: ILdI2 KeyAscii
  loc_A22257: CI4UI1
  loc_A22258: LitI4 &H20
  loc_A2225D: EqI4
  loc_A2225E: BranchF loc_A2229B
  loc_A22261: LitVar_Missing var_A4
  loc_A22264: PopAdLdVar
  loc_A22265: LitVarI4
  loc_A2226D: PopAdLdVar
  loc_A2226E: ImpAdLdRf MemVar_D930A4
  loc_A22271: NewIfNullPr frmCalendario
  loc_A22274: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22279: ImpAdLdRf MemVar_D93028
  loc_A2227C: CDargRef
  loc_A22280: FLdPr Me
  loc_A22283: VCallAd Control_ID_FeveCtctMsk
  loc_A22286: FStAdFunc var_A8
  loc_A22289: FLdPr var_A8
  loc_A2228C: LateIdSt
  loc_A22291: FFree1Ad var_A8
  loc_A22294: LitStr vbNullString
  loc_A22297: ImpAdStStrCopy MemVar_D93028
  loc_A2229B: ExitProcHresult
End Sub

Private Sub Form_Load() 'B89A70
  'Data Table: 526984
  loc_B8958C: LitStr vbNullString
  loc_B8958F: FLdPr Me
  loc_B89592: VCallAd Control_ID_NumeCtaTxt
  loc_B89595: FStAdFunc var_88
  loc_B89598: FLdPr var_88
  loc_B8959B: Me.Text = from_stack_1
  loc_B895A0: FFree1Ad var_88
  loc_B895A3: LitI2_Byte 0
  loc_B895A5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B895AA: CStrDate
  loc_B895AC: CVarStr var_98
  loc_B895AF: PopAdLdVar
  loc_B895B0: FLdPr Me
  loc_B895B3: VCallAd Control_ID_FeveCtctMsk
  loc_B895B6: FStAdFunc var_88
  loc_B895B9: FLdPr var_88
  loc_B895BC: LateIdSt
  loc_B895C1: FFree1Ad var_88
  loc_B895C4: FFree1Var var_98 = ""
  loc_B895C7: LitI2_Byte 0
  loc_B895C9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B895CE: CStrDate
  loc_B895D0: CVarStr var_98
  loc_B895D3: PopAdLdVar
  loc_B895D4: FLdPr Me
  loc_B895D7: VCallAd Control_ID_FefaDifuMsk
  loc_B895DA: FStAdFunc var_88
  loc_B895DD: FLdPr var_88
  loc_B895E0: LateIdSt
  loc_B895E5: FFree1Ad var_88
  loc_B895E8: FFree1Var var_98 = ""
  loc_B895EB: ImpAdLdI2 MemVar_D93034
  loc_B895EE: CStrUI1
  loc_B895F0: FStStrNoPop var_AC
  loc_B895F3: FLdPr Me
  loc_B895F6: VCallAd Control_ID_PeriCtctTxt
  loc_B895F9: FStAdFunc var_88
  loc_B895FC: FLdPr var_88
  loc_B895FF: Me.Text = from_stack_1
  loc_B89604: FFree1Str var_AC
  loc_B89607: FFree1Ad var_88
  loc_B8960A: LitI2_Byte 0
  loc_B8960C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B89611: CVarDate var_98
  loc_B89615: FLdRfVar var_BC
  loc_B89618: ImpAdCallFPR4  = Month()
  loc_B8961D: FLdRfVar var_BC
  loc_B89620: CStrVarVal var_AC
  loc_B89624: FLdPr Me
  loc_B89627: VCallAd Control_ID_BimeCtct
  loc_B8962A: FStAdFunc var_88
  loc_B8962D: FLdPr var_88
  loc_B89630: Me.Text = from_stack_1
  loc_B89635: FFree1Str var_AC
  loc_B89638: FFree1Ad var_88
  loc_B8963B: FFreeVar var_98 = ""
  loc_B89642: FLdPr Me
  loc_B89645: VCallAd Control_ID_ServDifuFlex
  loc_B89648: FStAdFunc var_C0
  loc_B8964B: LitVarI4
  loc_B89653: PopAdLdVar
  loc_B89654: LitVarI4
  loc_B8965C: PopAdLdVar
  loc_B8965D: FLdPr var_C0
  loc_B89660: LateIdCallSt
  loc_B89668: LitVarI4
  loc_B89670: PopAdLdVar
  loc_B89671: LitVarI4
  loc_B89679: PopAdLdVar
  loc_B8967A: FLdPr var_C0
  loc_B8967D: LateIdCallSt
  loc_B89685: LitVarI4
  loc_B8968D: PopAdLdVar
  loc_B8968E: LitVarI4
  loc_B89696: PopAdLdVar
  loc_B89697: FLdPr var_C0
  loc_B8969A: LateIdCallSt
  loc_B896A2: LitVarI4
  loc_B896AA: PopAdLdVar
  loc_B896AB: LitVarI4
  loc_B896B3: PopAdLdVar
  loc_B896B4: FLdPr var_C0
  loc_B896B7: LateIdCallSt
  loc_B896BF: LitVarI4
  loc_B896C7: PopAdLdVar
  loc_B896C8: LitVarI4
  loc_B896D0: PopAdLdVar
  loc_B896D1: FLdPr var_C0
  loc_B896D4: LateIdCallSt
  loc_B896DC: LitVarI4
  loc_B896E4: PopAdLdVar
  loc_B896E5: LitVarI4
  loc_B896ED: PopAdLdVar
  loc_B896EE: FLdPr var_C0
  loc_B896F1: LateIdCallSt
  loc_B896F9: LitVarI4
  loc_B89701: PopAdLdVar
  loc_B89702: LitVarI4
  loc_B8970A: PopAdLdVar
  loc_B8970B: FLdPr var_C0
  loc_B8970E: LateIdCallSt
  loc_B89716: LitVarI4
  loc_B8971E: PopAdLdVar
  loc_B8971F: LitVarI4
  loc_B89727: PopAdLdVar
  loc_B89728: FLdPr var_C0
  loc_B8972B: LateIdCallSt
  loc_B89733: LitVarI4
  loc_B8973B: PopAdLdVar
  loc_B8973C: LitVarI4
  loc_B89744: PopAdLdVar
  loc_B89745: FLdPr var_C0
  loc_B89748: LateIdCallSt
  loc_B89750: LitVarI4
  loc_B89758: PopAdLdVar
  loc_B89759: LitVarI4
  loc_B89761: PopAdLdVar
  loc_B89762: FLdPr var_C0
  loc_B89765: LateIdCallSt
  loc_B8976D: LitVarI4
  loc_B89775: PopAdLdVar
  loc_B89776: LitVarI4
  loc_B8977E: PopAdLdVar
  loc_B8977F: LitVarStr var_100, "Cant."
  loc_B89784: PopAdLdVar
  loc_B89785: FLdPr var_C0
  loc_B89788: LateIdCallSt
  loc_B89790: LitVarI4
  loc_B89798: PopAdLdVar
  loc_B89799: LitVarI4
  loc_B897A1: PopAdLdVar
  loc_B897A2: LitVarStr var_100, "Cod."
  loc_B897A7: PopAdLdVar
  loc_B897A8: FLdPr var_C0
  loc_B897AB: LateIdCallSt
  loc_B897B3: LitVarI4
  loc_B897BB: PopAdLdVar
  loc_B897BC: LitVarI4
  loc_B897C4: PopAdLdVar
  loc_B897C5: LitVarStr var_100, "Detalle o Servicio"
  loc_B897CA: PopAdLdVar
  loc_B897CB: FLdPr var_C0
  loc_B897CE: LateIdCallSt
  loc_B897D6: LitVarI4
  loc_B897DE: PopAdLdVar
  loc_B897DF: LitVarI4
  loc_B897E7: PopAdLdVar
  loc_B897E8: LitVarStr var_100, "Importe"
  loc_B897ED: PopAdLdVar
  loc_B897EE: FLdPr var_C0
  loc_B897F1: LateIdCallSt
  loc_B897F9: LitVarI4
  loc_B89801: PopAdLdVar
  loc_B89802: LitVarI4
  loc_B8980A: PopAdLdVar
  loc_B8980B: LitVarStr var_100, "Total"
  loc_B89810: PopAdLdVar
  loc_B89811: FLdPr var_C0
  loc_B89814: LateIdCallSt
  loc_B8981C: LitVarI4
  loc_B89824: PopAdLdVar
  loc_B89825: LitVarI4
  loc_B8982D: PopAdLdVar
  loc_B8982E: LitVarStr var_100, "Periodo"
  loc_B89833: PopAdLdVar
  loc_B89834: FLdPr var_C0
  loc_B89837: LateIdCallSt
  loc_B8983F: LitVarI4
  loc_B89847: PopAdLdVar
  loc_B89848: LitVarI4
  loc_B89850: PopAdLdVar
  loc_B89851: LitVarStr var_100, "Concepto"
  loc_B89856: PopAdLdVar
  loc_B89857: FLdPr var_C0
  loc_B8985A: LateIdCallSt
  loc_B89862: LitVarI4
  loc_B8986A: PopAdLdVar
  loc_B8986B: LitVarI4
  loc_B89873: PopAdLdVar
  loc_B89874: LitVarStr var_100, "Fijo"
  loc_B89879: PopAdLdVar
  loc_B8987A: FLdPr var_C0
  loc_B8987D: LateIdCallSt
  loc_B89885: LitVarI4
  loc_B8988D: PopAdLdVar
  loc_B8988E: LitVarI4
  loc_B89896: PopAdLdVar
  loc_B89897: LitVarStr var_100, "TiafConc"
  loc_B8989C: PopAdLdVar
  loc_B8989D: FLdPr var_C0
  loc_B898A0: LateIdCallSt
  loc_B898A8: LitVarI4
  loc_B898B0: PopAdLdVar
  loc_B898B1: LitVarI4
  loc_B898B9: PopAdLdVar
  loc_B898BA: LitVarStr var_100, "AnioSece"
  loc_B898BF: PopAdLdVar
  loc_B898C0: FLdPr var_C0
  loc_B898C3: LateIdCallSt
  loc_B898CB: LitNothing
  loc_B898CD: FStAd var_C0 
  loc_B898D1: LitVarStr var_A8, vbNullString
  loc_B898D6: LitI4 9
  loc_B898DB: FLdRfVar var_98
  loc_B898DE: ImpAdCallFPR4  = Chr()
  loc_B898E3: FLdRfVar var_98
  loc_B898E6: ConcatVar var_BC
  loc_B898EA: LitVarStr var_D0, vbNullString
  loc_B898EF: ConcatVar var_120
  loc_B898F3: LitI4 9
  loc_B898F8: FLdRfVar var_130
  loc_B898FB: ImpAdCallFPR4  = Chr()
  loc_B89900: FLdRfVar var_130
  loc_B89903: ConcatVar var_140
  loc_B89907: LitVarStr var_E0, vbNullString
  loc_B8990C: ConcatVar var_150
  loc_B89910: LitI4 9
  loc_B89915: FLdRfVar var_160
  loc_B89918: ImpAdCallFPR4  = Chr()
  loc_B8991D: FLdRfVar var_160
  loc_B89920: ConcatVar var_170
  loc_B89924: LitVarStr var_F0, vbNullString
  loc_B89929: ConcatVar var_180
  loc_B8992D: LitI4 9
  loc_B89932: FLdRfVar var_190
  loc_B89935: ImpAdCallFPR4  = Chr()
  loc_B8993A: FLdRfVar var_190
  loc_B8993D: ConcatVar var_1A0
  loc_B89941: LitVarStr var_100, vbNullString
  loc_B89946: ConcatVar var_1B0
  loc_B8994A: LitI4 9
  loc_B8994F: FLdRfVar var_1C0
  loc_B89952: ImpAdCallFPR4  = Chr()
  loc_B89957: FLdRfVar var_1C0
  loc_B8995A: ConcatVar var_1D0
  loc_B8995E: LitVarStr var_110, vbNullString
  loc_B89963: ConcatVar var_1E0
  loc_B89967: LitI4 9
  loc_B8996C: FLdRfVar var_1F0
  loc_B8996F: ImpAdCallFPR4  = Chr()
  loc_B89974: FLdRfVar var_1F0
  loc_B89977: ConcatVar var_200
  loc_B8997B: LitVarStr var_210, vbNullString
  loc_B89980: ConcatVar var_220
  loc_B89984: LitI4 9
  loc_B89989: FLdRfVar var_230
  loc_B8998C: ImpAdCallFPR4  = Chr()
  loc_B89991: FLdRfVar var_230
  loc_B89994: ConcatVar var_240
  loc_B89998: LitVarStr var_250, "0"
  loc_B8999D: ConcatVar var_260
  loc_B899A1: LitI4 9
  loc_B899A6: FLdRfVar var_270
  loc_B899A9: ImpAdCallFPR4  = Chr()
  loc_B899AE: FLdRfVar var_270
  loc_B899B1: ConcatVar var_280
  loc_B899B5: LitVarStr var_290, "0"
  loc_B899BA: ConcatVar var_2A0
  loc_B899BE: CStrVarTmp
  loc_B899BF: FStStrNoPop var_AC
  loc_B899C2: FLdPr Me
  loc_B899C5: MemStStrCopy
  loc_B899C9: FFree1Str var_AC
  loc_B899CC: FFreeVar var_98 = "": var_BC = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_230 = "": var_240 = "": var_260 = "": var_270 = "": var_280 = ""
  loc_B899FF: FLdPr Me
  loc_B89A02: MemLdRfVar from_stack_1.global_80
  loc_B89A05: CDargRef
  loc_B89A09: FLdPr Me
  loc_B89A0C: VCallAd Control_ID_ServDifuFlex
  loc_B89A0F: FStAdFunc var_88
  loc_B89A12: FLdPr var_88
  loc_B89A15: LateIdCall
  loc_B89A1D: FFree1Ad var_88
  loc_B89A20: Call Proc_259_53_AF2348()
  loc_B89A25: LitI4 0
  loc_B89A2A: LitI4 0
  loc_B89A2F: FLdRfVar var_2A4
  loc_B89A32: Redim
  loc_B89A3C: FLdPr Me
  loc_B89A3F: VCallAd Control_ID_ConfirmarCmd
  loc_B89A42: CVarAd
  loc_B89A46: ParmAry1St
  loc_B89A4C: FLdRfVar var_2A4
  loc_B89A4F: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B89A54: FLdRfVar var_2A4
  loc_B89A57: Erase
  loc_B89A58: LitI2_Byte 1
  loc_B89A5A: FLdPr Me
  loc_B89A5D: VCallAd Control_ID_ImprimeChk
  loc_B89A60: FStAdFunc var_88
  loc_B89A63: FLdPr var_88
  loc_B89A66: Me.Value = from_stack_1
  loc_B89A6B: FFree1Ad var_88
  loc_B89A6E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C8FFC
  'Data Table: 526984
  loc_9C8FE4: FLdPr Me
  loc_9C8FE7: VCallAd Control_ID_wbbReporte
  loc_9C8FEA: FStAdFunc var_88
  loc_9C8FED: FLdRfVar var_88
  loc_9C8FF0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C8FF5: FFree1Ad var_88
  loc_9C8FF8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D058C
  'Data Table: 526984
  loc_9D0574: ILdI2 KeyAscii
  loc_9D0577: LitI2_Byte &HD
  loc_9D0579: EqI2
  loc_9D057A: BranchF loc_9D058B
  loc_9D057D: LitVar_TRUE var_A4
  loc_9D0580: LitStr "{Tab}"
  loc_9D0583: ImpAdCallFPR4 SendKeys , 
  loc_9D0588: FFree1Var var_A4 = ""
  loc_9D058B: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B8EB8
  'Data Table: 526984
  loc_9B8EA4: ILdI2 KeyCode
  loc_9B8EA7: CI4UI1
  loc_9B8EA8: LitI4 &H78
  loc_9B8EAD: EqI4
  loc_9B8EAE: BranchF loc_9B8EB6
  loc_9B8EB1: Call SalirCmd_Click()
  loc_9B8EB6: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9CFF50
  'Data Table: 526984
  loc_9CFF38: FLdPr Me
  loc_9CFF3B: VCallAd Control_ID_dgdABMS
  loc_9CFF3E: FStAdFunc var_88
  loc_9CFF41: FLdRfVar var_88
  loc_9CFF44: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CFF49: FFree1Ad var_88
  loc_9CFF4C: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9CF4EC
  'Data Table: 526984
  loc_9CF4D4: FLdPr Me
  loc_9CF4D7: VCallAd Control_ID_dgdABMS
  loc_9CF4DA: FStAdFunc var_88
  loc_9CF4DD: FLdRfVar var_88
  loc_9CF4E0: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CF4E5: FFree1Ad var_88
  loc_9CF4E8: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A67F08
  'Data Table: 526984
  loc_A67EAC: FLdRfVar var_B4
  loc_A67EAF: FLdRfVar var_B0
  loc_A67EB2: FLdI2 ColIndex
  loc_A67EB5: CVarI2 var_A8
  loc_A67EB8: PopAdLdVar
  loc_A67EB9: FLdPr Me
  loc_A67EBC: VCallAd Control_ID_dgdABMS
  loc_A67EBF: FStAdFunc var_88
  loc_A67EC2: FLdPr var_88
  loc_A67EC5: LateIdLdVar var_98 DispID_105 0
  loc_A67ECC: CastAdVar Me
  loc_A67ED0: FStAdFunc var_AC
  loc_A67ED3: FLdPr var_AC
  loc_A67ED6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67EDB: FLdPr var_B0
  loc_A67EDE:  = Me.DataField
  loc_A67EE3: FLdZeroAd var_B4
  loc_A67EE6: PopTmpLdAdStr
  loc_A67EEA: FLdPr Me
  loc_A67EED: MemLdRfVar from_stack_1.global_56
  loc_A67EF0: NewIfNullPr clsdifunto
  loc_A67EF3: Call clsdifunto.Sort(from_stack_1v)
  loc_A67EF8: FFree1Str var_B8
  loc_A67EFB: FFreeAd var_88 = "": var_AC = ""
  loc_A67F04: FFree1Var var_98 = ""
  loc_A67F07: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_GotFocus() '9BD038
  'Data Table: 526984
  loc_9BD024: FLdPr Me
  loc_9BD027: VCallAd Control_ID_PeriCtctTxt
  loc_9BD02A: CVarAd
  loc_9BD02E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD033: FFree1Var var_94 = ""
  loc_9BD036: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_KeyPress(KeyAscii As Integer) '9CA5A8
  'Data Table: 526984
  loc_9CA590: LitStr "1234567890"
  loc_9CA593: FStStrCopy var_88
  loc_9CA596: FLdRfVar var_88
  loc_9CA599: ILdRf KeyAscii
  loc_9CA59C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA5A1: IStI2 KeyAscii
  loc_9CA5A4: FFree1Str var_88
  loc_9CA5A7: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_Validate(Cancel As Boolean) 'A6C6D8
  'Data Table: 526984
  loc_A6C670: FLdRfVar var_8C
  loc_A6C673: FLdPr Me
  loc_A6C676: VCallAd Control_ID_PeriCtctTxt
  loc_A6C679: FStAdFunc var_88
  loc_A6C67C: FLdPr var_88
  loc_A6C67F:  = Me.Text
  loc_A6C684: LitI2_Byte 0
  loc_A6C686: ILdRf var_8C
  loc_A6C689: LitStr "el Año"
  loc_A6C68C: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6C691: FStStrNoPop var_90
  loc_A6C694: FLdPr Me
  loc_A6C697: MemStStrCopy
  loc_A6C69B: FFreeStr var_8C = ""
  loc_A6C6A2: FFree1Ad var_88
  loc_A6C6A5: FLdPr Me
  loc_A6C6A8: MemLdStr global_72
  loc_A6C6AB: LitStr vbNullString
  loc_A6C6AE: NeStr
  loc_A6C6B0: BranchF loc_A6C6D5
  loc_A6C6B3: FLdPr Me
  loc_A6C6B6: MemLdStr global_72
  loc_A6C6B9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6C6BE: FLdPr Me
  loc_A6C6C1: VCallAd Control_ID_PeriCtctTxt
  loc_A6C6C4: CVarAd
  loc_A6C6C8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6C6CD: FFree1Var var_A0 = ""
  loc_A6C6D0: LitI2_Byte &HFF
  loc_A6C6D2: IStI2 Cancel
  loc_A6C6D5: ExitProcHresult
End Sub

Private Sub BimeCtct_GotFocus() '9BD080
  'Data Table: 526984
  loc_9BD06C: FLdPr Me
  loc_9BD06F: VCallAd Control_ID_BimeCtct
  loc_9BD072: CVarAd
  loc_9BD076: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD07B: FFree1Var var_94 = ""
  loc_9BD07E: ExitProcHresult
End Sub

Private Sub BimeCtct_KeyPress(KeyAscii As Integer) '9CA640
  'Data Table: 526984
  loc_9CA628: LitStr "1234567890"
  loc_9CA62B: FStStrCopy var_88
  loc_9CA62E: FLdRfVar var_88
  loc_9CA631: ILdRf KeyAscii
  loc_9CA634: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA639: IStI2 KeyAscii
  loc_9CA63C: FFree1Str var_88
  loc_9CA63F: ExitProcHresult
End Sub

Private Sub BimeCtct_Validate(Cancel As Boolean) 'A81E9C
  'Data Table: 526984
  loc_A81E14: FLdRfVar var_8A
  loc_A81E17: FLdPr Me
  loc_A81E1A: VCallAd Control_ID_BimeCtct
  loc_A81E1D: FStAdFunc var_88
  loc_A81E20: FLdPr var_88
  loc_A81E23:  = Me.Enabled
  loc_A81E28: FLdI2 var_8A
  loc_A81E2B: FFree1Ad var_88
  loc_A81E2E: BranchF loc_A81E99
  loc_A81E31: FLdRfVar var_90
  loc_A81E34: FLdPr Me
  loc_A81E37: VCallAd Control_ID_BimeCtct
  loc_A81E3A: FStAdFunc var_88
  loc_A81E3D: FLdPr var_88
  loc_A81E40:  = Me.Text
  loc_A81E45: LitI2_Byte 0
  loc_A81E47: LitI2_Byte 0
  loc_A81E49: ILdRf var_90
  loc_A81E4C: LitStr "bimestre"
  loc_A81E4F: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A81E54: FStStrNoPop var_94
  loc_A81E57: FLdPr Me
  loc_A81E5A: MemStStrCopy
  loc_A81E5E: FFreeStr var_90 = ""
  loc_A81E65: FFree1Ad var_88
  loc_A81E68: FLdPr Me
  loc_A81E6B: MemLdStr global_72
  loc_A81E6E: LitStr vbNullString
  loc_A81E71: NeStr
  loc_A81E73: BranchF loc_A81E99
  loc_A81E76: FLdPr Me
  loc_A81E79: MemLdStr global_72
  loc_A81E7C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81E81: FLdPr Me
  loc_A81E84: VCallAd Control_ID_BimeCtct
  loc_A81E87: CVarAd
  loc_A81E8B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81E90: FFree1Var var_A4 = ""
  loc_A81E93: LitI2_Byte &HFF
  loc_A81E95: IStI2 Cancel
  loc_A81E98: ExitProcHresult
  loc_A81E99: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click(Index As Integer) 'B71D6C
  'Data Table: 526984
  loc_B7194C: LitStr vbNullString
  loc_B7194F: FLdPr Me
  loc_B71952: MemStStrCopy
  loc_B71956: LitI2_Byte 0
  loc_B71958: PopTmpLdAd2 var_86
  loc_B7195B: from_stack_2v = FeveCtctMsk_UnknownEvent_8(from_stack_1v)
  loc_B71960: FLdPr Me
  loc_B71963: MemLdStr global_72
  loc_B71966: LitStr vbNullString
  loc_B71969: NeStr
  loc_B7196B: BranchF loc_B7196F
  loc_B7196E: ExitProcHresult
  loc_B7196F: LitI2_Byte 0
  loc_B71971: PopTmpLdAd2 var_86
  loc_B71974: Call ServDifuFlex_UnknownEvent_8()
  loc_B71979: FLdPr Me
  loc_B7197C: MemLdStr global_72
  loc_B7197F: LitStr vbNullString
  loc_B71982: NeStr
  loc_B71984: BranchF loc_B71988
  loc_B71987: ExitProcHresult
  loc_B71988: LitI2_Byte 0
  loc_B7198A: PopTmpLdAd2 var_86
  loc_B7198D: Call NumeDifu2Txt_Validate(from_stack_1v)
  loc_B71992: FLdPr Me
  loc_B71995: MemLdStr global_72
  loc_B71998: LitStr vbNullString
  loc_B7199B: NeStr
  loc_B7199D: BranchF loc_B719A1
  loc_B719A0: ExitProcHresult
  loc_B719A1: LitI2_Byte &HB
  loc_B719A3: FLdPr Me
  loc_B719A6: Me.MousePointer = from_stack_1
  loc_B719AB: LitI2_Byte 0
  loc_B719AD: FLdPr Me
  loc_B719B0: VCallAd Control_ID_ConfirmarCmd
  loc_B719B3: FStAdFunc var_8C
  loc_B719B6: FLdPr var_8C
  loc_B719B9: Me.Enabled = from_stack_1b
  loc_B719BE: FFree1Ad var_8C
  loc_B719C1: Call Proc_259_61_C2AAAC()
  loc_B719C6: FLdRfVar var_90
  loc_B719C9: FLdPr Me
  loc_B719CC: VCallAd Control_ID_NumeCtaTxt
  loc_B719CF: FStAdFunc var_8C
  loc_B719D2: FLdPr var_8C
  loc_B719D5:  = Me.Text
  loc_B719DA: FLdPr Me
  loc_B719DD: VCallAd Control_ID_FeveCtctMsk
  loc_B719E0: FStAdFunc var_94
  loc_B719E3: FLdPr var_94
  loc_B719E6: LateIdLdVar var_A4 DispID_15 0
  loc_B719ED: PopAd
  loc_B719EF: FLdRfVar var_AC
  loc_B719F2: FLdPr Me
  loc_B719F5: VCallAd Control_ID_ExpeCtctLbl
  loc_B719F8: FStAdFunc var_A8
  loc_B719FB: FLdPr var_A8
  loc_B719FE:  = Me.Caption
  loc_B71A03: FLdRfVar var_B4
  loc_B71A06: FLdPr Me
  loc_B71A09: VCallAd Control_ID_DetalleTxt
  loc_B71A0C: FStAdFunc var_B0
  loc_B71A0F: FLdPr var_B0
  loc_B71A12:  = Me.Text
  loc_B71A17: FLdRfVar var_BC
  loc_B71A1A: FLdPr Me
  loc_B71A1D: VCallAd Control_ID_CucuPersLbl
  loc_B71A20: FStAdFunc var_B8
  loc_B71A23: FLdPr var_B8
  loc_B71A26:  = Me.Caption
  loc_B71A2B: FLdRfVar var_C4
  loc_B71A2E: FLdPr Me
  loc_B71A31: VCallAd Control_ID_TotaBoleTxt
  loc_B71A34: FStAdFunc var_C0
  loc_B71A37: FLdPr var_C0
  loc_B71A3A:  = Me.Text
  loc_B71A3F: FLdRfVar var_CC
  loc_B71A42: FLdPr Me
  loc_B71A45: VCallAd Control_ID_DescBoleTxt
  loc_B71A48: FStAdFunc var_C8
  loc_B71A4B: FLdPr var_C8
  loc_B71A4E:  = Me.Text
  loc_B71A53: FLdRfVar var_D4
  loc_B71A56: FLdPr Me
  loc_B71A59: VCallAd Control_ID_TotalTxt
  loc_B71A5C: FStAdFunc var_D0
  loc_B71A5F: FLdPr var_D0
  loc_B71A62:  = Me.Text
  loc_B71A67: FLdRfVar var_DC
  loc_B71A6A: FLdPr Me
  loc_B71A6D: VCallAd Control_ID_PorcDescTxt
  loc_B71A70: FStAdFunc var_D8
  loc_B71A73: FLdPr var_D8
  loc_B71A76:  = Me.Text
  loc_B71A7B: FLdRfVar var_E4
  loc_B71A7E: FLdPr Me
  loc_B71A81: VCallAd Control_ID_NuevoFeveDifuLbl
  loc_B71A84: FStAdFunc var_E0
  loc_B71A87: FLdPr var_E0
  loc_B71A8A:  = Me.Caption
  loc_B71A8F: FLdRfVar var_86
  loc_B71A92: FLdPr Me
  loc_B71A95: VCallAd Control_ID_ImprimeChk
  loc_B71A98: FStAdFunc var_E8
  loc_B71A9B: FLdPr var_E8
  loc_B71A9E:  = Me.Value
  loc_B71AA3: LitVar_TRUE var_138
  loc_B71AA6: LitVar_FALSE
  loc_B71AAA: FLdI2 var_86
  loc_B71AAD: LitI2_Byte 0
  loc_B71AAF: EqI2
  loc_B71AB0: CVarBoolI2 var_F8
  loc_B71AB4: FLdRfVar var_148
  loc_B71AB7: ImpAdCallFPR4  = IIf(, , )
  loc_B71ABC: FLdRfVar var_150
  loc_B71ABF: FLdRfVar var_14C
  loc_B71AC2: FLdPr Me
  loc_B71AC5: MemLdRfVar from_stack_1.global_56
  loc_B71AC8: NewIfNullPr clsdifunto
  loc_B71ACB: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B71AD0: FLdPr var_14C
  loc_B71AD3:  = Me.RecordCount
  loc_B71AD8: FLdRfVar var_16C
  loc_B71ADB: LitVarStr var_168, "NumeDedi"
  loc_B71AE0: PopAdLdVar
  loc_B71AE1: FLdRfVar var_158
  loc_B71AE4: FLdRfVar var_154
  loc_B71AE7: FLdPr Me
  loc_B71AEA: MemLdRfVar from_stack_1.global_56
  loc_B71AED: NewIfNullPr clsdifunto
  loc_B71AF0: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B71AF5: FLdPr var_154
  loc_B71AF8:  = Me.Fields
  loc_B71AFD: FLdPr var_158
  loc_B71B00: from_stack_2 = Me.Item(from_stack_1)
  loc_B71B05: LitVarI2 var_1AC, 0
  loc_B71B0A: FLdZeroAd var_16C
  loc_B71B0D: CVarAd
  loc_B71B11: ILdRf var_150
  loc_B71B14: LitI4 0
  loc_B71B19: GtI4
  loc_B71B1A: CVarBoolI2 var_17C
  loc_B71B1E: FLdRfVar var_1BC
  loc_B71B21: ImpAdCallFPR4  = IIf(, , )
  loc_B71B26: FLdRfVar var_1C4
  loc_B71B29: FLdRfVar var_1C0
  loc_B71B2C: FLdPr Me
  loc_B71B2F: MemLdRfVar from_stack_1.global_60
  loc_B71B32: NewIfNullPr clsdifunto
  loc_B71B35: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B71B3A: FLdPr var_1C0
  loc_B71B3D:  = Me.RecordCount
  loc_B71B42: FLdRfVar var_1E0
  loc_B71B45: LitVarStr var_1DC, "CodiDifu"
  loc_B71B4A: PopAdLdVar
  loc_B71B4B: FLdRfVar var_1CC
  loc_B71B4E: FLdRfVar var_1C8
  loc_B71B51: FLdPr Me
  loc_B71B54: MemLdRfVar from_stack_1.global_60
  loc_B71B57: NewIfNullPr clsdifunto
  loc_B71B5A: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B71B5F: FLdPr var_1C8
  loc_B71B62:  = Me.Fields
  loc_B71B67: FLdPr var_1CC
  loc_B71B6A: from_stack_2 = Me.Item(from_stack_1)
  loc_B71B6F: LitVarStr var_210, vbNullString
  loc_B71B74: FStVarCopyObj var_220
  loc_B71B77: FLdRfVar var_220
  loc_B71B7A: FLdZeroAd var_1E0
  loc_B71B7D: CVarAd
  loc_B71B81: ILdRf var_1C4
  loc_B71B84: LitI4 0
  loc_B71B89: GtI4
  loc_B71B8A: CVarBoolI2 var_1F0
  loc_B71B8E: FLdRfVar var_230
  loc_B71B91: ImpAdCallFPR4  = IIf(, , )
  loc_B71B96: FLdRfVar var_238
  loc_B71B99: FLdPr Me
  loc_B71B9C: VCallAd Control_ID_PeriCtctTxt
  loc_B71B9F: FStAdFunc var_234
  loc_B71BA2: FLdPr var_234
  loc_B71BA5:  = Me.Text
  loc_B71BAA: FLdRfVar var_240
  loc_B71BAD: FLdPr Me
  loc_B71BB0: VCallAd Control_ID_BimeCtct
  loc_B71BB3: FStAdFunc var_23C
  loc_B71BB6: FLdPr var_23C
  loc_B71BB9:  = Me.Text
  loc_B71BBE: ILdRf var_240
  loc_B71BC1: CI2Str
  loc_B71BC3: ILdRf var_238
  loc_B71BC6: CI2Str
  loc_B71BC8: FLdRfVar var_230
  loc_B71BCB: CStrVarVal var_248
  loc_B71BCF: FLdRfVar var_1BC
  loc_B71BD2: CI2Var
  loc_B71BD3: FLdRfVar var_148
  loc_B71BD6: CBoolVar
  loc_B71BD8: ILdRf var_E4
  loc_B71BDB: ILdRf var_DC
  loc_B71BDE: CR8Str
  loc_B71BE0: PopFPR8
  loc_B71BE1: ILdRf var_D4
  loc_B71BE4: CR8Str
  loc_B71BE6: PopFPR8
  loc_B71BE7: ILdRf var_CC
  loc_B71BEA: CR8Str
  loc_B71BEC: PopFPR8
  loc_B71BED: ILdRf var_C4
  loc_B71BF0: CR8Str
  loc_B71BF2: PopFPR8
  loc_B71BF3: ILdRf var_BC
  loc_B71BF6: ILdRf var_B4
  loc_B71BF9: ILdRf var_AC
  loc_B71BFC: FLdRfVar var_A4
  loc_B71BFF: CStrVarTmp
  loc_B71C00: FStStrNoPop var_244
  loc_B71C03: ILdRf var_90
  loc_B71C06: ImpAdCallFPR4  = Proc_237_5_A1450C(, , , , )
  loc_B71C0B: FFreeStr var_90 = "": var_244 = "": var_AC = "": var_B4 = "": var_BC = "": var_C4 = "": var_CC = "": var_D4 = "": var_DC = "": var_E4 = "": var_248 = "": var_238 = ""
  loc_B71C28: FFreeAd var_8C = "": var_94 = "": var_A8 = "": var_B0 = "": var_B8 = "": var_C0 = "": var_C8 = "": var_D0 = "": var_D8 = "": var_E0 = "": var_E8 = "": var_14C = "": var_154 = "": var_158 = "": var_1C0 = "": var_1C8 = "": var_1CC = "": var_234 = ""
  loc_B71C51: FFreeVar var_A4 = "": var_F8 = "": var_118 = "": var_138 = "": var_17C = "": var_18C = "": var_1AC = "": var_1F0 = "": var_200 = "": var_220 = "": var_148 = "": var_1BC = ""
  loc_B71C6E: ILdRf Me
  loc_B71C71: CastAd
  loc_B71C74: FStAdFunc var_8C
  loc_B71C77: FLdRfVar var_8C
  loc_B71C7A: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B71C7F: FFree1Ad var_8C
  loc_B71C82: Call Proc_259_53_AF2348()
  loc_B71C87: Call Proc_259_54_B463DC()
  loc_B71C8C: LitI2_Byte 0
  loc_B71C8E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B71C93: CStrDate
  loc_B71C95: CVarStr var_A4
  loc_B71C98: PopAdLdVar
  loc_B71C99: FLdPr Me
  loc_B71C9C: VCallAd Control_ID_FeveCtctMsk
  loc_B71C9F: FStAdFunc var_8C
  loc_B71CA2: FLdPr var_8C
  loc_B71CA5: LateIdSt
  loc_B71CAA: FFree1Ad var_8C
  loc_B71CAD: FFree1Var var_A4 = ""
  loc_B71CB0: LitI2_Byte 0
  loc_B71CB2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B71CB7: CStrDate
  loc_B71CB9: CVarStr var_A4
  loc_B71CBC: PopAdLdVar
  loc_B71CBD: FLdPr Me
  loc_B71CC0: VCallAd Control_ID_FefaDifuMsk
  loc_B71CC3: FStAdFunc var_8C
  loc_B71CC6: FLdPr var_8C
  loc_B71CC9: LateIdSt
  loc_B71CCE: FFree1Ad var_8C
  loc_B71CD1: FFree1Var var_A4 = ""
  loc_B71CD4: ImpAdLdI2 MemVar_D93034
  loc_B71CD7: CStrUI1
  loc_B71CD9: FStStrNoPop var_90
  loc_B71CDC: FLdPr Me
  loc_B71CDF: VCallAd Control_ID_PeriCtctTxt
  loc_B71CE2: FStAdFunc var_8C
  loc_B71CE5: FLdPr var_8C
  loc_B71CE8: Me.Text = from_stack_1
  loc_B71CED: FFree1Str var_90
  loc_B71CF0: FFree1Ad var_8C
  loc_B71CF3: LitI2_Byte 0
  loc_B71CF5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B71CFA: CVarDate var_A4
  loc_B71CFE: FLdRfVar var_118
  loc_B71D01: ImpAdCallFPR4  = Month()
  loc_B71D06: FLdRfVar var_118
  loc_B71D09: CStrVarVal var_90
  loc_B71D0D: FLdPr Me
  loc_B71D10: VCallAd Control_ID_BimeCtct
  loc_B71D13: FStAdFunc var_8C
  loc_B71D16: FLdPr var_8C
  loc_B71D19: Me.Text = from_stack_1
  loc_B71D1E: FFree1Str var_90
  loc_B71D21: FFree1Ad var_8C
  loc_B71D24: FFreeVar var_A4 = ""
  loc_B71D2B: LitI2_Byte &HFF
  loc_B71D2D: FLdPr Me
  loc_B71D30: VCallAd Control_ID_ConfirmarCmd
  loc_B71D33: FStAdFunc var_8C
  loc_B71D36: FLdPr var_8C
  loc_B71D39: Me.Enabled = from_stack_1b
  loc_B71D3E: FFree1Ad var_8C
  loc_B71D41: Call Proc_259_59_AB0224()
  loc_B71D46: Call Proc_259_60_AAFDD4()
  loc_B71D4B: LitI2_Byte 0
  loc_B71D4D: FLdPr Me
  loc_B71D50: Me.MousePointer = from_stack_1
  loc_B71D55: FLdPr Me
  loc_B71D58: VCallAd Control_ID_NumeCtaTxt
  loc_B71D5B: FStAdFunc var_8C
  loc_B71D5E: FLdPr var_8C
  loc_B71D61: Me.SetFocus
  loc_B71D66: FFree1Ad var_8C
  loc_B71D69: ExitProcHresult
  loc_B71D6A: PopTmpLdAd8 Index03
End Sub

Private Sub CodiTise2Txt_GotFocus() '9BF4C8
  'Data Table: 526984
  loc_9BF4B4: FLdPr Me
  loc_9BF4B7: VCallAd Control_ID_CodiTise2Txt
  loc_9BF4BA: CVarAd
  loc_9BF4BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF4C3: FFree1Var var_94 = ""
  loc_9BF4C6: ExitProcHresult
End Sub

Private Sub CodiTise2Txt_KeyPress(KeyAscii As Integer) '9D317C
  'Data Table: 526984
  loc_9D3164: LitStr "NFM"
  loc_9D3167: FStStrCopy var_88
  loc_9D316A: FLdRfVar var_88
  loc_9D316D: ILdRf KeyAscii
  loc_9D3170: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D3175: IStI2 KeyAscii
  loc_9D3178: FFree1Str var_88
  loc_9D317B: ExitProcHresult
End Sub

Private Sub CodiTise2Txt_Validate(Cancel As Boolean) 'AA8094
  'Data Table: 526984
  loc_AA7FD4: FLdRfVar var_8C
  loc_AA7FD7: FLdPr Me
  loc_AA7FDA: VCallAd Control_ID_CodiTise2Txt
  loc_AA7FDD: FStAdFunc var_88
  loc_AA7FE0: FLdPr var_88
  loc_AA7FE3:  = Me.Text
  loc_AA7FE8: ILdRf var_8C
  loc_AA7FEB: Call Proc_259_58_C1A198()
  loc_AA7FF0: FFree1Str var_8C
  loc_AA7FF3: FFree1Ad var_88
  loc_AA7FF6: FLdRfVar var_8C
  loc_AA7FF9: FLdPr Me
  loc_AA7FFC: VCallAd Control_ID_CodiTise2Txt
  loc_AA7FFF: FStAdFunc var_88
  loc_AA8002: FLdPr var_88
  loc_AA8005:  = Me.Text
  loc_AA800A: FLdZeroAd var_8C
  loc_AA800D: CVarStr var_9C
  loc_AA8010: FLdRfVar var_AC
  loc_AA8013: ImpAdCallFPR4  = Ucase()
  loc_AA8018: FLdRfVar var_AC
  loc_AA801B: CStrVarVal var_B0
  loc_AA801F: FLdPr Me
  loc_AA8022: VCallAd Control_ID_CodiTise2Txt
  loc_AA8025: FStAdFunc var_B4
  loc_AA8028: FLdPr var_B4
  loc_AA802B: Me.Text = from_stack_1
  loc_AA8030: FFree1Str var_B0
  loc_AA8033: FFreeAd var_88 = ""
  loc_AA803A: FFreeVar var_9C = ""
  loc_AA8041: FLdRfVar var_B8
  loc_AA8044: FLdPr Me
  loc_AA8047: MemLdRfVar from_stack_1.global_56
  loc_AA804A: NewIfNullPr clsdifunto
  loc_AA804D: from_stack_1 = clsdifunto.RecordCount
  loc_AA8052: ILdRf var_B8
  loc_AA8055: LitI4 0
  loc_AA805A: EqI4
  loc_AA805B: BranchF loc_AA8093
  loc_AA805E: LitStr "No existe ningun difunto para trasladar. Verifique...."
  loc_AA8061: FLdPr Me
  loc_AA8064: MemStStrCopy
  loc_AA8068: FLdPr Me
  loc_AA806B: MemLdStr global_72
  loc_AA806E: LitStr vbNullString
  loc_AA8071: NeStr
  loc_AA8073: BranchF loc_AA8093
  loc_AA8076: FLdPr Me
  loc_AA8079: MemLdStr global_72
  loc_AA807C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA8081: FLdPr Me
  loc_AA8084: VCallAd Control_ID_SeccDifuTxt
  loc_AA8087: CVarAd
  loc_AA808B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA8090: FFree1Var var_9C = ""
  loc_AA8093: ExitProcHresult
End Sub

Private Sub FilaDifu2Txt_GotFocus() '9BC8E8
  'Data Table: 526984
  loc_9BC8D4: FLdPr Me
  loc_9BC8D7: VCallAd Control_ID_FilaDifu2Txt
  loc_9BC8DA: CVarAd
  loc_9BC8DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC8E3: FFree1Var var_94 = ""
  loc_9BC8E6: ExitProcHresult
End Sub

Private Sub FilaDifu2Txt_KeyPress(KeyAscii As Integer) '9D0884
  'Data Table: 526984
  loc_9D086C: LitStr "0123456789"
  loc_9D086F: FStStrCopy var_88
  loc_9D0872: FLdRfVar var_88
  loc_9D0875: ILdRf KeyAscii
  loc_9D0878: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D087D: IStI2 KeyAscii
  loc_9D0880: FFree1Str var_88
  loc_9D0883: ExitProcHresult
End Sub

Private Sub FilaDifu2Txt_Validate(Cancel As Boolean) 'AAA3C0
  'Data Table: 526984
  loc_AAA2F4: FLdRfVar var_8A
  loc_AAA2F7: FLdPr Me
  loc_AAA2FA: VCallAd Control_ID_FilaDifu2Txt
  loc_AAA2FD: FStAdFunc var_88
  loc_AAA300: FLdPr var_88
  loc_AAA303:  = Me.Enabled
  loc_AAA308: FLdI2 var_8A
  loc_AAA30B: LitI2_Byte &HFF
  loc_AAA30D: EqI2
  loc_AAA30E: FFree1Ad var_88
  loc_AAA311: BranchF loc_AAA3BC
  loc_AAA314: FLdRfVar var_90
  loc_AAA317: FLdPr Me
  loc_AAA31A: VCallAd Control_ID_FilaDifu2Txt
  loc_AAA31D: FStAdFunc var_88
  loc_AAA320: FLdPr var_88
  loc_AAA323:  = Me.Text
  loc_AAA328: FLdZeroAd var_90
  loc_AAA32B: CVarStr var_A0
  loc_AAA32E: ImpAdCallI2 IsNumeric()
  loc_AAA333: NotI4
  loc_AAA334: FFree1Ad var_88
  loc_AAA337: FFree1Var var_A0 = ""
  loc_AAA33A: BranchF loc_AAA354
  loc_AAA33D: LitStr "0"
  loc_AAA340: FLdPr Me
  loc_AAA343: VCallAd Control_ID_FilaDifu2Txt
  loc_AAA346: FStAdFunc var_88
  loc_AAA349: FLdPr var_88
  loc_AAA34C: Me.Text = from_stack_1
  loc_AAA351: FFree1Ad var_88
  loc_AAA354: FLdRfVar var_90
  loc_AAA357: FLdPr Me
  loc_AAA35A: VCallAd Control_ID_FilaDifu2Txt
  loc_AAA35D: FStAdFunc var_88
  loc_AAA360: FLdPr var_88
  loc_AAA363:  = Me.Text
  loc_AAA368: LitI2_Byte &HFF
  loc_AAA36A: LitI2_Byte 0
  loc_AAA36C: ILdRf var_90
  loc_AAA36F: LitStr "ingrese la FILA"
  loc_AAA372: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AAA377: FStStrNoPop var_A4
  loc_AAA37A: FLdPr Me
  loc_AAA37D: MemStStrCopy
  loc_AAA381: FFreeStr var_90 = ""
  loc_AAA388: FFree1Ad var_88
  loc_AAA38B: FLdPr Me
  loc_AAA38E: MemLdStr global_72
  loc_AAA391: LitStr vbNullString
  loc_AAA394: NeStr
  loc_AAA396: BranchF loc_AAA3BC
  loc_AAA399: FLdPr Me
  loc_AAA39C: MemLdStr global_72
  loc_AAA39F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAA3A4: FLdPr Me
  loc_AAA3A7: VCallAd Control_ID_FilaDifu2Txt
  loc_AAA3AA: CVarAd
  loc_AAA3AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAA3B3: FFree1Var var_A0 = ""
  loc_AAA3B6: LitI2_Byte &HFF
  loc_AAA3B8: IStI2 Cancel
  loc_AAA3BB: ExitProcHresult
  loc_AAA3BC: ExitProcHresult
End Sub

Private Sub NumeDifu2Txt_GotFocus() '9BC468
  'Data Table: 526984
  loc_9BC454: FLdPr Me
  loc_9BC457: VCallAd Control_ID_NumeDifu2Txt
  loc_9BC45A: CVarAd
  loc_9BC45E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC463: FFree1Var var_94 = ""
  loc_9BC466: ExitProcHresult
End Sub

Private Sub NumeDifu2Txt_Validate(Cancel As Boolean) 'B248F0
  'Data Table: 526984
  loc_B2466C: FLdRfVar var_8E
  loc_B2466F: FLdPr Me
  loc_B24672: VCallAd Control_ID_NumeDifu2Txt
  loc_B24675: FStAdFunc var_8C
  loc_B24678: FLdPr var_8C
  loc_B2467B:  = Me.Enabled
  loc_B24680: FLdI2 var_8E
  loc_B24683: LitI2_Byte &HFF
  loc_B24685: EqI2
  loc_B24686: FFree1Ad var_8C
  loc_B24689: BranchF loc_B248EF
  loc_B2468C: FLdRfVar var_94
  loc_B2468F: FLdPr Me
  loc_B24692: VCallAd Control_ID_NumeDifu2Txt
  loc_B24695: FStAdFunc var_8C
  loc_B24698: FLdPr var_8C
  loc_B2469B:  = Me.Text
  loc_B246A0: FLdZeroAd var_94
  loc_B246A3: CVarStr var_A4
  loc_B246A6: ImpAdCallI2 IsNumeric()
  loc_B246AB: NotI4
  loc_B246AC: FFree1Ad var_8C
  loc_B246AF: FFree1Var var_A4 = ""
  loc_B246B2: BranchF loc_B246CC
  loc_B246B5: LitStr "0"
  loc_B246B8: FLdPr Me
  loc_B246BB: VCallAd Control_ID_NumeDifu2Txt
  loc_B246BE: FStAdFunc var_8C
  loc_B246C1: FLdPr var_8C
  loc_B246C4: Me.Text = from_stack_1
  loc_B246C9: FFree1Ad var_8C
  loc_B246CC: FLdRfVar var_94
  loc_B246CF: FLdPr Me
  loc_B246D2: VCallAd Control_ID_NumeDifu2Txt
  loc_B246D5: FStAdFunc var_8C
  loc_B246D8: FLdPr var_8C
  loc_B246DB:  = Me.Text
  loc_B246E0: LitI2_Byte &HFF
  loc_B246E2: LitI2_Byte 0
  loc_B246E4: ILdRf var_94
  loc_B246E7: LitStr "ingrese el NUMERO"
  loc_B246EA: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_B246EF: FStStrNoPop var_A8
  loc_B246F2: FLdPr Me
  loc_B246F5: MemStStrCopy
  loc_B246F9: FFreeStr var_94 = ""
  loc_B24700: FFree1Ad var_8C
  loc_B24703: FLdPr Me
  loc_B24706: MemLdStr global_72
  loc_B24709: LitStr vbNullString
  loc_B2470C: NeStr
  loc_B2470E: BranchF loc_B24734
  loc_B24711: FLdPr Me
  loc_B24714: MemLdStr global_72
  loc_B24717: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2471C: FLdPr Me
  loc_B2471F: VCallAd Control_ID_NumeDifu2Txt
  loc_B24722: CVarAd
  loc_B24726: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B2472B: FFree1Var var_A4 = ""
  loc_B2472E: LitI2_Byte &HFF
  loc_B24730: IStI2 Cancel
  loc_B24733: ExitProcHresult
  loc_B24734: FLdRfVar var_94
  loc_B24737: FLdPr Me
  loc_B2473A: VCallAd Control_ID_NumeDifu2Txt
  loc_B2473D: FStAdFunc var_8C
  loc_B24740: FLdPr var_8C
  loc_B24743:  = Me.Text
  loc_B24748: FLdZeroAd var_94
  loc_B2474B: CVarStr var_A4
  loc_B2474E: FLdRfVar var_B8
  loc_B24751: ImpAdCallFPR4  = Ucase()
  loc_B24756: FLdRfVar var_B8
  loc_B24759: CStrVarVal var_A8
  loc_B2475D: FLdPr Me
  loc_B24760: VCallAd Control_ID_NumeDifu2Txt
  loc_B24763: FStAdFunc var_BC
  loc_B24766: FLdPr var_BC
  loc_B24769: Me.Text = from_stack_1
  loc_B2476E: FFree1Str var_A8
  loc_B24771: FFreeAd var_8C = ""
  loc_B24778: FFreeVar var_A4 = ""
  loc_B2477F: LitI2_Byte 0
  loc_B24781: PopTmpLdAd2 var_8E
  loc_B24784: Call FilaDifu2Txt_Validate(from_stack_1v)
  loc_B24789: FLdRfVar var_C0
  loc_B2478C: FLdPr Me
  loc_B2478F: MemLdRfVar from_stack_1.global_56
  loc_B24792: NewIfNullPr clsdifunto
  loc_B24795: from_stack_1 = clsdifunto.RecordCount
  loc_B2479A: ILdRf var_C0
  loc_B2479D: LitI4 0
  loc_B247A2: GtI4
  loc_B247A3: BranchF loc_B248EA
  loc_B247A6: FLdRfVar var_94
  loc_B247A9: FLdPr Me
  loc_B247AC: VCallAd Control_ID_CodiTise2Txt
  loc_B247AF: FStAdFunc var_8C
  loc_B247B2: FLdPr var_8C
  loc_B247B5:  = Me.Text
  loc_B247BA: FLdRfVar var_A8
  loc_B247BD: FLdPr Me
  loc_B247C0: VCallAd Control_ID_SeccDifu2Txt
  loc_B247C3: FStAdFunc var_BC
  loc_B247C6: FLdPr var_BC
  loc_B247C9:  = Me.Text
  loc_B247CE: FLdRfVar var_C8
  loc_B247D1: FLdPr Me
  loc_B247D4: VCallAd Control_ID_FilaDifu2Txt
  loc_B247D7: FStAdFunc var_C4
  loc_B247DA: FLdPr var_C4
  loc_B247DD:  = Me.Text
  loc_B247E2: FLdRfVar var_D0
  loc_B247E5: FLdPr Me
  loc_B247E8: VCallAd Control_ID_NumeDifu2Txt
  loc_B247EB: FStAdFunc var_CC
  loc_B247EE: FLdPr var_CC
  loc_B247F1:  = Me.Text
  loc_B247F6: ILdRf var_D0
  loc_B247F9: CI2Str
  loc_B247FB: ILdRf var_C8
  loc_B247FE: CI2Str
  loc_B24800: ILdRf var_A8
  loc_B24803: ILdRf var_94
  loc_B24806: ImpAdCallI2 Proc_270_92_ADBFCC(, , , )
  loc_B2480B: FStStr var_88
  loc_B2480E: FFreeStr var_94 = "": var_A8 = "": var_C8 = ""
  loc_B24819: FFreeAd var_8C = "": var_BC = "": var_C4 = ""
  loc_B24824: LitStr "SELECT difunto.CodiDifu, difunto.CucuPers, infogov.persona.DetaPers, difunto.CodiInmu, difunto.CodiCeme, cementerio.DetaCeme, difunto.CodiTise, tiposepu.DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, CacaDifu, CompDifu, ParvDifu, difunto.BajaFeho, difunto.BajaMoti, FeveDifu, PeriDifu, MesDifu, AnioDifu, PerpDifu, ObseDifu, DetaDedi, detadifu.NumeDedi, difunto.EjerDifu, difunto.BimeDifu,"
  loc_B24827: LitStr " difunto.CocpDifu,difunto.DecpDifu,difunto.NupoDifu,difunto.CobpDifu,difunto.DebpDifu,difunto.MapoDifu,difunto.CapoDifu,difunto.UbpoDifu,difunto.ColpDifu,difunto.DelpDifu,difunto.CoppDifu,difunto.BajaMoti as BajaMotiDifu,difunto.BajaFeho"
  loc_B2482A: ConcatStr
  loc_B2482B: FStStrNoPop var_94
  loc_B2482E: LitStr " FROM difunto "
  loc_B24831: ConcatStr
  loc_B24832: FStStrNoPop var_A8
  loc_B24835: LitStr " LEFT JOIN infogov.persona On difunto.CucuPers = infogov.persona.CucuPers"
  loc_B24838: ConcatStr
  loc_B24839: FStStrNoPop var_C8
  loc_B2483C: LitStr " LEFT JOIN tiposepu On difunto.CodiTise = tiposepu.CodiTise"
  loc_B2483F: ConcatStr
  loc_B24840: FStStrNoPop var_D0
  loc_B24843: LitStr " LEFT JOIN cementerio On difunto.CodiCeme = cementerio.CodiCeme "
  loc_B24846: ConcatStr
  loc_B24847: FStStrNoPop var_D4
  loc_B2484A: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_B2484D: ConcatStr
  loc_B2484E: FStStrNoPop var_D8
  loc_B24851: LitStr " WHERE difunto.CodiDifu = '"
  loc_B24854: ConcatStr
  loc_B24855: FStStrNoPop var_DC
  loc_B24858: ILdRf var_88
  loc_B2485B: ConcatStr
  loc_B2485C: FStStrNoPop var_E0
  loc_B2485F: LitStr "'"
  loc_B24862: ConcatStr
  loc_B24863: FStStrNoPop var_E4
  loc_B24866: FLdPr Me
  loc_B24869: MemLdRfVar from_stack_1.global_60
  loc_B2486C: NewIfNullPr clsdifunto
  loc_B2486F: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_B24874: FFreeStr var_94 = "": var_A8 = "": var_C8 = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B24889: LitI4 0
  loc_B2488E: LitI4 1
  loc_B24893: FLdRfVar var_E8
  loc_B24896: Redim
  loc_B248A0: FLdPr Me
  loc_B248A3: MemLdRfVar from_stack_1.global_60
  loc_B248A6: NewIfNullAd
  loc_B248A9: FStAd var_8C 
  loc_B248AD: FLdRfVar var_8C
  loc_B248B0: CVarRef
  loc_B248B5: ParmAry1St
  loc_B248BB: FLdPr Me
  loc_B248BE: VCallAd Control_ID_dgdABMS2
  loc_B248C1: CVarAd
  loc_B248C5: ParmAry1St
  loc_B248CB: FLdRfVar var_E8
  loc_B248CE: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B248D3: ILdRf var_8C
  loc_B248D6: CastAd
  loc_B248D9: FLdPr Me
  loc_B248DC: MemStAdFunc
  loc_B248E0: FLdRfVar var_E8
  loc_B248E3: Erase
  loc_B248E4: FFree1Ad var_8C
  loc_B248E7: Branch loc_B248EF
  loc_B248EA: Call Proc_259_60_AAFDD4()
  loc_B248EF: ExitProcHresult
End Sub

Private Sub SeccDifu2Txt_GotFocus() '9BDC08
  'Data Table: 526984
  loc_9BDBF4: FLdPr Me
  loc_9BDBF7: VCallAd Control_ID_SeccDifu2Txt
  loc_9BDBFA: CVarAd
  loc_9BDBFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDC03: FFree1Var var_94 = ""
  loc_9BDC06: ExitProcHresult
End Sub

Private Sub SeccDifu2Txt_Validate(Cancel As Boolean) 'ABFD30
  'Data Table: 526984
  loc_ABFC3C: FLdRfVar var_8A
  loc_ABFC3F: FLdPr Me
  loc_ABFC42: VCallAd Control_ID_SeccDifu2Txt
  loc_ABFC45: FStAdFunc var_88
  loc_ABFC48: FLdPr var_88
  loc_ABFC4B:  = Me.Enabled
  loc_ABFC50: FLdI2 var_8A
  loc_ABFC53: FFree1Ad var_88
  loc_ABFC56: BranchF loc_ABFCE2
  loc_ABFC59: FLdRfVar var_90
  loc_ABFC5C: FLdPr Me
  loc_ABFC5F: VCallAd Control_ID_SeccDifu2Txt
  loc_ABFC62: FStAdFunc var_88
  loc_ABFC65: FLdPr var_88
  loc_ABFC68:  = Me.Text
  loc_ABFC6D: ILdRf var_90
  loc_ABFC70: LitStr vbNullString
  loc_ABFC73: NeStr
  loc_ABFC75: FFree1Str var_90
  loc_ABFC78: FFree1Ad var_88
  loc_ABFC7B: BranchF loc_ABFCE2
  loc_ABFC7E: FLdRfVar var_90
  loc_ABFC81: FLdPr Me
  loc_ABFC84: VCallAd Control_ID_SeccDifu2Txt
  loc_ABFC87: FStAdFunc var_88
  loc_ABFC8A: FLdPr var_88
  loc_ABFC8D:  = Me.Text
  loc_ABFC92: ILdRf var_90
  loc_ABFC95: LitStr "ingrese el sector"
  loc_ABFC98: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_ABFC9D: FStStrNoPop var_94
  loc_ABFCA0: FLdPr Me
  loc_ABFCA3: MemStStrCopy
  loc_ABFCA7: FFreeStr var_90 = ""
  loc_ABFCAE: FFree1Ad var_88
  loc_ABFCB1: FLdPr Me
  loc_ABFCB4: MemLdStr global_72
  loc_ABFCB7: LitStr vbNullString
  loc_ABFCBA: NeStr
  loc_ABFCBC: BranchF loc_ABFCE2
  loc_ABFCBF: FLdPr Me
  loc_ABFCC2: MemLdStr global_72
  loc_ABFCC5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABFCCA: FLdPr Me
  loc_ABFCCD: VCallAd Control_ID_SeccDifu2Txt
  loc_ABFCD0: CVarAd
  loc_ABFCD4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABFCD9: FFree1Var var_A4 = ""
  loc_ABFCDC: LitI2_Byte &HFF
  loc_ABFCDE: IStI2 Cancel
  loc_ABFCE1: ExitProcHresult
  loc_ABFCE2: FLdRfVar var_90
  loc_ABFCE5: FLdPr Me
  loc_ABFCE8: VCallAd Control_ID_SeccDifu2Txt
  loc_ABFCEB: FStAdFunc var_88
  loc_ABFCEE: FLdPr var_88
  loc_ABFCF1:  = Me.Text
  loc_ABFCF6: FLdZeroAd var_90
  loc_ABFCF9: CVarStr var_A4
  loc_ABFCFC: FLdRfVar var_B4
  loc_ABFCFF: ImpAdCallFPR4  = Ucase()
  loc_ABFD04: FLdRfVar var_B4
  loc_ABFD07: CStrVarVal var_94
  loc_ABFD0B: FLdPr Me
  loc_ABFD0E: VCallAd Control_ID_SeccDifu2Txt
  loc_ABFD11: FStAdFunc var_B8
  loc_ABFD14: FLdPr var_B8
  loc_ABFD17: Me.Text = from_stack_1
  loc_ABFD1C: FFree1Str var_94
  loc_ABFD1F: FFreeAd var_88 = ""
  loc_ABFD26: FFreeVar var_A4 = ""
  loc_ABFD2D: ExitProcHresult
End Sub

Private Function Proc_259_53_AF2348() 'AF2348
  'Data Table: 526984
  loc_AF219C: LitI2_Byte 0
  loc_AF219E: FLdPr Me
  loc_AF21A1: VCallAd Control_ID_PorcDescTxt
  loc_AF21A4: FStAdFunc var_88
  loc_AF21A7: FLdPr var_88
  loc_AF21AA: Me.Visible = from_stack_1b
  loc_AF21AF: FFree1Ad var_88
  loc_AF21B2: LitI2_Byte 0
  loc_AF21B4: FLdPr Me
  loc_AF21B7: VCallAd Control_ID_DescBoleLbl
  loc_AF21BA: FStAdFunc var_88
  loc_AF21BD: FLdPr var_88
  loc_AF21C0: Me.Visible = from_stack_1b
  loc_AF21C5: FFree1Ad var_88
  loc_AF21C8: LitI2_Byte 0
  loc_AF21CA: FLdPr Me
  loc_AF21CD: VCallAd Control_ID_DescBoleTxt
  loc_AF21D0: FStAdFunc var_88
  loc_AF21D3: FLdPr var_88
  loc_AF21D6: Me.Visible = from_stack_1b
  loc_AF21DB: FFree1Ad var_88
  loc_AF21DE: LitI2_Byte 0
  loc_AF21E0: FLdPr Me
  loc_AF21E3: VCallAd Control_ID_TotalLbl
  loc_AF21E6: FStAdFunc var_88
  loc_AF21E9: FLdPr var_88
  loc_AF21EC: Me.Visible = from_stack_1b
  loc_AF21F1: FFree1Ad var_88
  loc_AF21F4: LitI2_Byte 0
  loc_AF21F6: FLdPr Me
  loc_AF21F9: VCallAd Control_ID_TotalTxt
  loc_AF21FC: FStAdFunc var_88
  loc_AF21FF: FLdPr var_88
  loc_AF2202: Me.Visible = from_stack_1b
  loc_AF2207: FFree1Ad var_88
  loc_AF220A: LitI2_Byte 0
  loc_AF220C: FLdPr Me
  loc_AF220F: VCallAd Control_ID_DescuentoChk
  loc_AF2212: FStAdFunc var_88
  loc_AF2215: FLdPr var_88
  loc_AF2218: Me.Value = from_stack_1
  loc_AF221D: FFree1Ad var_88
  loc_AF2220: LitI4 1
  loc_AF2225: LitI4 1
  loc_AF222A: LitVarStr var_B8, "0.00"
  loc_AF222F: FStVarCopyObj var_C8
  loc_AF2232: FLdRfVar var_C8
  loc_AF2235: LitVarI2 var_A8, 0
  loc_AF223A: FLdRfVar var_D8
  loc_AF223D: ImpAdCallFPR4  = Format(, )
  loc_AF2242: FLdRfVar var_D8
  loc_AF2245: CStrVarVal var_DC
  loc_AF2249: FLdPr Me
  loc_AF224C: VCallAd Control_ID_PorcDescTxt
  loc_AF224F: FStAdFunc var_88
  loc_AF2252: FLdPr var_88
  loc_AF2255: Me.Text = from_stack_1
  loc_AF225A: FFree1Str var_DC
  loc_AF225D: FFree1Ad var_88
  loc_AF2260: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF2269: LitI4 1
  loc_AF226E: LitI4 1
  loc_AF2273: LitVarStr var_B8, "0.00"
  loc_AF2278: FStVarCopyObj var_C8
  loc_AF227B: FLdRfVar var_C8
  loc_AF227E: LitVarI2 var_A8, 0
  loc_AF2283: FLdRfVar var_D8
  loc_AF2286: ImpAdCallFPR4  = Format(, )
  loc_AF228B: FLdRfVar var_D8
  loc_AF228E: CStrVarVal var_DC
  loc_AF2292: FLdPr Me
  loc_AF2295: VCallAd Control_ID_TotaBoleTxt
  loc_AF2298: FStAdFunc var_88
  loc_AF229B: FLdPr var_88
  loc_AF229E: Me.Text = from_stack_1
  loc_AF22A3: FFree1Str var_DC
  loc_AF22A6: FFree1Ad var_88
  loc_AF22A9: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF22B2: LitI4 1
  loc_AF22B7: LitI4 1
  loc_AF22BC: LitVarStr var_B8, "0.00"
  loc_AF22C1: FStVarCopyObj var_C8
  loc_AF22C4: FLdRfVar var_C8
  loc_AF22C7: LitVarI2 var_A8, 0
  loc_AF22CC: FLdRfVar var_D8
  loc_AF22CF: ImpAdCallFPR4  = Format(, )
  loc_AF22D4: FLdRfVar var_D8
  loc_AF22D7: CStrVarVal var_DC
  loc_AF22DB: FLdPr Me
  loc_AF22DE: VCallAd Control_ID_DescBoleTxt
  loc_AF22E1: FStAdFunc var_88
  loc_AF22E4: FLdPr var_88
  loc_AF22E7: Me.Text = from_stack_1
  loc_AF22EC: FFree1Str var_DC
  loc_AF22EF: FFree1Ad var_88
  loc_AF22F2: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF22FB: LitI4 1
  loc_AF2300: LitI4 1
  loc_AF2305: LitVarStr var_B8, "0.00"
  loc_AF230A: FStVarCopyObj var_C8
  loc_AF230D: FLdRfVar var_C8
  loc_AF2310: LitVarI2 var_A8, 0
  loc_AF2315: FLdRfVar var_D8
  loc_AF2318: ImpAdCallFPR4  = Format(, )
  loc_AF231D: FLdRfVar var_D8
  loc_AF2320: CStrVarVal var_DC
  loc_AF2324: FLdPr Me
  loc_AF2327: VCallAd Control_ID_TotalTxt
  loc_AF232A: FStAdFunc var_88
  loc_AF232D: FLdPr var_88
  loc_AF2330: Me.Text = from_stack_1
  loc_AF2335: FFree1Str var_DC
  loc_AF2338: FFree1Ad var_88
  loc_AF233B: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF2344: ExitProcHresult
End Function

Private Function Proc_259_54_B463DC() 'B463DC
  'Data Table: 526984
  loc_B460D4: FLdPr Me
  loc_B460D7: VCallAd Control_ID_ServDifuFlex
  loc_B460DA: FStAdFunc var_88
  loc_B460DD: FLdPr var_88
  loc_B460E0: LateIdCall
  loc_B460E8: LitVarI4
  loc_B460F0: PopAdLdVar
  loc_B460F1: FLdPr var_88
  loc_B460F4: LateIdSt
  loc_B460F9: LitVarI4
  loc_B46101: PopAdLdVar
  loc_B46102: LitVarI4
  loc_B4610A: PopAdLdVar
  loc_B4610B: LitVarStr var_D8, "Cant."
  loc_B46110: PopAdLdVar
  loc_B46111: FLdPr var_88
  loc_B46114: LateIdCallSt
  loc_B4611C: LitVarI4
  loc_B46124: PopAdLdVar
  loc_B46125: LitVarI4
  loc_B4612D: PopAdLdVar
  loc_B4612E: LitVarStr var_D8, "Cod."
  loc_B46133: PopAdLdVar
  loc_B46134: FLdPr var_88
  loc_B46137: LateIdCallSt
  loc_B4613F: LitVarI4
  loc_B46147: PopAdLdVar
  loc_B46148: LitVarI4
  loc_B46150: PopAdLdVar
  loc_B46151: LitVarStr var_D8, "Detalle o Servicio"
  loc_B46156: PopAdLdVar
  loc_B46157: FLdPr var_88
  loc_B4615A: LateIdCallSt
  loc_B46162: LitVarI4
  loc_B4616A: PopAdLdVar
  loc_B4616B: LitVarI4
  loc_B46173: PopAdLdVar
  loc_B46174: LitVarStr var_D8, "Importe"
  loc_B46179: PopAdLdVar
  loc_B4617A: FLdPr var_88
  loc_B4617D: LateIdCallSt
  loc_B46185: LitVarI4
  loc_B4618D: PopAdLdVar
  loc_B4618E: LitVarI4
  loc_B46196: PopAdLdVar
  loc_B46197: LitVarStr var_D8, "Total"
  loc_B4619C: PopAdLdVar
  loc_B4619D: FLdPr var_88
  loc_B461A0: LateIdCallSt
  loc_B461A8: LitVarI4
  loc_B461B0: PopAdLdVar
  loc_B461B1: LitVarI4
  loc_B461B9: PopAdLdVar
  loc_B461BA: LitVarStr var_D8, "Periodo"
  loc_B461BF: PopAdLdVar
  loc_B461C0: FLdPr var_88
  loc_B461C3: LateIdCallSt
  loc_B461CB: LitVarI4
  loc_B461D3: PopAdLdVar
  loc_B461D4: LitVarI4
  loc_B461DC: PopAdLdVar
  loc_B461DD: LitVarStr var_D8, "Concepto"
  loc_B461E2: PopAdLdVar
  loc_B461E3: FLdPr var_88
  loc_B461E6: LateIdCallSt
  loc_B461EE: LitVarI4
  loc_B461F6: PopAdLdVar
  loc_B461F7: LitVarI4
  loc_B461FF: PopAdLdVar
  loc_B46200: LitVarStr var_D8, "Fijo"
  loc_B46205: PopAdLdVar
  loc_B46206: FLdPr var_88
  loc_B46209: LateIdCallSt
  loc_B46211: LitVarI4
  loc_B46219: PopAdLdVar
  loc_B4621A: LitVarI4
  loc_B46222: PopAdLdVar
  loc_B46223: LitVarStr var_D8, "TiafConc"
  loc_B46228: PopAdLdVar
  loc_B46229: FLdPr var_88
  loc_B4622C: LateIdCallSt
  loc_B46234: LitVarI4
  loc_B4623C: PopAdLdVar
  loc_B4623D: LitVarI4
  loc_B46245: PopAdLdVar
  loc_B46246: LitVarStr var_D8, "AnioSece"
  loc_B4624B: PopAdLdVar
  loc_B4624C: FLdPr var_88
  loc_B4624F: LateIdCallSt
  loc_B46257: FLdPr var_88
  loc_B4625A: LateIdCall
  loc_B46262: LitNothing
  loc_B46264: FStAd var_88 
  loc_B46268: LitVarStr var_98, vbNullString
  loc_B4626D: LitI4 9
  loc_B46272: FLdRfVar var_F8
  loc_B46275: ImpAdCallFPR4  = Chr()
  loc_B4627A: FLdRfVar var_F8
  loc_B4627D: ConcatVar var_108
  loc_B46281: LitVarStr var_A8, vbNullString
  loc_B46286: ConcatVar var_118
  loc_B4628A: LitI4 9
  loc_B4628F: FLdRfVar var_128
  loc_B46292: ImpAdCallFPR4  = Chr()
  loc_B46297: FLdRfVar var_128
  loc_B4629A: ConcatVar var_138
  loc_B4629E: LitVarStr var_B8, vbNullString
  loc_B462A3: ConcatVar var_148
  loc_B462A7: LitI4 9
  loc_B462AC: FLdRfVar var_158
  loc_B462AF: ImpAdCallFPR4  = Chr()
  loc_B462B4: FLdRfVar var_158
  loc_B462B7: ConcatVar var_168
  loc_B462BB: LitVarStr var_C8, vbNullString
  loc_B462C0: ConcatVar var_178
  loc_B462C4: LitI4 9
  loc_B462C9: FLdRfVar var_188
  loc_B462CC: ImpAdCallFPR4  = Chr()
  loc_B462D1: FLdRfVar var_188
  loc_B462D4: ConcatVar var_198
  loc_B462D8: LitVarStr var_D8, vbNullString
  loc_B462DD: ConcatVar var_1A8
  loc_B462E1: LitI4 9
  loc_B462E6: FLdRfVar var_1B8
  loc_B462E9: ImpAdCallFPR4  = Chr()
  loc_B462EE: FLdRfVar var_1B8
  loc_B462F1: ConcatVar var_1C8
  loc_B462F5: LitVarStr var_E8, vbNullString
  loc_B462FA: ConcatVar var_1D8
  loc_B462FE: LitI4 9
  loc_B46303: FLdRfVar var_1E8
  loc_B46306: ImpAdCallFPR4  = Chr()
  loc_B4630B: FLdRfVar var_1E8
  loc_B4630E: ConcatVar var_1F8
  loc_B46312: LitVarStr var_208, vbNullString
  loc_B46317: ConcatVar var_218
  loc_B4631B: LitI4 9
  loc_B46320: FLdRfVar var_228
  loc_B46323: ImpAdCallFPR4  = Chr()
  loc_B46328: FLdRfVar var_228
  loc_B4632B: ConcatVar var_238
  loc_B4632F: LitVarStr var_248, "0"
  loc_B46334: ConcatVar var_258
  loc_B46338: LitI4 9
  loc_B4633D: FLdRfVar var_268
  loc_B46340: ImpAdCallFPR4  = Chr()
  loc_B46345: FLdRfVar var_268
  loc_B46348: ConcatVar var_278
  loc_B4634C: LitVarStr var_288, "0"
  loc_B46351: ConcatVar var_298
  loc_B46355: LitI4 9
  loc_B4635A: FLdRfVar var_2A8
  loc_B4635D: ImpAdCallFPR4  = Chr()
  loc_B46362: FLdRfVar var_2A8
  loc_B46365: ConcatVar var_2B8
  loc_B46369: LitVarStr var_2C8, "0"
  loc_B4636E: ConcatVar var_2D8
  loc_B46372: CStrVarTmp
  loc_B46373: FStStrNoPop var_2DC
  loc_B46376: FLdPr Me
  loc_B46379: MemStStrCopy
  loc_B4637D: FFree1Str var_2DC
  loc_B46380: FFreeVar var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_228 = "": var_238 = "": var_258 = "": var_268 = "": var_278 = "": var_298 = "": var_2A8 = "": var_2B8 = ""
  loc_B463B9: FLdPr Me
  loc_B463BC: MemLdRfVar from_stack_1.global_80
  loc_B463BF: CDargRef
  loc_B463C3: FLdPr Me
  loc_B463C6: VCallAd Control_ID_ServDifuFlex
  loc_B463C9: FStAdFunc var_2E0
  loc_B463CC: FLdPr var_2E0
  loc_B463CF: LateIdCall
  loc_B463D7: FFree1Ad var_2E0
  loc_B463DA: ExitProcHresult
End Function

Private Function Proc_259_55_B03CE4() 'B03CE4
  'Data Table: 526984
  loc_B03AF0: LitI2_Byte 0
  loc_B03AF2: CR8I2
  loc_B03AF3: FStFPR8 var_8C
  loc_B03AF6: LitI2_Byte 1
  loc_B03AF8: FLdPr Me
  loc_B03AFB: MemLdRfVar from_stack_1.global_76
  loc_B03AFE: FLdPr Me
  loc_B03B01: VCallAd Control_ID_ServDifuFlex
  loc_B03B04: FStAdFunc var_90
  loc_B03B07: FLdPr var_90
  loc_B03B0A: LateIdLdVar var_A0 DispID_4 0
  loc_B03B11: CI4Var
  loc_B03B13: LitI4 1
  loc_B03B18: SubI4
  loc_B03B19: CI2I4
  loc_B03B1A: FFree1Ad var_90
  loc_B03B1D: FFree1Var var_A0 = ""
  loc_B03B20: ForI2 var_A4
  loc_B03B26: FLdPr Me
  loc_B03B29: MemLdI2 global_76
  loc_B03B2C: CI4UI1
  loc_B03B2D: CVarI4
  loc_B03B31: PopAdLdVar
  loc_B03B32: LitVarI4
  loc_B03B3A: PopAdLdVar
  loc_B03B3B: FLdPr Me
  loc_B03B3E: VCallAd Control_ID_ServDifuFlex
  loc_B03B41: FStAdFunc var_90
  loc_B03B44: FLdPr var_90
  loc_B03B47: LateIdCallLdVar
  loc_B03B51: CStrVarTmp
  loc_B03B52: CVarStr var_F4
  loc_B03B55: ImpAdCallI2 IsNumeric()
  loc_B03B5A: FFree1Ad var_90
  loc_B03B5D: FFreeVar var_A0 = ""
  loc_B03B64: BranchF loc_B03BAD
  loc_B03B67: FLdPr Me
  loc_B03B6A: MemLdI2 global_76
  loc_B03B6D: CI4UI1
  loc_B03B6E: CVarI4
  loc_B03B72: PopAdLdVar
  loc_B03B73: LitVarI4
  loc_B03B7B: PopAdLdVar
  loc_B03B7C: FLdPr Me
  loc_B03B7F: VCallAd Control_ID_ServDifuFlex
  loc_B03B82: FStAdFunc var_90
  loc_B03B85: FLdPr var_90
  loc_B03B88: LateIdCallLdVar
  loc_B03B92: PopAd
  loc_B03B94: FLdFPR8 var_8C
  loc_B03B97: FLdRfVar var_A0
  loc_B03B9A: CStrVarTmp
  loc_B03B9B: FStStrNoPop var_F8
  loc_B03B9E: CR8Str
  loc_B03BA0: AddR8
  loc_B03BA1: FStFPR8 var_8C
  loc_B03BA4: FFree1Str var_F8
  loc_B03BA7: FFree1Ad var_90
  loc_B03BAA: FFree1Var var_A0 = ""
  loc_B03BAD: FLdPr Me
  loc_B03BB0: MemLdRfVar from_stack_1.global_76
  loc_B03BB3: NextI2 var_A4, loc_B03B26
  loc_B03BB8: LitI4 1
  loc_B03BBD: LitI4 1
  loc_B03BC2: LitVarStr var_C4, "0.00"
  loc_B03BC7: FStVarCopyObj var_A0
  loc_B03BCA: FLdRfVar var_A0
  loc_B03BCD: FLdRfVar var_8C
  loc_B03BD0: CVarRef
  loc_B03BD5: FLdRfVar var_F4
  loc_B03BD8: ImpAdCallFPR4  = Format(, )
  loc_B03BDD: FLdRfVar var_F4
  loc_B03BE0: CStrVarVal var_F8
  loc_B03BE4: FLdPr Me
  loc_B03BE7: VCallAd Control_ID_TotaBoleTxt
  loc_B03BEA: FStAdFunc var_90
  loc_B03BED: FLdPr var_90
  loc_B03BF0: Me.Text = from_stack_1
  loc_B03BF5: FFree1Str var_F8
  loc_B03BF8: FFree1Ad var_90
  loc_B03BFB: FFreeVar var_A0 = ""
  loc_B03C02: FLdRfVar var_F8
  loc_B03C05: FLdPr Me
  loc_B03C08: VCallAd Control_ID_PorcDescTxt
  loc_B03C0B: FStAdFunc var_90
  loc_B03C0E: FLdPr var_90
  loc_B03C11:  = Me.Text
  loc_B03C16: LitI4 1
  loc_B03C1B: LitI4 1
  loc_B03C20: LitVarStr var_C4, "0.00"
  loc_B03C25: FStVarCopyObj var_F4
  loc_B03C28: FLdRfVar var_F4
  loc_B03C2B: FLdFPR8 var_8C
  loc_B03C2E: ILdRf var_F8
  loc_B03C31: CR8Str
  loc_B03C33: MulR8
  loc_B03C34: LitI2_Byte &H64
  loc_B03C36: CR8I2
  loc_B03C37: DivR8
  loc_B03C38: CVarR8
  loc_B03C3C: FLdRfVar var_108
  loc_B03C3F: ImpAdCallFPR4  = Format(, )
  loc_B03C44: FLdRfVar var_108
  loc_B03C47: CStrVarVal var_10C
  loc_B03C4B: FLdPr Me
  loc_B03C4E: VCallAd Control_ID_DescBoleTxt
  loc_B03C51: FStAdFunc var_110
  loc_B03C54: FLdPr var_110
  loc_B03C57: Me.Text = from_stack_1
  loc_B03C5C: FFreeStr var_F8 = ""
  loc_B03C63: FFreeAd var_90 = ""
  loc_B03C6A: FFreeVar var_A0 = "": var_F4 = ""
  loc_B03C73: FLdRfVar var_F8
  loc_B03C76: FLdPr Me
  loc_B03C79: VCallAd Control_ID_DescBoleTxt
  loc_B03C7C: FStAdFunc var_90
  loc_B03C7F: FLdPr var_90
  loc_B03C82:  = Me.Text
  loc_B03C87: LitI4 1
  loc_B03C8C: LitI4 1
  loc_B03C91: LitVarStr var_C4, "0.00"
  loc_B03C96: FStVarCopyObj var_F4
  loc_B03C99: FLdRfVar var_F4
  loc_B03C9C: FLdFPR8 var_8C
  loc_B03C9F: ILdRf var_F8
  loc_B03CA2: CR8Str
  loc_B03CA4: SubR4
  loc_B03CA5: CVarR8
  loc_B03CA9: FLdRfVar var_108
  loc_B03CAC: ImpAdCallFPR4  = Format(, )
  loc_B03CB1: FLdRfVar var_108
  loc_B03CB4: CStrVarVal var_10C
  loc_B03CB8: FLdPr Me
  loc_B03CBB: VCallAd Control_ID_TotalTxt
  loc_B03CBE: FStAdFunc var_110
  loc_B03CC1: FLdPr var_110
  loc_B03CC4: Me.Text = from_stack_1
  loc_B03CC9: FFreeStr var_F8 = ""
  loc_B03CD0: FFreeAd var_90 = ""
  loc_B03CD7: FFreeVar var_A0 = "": var_F4 = ""
  loc_B03CE0: ExitProcHresult
End Function

Private Function Proc_259_56_C2E4D4() 'C2E4D4
  'Data Table: 526984
  loc_C2D99C: FLdPr Me
  loc_C2D99F: VCallAd Control_ID_ServDifuFlex
  loc_C2D9A2: FStAdFunc var_88
  loc_C2D9A5: FLdPr var_88
  loc_C2D9A8: LateIdLdVar var_98 DispID_10 0
  loc_C2D9AF: CI4Var
  loc_C2D9B1: CVarI4
  loc_C2D9B5: PopAdLdVar
  loc_C2D9B6: LitVarI4
  loc_C2D9BE: PopAdLdVar
  loc_C2D9BF: FLdPr Me
  loc_C2D9C2: VCallAd Control_ID_ServDifuFlex
  loc_C2D9C5: FStAdFunc var_DC
  loc_C2D9C8: FLdPr var_DC
  loc_C2D9CB: LateIdCallLdVar
  loc_C2D9D5: CStrVarTmp
  loc_C2D9D6: CVarStr var_FC
  loc_C2D9D9: ImpAdCallI2 IsNumeric()
  loc_C2D9DE: FLdPr Me
  loc_C2D9E1: VCallAd Control_ID_ServDifuFlex
  loc_C2D9E4: FStAdFunc var_100
  loc_C2D9E7: FLdPr var_100
  loc_C2D9EA: LateIdLdVar var_110 DispID_10 0
  loc_C2D9F1: CI4Var
  loc_C2D9F3: CVarI4
  loc_C2D9F7: PopAdLdVar
  loc_C2D9F8: LitVarI4
  loc_C2DA00: PopAdLdVar
  loc_C2DA01: FLdPr Me
  loc_C2DA04: VCallAd Control_ID_ServDifuFlex
  loc_C2DA07: FStAdFunc var_154
  loc_C2DA0A: FLdPr var_154
  loc_C2DA0D: LateIdCallLdVar
  loc_C2DA17: CStrVarTmp
  loc_C2DA18: CVarStr var_174
  loc_C2DA1B: ImpAdCallI2 IsNumeric()
  loc_C2DA20: AndI4
  loc_C2DA21: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2DA2C: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = ""
  loc_C2DA3B: BranchF loc_C2E003
  loc_C2DA3E: FLdPr Me
  loc_C2DA41: VCallAd Control_ID_ServDifuFlex
  loc_C2DA44: FStAdFunc var_100
  loc_C2DA47: FLdPr var_100
  loc_C2DA4A: LateIdLdVar var_FC DispID_10 0
  loc_C2DA51: CI4Var
  loc_C2DA53: CVarI4
  loc_C2DA57: PopAdLdVar
  loc_C2DA58: LitVarI4
  loc_C2DA60: PopAdLdVar
  loc_C2DA61: FLdPr Me
  loc_C2DA64: VCallAd Control_ID_ServDifuFlex
  loc_C2DA67: FStAdFunc var_154
  loc_C2DA6A: FLdPr var_154
  loc_C2DA6D: LateIdCallLdVar
  loc_C2DA77: PopAd
  loc_C2DA79: FLdPr Me
  loc_C2DA7C: VCallAd Control_ID_ServDifuFlex
  loc_C2DA7F: FStAdFunc var_88
  loc_C2DA82: FLdPr var_88
  loc_C2DA85: LateIdLdVar var_98 DispID_10 0
  loc_C2DA8C: CI4Var
  loc_C2DA8E: CVarI4
  loc_C2DA92: PopAdLdVar
  loc_C2DA93: LitVarI4
  loc_C2DA9B: PopAdLdVar
  loc_C2DA9C: FLdPr Me
  loc_C2DA9F: VCallAd Control_ID_ServDifuFlex
  loc_C2DAA2: FStAdFunc var_DC
  loc_C2DAA5: FLdPr var_DC
  loc_C2DAA8: LateIdCallLdVar
  loc_C2DAB2: CStrVarTmp
  loc_C2DAB3: FStStrNoPop var_178
  loc_C2DAB6: CI2Str
  loc_C2DAB8: LitI2_Byte 0
  loc_C2DABA: NeI2
  loc_C2DABB: CVarBoolI2 var_1C8
  loc_C2DABF: LitVarI2 var_174, 9
  loc_C2DAC4: LitI4 1
  loc_C2DAC9: FLdRfVar var_110
  loc_C2DACC: CStrVarTmp
  loc_C2DACD: CVarStr var_164
  loc_C2DAD0: FLdRfVar var_198
  loc_C2DAD3: ImpAdCallFPR4  = Mid(, , )
  loc_C2DAD8: FLdRfVar var_198
  loc_C2DADB: LitVarStr var_1A8, "CONCESION"
  loc_C2DAE0: HardType
  loc_C2DAE1: EqVar var_1B8
  loc_C2DAE5: AndVar var_1D8
  loc_C2DAE9: CBoolVarNull
  loc_C2DAEB: FFree1Str var_178
  loc_C2DAEE: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2DAF9: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = "": var_174 = "": var_198 = ""
  loc_C2DB0C: BranchF loc_C2DEEC
  loc_C2DB0F: FLdPr Me
  loc_C2DB12: VCallAd Control_ID_FefaDifuMsk
  loc_C2DB15: FStAdFunc var_88
  loc_C2DB18: FLdPr var_88
  loc_C2DB1B: LateIdLdVar var_98 DispID_15 0
  loc_C2DB22: CStrVarTmp
  loc_C2DB23: CVarStr var_EC
  loc_C2DB26: FLdRfVar var_FC
  loc_C2DB29: ImpAdCallFPR4  = Day()
  loc_C2DB2E: FLdRfVar var_FC
  loc_C2DB31: LitVarI2 var_A8, 15
  loc_C2DB36: HardType
  loc_C2DB37: LeVarBool
  loc_C2DB39: FFree1Ad var_88
  loc_C2DB3C: FFreeVar var_98 = "": var_EC = ""
  loc_C2DB45: BranchF loc_C2DB96
  loc_C2DB48: LitVarI2 var_A8, 12
  loc_C2DB4D: FLdPr Me
  loc_C2DB50: VCallAd Control_ID_FefaDifuMsk
  loc_C2DB53: FStAdFunc var_88
  loc_C2DB56: FLdPr var_88
  loc_C2DB59: LateIdLdVar var_98 DispID_15 0
  loc_C2DB60: CStrVarTmp
  loc_C2DB61: CVarStr var_EC
  loc_C2DB64: FLdRfVar var_FC
  loc_C2DB67: ImpAdCallFPR4  = Month()
  loc_C2DB6C: FLdRfVar var_FC
  loc_C2DB6F: SubVar var_110
  loc_C2DB73: LitVarI2 var_B8, 1
  loc_C2DB78: AddVar var_164
  loc_C2DB7C: CUI1Var
  loc_C2DB7E: FLdPr Me
  loc_C2DB81: MemStUI1
  loc_C2DB85: FFree1Ad var_88
  loc_C2DB88: FFreeVar var_98 = "": var_EC = "": var_FC = ""
  loc_C2DB93: Branch loc_C2DBD6
  loc_C2DB96: LitVarI2 var_A8, 12
  loc_C2DB9B: FLdPr Me
  loc_C2DB9E: VCallAd Control_ID_FefaDifuMsk
  loc_C2DBA1: FStAdFunc var_88
  loc_C2DBA4: FLdPr var_88
  loc_C2DBA7: LateIdLdVar var_98 DispID_15 0
  loc_C2DBAE: CStrVarTmp
  loc_C2DBAF: CVarStr var_EC
  loc_C2DBB2: FLdRfVar var_FC
  loc_C2DBB5: ImpAdCallFPR4  = Month()
  loc_C2DBBA: FLdRfVar var_FC
  loc_C2DBBD: SubVar var_110
  loc_C2DBC1: CUI1Var
  loc_C2DBC3: FLdPr Me
  loc_C2DBC6: MemStUI1
  loc_C2DBCA: FFree1Ad var_88
  loc_C2DBCD: FFreeVar var_98 = "": var_EC = ""
  loc_C2DBD6: FLdPr Me
  loc_C2DBD9: MemLdUI1 global_86
  loc_C2DBDD: CI2UI1
  loc_C2DBDF: LitI2_Byte 0
  loc_C2DBE1: GtI2
  loc_C2DBE2: BranchF loc_C2DDD5
  loc_C2DBE5: FLdPr Me
  loc_C2DBE8: VCallAd Control_ID_ServDifuFlex
  loc_C2DBEB: FStAdFunc var_88
  loc_C2DBEE: FLdPr var_88
  loc_C2DBF1: LateIdLdVar var_98 DispID_10 0
  loc_C2DBF8: CI4Var
  loc_C2DBFA: CVarI4
  loc_C2DBFE: PopAdLdVar
  loc_C2DBFF: LitVarI4
  loc_C2DC07: PopAdLdVar
  loc_C2DC08: FLdPr Me
  loc_C2DC0B: VCallAd Control_ID_ServDifuFlex
  loc_C2DC0E: FStAdFunc var_DC
  loc_C2DC11: FLdPr var_DC
  loc_C2DC14: LateIdCallLdVar
  loc_C2DC1E: PopAd
  loc_C2DC20: FLdPr Me
  loc_C2DC23: VCallAd Control_ID_ServDifuFlex
  loc_C2DC26: FStAdFunc var_100
  loc_C2DC29: FLdPr var_100
  loc_C2DC2C: LateIdLdVar var_FC DispID_10 0
  loc_C2DC33: CI4Var
  loc_C2DC35: CVarI4
  loc_C2DC39: PopAdLdVar
  loc_C2DC3A: LitVarI4
  loc_C2DC42: PopAdLdVar
  loc_C2DC43: FLdPr Me
  loc_C2DC46: VCallAd Control_ID_ServDifuFlex
  loc_C2DC49: FStAdFunc var_154
  loc_C2DC4C: FLdPr var_154
  loc_C2DC4F: LateIdCallLdVar
  loc_C2DC59: PopAd
  loc_C2DC5B: LitI4 2
  loc_C2DC60: FLdRfVar var_EC
  loc_C2DC63: CStrVarTmp
  loc_C2DC64: FStStrNoPop var_178
  loc_C2DC67: CR8Str
  loc_C2DC69: FLdRfVar var_110
  loc_C2DC6C: CStrVarTmp
  loc_C2DC6D: FStStrNoPop var_1DC
  loc_C2DC70: CR8Str
  loc_C2DC72: DivR8
  loc_C2DC73: LitI2_Byte &HC
  loc_C2DC75: CR8I2
  loc_C2DC76: DivR8
  loc_C2DC77: CVarR8
  loc_C2DC7B: FLdRfVar var_174
  loc_C2DC7E: ImpAdCallFPR4  = Round(, )
  loc_C2DC83: FLdRfVar var_174
  loc_C2DC86: CR4Var
  loc_C2DC87: FLdPr Me
  loc_C2DC8A: MemStFPR8 global_88
  loc_C2DC8D: FFreeStr var_178 = ""
  loc_C2DC94: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2DC9F: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = ""
  loc_C2DCAE: FLdPr Me
  loc_C2DCB1: VCallAd Control_ID_ServDifuFlex
  loc_C2DCB4: FStAdFunc var_88
  loc_C2DCB7: FLdPr var_88
  loc_C2DCBA: LateIdLdVar var_98 DispID_10 0
  loc_C2DCC1: CI4Var
  loc_C2DCC3: CVarI4
  loc_C2DCC7: PopAdLdVar
  loc_C2DCC8: LitVarI4
  loc_C2DCD0: PopAdLdVar
  loc_C2DCD1: FLdPr Me
  loc_C2DCD4: VCallAd Control_ID_ServDifuFlex
  loc_C2DCD7: FStAdFunc var_DC
  loc_C2DCDA: FLdPr var_DC
  loc_C2DCDD: LateIdCallLdVar
  loc_C2DCE7: PopAd
  loc_C2DCE9: FLdPr Me
  loc_C2DCEC: VCallAd Control_ID_ServDifuFlex
  loc_C2DCEF: FStAdFunc var_100
  loc_C2DCF2: FLdPr var_100
  loc_C2DCF5: LateIdLdVar var_FC DispID_10 0
  loc_C2DCFC: CI4Var
  loc_C2DCFE: CVarI4
  loc_C2DD02: PopAdLdVar
  loc_C2DD03: LitVarI4
  loc_C2DD0B: PopAdLdVar
  loc_C2DD0C: FLdPr Me
  loc_C2DD0F: VCallAd Control_ID_ServDifuFlex
  loc_C2DD12: FStAdFunc var_154
  loc_C2DD15: FLdPr var_154
  loc_C2DD18: LateIdCallLdVar
  loc_C2DD22: PopAd
  loc_C2DD24: FLdPr Me
  loc_C2DD27: VCallAd Control_ID_ServDifuFlex
  loc_C2DD2A: FStAdFunc var_1E0
  loc_C2DD2D: FLdPr var_1E0
  loc_C2DD30: LateIdLdVar var_1B8 DispID_10 0
  loc_C2DD37: CI4Var
  loc_C2DD39: CVarI4
  loc_C2DD3D: PopAdLdVar
  loc_C2DD3E: LitVarI4
  loc_C2DD46: PopAdLdVar
  loc_C2DD47: LitI4 1
  loc_C2DD4C: LitI4 1
  loc_C2DD51: LitVarStr var_1A8, "0.00"
  loc_C2DD56: FStVarCopyObj var_174
  loc_C2DD59: FLdRfVar var_174
  loc_C2DD5C: FLdRfVar var_EC
  loc_C2DD5F: CStrVarTmp
  loc_C2DD60: FStStrNoPop var_178
  loc_C2DD63: CR8Str
  loc_C2DD65: FLdRfVar var_110
  loc_C2DD68: CStrVarTmp
  loc_C2DD69: FStStrNoPop var_1DC
  loc_C2DD6C: CR8Str
  loc_C2DD6E: MulR8
  loc_C2DD6F: FLdPr Me
  loc_C2DD72: MemLdFPR8 global_88
  loc_C2DD75: FLdPr Me
  loc_C2DD78: MemLdUI1 global_86
  loc_C2DD7C: CR8I2
  loc_C2DD7D: MulR8
  loc_C2DD7E: AddR8
  loc_C2DD7F: CVarR8
  loc_C2DD83: FLdRfVar var_198
  loc_C2DD86: ImpAdCallFPR4  = Format(, )
  loc_C2DD8B: FLdRfVar var_198
  loc_C2DD8E: CStrVarTmp
  loc_C2DD8F: CVarStr var_1D8
  loc_C2DD92: PopAdLdVar
  loc_C2DD93: FLdPr Me
  loc_C2DD96: VCallAd Control_ID_ServDifuFlex
  loc_C2DD99: FStAdFunc var_224
  loc_C2DD9C: FLdPr var_224
  loc_C2DD9F: LateIdCallSt
  loc_C2DDA7: FFreeStr var_178 = ""
  loc_C2DDAE: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_154 = "": var_1E0 = ""
  loc_C2DDBD: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = "": var_174 = "": var_1B8 = "": var_198 = ""
  loc_C2DDD2: Branch loc_C2DEE9
  loc_C2DDD5: FLdPr Me
  loc_C2DDD8: VCallAd Control_ID_ServDifuFlex
  loc_C2DDDB: FStAdFunc var_88
  loc_C2DDDE: FLdPr var_88
  loc_C2DDE1: LateIdLdVar var_98 DispID_10 0
  loc_C2DDE8: CI4Var
  loc_C2DDEA: CVarI4
  loc_C2DDEE: PopAdLdVar
  loc_C2DDEF: LitVarI4
  loc_C2DDF7: PopAdLdVar
  loc_C2DDF8: FLdPr Me
  loc_C2DDFB: VCallAd Control_ID_ServDifuFlex
  loc_C2DDFE: FStAdFunc var_DC
  loc_C2DE01: FLdPr var_DC
  loc_C2DE04: LateIdCallLdVar
  loc_C2DE0E: PopAd
  loc_C2DE10: FLdPr Me
  loc_C2DE13: VCallAd Control_ID_ServDifuFlex
  loc_C2DE16: FStAdFunc var_100
  loc_C2DE19: FLdPr var_100
  loc_C2DE1C: LateIdLdVar var_FC DispID_10 0
  loc_C2DE23: CI4Var
  loc_C2DE25: CVarI4
  loc_C2DE29: PopAdLdVar
  loc_C2DE2A: LitVarI4
  loc_C2DE32: PopAdLdVar
  loc_C2DE33: FLdPr Me
  loc_C2DE36: VCallAd Control_ID_ServDifuFlex
  loc_C2DE39: FStAdFunc var_154
  loc_C2DE3C: FLdPr var_154
  loc_C2DE3F: LateIdCallLdVar
  loc_C2DE49: PopAd
  loc_C2DE4B: FLdPr Me
  loc_C2DE4E: VCallAd Control_ID_ServDifuFlex
  loc_C2DE51: FStAdFunc var_1E0
  loc_C2DE54: FLdPr var_1E0
  loc_C2DE57: LateIdLdVar var_1B8 DispID_10 0
  loc_C2DE5E: CI4Var
  loc_C2DE60: CVarI4
  loc_C2DE64: PopAdLdVar
  loc_C2DE65: LitVarI4
  loc_C2DE6D: PopAdLdVar
  loc_C2DE6E: LitI4 1
  loc_C2DE73: LitI4 1
  loc_C2DE78: LitVarStr var_1A8, "0.00"
  loc_C2DE7D: FStVarCopyObj var_174
  loc_C2DE80: FLdRfVar var_174
  loc_C2DE83: FLdRfVar var_EC
  loc_C2DE86: CStrVarTmp
  loc_C2DE87: FStStrNoPop var_178
  loc_C2DE8A: CR8Str
  loc_C2DE8C: FLdRfVar var_110
  loc_C2DE8F: CStrVarTmp
  loc_C2DE90: FStStrNoPop var_1DC
  loc_C2DE93: CR8Str
  loc_C2DE95: MulR8
  loc_C2DE96: CVarR8
  loc_C2DE9A: FLdRfVar var_198
  loc_C2DE9D: ImpAdCallFPR4  = Format(, )
  loc_C2DEA2: FLdRfVar var_198
  loc_C2DEA5: CStrVarTmp
  loc_C2DEA6: CVarStr var_1D8
  loc_C2DEA9: PopAdLdVar
  loc_C2DEAA: FLdPr Me
  loc_C2DEAD: VCallAd Control_ID_ServDifuFlex
  loc_C2DEB0: FStAdFunc var_224
  loc_C2DEB3: FLdPr var_224
  loc_C2DEB6: LateIdCallSt
  loc_C2DEBE: FFreeStr var_178 = ""
  loc_C2DEC5: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_154 = "": var_1E0 = ""
  loc_C2DED4: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = "": var_174 = "": var_1B8 = "": var_198 = ""
  loc_C2DEE9: Branch loc_C2E000
  loc_C2DEEC: FLdPr Me
  loc_C2DEEF: VCallAd Control_ID_ServDifuFlex
  loc_C2DEF2: FStAdFunc var_88
  loc_C2DEF5: FLdPr var_88
  loc_C2DEF8: LateIdLdVar var_98 DispID_10 0
  loc_C2DEFF: CI4Var
  loc_C2DF01: CVarI4
  loc_C2DF05: PopAdLdVar
  loc_C2DF06: LitVarI4
  loc_C2DF0E: PopAdLdVar
  loc_C2DF0F: FLdPr Me
  loc_C2DF12: VCallAd Control_ID_ServDifuFlex
  loc_C2DF15: FStAdFunc var_DC
  loc_C2DF18: FLdPr var_DC
  loc_C2DF1B: LateIdCallLdVar
  loc_C2DF25: PopAd
  loc_C2DF27: FLdPr Me
  loc_C2DF2A: VCallAd Control_ID_ServDifuFlex
  loc_C2DF2D: FStAdFunc var_100
  loc_C2DF30: FLdPr var_100
  loc_C2DF33: LateIdLdVar var_FC DispID_10 0
  loc_C2DF3A: CI4Var
  loc_C2DF3C: CVarI4
  loc_C2DF40: PopAdLdVar
  loc_C2DF41: LitVarI4
  loc_C2DF49: PopAdLdVar
  loc_C2DF4A: FLdPr Me
  loc_C2DF4D: VCallAd Control_ID_ServDifuFlex
  loc_C2DF50: FStAdFunc var_154
  loc_C2DF53: FLdPr var_154
  loc_C2DF56: LateIdCallLdVar
  loc_C2DF60: PopAd
  loc_C2DF62: FLdPr Me
  loc_C2DF65: VCallAd Control_ID_ServDifuFlex
  loc_C2DF68: FStAdFunc var_1E0
  loc_C2DF6B: FLdPr var_1E0
  loc_C2DF6E: LateIdLdVar var_1B8 DispID_10 0
  loc_C2DF75: CI4Var
  loc_C2DF77: CVarI4
  loc_C2DF7B: PopAdLdVar
  loc_C2DF7C: LitVarI4
  loc_C2DF84: PopAdLdVar
  loc_C2DF85: LitI4 1
  loc_C2DF8A: LitI4 1
  loc_C2DF8F: LitVarStr var_1A8, "0.00"
  loc_C2DF94: FStVarCopyObj var_174
  loc_C2DF97: FLdRfVar var_174
  loc_C2DF9A: FLdRfVar var_EC
  loc_C2DF9D: CStrVarTmp
  loc_C2DF9E: FStStrNoPop var_178
  loc_C2DFA1: CR8Str
  loc_C2DFA3: FLdRfVar var_110
  loc_C2DFA6: CStrVarTmp
  loc_C2DFA7: FStStrNoPop var_1DC
  loc_C2DFAA: CR8Str
  loc_C2DFAC: MulR8
  loc_C2DFAD: CVarR8
  loc_C2DFB1: FLdRfVar var_198
  loc_C2DFB4: ImpAdCallFPR4  = Format(, )
  loc_C2DFB9: FLdRfVar var_198
  loc_C2DFBC: CStrVarTmp
  loc_C2DFBD: CVarStr var_1D8
  loc_C2DFC0: PopAdLdVar
  loc_C2DFC1: FLdPr Me
  loc_C2DFC4: VCallAd Control_ID_ServDifuFlex
  loc_C2DFC7: FStAdFunc var_224
  loc_C2DFCA: FLdPr var_224
  loc_C2DFCD: LateIdCallSt
  loc_C2DFD5: FFreeStr var_178 = ""
  loc_C2DFDC: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_154 = "": var_1E0 = ""
  loc_C2DFEB: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = "": var_174 = "": var_1B8 = "": var_198 = ""
  loc_C2E000: Branch loc_C2E4D2
  loc_C2E003: FLdPr Me
  loc_C2E006: VCallAd Control_ID_ServDifuFlex
  loc_C2E009: FStAdFunc var_100
  loc_C2E00C: FLdPr var_100
  loc_C2E00F: LateIdLdVar var_FC DispID_10 0
  loc_C2E016: CI4Var
  loc_C2E018: CVarI4
  loc_C2E01C: PopAdLdVar
  loc_C2E01D: LitVarI4
  loc_C2E025: PopAdLdVar
  loc_C2E026: FLdPr Me
  loc_C2E029: VCallAd Control_ID_ServDifuFlex
  loc_C2E02C: FStAdFunc var_154
  loc_C2E02F: FLdPr var_154
  loc_C2E032: LateIdCallLdVar
  loc_C2E03C: PopAd
  loc_C2E03E: FLdPr Me
  loc_C2E041: VCallAd Control_ID_ServDifuFlex
  loc_C2E044: FStAdFunc var_88
  loc_C2E047: FLdPr var_88
  loc_C2E04A: LateIdLdVar var_98 DispID_10 0
  loc_C2E051: CI4Var
  loc_C2E053: CVarI4
  loc_C2E057: PopAdLdVar
  loc_C2E058: LitVarI4
  loc_C2E060: PopAdLdVar
  loc_C2E061: FLdPr Me
  loc_C2E064: VCallAd Control_ID_ServDifuFlex
  loc_C2E067: FStAdFunc var_DC
  loc_C2E06A: FLdPr var_DC
  loc_C2E06D: LateIdCallLdVar
  loc_C2E077: CStrVarTmp
  loc_C2E078: FStStrNoPop var_178
  loc_C2E07B: CI2Str
  loc_C2E07D: LitI2_Byte 0
  loc_C2E07F: NeI2
  loc_C2E080: CVarBoolI2 var_1C8
  loc_C2E084: LitVarI2 var_174, 9
  loc_C2E089: LitI4 1
  loc_C2E08E: FLdRfVar var_110
  loc_C2E091: CStrVarTmp
  loc_C2E092: CVarStr var_164
  loc_C2E095: FLdRfVar var_198
  loc_C2E098: ImpAdCallFPR4  = Mid(, , )
  loc_C2E09D: FLdRfVar var_198
  loc_C2E0A0: LitVarStr var_1A8, "CONCESION"
  loc_C2E0A5: HardType
  loc_C2E0A6: EqVar var_1B8
  loc_C2E0AA: AndVar var_1D8
  loc_C2E0AE: CBoolVarNull
  loc_C2E0B0: FFree1Str var_178
  loc_C2E0B3: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2E0BE: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = "": var_174 = "": var_198 = ""
  loc_C2E0D1: BranchF loc_C2E40F
  loc_C2E0D4: FLdPr Me
  loc_C2E0D7: VCallAd Control_ID_FefaDifuMsk
  loc_C2E0DA: FStAdFunc var_88
  loc_C2E0DD: FLdPr var_88
  loc_C2E0E0: LateIdLdVar var_98 DispID_15 0
  loc_C2E0E7: CStrVarTmp
  loc_C2E0E8: CVarStr var_EC
  loc_C2E0EB: FLdRfVar var_FC
  loc_C2E0EE: ImpAdCallFPR4  = Day()
  loc_C2E0F3: FLdRfVar var_FC
  loc_C2E0F6: LitVarI2 var_A8, 15
  loc_C2E0FB: HardType
  loc_C2E0FC: LeVarBool
  loc_C2E0FE: FFree1Ad var_88
  loc_C2E101: FFreeVar var_98 = "": var_EC = ""
  loc_C2E10A: BranchF loc_C2E15B
  loc_C2E10D: LitVarI2 var_A8, 12
  loc_C2E112: FLdPr Me
  loc_C2E115: VCallAd Control_ID_FefaDifuMsk
  loc_C2E118: FStAdFunc var_88
  loc_C2E11B: FLdPr var_88
  loc_C2E11E: LateIdLdVar var_98 DispID_15 0
  loc_C2E125: CStrVarTmp
  loc_C2E126: CVarStr var_EC
  loc_C2E129: FLdRfVar var_FC
  loc_C2E12C: ImpAdCallFPR4  = Month()
  loc_C2E131: FLdRfVar var_FC
  loc_C2E134: SubVar var_110
  loc_C2E138: LitVarI2 var_B8, 1
  loc_C2E13D: AddVar var_164
  loc_C2E141: CUI1Var
  loc_C2E143: FLdPr Me
  loc_C2E146: MemStUI1
  loc_C2E14A: FFree1Ad var_88
  loc_C2E14D: FFreeVar var_98 = "": var_EC = "": var_FC = ""
  loc_C2E158: Branch loc_C2E19B
  loc_C2E15B: LitVarI2 var_A8, 12
  loc_C2E160: FLdPr Me
  loc_C2E163: VCallAd Control_ID_FefaDifuMsk
  loc_C2E166: FStAdFunc var_88
  loc_C2E169: FLdPr var_88
  loc_C2E16C: LateIdLdVar var_98 DispID_15 0
  loc_C2E173: CStrVarTmp
  loc_C2E174: CVarStr var_EC
  loc_C2E177: FLdRfVar var_FC
  loc_C2E17A: ImpAdCallFPR4  = Month()
  loc_C2E17F: FLdRfVar var_FC
  loc_C2E182: SubVar var_110
  loc_C2E186: CUI1Var
  loc_C2E188: FLdPr Me
  loc_C2E18B: MemStUI1
  loc_C2E18F: FFree1Ad var_88
  loc_C2E192: FFreeVar var_98 = "": var_EC = ""
  loc_C2E19B: FLdPr Me
  loc_C2E19E: MemLdUI1 global_86
  loc_C2E1A2: CI2UI1
  loc_C2E1A4: LitI2_Byte 0
  loc_C2E1A6: GtI2
  loc_C2E1A7: BranchF loc_C2E349
  loc_C2E1AA: FLdPr Me
  loc_C2E1AD: VCallAd Control_ID_ServDifuFlex
  loc_C2E1B0: FStAdFunc var_88
  loc_C2E1B3: FLdPr var_88
  loc_C2E1B6: LateIdLdVar var_98 DispID_10 0
  loc_C2E1BD: CI4Var
  loc_C2E1BF: CVarI4
  loc_C2E1C3: PopAdLdVar
  loc_C2E1C4: LitVarI4
  loc_C2E1CC: PopAdLdVar
  loc_C2E1CD: FLdPr Me
  loc_C2E1D0: VCallAd Control_ID_ServDifuFlex
  loc_C2E1D3: FStAdFunc var_DC
  loc_C2E1D6: FLdPr var_DC
  loc_C2E1D9: LateIdCallLdVar
  loc_C2E1E3: PopAd
  loc_C2E1E5: FLdPr Me
  loc_C2E1E8: VCallAd Control_ID_ServDifuFlex
  loc_C2E1EB: FStAdFunc var_100
  loc_C2E1EE: FLdPr var_100
  loc_C2E1F1: LateIdLdVar var_FC DispID_10 0
  loc_C2E1F8: CI4Var
  loc_C2E1FA: CVarI4
  loc_C2E1FE: PopAdLdVar
  loc_C2E1FF: LitVarI4
  loc_C2E207: PopAdLdVar
  loc_C2E208: FLdPr Me
  loc_C2E20B: VCallAd Control_ID_ServDifuFlex
  loc_C2E20E: FStAdFunc var_154
  loc_C2E211: FLdPr var_154
  loc_C2E214: LateIdCallLdVar
  loc_C2E21E: PopAd
  loc_C2E220: LitI4 2
  loc_C2E225: FLdRfVar var_EC
  loc_C2E228: CStrVarTmp
  loc_C2E229: FStStrNoPop var_178
  loc_C2E22C: CR8Str
  loc_C2E22E: FLdRfVar var_110
  loc_C2E231: CStrVarTmp
  loc_C2E232: FStStrNoPop var_1DC
  loc_C2E235: CR8Str
  loc_C2E237: DivR8
  loc_C2E238: LitI2_Byte &HC
  loc_C2E23A: CR8I2
  loc_C2E23B: DivR8
  loc_C2E23C: CVarR8
  loc_C2E240: FLdRfVar var_174
  loc_C2E243: ImpAdCallFPR4  = Round(, )
  loc_C2E248: FLdRfVar var_174
  loc_C2E24B: CR4Var
  loc_C2E24C: FLdPr Me
  loc_C2E24F: MemStFPR8 global_88
  loc_C2E252: FFreeStr var_178 = ""
  loc_C2E259: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2E264: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_164 = ""
  loc_C2E273: FLdPr Me
  loc_C2E276: VCallAd Control_ID_ServDifuFlex
  loc_C2E279: FStAdFunc var_88
  loc_C2E27C: FLdPr var_88
  loc_C2E27F: LateIdLdVar var_98 DispID_10 0
  loc_C2E286: CI4Var
  loc_C2E288: CVarI4
  loc_C2E28C: PopAdLdVar
  loc_C2E28D: LitVarI4
  loc_C2E295: PopAdLdVar
  loc_C2E296: FLdPr Me
  loc_C2E299: VCallAd Control_ID_ServDifuFlex
  loc_C2E29C: FStAdFunc var_DC
  loc_C2E29F: FLdPr var_DC
  loc_C2E2A2: LateIdCallLdVar
  loc_C2E2AC: PopAd
  loc_C2E2AE: FLdPr Me
  loc_C2E2B1: VCallAd Control_ID_ServDifuFlex
  loc_C2E2B4: FStAdFunc var_100
  loc_C2E2B7: FLdPr var_100
  loc_C2E2BA: LateIdLdVar var_174 DispID_10 0
  loc_C2E2C1: CI4Var
  loc_C2E2C3: CVarI4
  loc_C2E2C7: PopAdLdVar
  loc_C2E2C8: LitVarI4
  loc_C2E2D0: PopAdLdVar
  loc_C2E2D1: LitI4 1
  loc_C2E2D6: LitI4 1
  loc_C2E2DB: LitVarStr var_130, "0.00"
  loc_C2E2E0: FStVarCopyObj var_110
  loc_C2E2E3: FLdRfVar var_110
  loc_C2E2E6: FLdRfVar var_EC
  loc_C2E2E9: CStrVarTmp
  loc_C2E2EA: FStStrNoPop var_178
  loc_C2E2ED: CR8Str
  loc_C2E2EF: FLdPr Me
  loc_C2E2F2: MemLdFPR8 global_88
  loc_C2E2F5: FLdPr Me
  loc_C2E2F8: MemLdUI1 global_86
  loc_C2E2FC: CR8I2
  loc_C2E2FD: MulR8
  loc_C2E2FE: AddR8
  loc_C2E2FF: CVarR8
  loc_C2E303: FLdRfVar var_164
  loc_C2E306: ImpAdCallFPR4  = Format(, )
  loc_C2E30B: FLdRfVar var_164
  loc_C2E30E: CStrVarTmp
  loc_C2E30F: CVarStr var_198
  loc_C2E312: PopAdLdVar
  loc_C2E313: FLdPr Me
  loc_C2E316: VCallAd Control_ID_ServDifuFlex
  loc_C2E319: FStAdFunc var_154
  loc_C2E31C: FLdPr var_154
  loc_C2E31F: LateIdCallSt
  loc_C2E327: FFree1Str var_178
  loc_C2E32A: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2E335: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_174 = "": var_164 = ""
  loc_C2E346: Branch loc_C2E40C
  loc_C2E349: FLdPr Me
  loc_C2E34C: VCallAd Control_ID_ServDifuFlex
  loc_C2E34F: FStAdFunc var_88
  loc_C2E352: FLdPr var_88
  loc_C2E355: LateIdLdVar var_98 DispID_10 0
  loc_C2E35C: CI4Var
  loc_C2E35E: CVarI4
  loc_C2E362: PopAdLdVar
  loc_C2E363: LitVarI4
  loc_C2E36B: PopAdLdVar
  loc_C2E36C: FLdPr Me
  loc_C2E36F: VCallAd Control_ID_ServDifuFlex
  loc_C2E372: FStAdFunc var_DC
  loc_C2E375: FLdPr var_DC
  loc_C2E378: LateIdCallLdVar
  loc_C2E382: PopAd
  loc_C2E384: FLdPr Me
  loc_C2E387: VCallAd Control_ID_ServDifuFlex
  loc_C2E38A: FStAdFunc var_100
  loc_C2E38D: FLdPr var_100
  loc_C2E390: LateIdLdVar var_174 DispID_10 0
  loc_C2E397: CI4Var
  loc_C2E399: CVarI4
  loc_C2E39D: PopAdLdVar
  loc_C2E39E: LitVarI4
  loc_C2E3A6: PopAdLdVar
  loc_C2E3A7: LitI4 1
  loc_C2E3AC: LitI4 1
  loc_C2E3B1: LitVarStr var_130, "0.00"
  loc_C2E3B6: FStVarCopyObj var_110
  loc_C2E3B9: FLdRfVar var_110
  loc_C2E3BC: FLdRfVar var_EC
  loc_C2E3BF: CStrVarTmp
  loc_C2E3C0: FStStrNoPop var_178
  loc_C2E3C3: CR8Str
  loc_C2E3C5: CVarR8
  loc_C2E3C9: FLdRfVar var_164
  loc_C2E3CC: ImpAdCallFPR4  = Format(, )
  loc_C2E3D1: FLdRfVar var_164
  loc_C2E3D4: CStrVarTmp
  loc_C2E3D5: CVarStr var_198
  loc_C2E3D8: PopAdLdVar
  loc_C2E3D9: FLdPr Me
  loc_C2E3DC: VCallAd Control_ID_ServDifuFlex
  loc_C2E3DF: FStAdFunc var_154
  loc_C2E3E2: FLdPr var_154
  loc_C2E3E5: LateIdCallSt
  loc_C2E3ED: FFree1Str var_178
  loc_C2E3F0: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2E3FB: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_174 = "": var_164 = ""
  loc_C2E40C: Branch loc_C2E4D2
  loc_C2E40F: FLdPr Me
  loc_C2E412: VCallAd Control_ID_ServDifuFlex
  loc_C2E415: FStAdFunc var_88
  loc_C2E418: FLdPr var_88
  loc_C2E41B: LateIdLdVar var_98 DispID_10 0
  loc_C2E422: CI4Var
  loc_C2E424: CVarI4
  loc_C2E428: PopAdLdVar
  loc_C2E429: LitVarI4
  loc_C2E431: PopAdLdVar
  loc_C2E432: FLdPr Me
  loc_C2E435: VCallAd Control_ID_ServDifuFlex
  loc_C2E438: FStAdFunc var_DC
  loc_C2E43B: FLdPr var_DC
  loc_C2E43E: LateIdCallLdVar
  loc_C2E448: PopAd
  loc_C2E44A: FLdPr Me
  loc_C2E44D: VCallAd Control_ID_ServDifuFlex
  loc_C2E450: FStAdFunc var_100
  loc_C2E453: FLdPr var_100
  loc_C2E456: LateIdLdVar var_174 DispID_10 0
  loc_C2E45D: CI4Var
  loc_C2E45F: CVarI4
  loc_C2E463: PopAdLdVar
  loc_C2E464: LitVarI4
  loc_C2E46C: PopAdLdVar
  loc_C2E46D: LitI4 1
  loc_C2E472: LitI4 1
  loc_C2E477: LitVarStr var_130, "0.00"
  loc_C2E47C: FStVarCopyObj var_110
  loc_C2E47F: FLdRfVar var_110
  loc_C2E482: FLdRfVar var_EC
  loc_C2E485: CStrVarTmp
  loc_C2E486: FStStrNoPop var_178
  loc_C2E489: CR8Str
  loc_C2E48B: CVarR8
  loc_C2E48F: FLdRfVar var_164
  loc_C2E492: ImpAdCallFPR4  = Format(, )
  loc_C2E497: FLdRfVar var_164
  loc_C2E49A: CStrVarTmp
  loc_C2E49B: CVarStr var_198
  loc_C2E49E: PopAdLdVar
  loc_C2E49F: FLdPr Me
  loc_C2E4A2: VCallAd Control_ID_ServDifuFlex
  loc_C2E4A5: FStAdFunc var_154
  loc_C2E4A8: FLdPr var_154
  loc_C2E4AB: LateIdCallSt
  loc_C2E4B3: FFree1Str var_178
  loc_C2E4B6: FFreeAd var_88 = "": var_DC = "": var_100 = ""
  loc_C2E4C1: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_110 = "": var_174 = "": var_164 = ""
  loc_C2E4D2: ExitProcHresult
End Function

Private Function Proc_259_57_C1970C(arg_C) 'C1970C
  'Data Table: 526984
  loc_C18CD0: ILdRf arg_C
  loc_C18CD3: FStStrCopy var_88
  loc_C18CD6: FLdRfVar var_88
  loc_C18CD9: CVarRef
  loc_C18CDE: FLdRfVar var_A8
  loc_C18CE1: ImpAdCallFPR4  = Ucase()
  loc_C18CE6: FLdRfVar var_A8
  loc_C18CE9: LitVarStr var_B8, "N"
  loc_C18CEE: HardType
  loc_C18CEF: EqVar var_C8
  loc_C18CF3: FLdRfVar var_88
  loc_C18CF6: CVarRef
  loc_C18CFB: FLdRfVar var_E8
  loc_C18CFE: ImpAdCallFPR4  = Ucase()
  loc_C18D03: FLdRfVar var_E8
  loc_C18D06: LitVarStr var_F8, "U"
  loc_C18D0B: HardType
  loc_C18D0C: EqVar var_108
  loc_C18D10: OrVar var_118
  loc_C18D14: CBoolVarNull
  loc_C18D16: FFreeVar var_A8 = ""
  loc_C18D1D: BranchF loc_C19059
  loc_C18D20: LitI2_Byte &HFF
  loc_C18D22: FLdPr Me
  loc_C18D25: VCallAd Control_ID_SeccDifuLbl
  loc_C18D28: FStAdFunc var_11C
  loc_C18D2B: FLdPr var_11C
  loc_C18D2E: Me.Visible = from_stack_1b
  loc_C18D33: FFree1Ad var_11C
  loc_C18D36: LitI2_Byte &HFF
  loc_C18D38: FLdPr Me
  loc_C18D3B: VCallAd Control_ID_SeccDifuTxt
  loc_C18D3E: FStAdFunc var_11C
  loc_C18D41: FLdPr var_11C
  loc_C18D44: Me.Visible = from_stack_1b
  loc_C18D49: FFree1Ad var_11C
  loc_C18D4C: LitI2_Byte &HFF
  loc_C18D4E: FLdPr Me
  loc_C18D51: VCallAd Control_ID_FilaDifuLbl
  loc_C18D54: FStAdFunc var_11C
  loc_C18D57: FLdPr var_11C
  loc_C18D5A: Me.Visible = from_stack_1b
  loc_C18D5F: FFree1Ad var_11C
  loc_C18D62: LitI2_Byte &HFF
  loc_C18D64: FLdPr Me
  loc_C18D67: VCallAd Control_ID_FilaDifuTxt
  loc_C18D6A: FStAdFunc var_11C
  loc_C18D6D: FLdPr var_11C
  loc_C18D70: Me.Visible = from_stack_1b
  loc_C18D75: FFree1Ad var_11C
  loc_C18D78: LitI2_Byte &HFF
  loc_C18D7A: FLdPr Me
  loc_C18D7D: VCallAd Control_ID_NumeDifuLbl
  loc_C18D80: FStAdFunc var_11C
  loc_C18D83: FLdPr var_11C
  loc_C18D86: Me.Visible = from_stack_1b
  loc_C18D8B: FFree1Ad var_11C
  loc_C18D8E: LitI2_Byte &HFF
  loc_C18D90: FLdPr Me
  loc_C18D93: VCallAd Control_ID_NumeDifuTxt
  loc_C18D96: FStAdFunc var_11C
  loc_C18D99: FLdPr var_11C
  loc_C18D9C: Me.Visible = from_stack_1b
  loc_C18DA1: FFree1Ad var_11C
  loc_C18DA4: LitStr "Galeria:"
  loc_C18DA7: FLdPr Me
  loc_C18DAA: VCallAd Control_ID_SeccDifuLbl
  loc_C18DAD: FStAdFunc var_11C
  loc_C18DB0: FLdPr var_11C
  loc_C18DB3: Me.Caption = from_stack_1
  loc_C18DB8: FFree1Ad var_11C
  loc_C18DBB: LitStr "Fila:"
  loc_C18DBE: FLdPr Me
  loc_C18DC1: VCallAd Control_ID_FilaDifuLbl
  loc_C18DC4: FStAdFunc var_11C
  loc_C18DC7: FLdPr var_11C
  loc_C18DCA: Me.Caption = from_stack_1
  loc_C18DCF: FFree1Ad var_11C
  loc_C18DD2: LitStr "Nicho:"
  loc_C18DD5: FLdPr Me
  loc_C18DD8: VCallAd Control_ID_NumeDifuLbl
  loc_C18DDB: FStAdFunc var_11C
  loc_C18DDE: FLdPr var_11C
  loc_C18DE1: Me.Caption = from_stack_1
  loc_C18DE6: FFree1Ad var_11C
  loc_C18DE9: LitI2 600
  loc_C18DEC: CR8I2
  loc_C18DED: PopFPR4
  loc_C18DEE: FLdPr Me
  loc_C18DF1: VCallAd Control_ID_SeccDifuLbl
  loc_C18DF4: FStAdFunc var_11C
  loc_C18DF7: FLdPr var_11C
  loc_C18DFA: Me.Top = from_stack_1s
  loc_C18DFF: FFree1Ad var_11C
  loc_C18E02: LitI2 600
  loc_C18E05: CR8I2
  loc_C18E06: PopFPR4
  loc_C18E07: FLdPr Me
  loc_C18E0A: VCallAd Control_ID_SeccDifuTxt
  loc_C18E0D: FStAdFunc var_11C
  loc_C18E10: FLdPr var_11C
  loc_C18E13: Me.Top = from_stack_1s
  loc_C18E18: FFree1Ad var_11C
  loc_C18E1B: LitI2 600
  loc_C18E1E: CR8I2
  loc_C18E1F: PopFPR4
  loc_C18E20: FLdPr Me
  loc_C18E23: VCallAd Control_ID_FilaDifuLbl
  loc_C18E26: FStAdFunc var_11C
  loc_C18E29: FLdPr var_11C
  loc_C18E2C: Me.Top = from_stack_1s
  loc_C18E31: FFree1Ad var_11C
  loc_C18E34: LitI2 600
  loc_C18E37: CR8I2
  loc_C18E38: PopFPR4
  loc_C18E39: FLdPr Me
  loc_C18E3C: VCallAd Control_ID_FilaDifuTxt
  loc_C18E3F: FStAdFunc var_11C
  loc_C18E42: FLdPr var_11C
  loc_C18E45: Me.Top = from_stack_1s
  loc_C18E4A: FFree1Ad var_11C
  loc_C18E4D: LitI2 600
  loc_C18E50: CR8I2
  loc_C18E51: PopFPR4
  loc_C18E52: FLdPr Me
  loc_C18E55: VCallAd Control_ID_NumeDifuLbl
  loc_C18E58: FStAdFunc var_11C
  loc_C18E5B: FLdPr var_11C
  loc_C18E5E: Me.Top = from_stack_1s
  loc_C18E63: FFree1Ad var_11C
  loc_C18E66: LitI2 600
  loc_C18E69: CR8I2
  loc_C18E6A: PopFPR4
  loc_C18E6B: FLdPr Me
  loc_C18E6E: VCallAd Control_ID_NumeDifuTxt
  loc_C18E71: FStAdFunc var_11C
  loc_C18E74: FLdPr var_11C
  loc_C18E77: Me.Top = from_stack_1s
  loc_C18E7C: FFree1Ad var_11C
  loc_C18E7F: LitI2 3260
  loc_C18E82: CR8I2
  loc_C18E83: PopFPR4
  loc_C18E84: FLdPr Me
  loc_C18E87: VCallAd Control_ID_SeccDifuLbl
  loc_C18E8A: FStAdFunc var_11C
  loc_C18E8D: FLdPr var_11C
  loc_C18E90: Me.Left = from_stack_1s
  loc_C18E95: FFree1Ad var_11C
  loc_C18E98: LitI2 4145
  loc_C18E9B: CR8I2
  loc_C18E9C: PopFPR4
  loc_C18E9D: FLdPr Me
  loc_C18EA0: VCallAd Control_ID_SeccDifuTxt
  loc_C18EA3: FStAdFunc var_11C
  loc_C18EA6: FLdPr var_11C
  loc_C18EA9: Me.Left = from_stack_1s
  loc_C18EAE: FFree1Ad var_11C
  loc_C18EB1: LitI2 4865
  loc_C18EB4: CR8I2
  loc_C18EB5: PopFPR4
  loc_C18EB6: FLdPr Me
  loc_C18EB9: VCallAd Control_ID_FilaDifuLbl
  loc_C18EBC: FStAdFunc var_11C
  loc_C18EBF: FLdPr var_11C
  loc_C18EC2: Me.Left = from_stack_1s
  loc_C18EC7: FFree1Ad var_11C
  loc_C18ECA: LitI2 5300
  loc_C18ECD: CR8I2
  loc_C18ECE: PopFPR4
  loc_C18ECF: FLdPr Me
  loc_C18ED2: VCallAd Control_ID_FilaDifuTxt
  loc_C18ED5: FStAdFunc var_11C
  loc_C18ED8: FLdPr var_11C
  loc_C18EDB: Me.Left = from_stack_1s
  loc_C18EE0: FFree1Ad var_11C
  loc_C18EE3: LitI2 6000
  loc_C18EE6: CR8I2
  loc_C18EE7: PopFPR4
  loc_C18EE8: FLdPr Me
  loc_C18EEB: VCallAd Control_ID_NumeDifuLbl
  loc_C18EEE: FStAdFunc var_11C
  loc_C18EF1: FLdPr var_11C
  loc_C18EF4: Me.Left = from_stack_1s
  loc_C18EF9: FFree1Ad var_11C
  loc_C18EFC: LitI2 6760
  loc_C18EFF: CR8I2
  loc_C18F00: PopFPR4
  loc_C18F01: FLdPr Me
  loc_C18F04: VCallAd Control_ID_NumeDifuTxt
  loc_C18F07: FStAdFunc var_11C
  loc_C18F0A: FLdPr var_11C
  loc_C18F0D: Me.Left = from_stack_1s
  loc_C18F12: FFree1Ad var_11C
  loc_C18F15: LitVarI2 var_98, 10
  loc_C18F1A: PopAdLdVar
  loc_C18F1B: FLdRfVar var_120
  loc_C18F1E: FLdPr Me
  loc_C18F21: VCallAd Control_ID_SeccDifuTxt
  loc_C18F24: FStAdFunc var_11C
  loc_C18F27: FLdPr var_11C
  loc_C18F2A:  = Me.Font
  loc_C18F2F: FLdPr var_120
  loc_C18F32: LateIdSt
  loc_C18F37: FFreeAd var_11C = ""
  loc_C18F3E: LitVarI2 var_98, 10
  loc_C18F43: PopAdLdVar
  loc_C18F44: FLdRfVar var_120
  loc_C18F47: FLdPr Me
  loc_C18F4A: VCallAd Control_ID_FilaDifuTxt
  loc_C18F4D: FStAdFunc var_11C
  loc_C18F50: FLdPr var_11C
  loc_C18F53:  = Me.Font
  loc_C18F58: FLdPr var_120
  loc_C18F5B: LateIdSt
  loc_C18F60: FFreeAd var_11C = ""
  loc_C18F67: LitVarI2 var_98, 10
  loc_C18F6C: PopAdLdVar
  loc_C18F6D: FLdRfVar var_120
  loc_C18F70: FLdPr Me
  loc_C18F73: VCallAd Control_ID_NumeDifuTxt
  loc_C18F76: FStAdFunc var_11C
  loc_C18F79: FLdPr var_11C
  loc_C18F7C:  = Me.Font
  loc_C18F81: FLdPr var_120
  loc_C18F84: LateIdSt
  loc_C18F89: FFreeAd var_11C = ""
  loc_C18F90: LitI2 360
  loc_C18F93: CR8I2
  loc_C18F94: PopFPR4
  loc_C18F95: FLdPr Me
  loc_C18F98: VCallAd Control_ID_SeccDifuTxt
  loc_C18F9B: FStAdFunc var_11C
  loc_C18F9E: FLdPr var_11C
  loc_C18FA1: Me.Height = from_stack_1s
  loc_C18FA6: FFree1Ad var_11C
  loc_C18FA9: LitI2 360
  loc_C18FAC: CR8I2
  loc_C18FAD: PopFPR4
  loc_C18FAE: FLdPr Me
  loc_C18FB1: VCallAd Control_ID_FilaDifuTxt
  loc_C18FB4: FStAdFunc var_11C
  loc_C18FB7: FLdPr var_11C
  loc_C18FBA: Me.Height = from_stack_1s
  loc_C18FBF: FFree1Ad var_11C
  loc_C18FC2: LitI2 360
  loc_C18FC5: CR8I2
  loc_C18FC6: PopFPR4
  loc_C18FC7: FLdPr Me
  loc_C18FCA: VCallAd Control_ID_NumeDifuTxt
  loc_C18FCD: FStAdFunc var_11C
  loc_C18FD0: FLdPr var_11C
  loc_C18FD3: Me.Height = from_stack_1s
  loc_C18FD8: FFree1Ad var_11C
  loc_C18FDB: LitVarI2 var_98, 12
  loc_C18FE0: PopAdLdVar
  loc_C18FE1: FLdRfVar var_120
  loc_C18FE4: FLdPr Me
  loc_C18FE7: VCallAd Control_ID_SeccDifuTxt
  loc_C18FEA: FStAdFunc var_11C
  loc_C18FED: FLdPr var_11C
  loc_C18FF0:  = Me.Font
  loc_C18FF5: FLdPr var_120
  loc_C18FF8: LateIdSt
  loc_C18FFD: FFreeAd var_11C = ""
  loc_C19004: LitVarI2 var_98, 12
  loc_C19009: PopAdLdVar
  loc_C1900A: FLdRfVar var_120
  loc_C1900D: FLdPr Me
  loc_C19010: VCallAd Control_ID_FilaDifuTxt
  loc_C19013: FStAdFunc var_11C
  loc_C19016: FLdPr var_11C
  loc_C19019:  = Me.Font
  loc_C1901E: FLdPr var_120
  loc_C19021: LateIdSt
  loc_C19026: FFreeAd var_11C = ""
  loc_C1902D: LitVarI2 var_98, 12
  loc_C19032: PopAdLdVar
  loc_C19033: FLdRfVar var_120
  loc_C19036: FLdPr Me
  loc_C19039: VCallAd Control_ID_NumeDifuTxt
  loc_C1903C: FStAdFunc var_11C
  loc_C1903F: FLdPr var_11C
  loc_C19042:  = Me.Font
  loc_C19047: FLdPr var_120
  loc_C1904A: LateIdSt
  loc_C1904F: FFreeAd var_11C = ""
  loc_C19056: Branch loc_C1970A
  loc_C19059: FLdRfVar var_88
  loc_C1905C: CVarRef
  loc_C19061: FLdRfVar var_A8
  loc_C19064: ImpAdCallFPR4  = Ucase()
  loc_C19069: FLdRfVar var_A8
  loc_C1906C: LitVarStr var_B8, "F"
  loc_C19071: HardType
  loc_C19072: EqVarBool
  loc_C19074: FFree1Var var_A8 = ""
  loc_C19077: BranchF loc_C193B3
  loc_C1907A: LitI2_Byte &HFF
  loc_C1907C: FLdPr Me
  loc_C1907F: VCallAd Control_ID_SeccDifuLbl
  loc_C19082: FStAdFunc var_11C
  loc_C19085: FLdPr var_11C
  loc_C19088: Me.Visible = from_stack_1b
  loc_C1908D: FFree1Ad var_11C
  loc_C19090: LitI2_Byte &HFF
  loc_C19092: FLdPr Me
  loc_C19095: VCallAd Control_ID_SeccDifuTxt
  loc_C19098: FStAdFunc var_11C
  loc_C1909B: FLdPr var_11C
  loc_C1909E: Me.Visible = from_stack_1b
  loc_C190A3: FFree1Ad var_11C
  loc_C190A6: LitI2_Byte 0
  loc_C190A8: FLdPr Me
  loc_C190AB: VCallAd Control_ID_FilaDifuLbl
  loc_C190AE: FStAdFunc var_11C
  loc_C190B1: FLdPr var_11C
  loc_C190B4: Me.Visible = from_stack_1b
  loc_C190B9: FFree1Ad var_11C
  loc_C190BC: LitI2_Byte 0
  loc_C190BE: FLdPr Me
  loc_C190C1: VCallAd Control_ID_FilaDifuTxt
  loc_C190C4: FStAdFunc var_11C
  loc_C190C7: FLdPr var_11C
  loc_C190CA: Me.Visible = from_stack_1b
  loc_C190CF: FFree1Ad var_11C
  loc_C190D2: LitI2_Byte &HFF
  loc_C190D4: FLdPr Me
  loc_C190D7: VCallAd Control_ID_NumeDifuLbl
  loc_C190DA: FStAdFunc var_11C
  loc_C190DD: FLdPr var_11C
  loc_C190E0: Me.Visible = from_stack_1b
  loc_C190E5: FFree1Ad var_11C
  loc_C190E8: LitI2_Byte &HFF
  loc_C190EA: FLdPr Me
  loc_C190ED: VCallAd Control_ID_NumeDifuTxt
  loc_C190F0: FStAdFunc var_11C
  loc_C190F3: FLdPr var_11C
  loc_C190F6: Me.Visible = from_stack_1b
  loc_C190FB: FFree1Ad var_11C
  loc_C190FE: LitStr "Cuadro:"
  loc_C19101: FLdPr Me
  loc_C19104: VCallAd Control_ID_SeccDifuLbl
  loc_C19107: FStAdFunc var_11C
  loc_C1910A: FLdPr var_11C
  loc_C1910D: Me.Caption = from_stack_1
  loc_C19112: FFree1Ad var_11C
  loc_C19115: LitStr vbNullString
  loc_C19118: FLdPr Me
  loc_C1911B: VCallAd Control_ID_FilaDifuLbl
  loc_C1911E: FStAdFunc var_11C
  loc_C19121: FLdPr var_11C
  loc_C19124: Me.Caption = from_stack_1
  loc_C19129: FFree1Ad var_11C
  loc_C1912C: LitStr "Fosa:"
  loc_C1912F: FLdPr Me
  loc_C19132: VCallAd Control_ID_NumeDifuLbl
  loc_C19135: FStAdFunc var_11C
  loc_C19138: FLdPr var_11C
  loc_C1913B: Me.Caption = from_stack_1
  loc_C19140: FFree1Ad var_11C
  loc_C19143: LitI2 600
  loc_C19146: CR8I2
  loc_C19147: PopFPR4
  loc_C19148: FLdPr Me
  loc_C1914B: VCallAd Control_ID_SeccDifuLbl
  loc_C1914E: FStAdFunc var_11C
  loc_C19151: FLdPr var_11C
  loc_C19154: Me.Top = from_stack_1s
  loc_C19159: FFree1Ad var_11C
  loc_C1915C: LitI2 600
  loc_C1915F: CR8I2
  loc_C19160: PopFPR4
  loc_C19161: FLdPr Me
  loc_C19164: VCallAd Control_ID_SeccDifuTxt
  loc_C19167: FStAdFunc var_11C
  loc_C1916A: FLdPr var_11C
  loc_C1916D: Me.Top = from_stack_1s
  loc_C19172: FFree1Ad var_11C
  loc_C19175: LitI2 600
  loc_C19178: CR8I2
  loc_C19179: PopFPR4
  loc_C1917A: FLdPr Me
  loc_C1917D: VCallAd Control_ID_FilaDifuLbl
  loc_C19180: FStAdFunc var_11C
  loc_C19183: FLdPr var_11C
  loc_C19186: Me.Top = from_stack_1s
  loc_C1918B: FFree1Ad var_11C
  loc_C1918E: LitI2 600
  loc_C19191: CR8I2
  loc_C19192: PopFPR4
  loc_C19193: FLdPr Me
  loc_C19196: VCallAd Control_ID_FilaDifuTxt
  loc_C19199: FStAdFunc var_11C
  loc_C1919C: FLdPr var_11C
  loc_C1919F: Me.Top = from_stack_1s
  loc_C191A4: FFree1Ad var_11C
  loc_C191A7: LitI2 600
  loc_C191AA: CR8I2
  loc_C191AB: PopFPR4
  loc_C191AC: FLdPr Me
  loc_C191AF: VCallAd Control_ID_NumeDifuLbl
  loc_C191B2: FStAdFunc var_11C
  loc_C191B5: FLdPr var_11C
  loc_C191B8: Me.Top = from_stack_1s
  loc_C191BD: FFree1Ad var_11C
  loc_C191C0: LitI2 600
  loc_C191C3: CR8I2
  loc_C191C4: PopFPR4
  loc_C191C5: FLdPr Me
  loc_C191C8: VCallAd Control_ID_NumeDifuTxt
  loc_C191CB: FStAdFunc var_11C
  loc_C191CE: FLdPr var_11C
  loc_C191D1: Me.Top = from_stack_1s
  loc_C191D6: FFree1Ad var_11C
  loc_C191D9: LitI2 3260
  loc_C191DC: CR8I2
  loc_C191DD: PopFPR4
  loc_C191DE: FLdPr Me
  loc_C191E1: VCallAd Control_ID_SeccDifuLbl
  loc_C191E4: FStAdFunc var_11C
  loc_C191E7: FLdPr var_11C
  loc_C191EA: Me.Left = from_stack_1s
  loc_C191EF: FFree1Ad var_11C
  loc_C191F2: LitI2 4145
  loc_C191F5: CR8I2
  loc_C191F6: PopFPR4
  loc_C191F7: FLdPr Me
  loc_C191FA: VCallAd Control_ID_SeccDifuTxt
  loc_C191FD: FStAdFunc var_11C
  loc_C19200: FLdPr var_11C
  loc_C19203: Me.Left = from_stack_1s
  loc_C19208: FFree1Ad var_11C
  loc_C1920B: LitI2 4765
  loc_C1920E: CR8I2
  loc_C1920F: PopFPR4
  loc_C19210: FLdPr Me
  loc_C19213: VCallAd Control_ID_FilaDifuLbl
  loc_C19216: FStAdFunc var_11C
  loc_C19219: FLdPr var_11C
  loc_C1921C: Me.Left = from_stack_1s
  loc_C19221: FFree1Ad var_11C
  loc_C19224: LitI2 5200
  loc_C19227: CR8I2
  loc_C19228: PopFPR4
  loc_C19229: FLdPr Me
  loc_C1922C: VCallAd Control_ID_FilaDifuTxt
  loc_C1922F: FStAdFunc var_11C
  loc_C19232: FLdPr var_11C
  loc_C19235: Me.Left = from_stack_1s
  loc_C1923A: FFree1Ad var_11C
  loc_C1923D: LitI2 4900
  loc_C19240: CR8I2
  loc_C19241: PopFPR4
  loc_C19242: FLdPr Me
  loc_C19245: VCallAd Control_ID_NumeDifuLbl
  loc_C19248: FStAdFunc var_11C
  loc_C1924B: FLdPr var_11C
  loc_C1924E: Me.Left = from_stack_1s
  loc_C19253: FFree1Ad var_11C
  loc_C19256: LitI2 5500
  loc_C19259: CR8I2
  loc_C1925A: PopFPR4
  loc_C1925B: FLdPr Me
  loc_C1925E: VCallAd Control_ID_NumeDifuTxt
  loc_C19261: FStAdFunc var_11C
  loc_C19264: FLdPr var_11C
  loc_C19267: Me.Left = from_stack_1s
  loc_C1926C: FFree1Ad var_11C
  loc_C1926F: LitVarI2 var_98, 10
  loc_C19274: PopAdLdVar
  loc_C19275: FLdRfVar var_120
  loc_C19278: FLdPr Me
  loc_C1927B: VCallAd Control_ID_SeccDifuTxt
  loc_C1927E: FStAdFunc var_11C
  loc_C19281: FLdPr var_11C
  loc_C19284:  = Me.Font
  loc_C19289: FLdPr var_120
  loc_C1928C: LateIdSt
  loc_C19291: FFreeAd var_11C = ""
  loc_C19298: LitVarI2 var_98, 10
  loc_C1929D: PopAdLdVar
  loc_C1929E: FLdRfVar var_120
  loc_C192A1: FLdPr Me
  loc_C192A4: VCallAd Control_ID_FilaDifuTxt
  loc_C192A7: FStAdFunc var_11C
  loc_C192AA: FLdPr var_11C
  loc_C192AD:  = Me.Font
  loc_C192B2: FLdPr var_120
  loc_C192B5: LateIdSt
  loc_C192BA: FFreeAd var_11C = ""
  loc_C192C1: LitVarI2 var_98, 10
  loc_C192C6: PopAdLdVar
  loc_C192C7: FLdRfVar var_120
  loc_C192CA: FLdPr Me
  loc_C192CD: VCallAd Control_ID_NumeDifuTxt
  loc_C192D0: FStAdFunc var_11C
  loc_C192D3: FLdPr var_11C
  loc_C192D6:  = Me.Font
  loc_C192DB: FLdPr var_120
  loc_C192DE: LateIdSt
  loc_C192E3: FFreeAd var_11C = ""
  loc_C192EA: LitI2 360
  loc_C192ED: CR8I2
  loc_C192EE: PopFPR4
  loc_C192EF: FLdPr Me
  loc_C192F2: VCallAd Control_ID_SeccDifuTxt
  loc_C192F5: FStAdFunc var_11C
  loc_C192F8: FLdPr var_11C
  loc_C192FB: Me.Height = from_stack_1s
  loc_C19300: FFree1Ad var_11C
  loc_C19303: LitI2 360
  loc_C19306: CR8I2
  loc_C19307: PopFPR4
  loc_C19308: FLdPr Me
  loc_C1930B: VCallAd Control_ID_FilaDifuTxt
  loc_C1930E: FStAdFunc var_11C
  loc_C19311: FLdPr var_11C
  loc_C19314: Me.Height = from_stack_1s
  loc_C19319: FFree1Ad var_11C
  loc_C1931C: LitI2 360
  loc_C1931F: CR8I2
  loc_C19320: PopFPR4
  loc_C19321: FLdPr Me
  loc_C19324: VCallAd Control_ID_NumeDifuTxt
  loc_C19327: FStAdFunc var_11C
  loc_C1932A: FLdPr var_11C
  loc_C1932D: Me.Height = from_stack_1s
  loc_C19332: FFree1Ad var_11C
  loc_C19335: LitVarI2 var_98, 12
  loc_C1933A: PopAdLdVar
  loc_C1933B: FLdRfVar var_120
  loc_C1933E: FLdPr Me
  loc_C19341: VCallAd Control_ID_SeccDifuTxt
  loc_C19344: FStAdFunc var_11C
  loc_C19347: FLdPr var_11C
  loc_C1934A:  = Me.Font
  loc_C1934F: FLdPr var_120
  loc_C19352: LateIdSt
  loc_C19357: FFreeAd var_11C = ""
  loc_C1935E: LitVarI2 var_98, 12
  loc_C19363: PopAdLdVar
  loc_C19364: FLdRfVar var_120
  loc_C19367: FLdPr Me
  loc_C1936A: VCallAd Control_ID_FilaDifuTxt
  loc_C1936D: FStAdFunc var_11C
  loc_C19370: FLdPr var_11C
  loc_C19373:  = Me.Font
  loc_C19378: FLdPr var_120
  loc_C1937B: LateIdSt
  loc_C19380: FFreeAd var_11C = ""
  loc_C19387: LitVarI2 var_98, 12
  loc_C1938C: PopAdLdVar
  loc_C1938D: FLdRfVar var_120
  loc_C19390: FLdPr Me
  loc_C19393: VCallAd Control_ID_NumeDifuTxt
  loc_C19396: FStAdFunc var_11C
  loc_C19399: FLdPr var_11C
  loc_C1939C:  = Me.Font
  loc_C193A1: FLdPr var_120
  loc_C193A4: LateIdSt
  loc_C193A9: FFreeAd var_11C = ""
  loc_C193B0: Branch loc_C1970A
  loc_C193B3: FLdRfVar var_88
  loc_C193B6: CVarRef
  loc_C193BB: FLdRfVar var_A8
  loc_C193BE: ImpAdCallFPR4  = Ucase()
  loc_C193C3: FLdRfVar var_A8
  loc_C193C6: LitVarStr var_B8, "M"
  loc_C193CB: HardType
  loc_C193CC: EqVarBool
  loc_C193CE: FFree1Var var_A8 = ""
  loc_C193D1: BranchF loc_C1970A
  loc_C193D4: LitI2_Byte &HFF
  loc_C193D6: FLdPr Me
  loc_C193D9: VCallAd Control_ID_SeccDifuLbl
  loc_C193DC: FStAdFunc var_11C
  loc_C193DF: FLdPr var_11C
  loc_C193E2: Me.Visible = from_stack_1b
  loc_C193E7: FFree1Ad var_11C
  loc_C193EA: LitI2_Byte &HFF
  loc_C193EC: FLdPr Me
  loc_C193EF: VCallAd Control_ID_SeccDifuTxt
  loc_C193F2: FStAdFunc var_11C
  loc_C193F5: FLdPr var_11C
  loc_C193F8: Me.Visible = from_stack_1b
  loc_C193FD: FFree1Ad var_11C
  loc_C19400: LitI2_Byte 0
  loc_C19402: FLdPr Me
  loc_C19405: VCallAd Control_ID_FilaDifuLbl
  loc_C19408: FStAdFunc var_11C
  loc_C1940B: FLdPr var_11C
  loc_C1940E: Me.Visible = from_stack_1b
  loc_C19413: FFree1Ad var_11C
  loc_C19416: LitI2_Byte 0
  loc_C19418: FLdPr Me
  loc_C1941B: VCallAd Control_ID_FilaDifuTxt
  loc_C1941E: FStAdFunc var_11C
  loc_C19421: FLdPr var_11C
  loc_C19424: Me.Visible = from_stack_1b
  loc_C19429: FFree1Ad var_11C
  loc_C1942C: LitI2_Byte &HFF
  loc_C1942E: FLdPr Me
  loc_C19431: VCallAd Control_ID_NumeDifuLbl
  loc_C19434: FStAdFunc var_11C
  loc_C19437: FLdPr var_11C
  loc_C1943A: Me.Visible = from_stack_1b
  loc_C1943F: FFree1Ad var_11C
  loc_C19442: LitI2_Byte &HFF
  loc_C19444: FLdPr Me
  loc_C19447: VCallAd Control_ID_NumeDifuTxt
  loc_C1944A: FStAdFunc var_11C
  loc_C1944D: FLdPr var_11C
  loc_C19450: Me.Visible = from_stack_1b
  loc_C19455: FFree1Ad var_11C
  loc_C19458: LitStr "Cuadro:"
  loc_C1945B: FLdPr Me
  loc_C1945E: VCallAd Control_ID_SeccDifuLbl
  loc_C19461: FStAdFunc var_11C
  loc_C19464: FLdPr var_11C
  loc_C19467: Me.Caption = from_stack_1
  loc_C1946C: FFree1Ad var_11C
  loc_C1946F: LitStr vbNullString
  loc_C19472: FLdPr Me
  loc_C19475: VCallAd Control_ID_FilaDifuLbl
  loc_C19478: FStAdFunc var_11C
  loc_C1947B: FLdPr var_11C
  loc_C1947E: Me.Caption = from_stack_1
  loc_C19483: FFree1Ad var_11C
  loc_C19486: LitStr "Numero:"
  loc_C19489: FLdPr Me
  loc_C1948C: VCallAd Control_ID_NumeDifuLbl
  loc_C1948F: FStAdFunc var_11C
  loc_C19492: FLdPr var_11C
  loc_C19495: Me.Caption = from_stack_1
  loc_C1949A: FFree1Ad var_11C
  loc_C1949D: LitI2 600
  loc_C194A0: CR8I2
  loc_C194A1: PopFPR4
  loc_C194A2: FLdPr Me
  loc_C194A5: VCallAd Control_ID_SeccDifuLbl
  loc_C194A8: FStAdFunc var_11C
  loc_C194AB: FLdPr var_11C
  loc_C194AE: Me.Top = from_stack_1s
  loc_C194B3: FFree1Ad var_11C
  loc_C194B6: LitI2 600
  loc_C194B9: CR8I2
  loc_C194BA: PopFPR4
  loc_C194BB: FLdPr Me
  loc_C194BE: VCallAd Control_ID_SeccDifuTxt
  loc_C194C1: FStAdFunc var_11C
  loc_C194C4: FLdPr var_11C
  loc_C194C7: Me.Top = from_stack_1s
  loc_C194CC: FFree1Ad var_11C
  loc_C194CF: LitI2 600
  loc_C194D2: CR8I2
  loc_C194D3: PopFPR4
  loc_C194D4: FLdPr Me
  loc_C194D7: VCallAd Control_ID_FilaDifuLbl
  loc_C194DA: FStAdFunc var_11C
  loc_C194DD: FLdPr var_11C
  loc_C194E0: Me.Top = from_stack_1s
  loc_C194E5: FFree1Ad var_11C
  loc_C194E8: LitI2 600
  loc_C194EB: CR8I2
  loc_C194EC: PopFPR4
  loc_C194ED: FLdPr Me
  loc_C194F0: VCallAd Control_ID_FilaDifuTxt
  loc_C194F3: FStAdFunc var_11C
  loc_C194F6: FLdPr var_11C
  loc_C194F9: Me.Top = from_stack_1s
  loc_C194FE: FFree1Ad var_11C
  loc_C19501: LitI2 600
  loc_C19504: CR8I2
  loc_C19505: PopFPR4
  loc_C19506: FLdPr Me
  loc_C19509: VCallAd Control_ID_NumeDifuLbl
  loc_C1950C: FStAdFunc var_11C
  loc_C1950F: FLdPr var_11C
  loc_C19512: Me.Top = from_stack_1s
  loc_C19517: FFree1Ad var_11C
  loc_C1951A: LitI2 600
  loc_C1951D: CR8I2
  loc_C1951E: PopFPR4
  loc_C1951F: FLdPr Me
  loc_C19522: VCallAd Control_ID_NumeDifuTxt
  loc_C19525: FStAdFunc var_11C
  loc_C19528: FLdPr var_11C
  loc_C1952B: Me.Top = from_stack_1s
  loc_C19530: FFree1Ad var_11C
  loc_C19533: LitI2 3260
  loc_C19536: CR8I2
  loc_C19537: PopFPR4
  loc_C19538: FLdPr Me
  loc_C1953B: VCallAd Control_ID_SeccDifuLbl
  loc_C1953E: FStAdFunc var_11C
  loc_C19541: FLdPr var_11C
  loc_C19544: Me.Left = from_stack_1s
  loc_C19549: FFree1Ad var_11C
  loc_C1954C: LitI2 4145
  loc_C1954F: CR8I2
  loc_C19550: PopFPR4
  loc_C19551: FLdPr Me
  loc_C19554: VCallAd Control_ID_SeccDifuTxt
  loc_C19557: FStAdFunc var_11C
  loc_C1955A: FLdPr var_11C
  loc_C1955D: Me.Left = from_stack_1s
  loc_C19562: FFree1Ad var_11C
  loc_C19565: LitI2 4765
  loc_C19568: CR8I2
  loc_C19569: PopFPR4
  loc_C1956A: FLdPr Me
  loc_C1956D: VCallAd Control_ID_FilaDifuLbl
  loc_C19570: FStAdFunc var_11C
  loc_C19573: FLdPr var_11C
  loc_C19576: Me.Left = from_stack_1s
  loc_C1957B: FFree1Ad var_11C
  loc_C1957E: LitI2 5200
  loc_C19581: CR8I2
  loc_C19582: PopFPR4
  loc_C19583: FLdPr Me
  loc_C19586: VCallAd Control_ID_FilaDifuTxt
  loc_C19589: FStAdFunc var_11C
  loc_C1958C: FLdPr var_11C
  loc_C1958F: Me.Left = from_stack_1s
  loc_C19594: FFree1Ad var_11C
  loc_C19597: LitI2 4900
  loc_C1959A: CR8I2
  loc_C1959B: PopFPR4
  loc_C1959C: FLdPr Me
  loc_C1959F: VCallAd Control_ID_NumeDifuLbl
  loc_C195A2: FStAdFunc var_11C
  loc_C195A5: FLdPr var_11C
  loc_C195A8: Me.Left = from_stack_1s
  loc_C195AD: FFree1Ad var_11C
  loc_C195B0: LitI2 5800
  loc_C195B3: CR8I2
  loc_C195B4: PopFPR4
  loc_C195B5: FLdPr Me
  loc_C195B8: VCallAd Control_ID_NumeDifuTxt
  loc_C195BB: FStAdFunc var_11C
  loc_C195BE: FLdPr var_11C
  loc_C195C1: Me.Left = from_stack_1s
  loc_C195C6: FFree1Ad var_11C
  loc_C195C9: LitVarI2 var_98, 10
  loc_C195CE: PopAdLdVar
  loc_C195CF: FLdRfVar var_120
  loc_C195D2: FLdPr Me
  loc_C195D5: VCallAd Control_ID_SeccDifuTxt
  loc_C195D8: FStAdFunc var_11C
  loc_C195DB: FLdPr var_11C
  loc_C195DE:  = Me.Font
  loc_C195E3: FLdPr var_120
  loc_C195E6: LateIdSt
  loc_C195EB: FFreeAd var_11C = ""
  loc_C195F2: LitVarI2 var_98, 10
  loc_C195F7: PopAdLdVar
  loc_C195F8: FLdRfVar var_120
  loc_C195FB: FLdPr Me
  loc_C195FE: VCallAd Control_ID_FilaDifuTxt
  loc_C19601: FStAdFunc var_11C
  loc_C19604: FLdPr var_11C
  loc_C19607:  = Me.Font
  loc_C1960C: FLdPr var_120
  loc_C1960F: LateIdSt
  loc_C19614: FFreeAd var_11C = ""
  loc_C1961B: LitVarI2 var_98, 10
  loc_C19620: PopAdLdVar
  loc_C19621: FLdRfVar var_120
  loc_C19624: FLdPr Me
  loc_C19627: VCallAd Control_ID_NumeDifuTxt
  loc_C1962A: FStAdFunc var_11C
  loc_C1962D: FLdPr var_11C
  loc_C19630:  = Me.Font
  loc_C19635: FLdPr var_120
  loc_C19638: LateIdSt
  loc_C1963D: FFreeAd var_11C = ""
  loc_C19644: LitI2 360
  loc_C19647: CR8I2
  loc_C19648: PopFPR4
  loc_C19649: FLdPr Me
  loc_C1964C: VCallAd Control_ID_SeccDifuTxt
  loc_C1964F: FStAdFunc var_11C
  loc_C19652: FLdPr var_11C
  loc_C19655: Me.Height = from_stack_1s
  loc_C1965A: FFree1Ad var_11C
  loc_C1965D: LitI2 360
  loc_C19660: CR8I2
  loc_C19661: PopFPR4
  loc_C19662: FLdPr Me
  loc_C19665: VCallAd Control_ID_FilaDifuTxt
  loc_C19668: FStAdFunc var_11C
  loc_C1966B: FLdPr var_11C
  loc_C1966E: Me.Height = from_stack_1s
  loc_C19673: FFree1Ad var_11C
  loc_C19676: LitI2 360
  loc_C19679: CR8I2
  loc_C1967A: PopFPR4
  loc_C1967B: FLdPr Me
  loc_C1967E: VCallAd Control_ID_NumeDifuTxt
  loc_C19681: FStAdFunc var_11C
  loc_C19684: FLdPr var_11C
  loc_C19687: Me.Height = from_stack_1s
  loc_C1968C: FFree1Ad var_11C
  loc_C1968F: LitVarI2 var_98, 12
  loc_C19694: PopAdLdVar
  loc_C19695: FLdRfVar var_120
  loc_C19698: FLdPr Me
  loc_C1969B: VCallAd Control_ID_SeccDifuTxt
  loc_C1969E: FStAdFunc var_11C
  loc_C196A1: FLdPr var_11C
  loc_C196A4:  = Me.Font
  loc_C196A9: FLdPr var_120
  loc_C196AC: LateIdSt
  loc_C196B1: FFreeAd var_11C = ""
  loc_C196B8: LitVarI2 var_98, 12
  loc_C196BD: PopAdLdVar
  loc_C196BE: FLdRfVar var_120
  loc_C196C1: FLdPr Me
  loc_C196C4: VCallAd Control_ID_FilaDifuTxt
  loc_C196C7: FStAdFunc var_11C
  loc_C196CA: FLdPr var_11C
  loc_C196CD:  = Me.Font
  loc_C196D2: FLdPr var_120
  loc_C196D5: LateIdSt
  loc_C196DA: FFreeAd var_11C = ""
  loc_C196E1: LitVarI2 var_98, 12
  loc_C196E6: PopAdLdVar
  loc_C196E7: FLdRfVar var_120
  loc_C196EA: FLdPr Me
  loc_C196ED: VCallAd Control_ID_NumeDifuTxt
  loc_C196F0: FStAdFunc var_11C
  loc_C196F3: FLdPr var_11C
  loc_C196F6:  = Me.Font
  loc_C196FB: FLdPr var_120
  loc_C196FE: LateIdSt
  loc_C19703: FFreeAd var_11C = ""
  loc_C1970A: ExitProcHresult
End Function

Private Function Proc_259_58_C1A198(arg_C) 'C1A198
  'Data Table: 526984
  loc_C1975C: ILdRf arg_C
  loc_C1975F: FStStrCopy var_88
  loc_C19762: FLdRfVar var_88
  loc_C19765: CVarRef
  loc_C1976A: FLdRfVar var_A8
  loc_C1976D: ImpAdCallFPR4  = Ucase()
  loc_C19772: FLdRfVar var_A8
  loc_C19775: LitVarStr var_B8, "N"
  loc_C1977A: HardType
  loc_C1977B: EqVar var_C8
  loc_C1977F: FLdRfVar var_88
  loc_C19782: CVarRef
  loc_C19787: FLdRfVar var_E8
  loc_C1978A: ImpAdCallFPR4  = Ucase()
  loc_C1978F: FLdRfVar var_E8
  loc_C19792: LitVarStr var_F8, "U"
  loc_C19797: HardType
  loc_C19798: EqVar var_108
  loc_C1979C: OrVar var_118
  loc_C197A0: CBoolVarNull
  loc_C197A2: FFreeVar var_A8 = ""
  loc_C197A9: BranchF loc_C19AE5
  loc_C197AC: LitI2_Byte &HFF
  loc_C197AE: FLdPr Me
  loc_C197B1: VCallAd Control_ID_SeccDifu2Lbl
  loc_C197B4: FStAdFunc var_11C
  loc_C197B7: FLdPr var_11C
  loc_C197BA: Me.Visible = from_stack_1b
  loc_C197BF: FFree1Ad var_11C
  loc_C197C2: LitI2_Byte &HFF
  loc_C197C4: FLdPr Me
  loc_C197C7: VCallAd Control_ID_SeccDifu2Txt
  loc_C197CA: FStAdFunc var_11C
  loc_C197CD: FLdPr var_11C
  loc_C197D0: Me.Visible = from_stack_1b
  loc_C197D5: FFree1Ad var_11C
  loc_C197D8: LitI2_Byte &HFF
  loc_C197DA: FLdPr Me
  loc_C197DD: VCallAd Control_ID_FilaDifu2Lbl
  loc_C197E0: FStAdFunc var_11C
  loc_C197E3: FLdPr var_11C
  loc_C197E6: Me.Visible = from_stack_1b
  loc_C197EB: FFree1Ad var_11C
  loc_C197EE: LitI2_Byte &HFF
  loc_C197F0: FLdPr Me
  loc_C197F3: VCallAd Control_ID_FilaDifu2Txt
  loc_C197F6: FStAdFunc var_11C
  loc_C197F9: FLdPr var_11C
  loc_C197FC: Me.Visible = from_stack_1b
  loc_C19801: FFree1Ad var_11C
  loc_C19804: LitI2_Byte &HFF
  loc_C19806: FLdPr Me
  loc_C19809: VCallAd Control_ID_NumeDifu2Lbl
  loc_C1980C: FStAdFunc var_11C
  loc_C1980F: FLdPr var_11C
  loc_C19812: Me.Visible = from_stack_1b
  loc_C19817: FFree1Ad var_11C
  loc_C1981A: LitI2_Byte &HFF
  loc_C1981C: FLdPr Me
  loc_C1981F: VCallAd Control_ID_NumeDifu2Txt
  loc_C19822: FStAdFunc var_11C
  loc_C19825: FLdPr var_11C
  loc_C19828: Me.Visible = from_stack_1b
  loc_C1982D: FFree1Ad var_11C
  loc_C19830: LitStr "Galeria:"
  loc_C19833: FLdPr Me
  loc_C19836: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19839: FStAdFunc var_11C
  loc_C1983C: FLdPr var_11C
  loc_C1983F: Me.Caption = from_stack_1
  loc_C19844: FFree1Ad var_11C
  loc_C19847: LitStr "Fila:"
  loc_C1984A: FLdPr Me
  loc_C1984D: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19850: FStAdFunc var_11C
  loc_C19853: FLdPr var_11C
  loc_C19856: Me.Caption = from_stack_1
  loc_C1985B: FFree1Ad var_11C
  loc_C1985E: LitStr "Nicho:"
  loc_C19861: FLdPr Me
  loc_C19864: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19867: FStAdFunc var_11C
  loc_C1986A: FLdPr var_11C
  loc_C1986D: Me.Caption = from_stack_1
  loc_C19872: FFree1Ad var_11C
  loc_C19875: LitI2 8160
  loc_C19878: CR8I2
  loc_C19879: PopFPR4
  loc_C1987A: FLdPr Me
  loc_C1987D: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19880: FStAdFunc var_11C
  loc_C19883: FLdPr var_11C
  loc_C19886: Me.Top = from_stack_1s
  loc_C1988B: FFree1Ad var_11C
  loc_C1988E: LitI2 8160
  loc_C19891: CR8I2
  loc_C19892: PopFPR4
  loc_C19893: FLdPr Me
  loc_C19896: VCallAd Control_ID_SeccDifu2Txt
  loc_C19899: FStAdFunc var_11C
  loc_C1989C: FLdPr var_11C
  loc_C1989F: Me.Top = from_stack_1s
  loc_C198A4: FFree1Ad var_11C
  loc_C198A7: LitI2 8160
  loc_C198AA: CR8I2
  loc_C198AB: PopFPR4
  loc_C198AC: FLdPr Me
  loc_C198AF: VCallAd Control_ID_FilaDifu2Lbl
  loc_C198B2: FStAdFunc var_11C
  loc_C198B5: FLdPr var_11C
  loc_C198B8: Me.Top = from_stack_1s
  loc_C198BD: FFree1Ad var_11C
  loc_C198C0: LitI2 8160
  loc_C198C3: CR8I2
  loc_C198C4: PopFPR4
  loc_C198C5: FLdPr Me
  loc_C198C8: VCallAd Control_ID_FilaDifu2Txt
  loc_C198CB: FStAdFunc var_11C
  loc_C198CE: FLdPr var_11C
  loc_C198D1: Me.Top = from_stack_1s
  loc_C198D6: FFree1Ad var_11C
  loc_C198D9: LitI2 8160
  loc_C198DC: CR8I2
  loc_C198DD: PopFPR4
  loc_C198DE: FLdPr Me
  loc_C198E1: VCallAd Control_ID_NumeDifu2Lbl
  loc_C198E4: FStAdFunc var_11C
  loc_C198E7: FLdPr var_11C
  loc_C198EA: Me.Top = from_stack_1s
  loc_C198EF: FFree1Ad var_11C
  loc_C198F2: LitI2 8160
  loc_C198F5: CR8I2
  loc_C198F6: PopFPR4
  loc_C198F7: FLdPr Me
  loc_C198FA: VCallAd Control_ID_NumeDifu2Txt
  loc_C198FD: FStAdFunc var_11C
  loc_C19900: FLdPr var_11C
  loc_C19903: Me.Top = from_stack_1s
  loc_C19908: FFree1Ad var_11C
  loc_C1990B: LitI2 3460
  loc_C1990E: CR8I2
  loc_C1990F: PopFPR4
  loc_C19910: FLdPr Me
  loc_C19913: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19916: FStAdFunc var_11C
  loc_C19919: FLdPr var_11C
  loc_C1991C: Me.Left = from_stack_1s
  loc_C19921: FFree1Ad var_11C
  loc_C19924: LitI2 4345
  loc_C19927: CR8I2
  loc_C19928: PopFPR4
  loc_C19929: FLdPr Me
  loc_C1992C: VCallAd Control_ID_SeccDifu2Txt
  loc_C1992F: FStAdFunc var_11C
  loc_C19932: FLdPr var_11C
  loc_C19935: Me.Left = from_stack_1s
  loc_C1993A: FFree1Ad var_11C
  loc_C1993D: LitI2 5065
  loc_C19940: CR8I2
  loc_C19941: PopFPR4
  loc_C19942: FLdPr Me
  loc_C19945: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19948: FStAdFunc var_11C
  loc_C1994B: FLdPr var_11C
  loc_C1994E: Me.Left = from_stack_1s
  loc_C19953: FFree1Ad var_11C
  loc_C19956: LitI2 5600
  loc_C19959: CR8I2
  loc_C1995A: PopFPR4
  loc_C1995B: FLdPr Me
  loc_C1995E: VCallAd Control_ID_FilaDifu2Txt
  loc_C19961: FStAdFunc var_11C
  loc_C19964: FLdPr var_11C
  loc_C19967: Me.Left = from_stack_1s
  loc_C1996C: FFree1Ad var_11C
  loc_C1996F: LitI2 6200
  loc_C19972: CR8I2
  loc_C19973: PopFPR4
  loc_C19974: FLdPr Me
  loc_C19977: VCallAd Control_ID_NumeDifu2Lbl
  loc_C1997A: FStAdFunc var_11C
  loc_C1997D: FLdPr var_11C
  loc_C19980: Me.Left = from_stack_1s
  loc_C19985: FFree1Ad var_11C
  loc_C19988: LitI2 6960
  loc_C1998B: CR8I2
  loc_C1998C: PopFPR4
  loc_C1998D: FLdPr Me
  loc_C19990: VCallAd Control_ID_NumeDifu2Txt
  loc_C19993: FStAdFunc var_11C
  loc_C19996: FLdPr var_11C
  loc_C19999: Me.Left = from_stack_1s
  loc_C1999E: FFree1Ad var_11C
  loc_C199A1: LitVarI2 var_98, 10
  loc_C199A6: PopAdLdVar
  loc_C199A7: FLdRfVar var_120
  loc_C199AA: FLdPr Me
  loc_C199AD: VCallAd Control_ID_SeccDifu2Txt
  loc_C199B0: FStAdFunc var_11C
  loc_C199B3: FLdPr var_11C
  loc_C199B6:  = Me.Font
  loc_C199BB: FLdPr var_120
  loc_C199BE: LateIdSt
  loc_C199C3: FFreeAd var_11C = ""
  loc_C199CA: LitVarI2 var_98, 10
  loc_C199CF: PopAdLdVar
  loc_C199D0: FLdRfVar var_120
  loc_C199D3: FLdPr Me
  loc_C199D6: VCallAd Control_ID_FilaDifu2Txt
  loc_C199D9: FStAdFunc var_11C
  loc_C199DC: FLdPr var_11C
  loc_C199DF:  = Me.Font
  loc_C199E4: FLdPr var_120
  loc_C199E7: LateIdSt
  loc_C199EC: FFreeAd var_11C = ""
  loc_C199F3: LitVarI2 var_98, 10
  loc_C199F8: PopAdLdVar
  loc_C199F9: FLdRfVar var_120
  loc_C199FC: FLdPr Me
  loc_C199FF: VCallAd Control_ID_NumeDifu2Txt
  loc_C19A02: FStAdFunc var_11C
  loc_C19A05: FLdPr var_11C
  loc_C19A08:  = Me.Font
  loc_C19A0D: FLdPr var_120
  loc_C19A10: LateIdSt
  loc_C19A15: FFreeAd var_11C = ""
  loc_C19A1C: LitI2 360
  loc_C19A1F: CR8I2
  loc_C19A20: PopFPR4
  loc_C19A21: FLdPr Me
  loc_C19A24: VCallAd Control_ID_SeccDifu2Txt
  loc_C19A27: FStAdFunc var_11C
  loc_C19A2A: FLdPr var_11C
  loc_C19A2D: Me.Height = from_stack_1s
  loc_C19A32: FFree1Ad var_11C
  loc_C19A35: LitI2 360
  loc_C19A38: CR8I2
  loc_C19A39: PopFPR4
  loc_C19A3A: FLdPr Me
  loc_C19A3D: VCallAd Control_ID_FilaDifu2Txt
  loc_C19A40: FStAdFunc var_11C
  loc_C19A43: FLdPr var_11C
  loc_C19A46: Me.Height = from_stack_1s
  loc_C19A4B: FFree1Ad var_11C
  loc_C19A4E: LitI2 360
  loc_C19A51: CR8I2
  loc_C19A52: PopFPR4
  loc_C19A53: FLdPr Me
  loc_C19A56: VCallAd Control_ID_NumeDifu2Txt
  loc_C19A59: FStAdFunc var_11C
  loc_C19A5C: FLdPr var_11C
  loc_C19A5F: Me.Height = from_stack_1s
  loc_C19A64: FFree1Ad var_11C
  loc_C19A67: LitVarI2 var_98, 12
  loc_C19A6C: PopAdLdVar
  loc_C19A6D: FLdRfVar var_120
  loc_C19A70: FLdPr Me
  loc_C19A73: VCallAd Control_ID_SeccDifu2Txt
  loc_C19A76: FStAdFunc var_11C
  loc_C19A79: FLdPr var_11C
  loc_C19A7C:  = Me.Font
  loc_C19A81: FLdPr var_120
  loc_C19A84: LateIdSt
  loc_C19A89: FFreeAd var_11C = ""
  loc_C19A90: LitVarI2 var_98, 12
  loc_C19A95: PopAdLdVar
  loc_C19A96: FLdRfVar var_120
  loc_C19A99: FLdPr Me
  loc_C19A9C: VCallAd Control_ID_FilaDifu2Txt
  loc_C19A9F: FStAdFunc var_11C
  loc_C19AA2: FLdPr var_11C
  loc_C19AA5:  = Me.Font
  loc_C19AAA: FLdPr var_120
  loc_C19AAD: LateIdSt
  loc_C19AB2: FFreeAd var_11C = ""
  loc_C19AB9: LitVarI2 var_98, 12
  loc_C19ABE: PopAdLdVar
  loc_C19ABF: FLdRfVar var_120
  loc_C19AC2: FLdPr Me
  loc_C19AC5: VCallAd Control_ID_NumeDifu2Txt
  loc_C19AC8: FStAdFunc var_11C
  loc_C19ACB: FLdPr var_11C
  loc_C19ACE:  = Me.Font
  loc_C19AD3: FLdPr var_120
  loc_C19AD6: LateIdSt
  loc_C19ADB: FFreeAd var_11C = ""
  loc_C19AE2: Branch loc_C1A196
  loc_C19AE5: FLdRfVar var_88
  loc_C19AE8: CVarRef
  loc_C19AED: FLdRfVar var_A8
  loc_C19AF0: ImpAdCallFPR4  = Ucase()
  loc_C19AF5: FLdRfVar var_A8
  loc_C19AF8: LitVarStr var_B8, "F"
  loc_C19AFD: HardType
  loc_C19AFE: EqVarBool
  loc_C19B00: FFree1Var var_A8 = ""
  loc_C19B03: BranchF loc_C19E3F
  loc_C19B06: LitI2_Byte &HFF
  loc_C19B08: FLdPr Me
  loc_C19B0B: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19B0E: FStAdFunc var_11C
  loc_C19B11: FLdPr var_11C
  loc_C19B14: Me.Visible = from_stack_1b
  loc_C19B19: FFree1Ad var_11C
  loc_C19B1C: LitI2_Byte &HFF
  loc_C19B1E: FLdPr Me
  loc_C19B21: VCallAd Control_ID_SeccDifu2Txt
  loc_C19B24: FStAdFunc var_11C
  loc_C19B27: FLdPr var_11C
  loc_C19B2A: Me.Visible = from_stack_1b
  loc_C19B2F: FFree1Ad var_11C
  loc_C19B32: LitI2_Byte 0
  loc_C19B34: FLdPr Me
  loc_C19B37: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19B3A: FStAdFunc var_11C
  loc_C19B3D: FLdPr var_11C
  loc_C19B40: Me.Visible = from_stack_1b
  loc_C19B45: FFree1Ad var_11C
  loc_C19B48: LitI2_Byte 0
  loc_C19B4A: FLdPr Me
  loc_C19B4D: VCallAd Control_ID_FilaDifu2Txt
  loc_C19B50: FStAdFunc var_11C
  loc_C19B53: FLdPr var_11C
  loc_C19B56: Me.Visible = from_stack_1b
  loc_C19B5B: FFree1Ad var_11C
  loc_C19B5E: LitI2_Byte &HFF
  loc_C19B60: FLdPr Me
  loc_C19B63: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19B66: FStAdFunc var_11C
  loc_C19B69: FLdPr var_11C
  loc_C19B6C: Me.Visible = from_stack_1b
  loc_C19B71: FFree1Ad var_11C
  loc_C19B74: LitI2_Byte &HFF
  loc_C19B76: FLdPr Me
  loc_C19B79: VCallAd Control_ID_NumeDifu2Txt
  loc_C19B7C: FStAdFunc var_11C
  loc_C19B7F: FLdPr var_11C
  loc_C19B82: Me.Visible = from_stack_1b
  loc_C19B87: FFree1Ad var_11C
  loc_C19B8A: LitStr "Cuadro:"
  loc_C19B8D: FLdPr Me
  loc_C19B90: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19B93: FStAdFunc var_11C
  loc_C19B96: FLdPr var_11C
  loc_C19B99: Me.Caption = from_stack_1
  loc_C19B9E: FFree1Ad var_11C
  loc_C19BA1: LitStr vbNullString
  loc_C19BA4: FLdPr Me
  loc_C19BA7: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19BAA: FStAdFunc var_11C
  loc_C19BAD: FLdPr var_11C
  loc_C19BB0: Me.Caption = from_stack_1
  loc_C19BB5: FFree1Ad var_11C
  loc_C19BB8: LitStr "Fosa:"
  loc_C19BBB: FLdPr Me
  loc_C19BBE: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19BC1: FStAdFunc var_11C
  loc_C19BC4: FLdPr var_11C
  loc_C19BC7: Me.Caption = from_stack_1
  loc_C19BCC: FFree1Ad var_11C
  loc_C19BCF: LitI2 8160
  loc_C19BD2: CR8I2
  loc_C19BD3: PopFPR4
  loc_C19BD4: FLdPr Me
  loc_C19BD7: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19BDA: FStAdFunc var_11C
  loc_C19BDD: FLdPr var_11C
  loc_C19BE0: Me.Top = from_stack_1s
  loc_C19BE5: FFree1Ad var_11C
  loc_C19BE8: LitI2 8160
  loc_C19BEB: CR8I2
  loc_C19BEC: PopFPR4
  loc_C19BED: FLdPr Me
  loc_C19BF0: VCallAd Control_ID_SeccDifu2Txt
  loc_C19BF3: FStAdFunc var_11C
  loc_C19BF6: FLdPr var_11C
  loc_C19BF9: Me.Top = from_stack_1s
  loc_C19BFE: FFree1Ad var_11C
  loc_C19C01: LitI2 8160
  loc_C19C04: CR8I2
  loc_C19C05: PopFPR4
  loc_C19C06: FLdPr Me
  loc_C19C09: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19C0C: FStAdFunc var_11C
  loc_C19C0F: FLdPr var_11C
  loc_C19C12: Me.Top = from_stack_1s
  loc_C19C17: FFree1Ad var_11C
  loc_C19C1A: LitI2 8160
  loc_C19C1D: CR8I2
  loc_C19C1E: PopFPR4
  loc_C19C1F: FLdPr Me
  loc_C19C22: VCallAd Control_ID_FilaDifu2Txt
  loc_C19C25: FStAdFunc var_11C
  loc_C19C28: FLdPr var_11C
  loc_C19C2B: Me.Top = from_stack_1s
  loc_C19C30: FFree1Ad var_11C
  loc_C19C33: LitI2 8160
  loc_C19C36: CR8I2
  loc_C19C37: PopFPR4
  loc_C19C38: FLdPr Me
  loc_C19C3B: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19C3E: FStAdFunc var_11C
  loc_C19C41: FLdPr var_11C
  loc_C19C44: Me.Top = from_stack_1s
  loc_C19C49: FFree1Ad var_11C
  loc_C19C4C: LitI2 8160
  loc_C19C4F: CR8I2
  loc_C19C50: PopFPR4
  loc_C19C51: FLdPr Me
  loc_C19C54: VCallAd Control_ID_NumeDifu2Txt
  loc_C19C57: FStAdFunc var_11C
  loc_C19C5A: FLdPr var_11C
  loc_C19C5D: Me.Top = from_stack_1s
  loc_C19C62: FFree1Ad var_11C
  loc_C19C65: LitI2 3460
  loc_C19C68: CR8I2
  loc_C19C69: PopFPR4
  loc_C19C6A: FLdPr Me
  loc_C19C6D: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19C70: FStAdFunc var_11C
  loc_C19C73: FLdPr var_11C
  loc_C19C76: Me.Left = from_stack_1s
  loc_C19C7B: FFree1Ad var_11C
  loc_C19C7E: LitI2 4345
  loc_C19C81: CR8I2
  loc_C19C82: PopFPR4
  loc_C19C83: FLdPr Me
  loc_C19C86: VCallAd Control_ID_SeccDifu2Txt
  loc_C19C89: FStAdFunc var_11C
  loc_C19C8C: FLdPr var_11C
  loc_C19C8F: Me.Left = from_stack_1s
  loc_C19C94: FFree1Ad var_11C
  loc_C19C97: LitI2 4965
  loc_C19C9A: CR8I2
  loc_C19C9B: PopFPR4
  loc_C19C9C: FLdPr Me
  loc_C19C9F: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19CA2: FStAdFunc var_11C
  loc_C19CA5: FLdPr var_11C
  loc_C19CA8: Me.Left = from_stack_1s
  loc_C19CAD: FFree1Ad var_11C
  loc_C19CB0: LitI2 5500
  loc_C19CB3: CR8I2
  loc_C19CB4: PopFPR4
  loc_C19CB5: FLdPr Me
  loc_C19CB8: VCallAd Control_ID_FilaDifu2Txt
  loc_C19CBB: FStAdFunc var_11C
  loc_C19CBE: FLdPr var_11C
  loc_C19CC1: Me.Left = from_stack_1s
  loc_C19CC6: FFree1Ad var_11C
  loc_C19CC9: LitI2 5100
  loc_C19CCC: CR8I2
  loc_C19CCD: PopFPR4
  loc_C19CCE: FLdPr Me
  loc_C19CD1: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19CD4: FStAdFunc var_11C
  loc_C19CD7: FLdPr var_11C
  loc_C19CDA: Me.Left = from_stack_1s
  loc_C19CDF: FFree1Ad var_11C
  loc_C19CE2: LitI2 5700
  loc_C19CE5: CR8I2
  loc_C19CE6: PopFPR4
  loc_C19CE7: FLdPr Me
  loc_C19CEA: VCallAd Control_ID_NumeDifu2Txt
  loc_C19CED: FStAdFunc var_11C
  loc_C19CF0: FLdPr var_11C
  loc_C19CF3: Me.Left = from_stack_1s
  loc_C19CF8: FFree1Ad var_11C
  loc_C19CFB: LitVarI2 var_98, 10
  loc_C19D00: PopAdLdVar
  loc_C19D01: FLdRfVar var_120
  loc_C19D04: FLdPr Me
  loc_C19D07: VCallAd Control_ID_SeccDifu2Txt
  loc_C19D0A: FStAdFunc var_11C
  loc_C19D0D: FLdPr var_11C
  loc_C19D10:  = Me.Font
  loc_C19D15: FLdPr var_120
  loc_C19D18: LateIdSt
  loc_C19D1D: FFreeAd var_11C = ""
  loc_C19D24: LitVarI2 var_98, 10
  loc_C19D29: PopAdLdVar
  loc_C19D2A: FLdRfVar var_120
  loc_C19D2D: FLdPr Me
  loc_C19D30: VCallAd Control_ID_FilaDifu2Txt
  loc_C19D33: FStAdFunc var_11C
  loc_C19D36: FLdPr var_11C
  loc_C19D39:  = Me.Font
  loc_C19D3E: FLdPr var_120
  loc_C19D41: LateIdSt
  loc_C19D46: FFreeAd var_11C = ""
  loc_C19D4D: LitVarI2 var_98, 10
  loc_C19D52: PopAdLdVar
  loc_C19D53: FLdRfVar var_120
  loc_C19D56: FLdPr Me
  loc_C19D59: VCallAd Control_ID_NumeDifu2Txt
  loc_C19D5C: FStAdFunc var_11C
  loc_C19D5F: FLdPr var_11C
  loc_C19D62:  = Me.Font
  loc_C19D67: FLdPr var_120
  loc_C19D6A: LateIdSt
  loc_C19D6F: FFreeAd var_11C = ""
  loc_C19D76: LitI2 360
  loc_C19D79: CR8I2
  loc_C19D7A: PopFPR4
  loc_C19D7B: FLdPr Me
  loc_C19D7E: VCallAd Control_ID_SeccDifu2Txt
  loc_C19D81: FStAdFunc var_11C
  loc_C19D84: FLdPr var_11C
  loc_C19D87: Me.Height = from_stack_1s
  loc_C19D8C: FFree1Ad var_11C
  loc_C19D8F: LitI2 360
  loc_C19D92: CR8I2
  loc_C19D93: PopFPR4
  loc_C19D94: FLdPr Me
  loc_C19D97: VCallAd Control_ID_FilaDifu2Txt
  loc_C19D9A: FStAdFunc var_11C
  loc_C19D9D: FLdPr var_11C
  loc_C19DA0: Me.Height = from_stack_1s
  loc_C19DA5: FFree1Ad var_11C
  loc_C19DA8: LitI2 360
  loc_C19DAB: CR8I2
  loc_C19DAC: PopFPR4
  loc_C19DAD: FLdPr Me
  loc_C19DB0: VCallAd Control_ID_NumeDifu2Txt
  loc_C19DB3: FStAdFunc var_11C
  loc_C19DB6: FLdPr var_11C
  loc_C19DB9: Me.Height = from_stack_1s
  loc_C19DBE: FFree1Ad var_11C
  loc_C19DC1: LitVarI2 var_98, 12
  loc_C19DC6: PopAdLdVar
  loc_C19DC7: FLdRfVar var_120
  loc_C19DCA: FLdPr Me
  loc_C19DCD: VCallAd Control_ID_SeccDifu2Txt
  loc_C19DD0: FStAdFunc var_11C
  loc_C19DD3: FLdPr var_11C
  loc_C19DD6:  = Me.Font
  loc_C19DDB: FLdPr var_120
  loc_C19DDE: LateIdSt
  loc_C19DE3: FFreeAd var_11C = ""
  loc_C19DEA: LitVarI2 var_98, 12
  loc_C19DEF: PopAdLdVar
  loc_C19DF0: FLdRfVar var_120
  loc_C19DF3: FLdPr Me
  loc_C19DF6: VCallAd Control_ID_FilaDifu2Txt
  loc_C19DF9: FStAdFunc var_11C
  loc_C19DFC: FLdPr var_11C
  loc_C19DFF:  = Me.Font
  loc_C19E04: FLdPr var_120
  loc_C19E07: LateIdSt
  loc_C19E0C: FFreeAd var_11C = ""
  loc_C19E13: LitVarI2 var_98, 12
  loc_C19E18: PopAdLdVar
  loc_C19E19: FLdRfVar var_120
  loc_C19E1C: FLdPr Me
  loc_C19E1F: VCallAd Control_ID_NumeDifu2Txt
  loc_C19E22: FStAdFunc var_11C
  loc_C19E25: FLdPr var_11C
  loc_C19E28:  = Me.Font
  loc_C19E2D: FLdPr var_120
  loc_C19E30: LateIdSt
  loc_C19E35: FFreeAd var_11C = ""
  loc_C19E3C: Branch loc_C1A196
  loc_C19E3F: FLdRfVar var_88
  loc_C19E42: CVarRef
  loc_C19E47: FLdRfVar var_A8
  loc_C19E4A: ImpAdCallFPR4  = Ucase()
  loc_C19E4F: FLdRfVar var_A8
  loc_C19E52: LitVarStr var_B8, "M"
  loc_C19E57: HardType
  loc_C19E58: EqVarBool
  loc_C19E5A: FFree1Var var_A8 = ""
  loc_C19E5D: BranchF loc_C1A196
  loc_C19E60: LitI2_Byte &HFF
  loc_C19E62: FLdPr Me
  loc_C19E65: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19E68: FStAdFunc var_11C
  loc_C19E6B: FLdPr var_11C
  loc_C19E6E: Me.Visible = from_stack_1b
  loc_C19E73: FFree1Ad var_11C
  loc_C19E76: LitI2_Byte &HFF
  loc_C19E78: FLdPr Me
  loc_C19E7B: VCallAd Control_ID_SeccDifu2Txt
  loc_C19E7E: FStAdFunc var_11C
  loc_C19E81: FLdPr var_11C
  loc_C19E84: Me.Visible = from_stack_1b
  loc_C19E89: FFree1Ad var_11C
  loc_C19E8C: LitI2_Byte 0
  loc_C19E8E: FLdPr Me
  loc_C19E91: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19E94: FStAdFunc var_11C
  loc_C19E97: FLdPr var_11C
  loc_C19E9A: Me.Visible = from_stack_1b
  loc_C19E9F: FFree1Ad var_11C
  loc_C19EA2: LitI2_Byte 0
  loc_C19EA4: FLdPr Me
  loc_C19EA7: VCallAd Control_ID_FilaDifu2Txt
  loc_C19EAA: FStAdFunc var_11C
  loc_C19EAD: FLdPr var_11C
  loc_C19EB0: Me.Visible = from_stack_1b
  loc_C19EB5: FFree1Ad var_11C
  loc_C19EB8: LitI2_Byte &HFF
  loc_C19EBA: FLdPr Me
  loc_C19EBD: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19EC0: FStAdFunc var_11C
  loc_C19EC3: FLdPr var_11C
  loc_C19EC6: Me.Visible = from_stack_1b
  loc_C19ECB: FFree1Ad var_11C
  loc_C19ECE: LitI2_Byte &HFF
  loc_C19ED0: FLdPr Me
  loc_C19ED3: VCallAd Control_ID_NumeDifu2Txt
  loc_C19ED6: FStAdFunc var_11C
  loc_C19ED9: FLdPr var_11C
  loc_C19EDC: Me.Visible = from_stack_1b
  loc_C19EE1: FFree1Ad var_11C
  loc_C19EE4: LitStr "Cuadro:"
  loc_C19EE7: FLdPr Me
  loc_C19EEA: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19EED: FStAdFunc var_11C
  loc_C19EF0: FLdPr var_11C
  loc_C19EF3: Me.Caption = from_stack_1
  loc_C19EF8: FFree1Ad var_11C
  loc_C19EFB: LitStr vbNullString
  loc_C19EFE: FLdPr Me
  loc_C19F01: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19F04: FStAdFunc var_11C
  loc_C19F07: FLdPr var_11C
  loc_C19F0A: Me.Caption = from_stack_1
  loc_C19F0F: FFree1Ad var_11C
  loc_C19F12: LitStr "Numero:"
  loc_C19F15: FLdPr Me
  loc_C19F18: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19F1B: FStAdFunc var_11C
  loc_C19F1E: FLdPr var_11C
  loc_C19F21: Me.Caption = from_stack_1
  loc_C19F26: FFree1Ad var_11C
  loc_C19F29: LitI2 8160
  loc_C19F2C: CR8I2
  loc_C19F2D: PopFPR4
  loc_C19F2E: FLdPr Me
  loc_C19F31: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19F34: FStAdFunc var_11C
  loc_C19F37: FLdPr var_11C
  loc_C19F3A: Me.Top = from_stack_1s
  loc_C19F3F: FFree1Ad var_11C
  loc_C19F42: LitI2 8160
  loc_C19F45: CR8I2
  loc_C19F46: PopFPR4
  loc_C19F47: FLdPr Me
  loc_C19F4A: VCallAd Control_ID_SeccDifu2Txt
  loc_C19F4D: FStAdFunc var_11C
  loc_C19F50: FLdPr var_11C
  loc_C19F53: Me.Top = from_stack_1s
  loc_C19F58: FFree1Ad var_11C
  loc_C19F5B: LitI2 8160
  loc_C19F5E: CR8I2
  loc_C19F5F: PopFPR4
  loc_C19F60: FLdPr Me
  loc_C19F63: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19F66: FStAdFunc var_11C
  loc_C19F69: FLdPr var_11C
  loc_C19F6C: Me.Top = from_stack_1s
  loc_C19F71: FFree1Ad var_11C
  loc_C19F74: LitI2 8160
  loc_C19F77: CR8I2
  loc_C19F78: PopFPR4
  loc_C19F79: FLdPr Me
  loc_C19F7C: VCallAd Control_ID_FilaDifu2Txt
  loc_C19F7F: FStAdFunc var_11C
  loc_C19F82: FLdPr var_11C
  loc_C19F85: Me.Top = from_stack_1s
  loc_C19F8A: FFree1Ad var_11C
  loc_C19F8D: LitI2 8160
  loc_C19F90: CR8I2
  loc_C19F91: PopFPR4
  loc_C19F92: FLdPr Me
  loc_C19F95: VCallAd Control_ID_NumeDifu2Lbl
  loc_C19F98: FStAdFunc var_11C
  loc_C19F9B: FLdPr var_11C
  loc_C19F9E: Me.Top = from_stack_1s
  loc_C19FA3: FFree1Ad var_11C
  loc_C19FA6: LitI2 8160
  loc_C19FA9: CR8I2
  loc_C19FAA: PopFPR4
  loc_C19FAB: FLdPr Me
  loc_C19FAE: VCallAd Control_ID_NumeDifu2Txt
  loc_C19FB1: FStAdFunc var_11C
  loc_C19FB4: FLdPr var_11C
  loc_C19FB7: Me.Top = from_stack_1s
  loc_C19FBC: FFree1Ad var_11C
  loc_C19FBF: LitI2 3460
  loc_C19FC2: CR8I2
  loc_C19FC3: PopFPR4
  loc_C19FC4: FLdPr Me
  loc_C19FC7: VCallAd Control_ID_SeccDifu2Lbl
  loc_C19FCA: FStAdFunc var_11C
  loc_C19FCD: FLdPr var_11C
  loc_C19FD0: Me.Left = from_stack_1s
  loc_C19FD5: FFree1Ad var_11C
  loc_C19FD8: LitI2 4345
  loc_C19FDB: CR8I2
  loc_C19FDC: PopFPR4
  loc_C19FDD: FLdPr Me
  loc_C19FE0: VCallAd Control_ID_SeccDifu2Txt
  loc_C19FE3: FStAdFunc var_11C
  loc_C19FE6: FLdPr var_11C
  loc_C19FE9: Me.Left = from_stack_1s
  loc_C19FEE: FFree1Ad var_11C
  loc_C19FF1: LitI2 4965
  loc_C19FF4: CR8I2
  loc_C19FF5: PopFPR4
  loc_C19FF6: FLdPr Me
  loc_C19FF9: VCallAd Control_ID_FilaDifu2Lbl
  loc_C19FFC: FStAdFunc var_11C
  loc_C19FFF: FLdPr var_11C
  loc_C1A002: Me.Left = from_stack_1s
  loc_C1A007: FFree1Ad var_11C
  loc_C1A00A: LitI2 5400
  loc_C1A00D: CR8I2
  loc_C1A00E: PopFPR4
  loc_C1A00F: FLdPr Me
  loc_C1A012: VCallAd Control_ID_FilaDifu2Txt
  loc_C1A015: FStAdFunc var_11C
  loc_C1A018: FLdPr var_11C
  loc_C1A01B: Me.Left = from_stack_1s
  loc_C1A020: FFree1Ad var_11C
  loc_C1A023: LitI2 5100
  loc_C1A026: CR8I2
  loc_C1A027: PopFPR4
  loc_C1A028: FLdPr Me
  loc_C1A02B: VCallAd Control_ID_NumeDifu2Lbl
  loc_C1A02E: FStAdFunc var_11C
  loc_C1A031: FLdPr var_11C
  loc_C1A034: Me.Left = from_stack_1s
  loc_C1A039: FFree1Ad var_11C
  loc_C1A03C: LitI2 6000
  loc_C1A03F: CR8I2
  loc_C1A040: PopFPR4
  loc_C1A041: FLdPr Me
  loc_C1A044: VCallAd Control_ID_NumeDifu2Txt
  loc_C1A047: FStAdFunc var_11C
  loc_C1A04A: FLdPr var_11C
  loc_C1A04D: Me.Left = from_stack_1s
  loc_C1A052: FFree1Ad var_11C
  loc_C1A055: LitVarI2 var_98, 10
  loc_C1A05A: PopAdLdVar
  loc_C1A05B: FLdRfVar var_120
  loc_C1A05E: FLdPr Me
  loc_C1A061: VCallAd Control_ID_SeccDifu2Txt
  loc_C1A064: FStAdFunc var_11C
  loc_C1A067: FLdPr var_11C
  loc_C1A06A:  = Me.Font
  loc_C1A06F: FLdPr var_120
  loc_C1A072: LateIdSt
  loc_C1A077: FFreeAd var_11C = ""
  loc_C1A07E: LitVarI2 var_98, 10
  loc_C1A083: PopAdLdVar
  loc_C1A084: FLdRfVar var_120
  loc_C1A087: FLdPr Me
  loc_C1A08A: VCallAd Control_ID_FilaDifu2Txt
  loc_C1A08D: FStAdFunc var_11C
  loc_C1A090: FLdPr var_11C
  loc_C1A093:  = Me.Font
  loc_C1A098: FLdPr var_120
  loc_C1A09B: LateIdSt
  loc_C1A0A0: FFreeAd var_11C = ""
  loc_C1A0A7: LitVarI2 var_98, 10
  loc_C1A0AC: PopAdLdVar
  loc_C1A0AD: FLdRfVar var_120
  loc_C1A0B0: FLdPr Me
  loc_C1A0B3: VCallAd Control_ID_NumeDifu2Txt
  loc_C1A0B6: FStAdFunc var_11C
  loc_C1A0B9: FLdPr var_11C
  loc_C1A0BC:  = Me.Font
  loc_C1A0C1: FLdPr var_120
  loc_C1A0C4: LateIdSt
  loc_C1A0C9: FFreeAd var_11C = ""
  loc_C1A0D0: LitI2 360
  loc_C1A0D3: CR8I2
  loc_C1A0D4: PopFPR4
  loc_C1A0D5: FLdPr Me
  loc_C1A0D8: VCallAd Control_ID_SeccDifu2Txt
  loc_C1A0DB: FStAdFunc var_11C
  loc_C1A0DE: FLdPr var_11C
  loc_C1A0E1: Me.Height = from_stack_1s
  loc_C1A0E6: FFree1Ad var_11C
  loc_C1A0E9: LitI2 360
  loc_C1A0EC: CR8I2
  loc_C1A0ED: PopFPR4
  loc_C1A0EE: FLdPr Me
  loc_C1A0F1: VCallAd Control_ID_FilaDifu2Txt
  loc_C1A0F4: FStAdFunc var_11C
  loc_C1A0F7: FLdPr var_11C
  loc_C1A0FA: Me.Height = from_stack_1s
  loc_C1A0FF: FFree1Ad var_11C
  loc_C1A102: LitI2 360
  loc_C1A105: CR8I2
  loc_C1A106: PopFPR4
  loc_C1A107: FLdPr Me
  loc_C1A10A: VCallAd Control_ID_NumeDifu2Txt
  loc_C1A10D: FStAdFunc var_11C
  loc_C1A110: FLdPr var_11C
  loc_C1A113: Me.Height = from_stack_1s
  loc_C1A118: FFree1Ad var_11C
  loc_C1A11B: LitVarI2 var_98, 12
  loc_C1A120: PopAdLdVar
  loc_C1A121: FLdRfVar var_120
  loc_C1A124: FLdPr Me
  loc_C1A127: VCallAd Control_ID_SeccDifu2Txt
  loc_C1A12A: FStAdFunc var_11C
  loc_C1A12D: FLdPr var_11C
  loc_C1A130:  = Me.Font
  loc_C1A135: FLdPr var_120
  loc_C1A138: LateIdSt
  loc_C1A13D: FFreeAd var_11C = ""
  loc_C1A144: LitVarI2 var_98, 12
  loc_C1A149: PopAdLdVar
  loc_C1A14A: FLdRfVar var_120
  loc_C1A14D: FLdPr Me
  loc_C1A150: VCallAd Control_ID_FilaDifu2Txt
  loc_C1A153: FStAdFunc var_11C
  loc_C1A156: FLdPr var_11C
  loc_C1A159:  = Me.Font
  loc_C1A15E: FLdPr var_120
  loc_C1A161: LateIdSt
  loc_C1A166: FFreeAd var_11C = ""
  loc_C1A16D: LitVarI2 var_98, 12
  loc_C1A172: PopAdLdVar
  loc_C1A173: FLdRfVar var_120
  loc_C1A176: FLdPr Me
  loc_C1A179: VCallAd Control_ID_NumeDifu2Txt
  loc_C1A17C: FStAdFunc var_11C
  loc_C1A17F: FLdPr var_11C
  loc_C1A182:  = Me.Font
  loc_C1A187: FLdPr var_120
  loc_C1A18A: LateIdSt
  loc_C1A18F: FFreeAd var_11C = ""
  loc_C1A196: ExitProcHresult
End Function

Private Function Proc_259_59_AB0224() 'AB0224
  'Data Table: 526984
  loc_AB0170: LitStr "SELECT difunto.CodiDifu, difunto.CucuPers, infogov.persona.DetaPers, difunto.CodiInmu, difunto.CodiCeme, cementerio.DetaCeme, difunto.CodiTise, tiposepu.DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, CacaDifu, CompDifu, ParvDifu, difunto.BajaFeho, difunto.BajaMoti, FeveDifu, PeriDifu, MesDifu, AnioDifu, PerpDifu, ObseDifu, DetaDedi, detadifu.NumeDedi, difunto.EjerDifu, difunto.BimeDifu,"
  loc_AB0173: LitStr " difunto.CocpDifu,difunto.DecpDifu,difunto.NupoDifu,difunto.CobpDifu,difunto.DebpDifu,difunto.MapoDifu,difunto.CapoDifu,difunto.UbpoDifu,difunto.ColpDifu,difunto.DelpDifu,difunto.CoppDifu,difunto.BajaMoti as BajaMotiDifu,difunto.BajaFeho"
  loc_AB0176: ConcatStr
  loc_AB0177: FStStrNoPop var_88
  loc_AB017A: LitStr " FROM difunto "
  loc_AB017D: ConcatStr
  loc_AB017E: FStStrNoPop var_8C
  loc_AB0181: LitStr " LEFT JOIN infogov.persona On difunto.CucuPers = infogov.persona.CucuPers"
  loc_AB0184: ConcatStr
  loc_AB0185: FStStrNoPop var_90
  loc_AB0188: LitStr " LEFT JOIN tiposepu On difunto.CodiTise = tiposepu.CodiTise"
  loc_AB018B: ConcatStr
  loc_AB018C: FStStrNoPop var_94
  loc_AB018F: LitStr " LEFT JOIN cementerio On difunto.CodiCeme = cementerio.CodiCeme "
  loc_AB0192: ConcatStr
  loc_AB0193: FStStrNoPop var_98
  loc_AB0196: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_AB0199: ConcatStr
  loc_AB019A: FStStrNoPop var_9C
  loc_AB019D: LitStr " WHERE difunto.CodiDifu = ''"
  loc_AB01A0: ConcatStr
  loc_AB01A1: FStStrNoPop var_A0
  loc_AB01A4: FLdPr Me
  loc_AB01A7: MemLdRfVar from_stack_1.global_56
  loc_AB01AA: NewIfNullPr clsdifunto
  loc_AB01AD: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_AB01B2: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AB01C3: LitI4 0
  loc_AB01C8: LitI4 1
  loc_AB01CD: FLdRfVar var_A4
  loc_AB01D0: Redim
  loc_AB01DA: FLdPr Me
  loc_AB01DD: MemLdRfVar from_stack_1.global_56
  loc_AB01E0: NewIfNullAd
  loc_AB01E3: FStAd var_A8 
  loc_AB01E7: FLdRfVar var_A8
  loc_AB01EA: CVarRef
  loc_AB01EF: ParmAry1St
  loc_AB01F5: FLdPr Me
  loc_AB01F8: VCallAd Control_ID_dgdABMS
  loc_AB01FB: CVarAd
  loc_AB01FF: ParmAry1St
  loc_AB0205: FLdRfVar var_A4
  loc_AB0208: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB020D: ILdRf var_A8
  loc_AB0210: CastAd
  loc_AB0213: FLdPr Me
  loc_AB0216: MemStAdFunc
  loc_AB021A: FLdRfVar var_A4
  loc_AB021D: Erase
  loc_AB021E: FFree1Ad var_A8
  loc_AB0221: ExitProcHresult
  loc_AB0222: UMiCy
End Function

Private Function Proc_259_60_AAFDD4(arg_C) 'AAFDD4
  'Data Table: 526984
  loc_AAFD20: LitStr "SELECT difunto.CodiDifu, difunto.CucuPers, infogov.persona.DetaPers, difunto.CodiInmu, difunto.CodiCeme, cementerio.DetaCeme, difunto.CodiTise, tiposepu.DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, CacaDifu, CompDifu, ParvDifu, difunto.BajaFeho, difunto.BajaMoti, FeveDifu, PeriDifu, MesDifu, AnioDifu, PerpDifu, ObseDifu, DetaDedi, detadifu.NumeDedi, difunto.EjerDifu, difunto.BimeDifu,"
  loc_AAFD23: LitStr " difunto.CocpDifu,difunto.DecpDifu,difunto.NupoDifu,difunto.CobpDifu,difunto.DebpDifu,difunto.MapoDifu,difunto.CapoDifu,difunto.UbpoDifu,difunto.ColpDifu,difunto.DelpDifu,difunto.CoppDifu,difunto.BajaMoti as BajaMotiDifu,difunto.BajaFeho"
  loc_AAFD26: ConcatStr
  loc_AAFD27: FStStrNoPop var_88
  loc_AAFD2A: LitStr " FROM difunto "
  loc_AAFD2D: ConcatStr
  loc_AAFD2E: FStStrNoPop var_8C
  loc_AAFD31: LitStr " LEFT JOIN infogov.persona On difunto.CucuPers = infogov.persona.CucuPers"
  loc_AAFD34: ConcatStr
  loc_AAFD35: FStStrNoPop var_90
  loc_AAFD38: LitStr " LEFT JOIN tiposepu On difunto.CodiTise = tiposepu.CodiTise"
  loc_AAFD3B: ConcatStr
  loc_AAFD3C: FStStrNoPop var_94
  loc_AAFD3F: LitStr " LEFT JOIN cementerio On difunto.CodiCeme = cementerio.CodiCeme "
  loc_AAFD42: ConcatStr
  loc_AAFD43: FStStrNoPop var_98
  loc_AAFD46: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_AAFD49: ConcatStr
  loc_AAFD4A: FStStrNoPop var_9C
  loc_AAFD4D: LitStr " WHERE difunto.CodiDifu = ''"
  loc_AAFD50: ConcatStr
  loc_AAFD51: FStStrNoPop var_A0
  loc_AAFD54: FLdPr Me
  loc_AAFD57: MemLdRfVar from_stack_1.global_60
  loc_AAFD5A: NewIfNullPr clsdifunto
  loc_AAFD5D: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_AAFD62: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AAFD73: LitI4 0
  loc_AAFD78: LitI4 1
  loc_AAFD7D: FLdRfVar var_A4
  loc_AAFD80: Redim
  loc_AAFD8A: FLdPr Me
  loc_AAFD8D: MemLdRfVar from_stack_1.global_60
  loc_AAFD90: NewIfNullAd
  loc_AAFD93: FStAd var_A8 
  loc_AAFD97: FLdRfVar var_A8
  loc_AAFD9A: CVarRef
  loc_AAFD9F: ParmAry1St
  loc_AAFDA5: FLdPr Me
  loc_AAFDA8: VCallAd Control_ID_dgdABMS2
  loc_AAFDAB: CVarAd
  loc_AAFDAF: ParmAry1St
  loc_AAFDB5: FLdRfVar var_A4
  loc_AAFDB8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AAFDBD: ILdRf var_A8
  loc_AAFDC0: CastAd
  loc_AAFDC3: FLdPr Me
  loc_AAFDC6: MemStAdFunc
  loc_AAFDCA: FLdRfVar var_A4
  loc_AAFDCD: Erase
  loc_AAFDCE: FFree1Ad var_A8
  loc_AAFDD1: ExitProcHresult
  loc_AAFDD2: ILdRf arg_CEF
End Function

Private Function Proc_259_61_C2AAAC() 'C2AAAC
  'Data Table: 526984
  loc_C29FD0: FLdRfVar var_9C
  loc_C29FD3: NewIfNullAd
  loc_C29FD6: FStAd var_B0 
  loc_C29FDA: LitI2_Byte 1
  loc_C29FDC: FLdRfVar var_AA
  loc_C29FDF: FLdPr Me
  loc_C29FE2: VCallAd Control_ID_ServDifuFlex
  loc_C29FE5: FStAdFunc var_B4
  loc_C29FE8: FLdPr var_B4
  loc_C29FEB: LateIdLdVar var_C4 DispID_4 0
  loc_C29FF2: CI4Var
  loc_C29FF4: LitI4 1
  loc_C29FF9: SubI4
  loc_C29FFA: CI2I4
  loc_C29FFB: FFree1Ad var_B4
  loc_C29FFE: FFree1Var var_C4 = ""
  loc_C2A001: ForI2 var_C8
  loc_C2A007: LitStr "SELECT DetaSece FROM servceme WHERE PeriOrde = "
  loc_C2A00A: ImpAdLdI2 MemVar_D93036
  loc_C2A00D: CStrUI1
  loc_C2A00F: FStStrNoPop var_CC
  loc_C2A012: ConcatStr
  loc_C2A013: FStStrNoPop var_D0
  loc_C2A016: LitStr " AND CodiSece = "
  loc_C2A019: ConcatStr
  loc_C2A01A: FStStrNoPop var_114
  loc_C2A01D: FLdI2 var_AA
  loc_C2A020: CI4UI1
  loc_C2A021: CVarI4
  loc_C2A025: PopAdLdVar
  loc_C2A026: LitVarI4
  loc_C2A02E: PopAdLdVar
  loc_C2A02F: FLdPr Me
  loc_C2A032: VCallAd Control_ID_ServDifuFlex
  loc_C2A035: FStAdFunc var_B4
  loc_C2A038: FLdPr var_B4
  loc_C2A03B: LateIdCallLdVar
  loc_C2A045: CStrVarTmp
  loc_C2A046: FStStrNoPop var_118
  loc_C2A049: ConcatStr
  loc_C2A04A: FStStrNoPop var_11C
  loc_C2A04D: LitStr " AND ImprSece = '1'"
  loc_C2A050: ConcatStr
  loc_C2A051: FStStrNoPop var_120
  loc_C2A054: FLdPr var_B0
  loc_C2A057: Call clsservceme.RedefineRS(from_stack_1v)
  loc_C2A05C: FFreeStr var_CC = "": var_D0 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_C2A06B: FFree1Ad var_B4
  loc_C2A06E: FFree1Var var_C4 = ""
  loc_C2A071: FLdRfVar var_124
  loc_C2A074: FLdPr var_B0
  loc_C2A077: from_stack_1 = clsservceme.RecordCount
  loc_C2A07C: ILdRf var_124
  loc_C2A07F: LitI4 0
  loc_C2A084: GtI4
  loc_C2A085: BranchF loc_C2A0AB
  loc_C2A088: ILdRf var_A0
  loc_C2A08B: FLdRfVar var_CC
  loc_C2A08E: FLdPr var_B0
  loc_C2A091: from_stack_1 = clsservceme.DetaSece
  loc_C2A096: ILdRf var_CC
  loc_C2A099: ConcatStr
  loc_C2A09A: FStStrNoPop var_D0
  loc_C2A09D: LitStr ", "
  loc_C2A0A0: ConcatStr
  loc_C2A0A1: FStStr var_A0
  loc_C2A0A4: FFreeStr var_CC = ""
  loc_C2A0AB: FLdRfVar var_AA
  loc_C2A0AE: NextI2 var_C8, loc_C2A007
  loc_C2A0B3: ILdRf var_A0
  loc_C2A0B6: FnLenStr
  loc_C2A0B7: LitI4 2
  loc_C2A0BC: GtI4
  loc_C2A0BD: BranchF loc_C2A0E4
  loc_C2A0C0: ILdRf var_A0
  loc_C2A0C3: FnLenStr
  loc_C2A0C4: LitI4 2
  loc_C2A0C9: SubI4
  loc_C2A0CA: FLdRfVar var_A0
  loc_C2A0CD: CVarRef
  loc_C2A0D2: FLdRfVar var_C4
  loc_C2A0D5: ImpAdCallFPR4  = Left(, )
  loc_C2A0DA: FLdRfVar var_C4
  loc_C2A0DD: CStrVarTmp
  loc_C2A0DE: FStStr var_A0
  loc_C2A0E1: FFree1Var var_C4 = ""
  loc_C2A0E4: LitNothing
  loc_C2A0E6: FStAd var_B0 
  loc_C2A0EA: ILdRf var_A0
  loc_C2A0ED: FnLenStr
  loc_C2A0EE: LitI4 0
  loc_C2A0F3: GtI4
  loc_C2A0F4: BranchF loc_C2AAA8
  loc_C2A0F7: FLdPr Me
  loc_C2A0FA: MemLdRfVar from_stack_1.global_64
  loc_C2A0FD: NewIfNullAd
  loc_C2A100: FStAd var_128 
  loc_C2A104: LitStr "SELECT DetaPers, "
  loc_C2A107: LitStr " concat_ws(' ', difunto.DecpDifu, cast(IF(NupoDifu=0,'',NupoDifu) as char) , DebpDifu, MapoDifu, CapoDifu, DelpDifu, CoppDifu) as DecrPers, group_concat(' ',DetaDedi,' Fallecido el día: ', date_format(FefaDedi,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y')) Fallecido"
  loc_C2A10A: ConcatStr
  loc_C2A10B: FStStrNoPop var_CC
  loc_C2A10E: LitStr " FROM difunto"
  loc_C2A111: ConcatStr
  loc_C2A112: FStStrNoPop var_D0
  loc_C2A115: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = difunto.CucuPers"
  loc_C2A118: ConcatStr
  loc_C2A119: FStStrNoPop var_114
  loc_C2A11C: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu AND detadifu.BajaFeho IS NULL"
  loc_C2A11F: ConcatStr
  loc_C2A120: FStStrNoPop var_118
  loc_C2A123: LitStr " WHERE difunto.CodiDifu = '"
  loc_C2A126: ConcatStr
  loc_C2A127: FStStrNoPop var_120
  loc_C2A12A: FLdRfVar var_11C
  loc_C2A12D: FLdPr Me
  loc_C2A130: VCallAd Control_ID_NumeCtaTxt
  loc_C2A133: FStAdFunc var_B4
  loc_C2A136: FLdPr var_B4
  loc_C2A139:  = Me.Text
  loc_C2A13E: ILdRf var_11C
  loc_C2A141: ConcatStr
  loc_C2A142: FStStrNoPop var_12C
  loc_C2A145: LitStr "'"
  loc_C2A148: ConcatStr
  loc_C2A149: FStStrNoPop var_130
  loc_C2A14C: FLdPr var_128
  loc_C2A14F: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C2A154: FFreeStr var_CC = "": var_D0 = "": var_114 = "": var_118 = "": var_120 = "": var_11C = "": var_12C = ""
  loc_C2A167: FFree1Ad var_B4
  loc_C2A16A: FLdRfVar var_124
  loc_C2A16D: FLdPr var_128
  loc_C2A170: from_stack_1 = clsdifunto.RecordCount
  loc_C2A175: ILdRf var_124
  loc_C2A178: LitI4 0
  loc_C2A17D: GtI4
  loc_C2A17E: BranchF loc_C2AAA2
  loc_C2A181: FLdRfVar var_138
  loc_C2A184: LitVarStr var_E0, "DecrPers"
  loc_C2A189: PopAdLdVar
  loc_C2A18A: FLdRfVar var_134
  loc_C2A18D: FLdRfVar var_B4
  loc_C2A190: FLdPr var_128
  loc_C2A193: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2A198: FLdPr var_B4
  loc_C2A19B:  = Me.Fields
  loc_C2A1A0: FLdPr var_134
  loc_C2A1A3: from_stack_2 = Me.Item(from_stack_1)
  loc_C2A1A8: LitI2_Byte 0
  loc_C2A1AA: LitVar_Missing var_148
  loc_C2A1AD: LitI2_Byte 0
  loc_C2A1AF: FLdZeroAd var_138
  loc_C2A1B2: CVarAd
  loc_C2A1B6: PopAdLdVar
  loc_C2A1B7: FLdRfVar var_A4
  loc_C2A1BA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C2A1BF: FFreeAd var_B4 = ""
  loc_C2A1C6: FFreeVar var_C4 = ""
  loc_C2A1CD: FLdRfVar var_138
  loc_C2A1D0: LitVarStr var_E0, "Fallecido"
  loc_C2A1D5: PopAdLdVar
  loc_C2A1D6: FLdRfVar var_134
  loc_C2A1D9: FLdRfVar var_B4
  loc_C2A1DC: FLdPr var_128
  loc_C2A1DF: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2A1E4: FLdPr var_B4
  loc_C2A1E7:  = Me.Fields
  loc_C2A1EC: FLdPr var_134
  loc_C2A1EF: from_stack_2 = Me.Item(from_stack_1)
  loc_C2A1F4: LitI2_Byte 0
  loc_C2A1F6: LitVar_Missing var_148
  loc_C2A1F9: LitI2_Byte 0
  loc_C2A1FB: FLdZeroAd var_138
  loc_C2A1FE: CVarAd
  loc_C2A202: PopAdLdVar
  loc_C2A203: FLdRfVar var_A8
  loc_C2A206: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C2A20B: FFreeAd var_B4 = ""
  loc_C2A212: FFreeVar var_C4 = ""
  loc_C2A219: ILdRf Me
  loc_C2A21C: CastAd
  loc_C2A21F: FStAdFunc var_B4
  loc_C2A222: FLdRfVar var_B4
  loc_C2A225: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_C2A22A: FFree1Ad var_B4
  loc_C2A22D: FLdRfVar var_B4
  loc_C2A230: LitI2_Byte 0
  loc_C2A232: LitI2_Byte &HFF
  loc_C2A234: ImpAdLdI4 MemVar_D93C84
  loc_C2A237: FLdRfVar var_88
  loc_C2A23A: NewIfNullPr IFileSystem3
  loc_C2A23D: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C2A242: FLdZeroAd var_B4
  loc_C2A245: FStVarAdFunc
  loc_C2A249: LitI2_Byte 0
  loc_C2A24B: ImpAdStI2 MemVar_D93C8A
  loc_C2A24E: LitVarStr var_E0, "<html>"
  loc_C2A253: PopAdLdVar
  loc_C2A254: FLdRfVar var_98
  loc_C2A257: LdPrVar
  loc_C2A259: LateMemCall
  loc_C2A25F: LitVarStr var_E0, "<head>"
  loc_C2A264: PopAdLdVar
  loc_C2A265: FLdRfVar var_98
  loc_C2A268: LdPrVar
  loc_C2A26A: LateMemCall
  loc_C2A270: LitVarStr var_E0, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C2A275: PopAdLdVar
  loc_C2A276: FLdRfVar var_98
  loc_C2A279: LdPrVar
  loc_C2A27B: LateMemCall
  loc_C2A281: LitVarStr var_E0, "<title>Nota Cementerio</title>"
  loc_C2A286: PopAdLdVar
  loc_C2A287: FLdRfVar var_98
  loc_C2A28A: LdPrVar
  loc_C2A28C: LateMemCall
  loc_C2A292: LitVarStr var_E0, "<style type=""text/css"">"
  loc_C2A297: PopAdLdVar
  loc_C2A298: FLdRfVar var_98
  loc_C2A29B: LdPrVar
  loc_C2A29D: LateMemCall
  loc_C2A2A3: LitVarStr var_E0, ".Titulo1 {"
  loc_C2A2A8: PopAdLdVar
  loc_C2A2A9: FLdRfVar var_98
  loc_C2A2AC: LdPrVar
  loc_C2A2AE: LateMemCall
  loc_C2A2B4: LitVarStr var_E0, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2A2B9: PopAdLdVar
  loc_C2A2BA: FLdRfVar var_98
  loc_C2A2BD: LdPrVar
  loc_C2A2BF: LateMemCall
  loc_C2A2C5: LitVarStr var_E0, " font-size: 14px;"
  loc_C2A2CA: PopAdLdVar
  loc_C2A2CB: FLdRfVar var_98
  loc_C2A2CE: LdPrVar
  loc_C2A2D0: LateMemCall
  loc_C2A2D6: LitVarStr var_E0, " font-weight: bold;"
  loc_C2A2DB: PopAdLdVar
  loc_C2A2DC: FLdRfVar var_98
  loc_C2A2DF: LdPrVar
  loc_C2A2E1: LateMemCall
  loc_C2A2E7: LitVarStr var_E0, "}"
  loc_C2A2EC: PopAdLdVar
  loc_C2A2ED: FLdRfVar var_98
  loc_C2A2F0: LdPrVar
  loc_C2A2F2: LateMemCall
  loc_C2A2F8: LitVarStr var_E0, ".Normal {"
  loc_C2A2FD: PopAdLdVar
  loc_C2A2FE: FLdRfVar var_98
  loc_C2A301: LdPrVar
  loc_C2A303: LateMemCall
  loc_C2A309: LitVarStr var_E0, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2A30E: PopAdLdVar
  loc_C2A30F: FLdRfVar var_98
  loc_C2A312: LdPrVar
  loc_C2A314: LateMemCall
  loc_C2A31A: LitVarStr var_E0, " font-size: 14px;"
  loc_C2A31F: PopAdLdVar
  loc_C2A320: FLdRfVar var_98
  loc_C2A323: LdPrVar
  loc_C2A325: LateMemCall
  loc_C2A32B: LitVarStr var_E0, " line-height: 2;"
  loc_C2A330: PopAdLdVar
  loc_C2A331: FLdRfVar var_98
  loc_C2A334: LdPrVar
  loc_C2A336: LateMemCall
  loc_C2A33C: LitVarStr var_E0, "}"
  loc_C2A341: PopAdLdVar
  loc_C2A342: FLdRfVar var_98
  loc_C2A345: LdPrVar
  loc_C2A347: LateMemCall
  loc_C2A34D: LitVarStr var_E0, ".Nota {"
  loc_C2A352: PopAdLdVar
  loc_C2A353: FLdRfVar var_98
  loc_C2A356: LdPrVar
  loc_C2A358: LateMemCall
  loc_C2A35E: LitVarStr var_E0, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2A363: PopAdLdVar
  loc_C2A364: FLdRfVar var_98
  loc_C2A367: LdPrVar
  loc_C2A369: LateMemCall
  loc_C2A36F: LitVarStr var_E0, " font-size: 14px;"
  loc_C2A374: PopAdLdVar
  loc_C2A375: FLdRfVar var_98
  loc_C2A378: LdPrVar
  loc_C2A37A: LateMemCall
  loc_C2A380: LitVarStr var_E0, " line-height: 2;"
  loc_C2A385: PopAdLdVar
  loc_C2A386: FLdRfVar var_98
  loc_C2A389: LdPrVar
  loc_C2A38B: LateMemCall
  loc_C2A391: LitVarStr var_E0, " text-indent: 200px;"
  loc_C2A396: PopAdLdVar
  loc_C2A397: FLdRfVar var_98
  loc_C2A39A: LdPrVar
  loc_C2A39C: LateMemCall
  loc_C2A3A2: LitVarStr var_E0, "}"
  loc_C2A3A7: PopAdLdVar
  loc_C2A3A8: FLdRfVar var_98
  loc_C2A3AB: LdPrVar
  loc_C2A3AD: LateMemCall
  loc_C2A3B3: LitVarStr var_E0, "</style>"
  loc_C2A3B8: PopAdLdVar
  loc_C2A3B9: FLdRfVar var_98
  loc_C2A3BC: LdPrVar
  loc_C2A3BE: LateMemCall
  loc_C2A3C4: LitI4 0
  loc_C2A3C9: FStStrCopy var_D0
  loc_C2A3CC: FLdRfVar var_D0
  loc_C2A3CF: LitI4 0
  loc_C2A3D4: FStStrCopy var_CC
  loc_C2A3D7: FLdRfVar var_CC
  loc_C2A3DA: LitI2_Byte 0
  loc_C2A3DC: PopTmpLdAd2 var_14A
  loc_C2A3DF: FLdRfVar var_98
  loc_C2A3E2: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C2A3E7: FFreeStr var_CC = ""
  loc_C2A3EE: LitI2_Byte 1
  loc_C2A3F0: CUI1I2
  loc_C2A3F2: FLdRfVar var_14C
  loc_C2A3F5: LitI2_Byte 2
  loc_C2A3F7: CUI1I2
  loc_C2A3F9: ForUI1 var_150
  loc_C2A3FF: FLdUI1
  loc_C2A403: CI2UI1
  loc_C2A405: LitI2_Byte 1
  loc_C2A407: EqI2
  loc_C2A408: BranchF loc_C2A41F
  loc_C2A40B: LitVarStr var_E0, "<div>&nbsp;</div>"
  loc_C2A410: PopAdLdVar
  loc_C2A411: FLdRfVar var_98
  loc_C2A414: LdPrVar
  loc_C2A416: LateMemCall
  loc_C2A41C: Branch loc_C2A430
  loc_C2A41F: LitVarStr var_E0, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_C2A424: PopAdLdVar
  loc_C2A425: FLdRfVar var_98
  loc_C2A428: LdPrVar
  loc_C2A42A: LateMemCall
  loc_C2A430: LitVarStr var_E0, "<table width=""90" & Chr(37) & """ border=""0"" align=""right"" cellspacing=""5"" cellpadding=""5"">"
  loc_C2A435: PopAdLdVar
  loc_C2A436: FLdRfVar var_98
  loc_C2A439: LdPrVar
  loc_C2A43B: LateMemCall
  loc_C2A441: LitVarStr var_E0, "  <tr valign=""middle"">"
  loc_C2A446: PopAdLdVar
  loc_C2A447: FLdRfVar var_98
  loc_C2A44A: LdPrVar
  loc_C2A44C: LateMemCall
  loc_C2A452: LitStr "    <th width=""30" & Chr(37) & """ align=""left""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C2A455: LitI2_Byte &H5F
  loc_C2A457: CStrUI1
  loc_C2A459: FStStrNoPop var_CC
  loc_C2A45C: ConcatStr
  loc_C2A45D: FStStrNoPop var_D0
  loc_C2A460: LitStr """ height="""
  loc_C2A463: ConcatStr
  loc_C2A464: FStStrNoPop var_114
  loc_C2A467: LitI2_Byte &H3C
  loc_C2A469: CStrUI1
  loc_C2A46B: FStStrNoPop var_118
  loc_C2A46E: ConcatStr
  loc_C2A46F: FStStrNoPop var_11C
  loc_C2A472: LitStr """ align=""left""></th>"
  loc_C2A475: ConcatStr
  loc_C2A476: CVarStr var_C4
  loc_C2A479: PopAdLdVar
  loc_C2A47A: FLdRfVar var_98
  loc_C2A47D: LdPrVar
  loc_C2A47F: LateMemCall
  loc_C2A485: FFreeStr var_CC = "": var_D0 = "": var_114 = "": var_118 = ""
  loc_C2A492: FFree1Var var_C4 = ""
  loc_C2A495: LitVarStr var_F0, "    <th align=""center"" class=""Titulo1"">"
  loc_C2A49A: LitVarStr var_E0, "Municipalidad de Guaymallén"
  loc_C2A49F: FStVarCopyObj var_C4
  loc_C2A4A2: FLdRfVar var_C4
  loc_C2A4A5: FLdRfVar var_148
  loc_C2A4A8: ImpAdCallFPR4  = Ucase()
  loc_C2A4AD: FLdRfVar var_148
  loc_C2A4B0: ConcatVar var_160
  loc_C2A4B4: LitVarStr var_100, "</th>"
  loc_C2A4B9: ConcatVar var_170
  loc_C2A4BD: PopAdLdVar
  loc_C2A4BE: FLdRfVar var_98
  loc_C2A4C1: LdPrVar
  loc_C2A4C3: LateMemCall
  loc_C2A4C9: FFreeVar var_C4 = "": var_148 = "": var_160 = ""
  loc_C2A4D4: LitStr "    <th width=""30" & Chr(37) & """ align=""right""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_C2A4D7: LitI2_Byte &H3C
  loc_C2A4D9: CStrUI1
  loc_C2A4DB: FStStrNoPop var_CC
  loc_C2A4DE: ConcatStr
  loc_C2A4DF: FStStrNoPop var_D0
  loc_C2A4E2: LitStr """ height="""
  loc_C2A4E5: ConcatStr
  loc_C2A4E6: FStStrNoPop var_114
  loc_C2A4E9: LitI2_Byte &H3C
  loc_C2A4EB: CStrUI1
  loc_C2A4ED: FStStrNoPop var_118
  loc_C2A4F0: ConcatStr
  loc_C2A4F1: FStStrNoPop var_11C
  loc_C2A4F4: LitStr """ align=""right""></th>"
  loc_C2A4F7: ConcatStr
  loc_C2A4F8: CVarStr var_C4
  loc_C2A4FB: PopAdLdVar
  loc_C2A4FC: FLdRfVar var_98
  loc_C2A4FF: LdPrVar
  loc_C2A501: LateMemCall
  loc_C2A507: FFreeStr var_CC = "": var_D0 = "": var_114 = "": var_118 = ""
  loc_C2A514: FFree1Var var_C4 = ""
  loc_C2A517: LitVarStr var_E0, "  </tr>"
  loc_C2A51C: PopAdLdVar
  loc_C2A51D: FLdRfVar var_98
  loc_C2A520: LdPrVar
  loc_C2A522: LateMemCall
  loc_C2A528: LitVarStr var_E0, "  <tr valign=""top"">"
  loc_C2A52D: PopAdLdVar
  loc_C2A52E: FLdRfVar var_98
  loc_C2A531: LdPrVar
  loc_C2A533: LateMemCall
  loc_C2A539: LitVarStr var_E0, "    <th colspan=""3""><hr></th>"
  loc_C2A53E: PopAdLdVar
  loc_C2A53F: FLdRfVar var_98
  loc_C2A542: LdPrVar
  loc_C2A544: LateMemCall
  loc_C2A54A: LitVarStr var_E0, "  </tr>"
  loc_C2A54F: PopAdLdVar
  loc_C2A550: FLdRfVar var_98
  loc_C2A553: LdPrVar
  loc_C2A555: LateMemCall
  loc_C2A55B: LitVarStr var_E0, "  <tr valign=""top"" class=""Normal""><td height=""296"" colspan=""3"">"
  loc_C2A560: PopAdLdVar
  loc_C2A561: FLdRfVar var_98
  loc_C2A564: LdPrVar
  loc_C2A566: LateMemCall
  loc_C2A56C: LitI2_Byte 0
  loc_C2A56E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C2A573: FStFPR8 var_198
  loc_C2A576: LitStr "    <p align=""right"">"
  loc_C2A579: LitStr "Guaymallén"
  loc_C2A57C: ConcatStr
  loc_C2A57D: FStStrNoPop var_CC
  loc_C2A580: LitStr ", "
  loc_C2A583: ConcatStr
  loc_C2A584: FStStrNoPop var_D0
  loc_C2A587: LitStr "Mendoza"
  loc_C2A58A: ConcatStr
  loc_C2A58B: FStStrNoPop var_114
  loc_C2A58E: LitStr ", "
  loc_C2A591: ConcatStr
  loc_C2A592: CVarStr var_170
  loc_C2A595: LitI4 1
  loc_C2A59A: LitI4 1
  loc_C2A59F: LitVarStr var_F0, "dd \de mmmm \de yyyy"
  loc_C2A5A4: FStVarCopyObj var_148
  loc_C2A5A7: FLdRfVar var_148
  loc_C2A5AA: FLdFPR8 var_198
  loc_C2A5AD: CVarDate var_C4
  loc_C2A5B1: FLdRfVar var_160
  loc_C2A5B4: ImpAdCallFPR4  = Format(, )
  loc_C2A5B9: FLdRfVar var_160
  loc_C2A5BC: ConcatVar var_180
  loc_C2A5C0: LitVarStr var_100, "</p>"
  loc_C2A5C5: ConcatVar var_190
  loc_C2A5C9: PopAdLdVar
  loc_C2A5CA: FLdRfVar var_98
  loc_C2A5CD: LdPrVar
  loc_C2A5CF: LateMemCall
  loc_C2A5D5: FFreeStr var_CC = "": var_D0 = ""
  loc_C2A5DE: FFreeVar var_C4 = "": var_148 = "": var_170 = "": var_160 = "": var_180 = ""
  loc_C2A5ED: LitVarStr var_E0, "    <p align=""left"">Al Se&ntilde;or:<br>"
  loc_C2A5F2: PopAdLdVar
  loc_C2A5F3: FLdRfVar var_98
  loc_C2A5F6: LdPrVar
  loc_C2A5F8: LateMemCall
  loc_C2A5FE: FLdUI1
  loc_C2A602: CI2UI1
  loc_C2A604: LitI2_Byte 1
  loc_C2A606: EqI2
  loc_C2A607: BranchF loc_C2A641
  loc_C2A60A: LitVarStr var_E0, "      Intendente Municipal<br>"
  loc_C2A60F: PopAdLdVar
  loc_C2A610: FLdRfVar var_98
  loc_C2A613: LdPrVar
  loc_C2A615: LateMemCall
  loc_C2A61B: LitStr "      "
  loc_C2A61E: LitStr vbNullString
  loc_C2A621: ConcatStr
  loc_C2A622: FStStrNoPop var_CC
  loc_C2A625: LitStr "<br> "
  loc_C2A628: ConcatStr
  loc_C2A629: CVarStr var_C4
  loc_C2A62C: PopAdLdVar
  loc_C2A62D: FLdRfVar var_98
  loc_C2A630: LdPrVar
  loc_C2A632: LateMemCall
  loc_C2A638: FFree1Str var_CC
  loc_C2A63B: FFree1Var var_C4 = ""
  loc_C2A63E: Branch loc_C2A675
  loc_C2A641: LitVarStr var_E0, "      Encargado de Cementerio<br>"
  loc_C2A646: PopAdLdVar
  loc_C2A647: FLdRfVar var_98
  loc_C2A64A: LdPrVar
  loc_C2A64C: LateMemCall
  loc_C2A652: LitStr "      "
  loc_C2A655: LitStr vbNullString
  loc_C2A658: ConcatStr
  loc_C2A659: FStStrNoPop var_CC
  loc_C2A65C: LitStr "<br> "
  loc_C2A65F: ConcatStr
  loc_C2A660: CVarStr var_C4
  loc_C2A663: PopAdLdVar
  loc_C2A664: FLdRfVar var_98
  loc_C2A667: LdPrVar
  loc_C2A669: LateMemCall
  loc_C2A66F: FFree1Str var_CC
  loc_C2A672: FFree1Var var_C4 = ""
  loc_C2A675: LitVarStr var_E0, "      S_________//_________D</p>"
  loc_C2A67A: PopAdLdVar
  loc_C2A67B: FLdRfVar var_98
  loc_C2A67E: LdPrVar
  loc_C2A680: LateMemCall
  loc_C2A686: LitStr "    <p align=""justify"" class=""Nota"">El que suscribe "
  loc_C2A689: FLdRfVar var_CC
  loc_C2A68C: FLdPr Me
  loc_C2A68F: VCallAd Control_ID_DetaPersLbl
  loc_C2A692: FStAdFunc var_B4
  loc_C2A695: FLdPr var_B4
  loc_C2A698:  = Me.Caption
  loc_C2A69D: ILdRf var_CC
  loc_C2A6A0: ConcatStr
  loc_C2A6A1: FStStrNoPop var_D0
  loc_C2A6A4: LitStr " con domicilio en "
  loc_C2A6A7: ConcatStr
  loc_C2A6A8: FStStrNoPop var_114
  loc_C2A6AB: ILdRf var_A4
  loc_C2A6AE: ConcatStr
  loc_C2A6AF: CVarStr var_C4
  loc_C2A6B2: PopAdLdVar
  loc_C2A6B3: FLdRfVar var_98
  loc_C2A6B6: LdPrVar
  loc_C2A6B8: LateMemCall
  loc_C2A6BE: FFreeStr var_CC = "": var_D0 = ""
  loc_C2A6C7: FFree1Ad var_B4
  loc_C2A6CA: FFree1Var var_C4 = ""
  loc_C2A6CD: LitVarStr var_110, " se dirige al Se&ntilde;or "
  loc_C2A6D2: LitVarStr var_100, "Encargado de Cementerio"
  loc_C2A6D7: FStVarCopyObj var_148
  loc_C2A6DA: FLdRfVar var_148
  loc_C2A6DD: LitVarStr var_F0, "Intendente Municipal"
  loc_C2A6E2: FStVarCopyObj var_C4
  loc_C2A6E5: FLdRfVar var_C4
  loc_C2A6E8: FLdUI1
  loc_C2A6EC: CI2UI1
  loc_C2A6EE: LitI2_Byte 1
  loc_C2A6F0: EqI2
  loc_C2A6F1: CVarBoolI2 var_E0
  loc_C2A6F5: FLdRfVar var_160
  loc_C2A6F8: ImpAdCallFPR4  = IIf(, , )
  loc_C2A6FD: FLdRfVar var_160
  loc_C2A700: ConcatVar var_170
  loc_C2A704: LitVarStr var_1A8, " a los efectos de solicitar la autorizaci&oacute;n correspondiente para "
  loc_C2A709: ConcatVar var_180
  loc_C2A70D: ILdRf var_A0
  loc_C2A710: CVarStr var_1B8
  loc_C2A713: ConcatVar var_190
  loc_C2A717: LitVarStr var_1C8, " en "
  loc_C2A71C: ConcatVar var_1D8
  loc_C2A720: PopAdLdVar
  loc_C2A721: FLdRfVar var_98
  loc_C2A724: LdPrVar
  loc_C2A726: LateMemCall
  loc_C2A72C: FFreeVar var_E0 = "": var_C4 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = ""
  loc_C2A73F: FLdRfVar var_14A
  loc_C2A742: FLdPr Me
  loc_C2A745: VCallAd Control_ID_CodiTiseLbl
  loc_C2A748: FStAdFunc var_B4
  loc_C2A74B: FLdPr var_B4
  loc_C2A74E:  = Me.Visible
  loc_C2A753: FLdI2 var_14A
  loc_C2A756: FFree1Ad var_B4
  loc_C2A759: BranchF loc_C2A7B4
  loc_C2A75C: FLdRfVar var_CC
  loc_C2A75F: FLdPr Me
  loc_C2A762: VCallAd Control_ID_CodiTiseLbl
  loc_C2A765: FStAdFunc var_B4
  loc_C2A768: FLdPr var_B4
  loc_C2A76B:  = Me.Caption
  loc_C2A770: ILdRf var_CC
  loc_C2A773: LitStr " "
  loc_C2A776: ConcatStr
  loc_C2A777: FStStrNoPop var_114
  loc_C2A77A: FLdRfVar var_D0
  loc_C2A77D: FLdPr Me
  loc_C2A780: VCallAd Control_ID_CodiTiseTxt
  loc_C2A783: FStAdFunc var_134
  loc_C2A786: FLdPr var_134
  loc_C2A789:  = Me.Text
  loc_C2A78E: ILdRf var_D0
  loc_C2A791: ConcatStr
  loc_C2A792: CVarStr var_C4
  loc_C2A795: PopAdLdVar
  loc_C2A796: FLdRfVar var_98
  loc_C2A799: LdPrVar
  loc_C2A79B: LateMemCall
  loc_C2A7A1: FFreeStr var_CC = "": var_114 = ""
  loc_C2A7AA: FFreeAd var_B4 = ""
  loc_C2A7B1: FFree1Var var_C4 = ""
  loc_C2A7B4: FLdRfVar var_14A
  loc_C2A7B7: FLdPr Me
  loc_C2A7BA: VCallAd Control_ID_SeccDifuLbl
  loc_C2A7BD: FStAdFunc var_B4
  loc_C2A7C0: FLdPr var_B4
  loc_C2A7C3:  = Me.Visible
  loc_C2A7C8: FLdI2 var_14A
  loc_C2A7CB: FFree1Ad var_B4
  loc_C2A7CE: BranchF loc_C2A829
  loc_C2A7D1: FLdRfVar var_CC
  loc_C2A7D4: FLdPr Me
  loc_C2A7D7: VCallAd Control_ID_SeccDifuLbl
  loc_C2A7DA: FStAdFunc var_B4
  loc_C2A7DD: FLdPr var_B4
  loc_C2A7E0:  = Me.Caption
  loc_C2A7E5: ILdRf var_CC
  loc_C2A7E8: LitStr " "
  loc_C2A7EB: ConcatStr
  loc_C2A7EC: FStStrNoPop var_114
  loc_C2A7EF: FLdRfVar var_D0
  loc_C2A7F2: FLdPr Me
  loc_C2A7F5: VCallAd Control_ID_SeccDifuTxt
  loc_C2A7F8: FStAdFunc var_134
  loc_C2A7FB: FLdPr var_134
  loc_C2A7FE:  = Me.Text
  loc_C2A803: ILdRf var_D0
  loc_C2A806: ConcatStr
  loc_C2A807: CVarStr var_C4
  loc_C2A80A: PopAdLdVar
  loc_C2A80B: FLdRfVar var_98
  loc_C2A80E: LdPrVar
  loc_C2A810: LateMemCall
  loc_C2A816: FFreeStr var_CC = "": var_114 = ""
  loc_C2A81F: FFreeAd var_B4 = ""
  loc_C2A826: FFree1Var var_C4 = ""
  loc_C2A829: FLdRfVar var_14A
  loc_C2A82C: FLdPr Me
  loc_C2A82F: VCallAd Control_ID_FilaDifuLbl
  loc_C2A832: FStAdFunc var_B4
  loc_C2A835: FLdPr var_B4
  loc_C2A838:  = Me.Visible
  loc_C2A83D: FLdI2 var_14A
  loc_C2A840: FFree1Ad var_B4
  loc_C2A843: BranchF loc_C2A89E
  loc_C2A846: FLdRfVar var_CC
  loc_C2A849: FLdPr Me
  loc_C2A84C: VCallAd Control_ID_FilaDifuLbl
  loc_C2A84F: FStAdFunc var_B4
  loc_C2A852: FLdPr var_B4
  loc_C2A855:  = Me.Caption
  loc_C2A85A: ILdRf var_CC
  loc_C2A85D: LitStr " "
  loc_C2A860: ConcatStr
  loc_C2A861: FStStrNoPop var_114
  loc_C2A864: FLdRfVar var_D0
  loc_C2A867: FLdPr Me
  loc_C2A86A: VCallAd Control_ID_FilaDifuTxt
  loc_C2A86D: FStAdFunc var_134
  loc_C2A870: FLdPr var_134
  loc_C2A873:  = Me.Text
  loc_C2A878: ILdRf var_D0
  loc_C2A87B: ConcatStr
  loc_C2A87C: CVarStr var_C4
  loc_C2A87F: PopAdLdVar
  loc_C2A880: FLdRfVar var_98
  loc_C2A883: LdPrVar
  loc_C2A885: LateMemCall
  loc_C2A88B: FFreeStr var_CC = "": var_114 = ""
  loc_C2A894: FFreeAd var_B4 = ""
  loc_C2A89B: FFree1Var var_C4 = ""
  loc_C2A89E: FLdRfVar var_14A
  loc_C2A8A1: FLdPr Me
  loc_C2A8A4: VCallAd Control_ID_NumeDifuLbl
  loc_C2A8A7: FStAdFunc var_B4
  loc_C2A8AA: FLdPr var_B4
  loc_C2A8AD:  = Me.Visible
  loc_C2A8B2: FLdI2 var_14A
  loc_C2A8B5: FFree1Ad var_B4
  loc_C2A8B8: BranchF loc_C2A913
  loc_C2A8BB: FLdRfVar var_CC
  loc_C2A8BE: FLdPr Me
  loc_C2A8C1: VCallAd Control_ID_NumeDifuLbl
  loc_C2A8C4: FStAdFunc var_B4
  loc_C2A8C7: FLdPr var_B4
  loc_C2A8CA:  = Me.Caption
  loc_C2A8CF: ILdRf var_CC
  loc_C2A8D2: LitStr " "
  loc_C2A8D5: ConcatStr
  loc_C2A8D6: FStStrNoPop var_114
  loc_C2A8D9: FLdRfVar var_D0
  loc_C2A8DC: FLdPr Me
  loc_C2A8DF: VCallAd Control_ID_NumeDifuTxt
  loc_C2A8E2: FStAdFunc var_134
  loc_C2A8E5: FLdPr var_134
  loc_C2A8E8:  = Me.Text
  loc_C2A8ED: ILdRf var_D0
  loc_C2A8F0: ConcatStr
  loc_C2A8F1: CVarStr var_C4
  loc_C2A8F4: PopAdLdVar
  loc_C2A8F5: FLdRfVar var_98
  loc_C2A8F8: LdPrVar
  loc_C2A8FA: LateMemCall
  loc_C2A900: FFreeStr var_CC = "": var_114 = ""
  loc_C2A909: FFreeAd var_B4 = ""
  loc_C2A910: FFree1Var var_C4 = ""
  loc_C2A913: LitStr " , donde se guardan los restos de:"
  loc_C2A916: ILdRf var_A8
  loc_C2A919: ConcatStr
  loc_C2A91A: CVarStr var_C4
  loc_C2A91D: PopAdLdVar
  loc_C2A91E: FLdRfVar var_98
  loc_C2A921: LdPrVar
  loc_C2A923: LateMemCall
  loc_C2A929: FFree1Var var_C4 = ""
  loc_C2A92C: LitVarStr var_E0, "    .</p>"
  loc_C2A931: PopAdLdVar
  loc_C2A932: FLdRfVar var_98
  loc_C2A935: LdPrVar
  loc_C2A937: LateMemCall
  loc_C2A93D: LitVarStr var_E0, "    <p align=""justify"" class=""Nota"">Sin m&aacute;s, le saluda atte.</p><br>"
  loc_C2A942: PopAdLdVar
  loc_C2A943: FLdRfVar var_98
  loc_C2A946: LdPrVar
  loc_C2A948: LateMemCall
  loc_C2A94E: LitVarStr var_E0, "    </td></tr>"
  loc_C2A953: PopAdLdVar
  loc_C2A954: FLdRfVar var_98
  loc_C2A957: LdPrVar
  loc_C2A959: LateMemCall
  loc_C2A95F: LitVarStr var_E0, "  <tr valign=""top"" class=""Normal""><td colspan=""3"">"
  loc_C2A964: PopAdLdVar
  loc_C2A965: FLdRfVar var_98
  loc_C2A968: LdPrVar
  loc_C2A96A: LateMemCall
  loc_C2A970: LitVarStr var_E0, "   <table width=""90" & Chr(37) & """ align=""center"" border=""0"" cellspacing=""0"" cellpadding=""0"" class=""Normal"">"
  loc_C2A975: PopAdLdVar
  loc_C2A976: FLdRfVar var_98
  loc_C2A979: LdPrVar
  loc_C2A97B: LateMemCall
  loc_C2A981: LitVarStr var_E0, "    <tr valign=""bottom"" align=""left"">"
  loc_C2A986: PopAdLdVar
  loc_C2A987: FLdRfVar var_98
  loc_C2A98A: LdPrVar
  loc_C2A98C: LateMemCall
  loc_C2A992: LitVarStr var_E0, "      <th rowspan=""2"">&nbsp;</th>"
  loc_C2A997: PopAdLdVar
  loc_C2A998: FLdRfVar var_98
  loc_C2A99B: LdPrVar
  loc_C2A99D: LateMemCall
  loc_C2A9A3: LitVarStr var_E0, "      <th width=""300"">.............................................................</th>"
  loc_C2A9A8: PopAdLdVar
  loc_C2A9A9: FLdRfVar var_98
  loc_C2A9AC: LdPrVar
  loc_C2A9AE: LateMemCall
  loc_C2A9B4: LitVarStr var_E0, "    </tr>"
  loc_C2A9B9: PopAdLdVar
  loc_C2A9BA: FLdRfVar var_98
  loc_C2A9BD: LdPrVar
  loc_C2A9BF: LateMemCall
  loc_C2A9C5: LitVarStr var_E0, "    <tr valign=""top"" align=""center"">"
  loc_C2A9CA: PopAdLdVar
  loc_C2A9CB: FLdRfVar var_98
  loc_C2A9CE: LdPrVar
  loc_C2A9D0: LateMemCall
  loc_C2A9D6: LitVarStr var_E0, "      <th>D.N.I. N&ordm; ............................................... <br>"
  loc_C2A9DB: PopAdLdVar
  loc_C2A9DC: FLdRfVar var_98
  loc_C2A9DF: LdPrVar
  loc_C2A9E1: LateMemCall
  loc_C2A9E7: LitVarStr var_E0, "        L.E. / L.C. N&ordm; ......................................... <br>"
  loc_C2A9EC: PopAdLdVar
  loc_C2A9ED: FLdRfVar var_98
  loc_C2A9F0: LdPrVar
  loc_C2A9F2: LateMemCall
  loc_C2A9F8: LitVarStr var_E0, "        C.I. N&ordm; ................................................... </th>"
  loc_C2A9FD: PopAdLdVar
  loc_C2A9FE: FLdRfVar var_98
  loc_C2AA01: LdPrVar
  loc_C2AA03: LateMemCall
  loc_C2AA09: LitVarStr var_E0, "    </tr>"
  loc_C2AA0E: PopAdLdVar
  loc_C2AA0F: FLdRfVar var_98
  loc_C2AA12: LdPrVar
  loc_C2AA14: LateMemCall
  loc_C2AA1A: LitVarStr var_E0, "   </table></td></tr>"
  loc_C2AA1F: PopAdLdVar
  loc_C2AA20: FLdRfVar var_98
  loc_C2AA23: LdPrVar
  loc_C2AA25: LateMemCall
  loc_C2AA2B: LitVarStr var_E0, "</table>"
  loc_C2AA30: PopAdLdVar
  loc_C2AA31: FLdRfVar var_98
  loc_C2AA34: LdPrVar
  loc_C2AA36: LateMemCall
  loc_C2AA3C: FLdRfVar var_14C
  loc_C2AA3F: NextUI1
  loc_C2AA45: LitVarStr var_E0, "</body>"
  loc_C2AA4A: PopAdLdVar
  loc_C2AA4B: FLdRfVar var_98
  loc_C2AA4E: LdPrVar
  loc_C2AA50: LateMemCall
  loc_C2AA56: LitVarStr var_E0, "</html>"
  loc_C2AA5B: PopAdLdVar
  loc_C2AA5C: FLdRfVar var_98
  loc_C2AA5F: LdPrVar
  loc_C2AA61: LateMemCall
  loc_C2AA67: FLdRfVar var_98
  loc_C2AA6A: LdPrVar
  loc_C2AA6C: LateMemCall
  loc_C2AA72: LitStr vbNullString
  loc_C2AA75: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_C2AA7A: ILdRf Me
  loc_C2AA7D: CastAd
  loc_C2AA80: FStAdFunc var_B4
  loc_C2AA83: FLdRfVar var_B4
  loc_C2AA86: ImpAdCallFPR4  = Proc_57_8_A3B3D8()
  loc_C2AA8B: FFree1Ad var_B4
  loc_C2AA8E: ILdRf Me
  loc_C2AA91: CastAd
  loc_C2AA94: FStAdFunc var_B4
  loc_C2AA97: FLdRfVar var_B4
  loc_C2AA9A: ImpAdCallFPR4  = Proc_57_12_A095AC()
  loc_C2AA9F: FFree1Ad var_B4
  loc_C2AAA2: LitNothing
  loc_C2AAA4: FStAd var_128 
  loc_C2AAA8: ExitProcHresult
End Function
