VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWOW64\comctl32.ocx"
Begin VB.Form dlgEnvioEmailRemision
  Caption = "Envío de E-mail"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgEnvioEmailRemision.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 13770
  ClientHeight = 7815
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox txtAdjunto
    Left = 1560
    Top = 2160
    Width = 6375
    Height = 420
    TabIndex = 6
    Locked = -1  'True
  End
  Begin VB.TextBox txtRecipientName
    Left = 1560
    Top = 1200
    Width = 6375
    Height = 420
    TabIndex = 4
    MaxLength = 80
    Locked = -1  'True
  End
  Begin MSComctlLib.StatusBar sBar
    Left = 0
    Top = 7320
    Width = 13770
    Height = 495
    TabIndex = 11
    OleObjectBlob = "dlgEnvioEmailRemision.frx":030A
  End
  Begin VB.CommandButton cmdSalir
    Caption = "&Salir"
    Left = 11520
    Top = 6600
    Width = 2055
    Height = 495
    TabIndex = 1
    Cancel = -1  'True
  End
  Begin VB.CommandButton cmdEnviar
    Caption = "&Enviar Mensaje"
    Left = 9120
    Top = 6600
    Width = 2055
    Height = 495
    TabIndex = 0
  End
  Begin VB.TextBox txtSubject
    Left = 1560
    Top = 1680
    Width = 6375
    Height = 420
    TabIndex = 5
    Locked = -1  'True
  End
  Begin VB.TextBox txtRecipient
    Left = 1560
    Top = 720
    Width = 6375
    Height = 420
    TabIndex = 3
    Locked = -1  'True
  End
  Begin VB.TextBox txtSender
    Left = 1560
    Top = 240
    Width = 6375
    Height = 420
    TabIndex = 2
    Locked = -1  'True
  End
  Begin SHDocVwCtl.WebBrowser WebBrowser1
    Left = 1560
    Top = 2640
    Width = 12015
    Height = 3840
    TabIndex = 12
    OleObjectBlob = "dlgEnvioEmailRemision.frx":03B2
  End
  Begin VB.Frame EnviandoFra
    BackColor = &HFFFFFF&
    Left = 9360
    Top = 240
    Width = 3495
    Height = 2175
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Begin VB.Timer Timer1
      Enabled = 0   'False
      Interval = 100
      Left = 0
      Top = 360
    End
    Begin VB.Label Label8
      Caption = "Enviando..."
      Left = 360
      Top = 1200
      Width = 2730
      Height = 570
      TabIndex = 16
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 24
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Image Image1
      Left = 1395
      Top = 360
      Width = 675
      Height = 675
      Stretch = -1  'True
      Appearance = 0 'Flat
    End
    Begin ComctlLib.ImageList ImageList1
      OleObjectBlob = "dlgEnvioEmailRemision.frx":0466
      Left = 120
      Top = 960
    End
  End
  Begin VB.Shape Shape1
    Left = 9360
    Top = 240
    Width = 3495
    Height = 2175
  End
  Begin VB.Label Label7
    Caption = "š"
    Left = 10200
    Top = 240
    Width = 1800
    Height = 1800
    TabIndex = 14
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Webdings"
      Size = 90
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label6
    Caption = "Adjunto:"
    Left = 540
    Top = 2160
    Width = 885
    Height = 300
    TabIndex = 13
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
  End
  Begin VB.Label Label5
    Caption = "Mensaje:"
    Left = 450
    Top = 2640
    Width = 960
    Height = 300
    TabIndex = 10
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
  End
  Begin VB.Label Label4
    Caption = "Asunto:"
    Left = 585
    Top = 1680
    Width = 825
    Height = 300
    TabIndex = 9
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
  End
  Begin VB.Label Label3
    Caption = "Destinatario:"
    Left = 60
    Top = 720
    Width = 1350
    Height = 300
    TabIndex = 8
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
  End
  Begin VB.Label Label2
    Caption = "De:"
    Left = 1035
    Top = 240
    Width = 375
    Height = 300
    TabIndex = 7
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "dlgEnvioEmailRemision"

Public html As New UnkObject
Public PeriInfo As Integer
Public NumeOrpa As Long
Public CucuPers As String
Public FechaPago As String
Public htmFile As Variant
Public bGenerado As Boolean
Public eUsua As New Class

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_3_0057A650
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub Form_Load() '9416FC
  'Data Table: 48709C
  loc_9416F0: LitI2_Byte 0
  loc_9416F2: FLdPr Me
  loc_9416F5: MemStI2 global_164
  loc_9416F8: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9530D0
  'Data Table: 48709C
  loc_9530BC: LitI4 0
  loc_9530C1: FStStrCopy var_88
  loc_9530C4: FLdRfVar var_88
  loc_9530C7: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_9530CC: FFree1Str var_88
  loc_9530CF: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A01BFC
  'Data Table: 48709C
  loc_A01AA8: LitStr "Municipalidad de Guaymallén"
  loc_A01AAB: LitStr " - InfoGov S.A <"
  loc_A01AAE: ConcatStr
  loc_A01AAF: FStStrNoPop var_88
  loc_A01AB2: LitStr "guaymallen@infogov.com.ar"
  loc_A01AB5: ConcatStr
  loc_A01AB6: FStStrNoPop var_8C
  loc_A01AB9: LitStr ">"
  loc_A01ABC: ConcatStr
  loc_A01ABD: FStStrNoPop var_90
  loc_A01AC0: FLdPrThis
  loc_A01AC1: VCallAd Control_ID_txtSender
  loc_A01AC4: FStAdFunc var_94
  loc_A01AC7: FLdPr var_94
  loc_A01ACA: Me.Text = from_stack_1
  loc_A01ACF: FFreeStr var_88 = "": var_8C = ""
  loc_A01AD8: FFree1Ad var_94
  loc_A01ADB: Call GeneraReporte()
  loc_A01AE0: FLdPr Me
  loc_A01AE3: MemLdI2 bGenerado
  loc_A01AE6: NotI4
  loc_A01AE7: BranchF loc_A01B02
  loc_A01AEA: ILdRf Me
  loc_A01AED: FStAdNoPop
  loc_A01AF1: ImpAdLdRf MemVar_C44F9C
  loc_A01AF4: NewIfNullPr Me
  loc_A01AF7: Me.Global.Unload from_stack_1
  loc_A01AFC: FFree1Ad var_94
  loc_A01AFF: Branch loc_A01BBF
  loc_A01B02: Call GeneraHTML()
  loc_A01B07: ImpAdLdRf MemVar_C3D83C
  loc_A01B0A: CDargRef
  loc_A01B0E: FLdPrThis
  loc_A01B0F: VCallAd Control_ID_WebBrowser1
  loc_A01B12: FStAdFunc var_94
  loc_A01B15: FLdPr var_94
  loc_A01B18: LateIdCall
  loc_A01B20: FFree1Ad var_94
  loc_A01B23: ImpAdCallFPR4 DoEvents()
  loc_A01B28: FLdPrThis
  loc_A01B29: VCallAd Control_ID_WebBrowser1
  loc_A01B2C: FStAdFunc var_94
  loc_A01B2F: FLdPr var_94
  loc_A01B32: LateIdLdVar var_B4 DispID_-525 -1
  loc_A01B39: CI4Var
  loc_A01B3B: LitI4 4
  loc_A01B40: NeI4
  loc_A01B41: FFree1Ad var_94
  loc_A01B44: FFree1Var var_B4 = ""
  loc_A01B47: BranchT loc_A01B23
  loc_A01B4A: LitVarStr var_A4, "Off"
  loc_A01B4F: PopAdLdVar
  loc_A01B50: FLdPrThis
  loc_A01B51: VCallAd Control_ID_WebBrowser1
  loc_A01B54: FStAdFunc var_94
  loc_A01B57: FLdPr var_94
  loc_A01B5A: LateIdLdVar var_B4 DispID_203 0
  loc_A01B61: VarLateMemSt .designMode
  loc_A01B65: FFree1Ad var_94
  loc_A01B68: FFree1Var var_B4 = ""
  loc_A01B6B: FLdPrThis
  loc_A01B6C: VCallAd Control_ID_WebBrowser1
  loc_A01B6F: FStAdFunc var_94
  loc_A01B72: FLdPr var_94
  loc_A01B75: LateIdLdVar var_B4 DispID_203 0
  loc_A01B7C: CastAdVar Me
  loc_A01B80: FStAdFuncNoPop
  loc_A01B83: FLdPr Me
  loc_A01B86: MemStAd
  loc_A01B8A: FFreeAd var_94 = ""
  loc_A01B91: FFree1Var var_B4 = ""
  loc_A01B94: LitI2_Byte 1
  loc_A01B96: FLdPr Me
  loc_A01B99: MemStI2 global_100
  loc_A01B9C: LitI2_Byte 0
  loc_A01B9E: CUI1I2
  loc_A01BA0: FLdPr Me
  loc_A01BA3: MemStUI1
  loc_A01BA7: LitI4 &HB
  loc_A01BAC: CI2I4
  loc_A01BAD: FLdPr Me
  loc_A01BB0: Me.MousePointer = from_stack_1
  loc_A01BB5: LitI2_Byte 0
  loc_A01BB7: FLdPr Me
  loc_A01BBA: Me.Enabled = from_stack_1b
  loc_A01BBF: LitI2_Byte &HFF
  loc_A01BC1: FLdPr Me
  loc_A01BC4: Me.Enabled = from_stack_1b
  loc_A01BC9: LitI4 0
  loc_A01BCE: CI2I4
  loc_A01BCF: FLdPr Me
  loc_A01BD2: Me.MousePointer = from_stack_1
  loc_A01BD7: LitVarStr var_A4, "Preparado para enviar"
  loc_A01BDC: PopAdLdVar
  loc_A01BDD: FLdPr Me
  loc_A01BE0: VCallAd Control_ID_sBar
  loc_A01BE3: FStAdFunc var_94
  loc_A01BE6: FLdPr var_94
  loc_A01BE9: LateIdSt
  loc_A01BEE: FFree1Ad var_94
  loc_A01BF1: LitI2_Byte &HFF
  loc_A01BF3: FLdPr Me
  loc_A01BF6: MemStI2 global_164
  loc_A01BF9: ExitProcHresult
End Sub

Private Sub cmdEnviar_Click() '96A6DC
  'Data Table: 48709C
  loc_96A6C0: Call Proc_90_28_B6CDA0()
  loc_96A6C5: ILdRf Me
  loc_96A6C8: FStAdNoPop
  loc_96A6CC: ImpAdLdRf MemVar_C44F9C
  loc_96A6CF: NewIfNullPr Me
  loc_96A6D2: Me.Global.Unload from_stack_1
  loc_96A6D7: FFree1Ad var_88
  loc_96A6DA: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '954524
  'Data Table: 48709C
  loc_95450C: ILdRf Me
  loc_95450F: FStAdNoPop
  loc_954513: ImpAdLdRf MemVar_C44F9C
  loc_954516: NewIfNullPr Me
  loc_954519: Me.Global.Unload from_stack_1
  loc_95451E: FFree1Ad var_88
  loc_954521: ExitProcHresult
  loc_954522: CopyBytes
End Sub

Private Sub Timer1_Timer(arg_24) '9ACC00
  'Data Table: 48709C
  loc_9ACB70: FLdPr Me
  loc_9ACB73: MemLdUI1 global_102
  loc_9ACB77: CI2UI1
  loc_9ACB79: LitI2_Byte 1
  loc_9ACB7B: AddI2
  loc_9ACB7C: CUI1I2
  loc_9ACB7E: FLdPr Me
  loc_9ACB81: MemStUI1
  loc_9ACB85: FLdRfVar var_B4
  loc_9ACB88: FLdRfVar var_B0
  loc_9ACB8B: FLdPr Me
  loc_9ACB8E: MemLdRfVar from_stack_1.global_102
  loc_9ACB91: CVarRef
  loc_9ACB96: FLdPrThis
  loc_9ACB97: VCallAd Control_ID_ImageList1
  loc_9ACB9A: FStAdFunc var_88
  loc_9ACB9D: FLdPr var_88
  loc_9ACBA0: LateIdLdVar var_98 DispID_4 0
  loc_9ACBA7: CastAdVar Me
  loc_9ACBAB: FStAdFunc var_AC
  loc_9ACBAE: FLdPr var_AC
  loc_9ACBB1:  = Me.ListImages.ControlDefault
  loc_9ACBB6: FLdPr var_B0
  loc_9ACBB9:  = Me.Picture
  loc_9ACBBE: FLdZeroAd var_B4
  loc_9ACBC1: FStAdFuncNoPop
  loc_9ACBC4: FLdPrThis
  loc_9ACBC5: VCallAd Control_ID_Image1
  loc_9ACBC8: FStAdFunc var_BC
  loc_9ACBCB: FLdPr var_BC
  loc_9ACBCE: Me.Picture = from_stack_1
  loc_9ACBD3: FFreeAd var_88 = "": var_AC = "": var_B0 = "": var_B8 = ""
  loc_9ACBE0: FFree1Var var_98 = ""
  loc_9ACBE3: FLdPr Me
  loc_9ACBE6: MemLdUI1 global_102
  loc_9ACBEA: CI2UI1
  loc_9ACBEC: LitI2_Byte &HC
  loc_9ACBEE: EqI2
  loc_9ACBEF: BranchF loc_9ACBFD
  loc_9ACBF2: LitI2_Byte 0
  loc_9ACBF4: CUI1I2
  loc_9ACBF6: FLdPr Me
  loc_9ACBF9: MemStUI1
  loc_9ACBFD: ExitProcHresult
  loc_9ACBFE: ILdRf arg_24C8
End Sub

Public Function htmlGet() '488080
  htmlGet = html
End Function

Public Sub htmlPut(Value) '48808F
  html = Value
End Sub

Public Sub htmlSet(Value) '48809E
  html = Value
End Sub

Public Function PeriInfoGet() '4880AD
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '4880BC
  PeriInfo = Value
End Sub

Public Function NumeOrpaGet() '4880CB
  NumeOrpaGet = NumeOrpa
End Function

Public Sub NumeOrpaPut(Value) '4880DA
  NumeOrpa = Value
End Sub

Public Function CucuPersGet() '4880E9
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '4880F8
  CucuPers = Value
End Sub

Public Function FechaPagoGet() '488107
  FechaPagoGet = FechaPago
End Function

Public Sub FechaPagoPut(Value) '488116
  FechaPago = Value
End Sub

Public Function htmFileGet() '488125
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '488134
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '488143
  htmFile = Value
End Sub

Public Function bGeneradoGet() '488152
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '488161
  bGenerado = Value
End Sub

Public Function global_4747420Get() '488184
  global_4747420Get = global_4747420
End Function

Public Sub global_4747420Put(Value) '48819E
  global_4747420 = Value
End Sub

Public Sub global_4747420Set(Value) '4881B8
  global_4747420 = Value
End Sub

Public Function GetStringFile(value, Force) 'A1E32C
  'Data Table: 48709C
  loc_A1E190: ZeroRetVal
  loc_A1E192: ILdI2 Force
  loc_A1E195: BranchF loc_A1E1B9
  loc_A1E198: LitI4 0
  loc_A1E19D: LitI4 -1
  loc_A1E1A2: LitI4 1
  loc_A1E1A7: LitStr " "
  loc_A1E1AA: LitStr "+"
  loc_A1E1AD: ILdI4 value
  loc_A1E1B0: ImpAdCallI2 Replace(, , , , , )
  loc_A1E1B5: IStStr
  loc_A1E1B9: LitI4 0
  loc_A1E1BE: FLdRfVar var_A0
  loc_A1E1C1: ImpAdCallFPR4  = Chr()
  loc_A1E1C6: LitI4 0
  loc_A1E1CB: LitI4 -1
  loc_A1E1D0: LitI4 1
  loc_A1E1D5: FLdRfVar var_A0
  loc_A1E1D8: CStrVarVal var_A4
  loc_A1E1DC: LitStr Chr(37) & "25"
  loc_A1E1DF: ILdI4 value
  loc_A1E1E2: ImpAdCallI2 Replace(, , , , , )
  loc_A1E1E7: IStStr
  loc_A1E1EB: FFree1Str var_A4
  loc_A1E1EE: FFree1Var var_A0 = ""
  loc_A1E1F1: LitI4 1
  loc_A1E1F6: ILdI4 value
  loc_A1E1F9: LitStr Chr(37)
  loc_A1E1FC: LitI4 0
  loc_A1E201: FnInStr4
  loc_A1E203: FStR4 var_90
  loc_A1E206: ILdRf var_90
  loc_A1E209: LitI4 0
  loc_A1E20E: GtI4
  loc_A1E20F: BranchF loc_A1E2AD
  loc_A1E212: LitI4 1
  loc_A1E217: ILdI4 value
  loc_A1E21A: LitStr Chr(37)
  loc_A1E21D: LitI4 0
  loc_A1E222: FnInStr4
  loc_A1E224: FStR4 var_90
  loc_A1E227: ILdRf var_90
  loc_A1E22A: LitI4 0
  loc_A1E22F: NeI4
  loc_A1E230: BranchF loc_A1E2AA
  loc_A1E233: LitVarI2 var_A0, 2
  loc_A1E238: ILdRf var_90
  loc_A1E23B: LitI4 1
  loc_A1E240: AddI4
  loc_A1E241: ILdRf value
  loc_A1E244: CVarRef
  loc_A1E249: FLdRfVar var_D4
  loc_A1E24C: ImpAdCallFPR4  = Mid(, , )
  loc_A1E251: FLdRfVar var_D4
  loc_A1E254: CStrVarTmp
  loc_A1E255: FStStr var_8C
  loc_A1E258: FFreeVar var_A0 = ""
  loc_A1E25F: LitStr "&H"
  loc_A1E262: ILdRf var_8C
  loc_A1E265: ConcatStr
  loc_A1E266: FStStrNoPop var_A4
  loc_A1E269: CI4Str
  loc_A1E26A: FLdRfVar var_A0
  loc_A1E26D: ImpAdCallFPR4  = Chr()
  loc_A1E272: LitI4 0
  loc_A1E277: LitI4 -1
  loc_A1E27C: LitI4 1
  loc_A1E281: FLdRfVar var_A0
  loc_A1E284: CStrVarVal var_DC
  loc_A1E288: LitStr Chr(37)
  loc_A1E28B: ILdRf var_8C
  loc_A1E28E: ConcatStr
  loc_A1E28F: FStStrNoPop var_D8
  loc_A1E292: ILdI4 value
  loc_A1E295: ImpAdCallI2 Replace(, , , , , )
  loc_A1E29A: IStStr
  loc_A1E29E: FFreeStr var_A4 = "": var_D8 = ""
  loc_A1E2A7: FFree1Var var_A0 = ""
  loc_A1E2AA: Branch loc_A1E206
  loc_A1E2AD: LitI4 0
  loc_A1E2B2: FLdRfVar var_A0
  loc_A1E2B5: ImpAdCallFPR4  = Chr()
  loc_A1E2BA: LitI4 0
  loc_A1E2BF: LitI4 -1
  loc_A1E2C4: LitI4 1
  loc_A1E2C9: LitStr Chr(37)
  loc_A1E2CC: FLdRfVar var_A0
  loc_A1E2CF: CStrVarVal var_A4
  loc_A1E2D3: ILdI4 value
  loc_A1E2D6: ImpAdCallI2 Replace(, , , , , )
  loc_A1E2DB: IStStr
  loc_A1E2DF: FFree1Str var_A4
  loc_A1E2E2: FFree1Var var_A0 = ""
  loc_A1E2E5: LitI4 0
  loc_A1E2EA: LitI4 -1
  loc_A1E2EF: LitI4 1
  loc_A1E2F4: LitStr "\"
  loc_A1E2F7: LitStr "/"
  loc_A1E2FA: ILdI4 value
  loc_A1E2FD: ImpAdCallI2 Replace(, , , , , )
  loc_A1E302: IStStr
  loc_A1E306: LitI4 0
  loc_A1E30B: LitI4 -1
  loc_A1E310: LitI4 1
  loc_A1E315: LitStr "_"
  loc_A1E318: LitStr " "
  loc_A1E31B: ILdI4 value
  loc_A1E31E: ImpAdCallI2 Replace(, , , , , )
  loc_A1E323: FStStr var_88
  loc_A1E326: ExitProcCbHresult
End Function

Public Sub GeneraReporte() 'B065BC
  'Data Table: 48709C
  loc_B05E28: FLdPr Me
  loc_B05E2B: MemLdI2 bGenerado
  loc_B05E2E: BranchF loc_B05E32
  loc_B05E31: ExitProcHresult
  loc_B05E32: LitVarStr var_94, "Generando reporte..."
  loc_B05E37: PopAdLdVar
  loc_B05E38: FLdPr Me
  loc_B05E3B: VCallAd Control_ID_sBar
  loc_B05E3E: FStAdFunc var_A8
  loc_B05E41: FLdPr var_A8
  loc_B05E44: LateIdSt
  loc_B05E49: FFree1Ad var_A8
  loc_B05E4C: LitI4 &HB
  loc_B05E51: CI2I4
  loc_B05E52: FLdPr Me
  loc_B05E55: Me.MousePointer = from_stack_1
  loc_B05E5A: LitI4 0
  loc_B05E5F: LitI4 0
  loc_B05E64: FLdPr Me
  loc_B05E67: MemLdRfVar from_stack_1.global_136
  loc_B05E6A: Redim
  loc_B05E74: LitI4 0
  loc_B05E79: LitI4 0
  loc_B05E7E: FLdPr Me
  loc_B05E81: MemLdRfVar from_stack_1.global_140
  loc_B05E84: Redim
  loc_B05E8E: LitI2_Byte 0
  loc_B05E90: CUI1I2
  loc_B05E92: FLdPr Me
  loc_B05E95: MemStUI1
  loc_B05E99: LitI2_Byte 0
  loc_B05E9B: LitVar_Missing var_B8
  loc_B05E9E: LitI2_Byte &HFF
  loc_B05EA0: LitVarI2 var_94, 0
  loc_B05EA5: PopAdLdVar
  loc_B05EA6: FLdPr Me
  loc_B05EA9: MemLdRfVar from_stack_1.global_148
  loc_B05EAC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B05EB1: FFree1Var var_B8 = ""
  loc_B05EB4: FLdPr Me
  loc_B05EB7: MemLdRfVar from_stack_1.global_104
  loc_B05EBA: NewIfNullAd
  loc_B05EBD: FStAd var_BC 
  loc_B05EC1: LitStr "SET @periinfo="
  loc_B05EC4: FLdPr Me
  loc_B05EC7: MemLdI2 PeriInfo
  loc_B05ECA: CStrUI1
  loc_B05ECC: FStStrNoPop var_C0
  loc_B05ECF: ConcatStr
  loc_B05ED0: FStStrNoPop var_C4
  loc_B05ED3: LitStr ", @numeorpa="
  loc_B05ED6: ConcatStr
  loc_B05ED7: FStStrNoPop var_C8
  loc_B05EDA: FLdPr Me
  loc_B05EDD: MemLdStr NumeOrpa
  loc_B05EE0: CStrI4
  loc_B05EE2: FStStrNoPop var_CC
  loc_B05EE5: ConcatStr
  loc_B05EE6: FStStrNoPop var_D0
  loc_B05EE9: LitStr ", @cucupers='"
  loc_B05EEC: ConcatStr
  loc_B05EED: FStStrNoPop var_D4
  loc_B05EF0: FLdPr Me
  loc_B05EF3: MemLdStr CucuPers
  loc_B05EF6: ConcatStr
  loc_B05EF7: FStStrNoPop var_D8
  loc_B05EFA: LitStr "';"
  loc_B05EFD: ConcatStr
  loc_B05EFE: FStStrNoPop var_DC
  loc_B05F01: FLdPr var_BC
  loc_B05F04: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_B05F09: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B05F1C: LitStr "SELECT NumeOrpa, ExpeImpu, NumeLiqu, DetaOrpa"
  loc_B05F1F: LitStr " FROM ordenpago"
  loc_B05F22: ConcatStr
  loc_B05F23: FStStrNoPop var_C0
  loc_B05F26: LitStr " WHERE PeriInfo = @periinfo AND NumeOrpa = @numeorpa;"
  loc_B05F29: ConcatStr
  loc_B05F2A: FStStrNoPop var_C4
  loc_B05F2D: FLdPr var_BC
  loc_B05F30: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_B05F35: FFreeStr var_C0 = ""
  loc_B05F3C: FLdRfVar var_E0
  loc_B05F3F: FLdPr var_BC
  loc_B05F42: from_stack_1 = clsordenpago.RecordCount
  loc_B05F47: ILdRf var_E0
  loc_B05F4A: LitI4 1
  loc_B05F4F: LtI4
  loc_B05F50: BranchF loc_B05F9E
  loc_B05F53: LitI4 0
  loc_B05F58: LitStr "No se encontró la orden de pago Nº "
  loc_B05F5B: FLdPr Me
  loc_B05F5E: MemLdStr NumeOrpa
  loc_B05F61: CStrI4
  loc_B05F63: FStStrNoPop var_C0
  loc_B05F66: ConcatStr
  loc_B05F67: FStStrNoPop var_C4
  loc_B05F6A: LitStr " del "
  loc_B05F6D: ConcatStr
  loc_B05F6E: FStStrNoPop var_C8
  loc_B05F71: FLdPr Me
  loc_B05F74: MemLdI2 PeriInfo
  loc_B05F77: CStrUI1
  loc_B05F79: FStStrNoPop var_CC
  loc_B05F7C: ConcatStr
  loc_B05F7D: FStStrNoPop var_D0
  loc_B05F80: LitStr "."
  loc_B05F83: ConcatStr
  loc_B05F84: FStStrNoPop var_D4
  loc_B05F87: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B05F8C: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_B05F9B: Branch loc_B06590
  loc_B05F9E: FLdRfVar var_E8
  loc_B05FA1: LitVarStr var_94, "ExpeImpu"
  loc_B05FA6: PopAdLdVar
  loc_B05FA7: FLdRfVar var_E4
  loc_B05FAA: FLdRfVar var_A8
  loc_B05FAD: FLdPr var_BC
  loc_B05FB0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B05FB5: FLdPr var_A8
  loc_B05FB8:  = Me.Fields
  loc_B05FBD: FLdPr var_E4
  loc_B05FC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B05FC5: LitI2_Byte 0
  loc_B05FC7: LitVar_Missing var_F8
  loc_B05FCA: LitI2_Byte 0
  loc_B05FCC: FLdZeroAd var_E8
  loc_B05FCF: CVarAd
  loc_B05FD3: PopAdLdVar
  loc_B05FD4: FLdPr Me
  loc_B05FD7: MemLdRfVar from_stack_1.global_120
  loc_B05FDA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B05FDF: FFreeAd var_A8 = ""
  loc_B05FE6: FFreeVar var_B8 = ""
  loc_B05FED: FLdRfVar var_E8
  loc_B05FF0: LitVarStr var_94, "NumeLiqu"
  loc_B05FF5: PopAdLdVar
  loc_B05FF6: FLdRfVar var_E4
  loc_B05FF9: FLdRfVar var_A8
  loc_B05FFC: FLdPr var_BC
  loc_B05FFF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B06004: FLdPr var_A8
  loc_B06007:  = Me.Fields
  loc_B0600C: FLdPr var_E4
  loc_B0600F: from_stack_2 = Me.Item(from_stack_1)
  loc_B06014: LitI2_Byte 0
  loc_B06016: LitVar_Missing var_F8
  loc_B06019: LitI2_Byte 0
  loc_B0601B: FLdZeroAd var_E8
  loc_B0601E: CVarAd
  loc_B06022: PopAdLdVar
  loc_B06023: FLdPr Me
  loc_B06026: MemLdRfVar from_stack_1.global_124
  loc_B06029: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0602E: FFreeAd var_A8 = ""
  loc_B06035: FFreeVar var_B8 = ""
  loc_B0603C: FLdRfVar var_E8
  loc_B0603F: LitVarStr var_94, "DetaOrpa"
  loc_B06044: PopAdLdVar
  loc_B06045: FLdRfVar var_E4
  loc_B06048: FLdRfVar var_A8
  loc_B0604B: FLdPr var_BC
  loc_B0604E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B06053: FLdPr var_A8
  loc_B06056:  = Me.Fields
  loc_B0605B: FLdPr var_E4
  loc_B0605E: from_stack_2 = Me.Item(from_stack_1)
  loc_B06063: LitI2_Byte 0
  loc_B06065: LitVar_Missing var_F8
  loc_B06068: LitI2_Byte 0
  loc_B0606A: FLdZeroAd var_E8
  loc_B0606D: CVarAd
  loc_B06071: PopAdLdVar
  loc_B06072: FLdPr Me
  loc_B06075: MemLdRfVar from_stack_1.global_128
  loc_B06078: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0607D: FFreeAd var_A8 = ""
  loc_B06084: FFreeVar var_B8 = ""
  loc_B0608B: LitNothing
  loc_B0608D: FStAd var_BC 
  loc_B06091: FLdPr Me
  loc_B06094: MemLdRfVar from_stack_1.global_108
  loc_B06097: NewIfNullAd
  loc_B0609A: FStAd var_FC 
  loc_B0609E: LitStr "SELECT CucuPers, DetaProv"
  loc_B060A1: LitStr " FROM proveedor"
  loc_B060A4: ConcatStr
  loc_B060A5: FStStrNoPop var_C0
  loc_B060A8: LitStr " WHERE CucuPers = @cucupers;"
  loc_B060AB: ConcatStr
  loc_B060AC: FStStrNoPop var_C4
  loc_B060AF: FLdPr var_FC
  loc_B060B2: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_B060B7: FFreeStr var_C0 = ""
  loc_B060BE: FLdRfVar var_E0
  loc_B060C1: FLdPr var_FC
  loc_B060C4: from_stack_1 = clsproveedor.RecordCount
  loc_B060C9: ILdRf var_E0
  loc_B060CC: LitI4 1
  loc_B060D1: LtI4
  loc_B060D2: BranchF loc_B06135
  loc_B060D5: LitI4 0
  loc_B060DA: LitStr "No se encontró el proveedor "
  loc_B060DD: FLdPr Me
  loc_B060E0: MemLdStr CucuPers
  loc_B060E3: ConcatStr
  loc_B060E4: FStStrNoPop var_C0
  loc_B060E7: LitStr " que corresponda a la orden de pago Nº "
  loc_B060EA: ConcatStr
  loc_B060EB: FStStrNoPop var_C4
  loc_B060EE: FLdPr Me
  loc_B060F1: MemLdStr NumeOrpa
  loc_B060F4: CStrI4
  loc_B060F6: FStStrNoPop var_C8
  loc_B060F9: ConcatStr
  loc_B060FA: FStStrNoPop var_CC
  loc_B060FD: LitStr " del "
  loc_B06100: ConcatStr
  loc_B06101: FStStrNoPop var_D0
  loc_B06104: FLdPr Me
  loc_B06107: MemLdI2 PeriInfo
  loc_B0610A: CStrUI1
  loc_B0610C: FStStrNoPop var_D4
  loc_B0610F: ConcatStr
  loc_B06110: FStStrNoPop var_D8
  loc_B06113: LitStr "."
  loc_B06116: ConcatStr
  loc_B06117: FStStrNoPop var_DC
  loc_B0611A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0611F: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B06132: Branch loc_B06590
  loc_B06135: FLdRfVar var_E8
  loc_B06138: LitVarStr var_94, "DetaProv"
  loc_B0613D: PopAdLdVar
  loc_B0613E: FLdRfVar var_E4
  loc_B06141: FLdRfVar var_A8
  loc_B06144: FLdPr var_FC
  loc_B06147: from_stack_1v = clsproveedor.RsFrmGet()
  loc_B0614C: FLdPr var_A8
  loc_B0614F:  = Me.Fields
  loc_B06154: FLdPr var_E4
  loc_B06157: from_stack_2 = Me.Item(from_stack_1)
  loc_B0615C: LitI2_Byte 0
  loc_B0615E: LitVar_Missing var_F8
  loc_B06161: LitI2_Byte 0
  loc_B06163: FLdZeroAd var_E8
  loc_B06166: CVarAd
  loc_B0616A: PopAdLdVar
  loc_B0616B: FLdPr Me
  loc_B0616E: MemLdRfVar from_stack_1.global_132
  loc_B06171: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B06176: FFreeAd var_A8 = ""
  loc_B0617D: FFreeVar var_B8 = ""
  loc_B06184: LitNothing
  loc_B06186: FStAd var_FC 
  loc_B0618A: FLdPr Me
  loc_B0618D: MemLdRfVar from_stack_1.global_112
  loc_B06190: NewIfNullAd
  loc_B06193: FStAd var_100 
  loc_B06197: LitStr "SELECT NumeFact comprobante, Sum(ImpoImpu) ImpoImpu"
  loc_B0619A: LitStr " FROM liquidacion l"
  loc_B0619D: ConcatStr
  loc_B0619E: FStStrNoPop var_C0
  loc_B061A1: LitStr " INNER JOIN v_liqdeta ld ON ld.PeriInfo = l.PeriInfo AND ld.ExpeImpu = l.ExpeImpu AND ld.NumeLiqu = l.NumeLiqu AND NumeFact <> ''"
  loc_B061A4: ConcatStr
  loc_B061A5: FStStrNoPop var_C4
  loc_B061A8: LitStr " WHERE l.PeriInfo = @periinfo AND l.NumeOrpa = @numeorpa AND CucuPers = @cucupers"
  loc_B061AB: ConcatStr
  loc_B061AC: FStStrNoPop var_C8
  loc_B061AF: LitStr " GROUP BY NumeFact;"
  loc_B061B2: ConcatStr
  loc_B061B3: FStStrNoPop var_CC
  loc_B061B6: FLdPr var_100
  loc_B061B9: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_B061BE: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B061C9: FLdRfVar var_E0
  loc_B061CC: FLdPr var_100
  loc_B061CF: from_stack_1 = clsliquidacion.RecordCount
  loc_B061D4: ILdRf var_E0
  loc_B061D7: LitI4 1
  loc_B061DC: LtI4
  loc_B061DD: BranchF loc_B06240
  loc_B061E0: LitI4 0
  loc_B061E5: LitStr "No se encontraron comprobantes del proveedor "
  loc_B061E8: FLdPr Me
  loc_B061EB: MemLdStr CucuPers
  loc_B061EE: ConcatStr
  loc_B061EF: FStStrNoPop var_C0
  loc_B061F2: LitStr " que corresponda a la orden de pago Nº "
  loc_B061F5: ConcatStr
  loc_B061F6: FStStrNoPop var_C4
  loc_B061F9: FLdPr Me
  loc_B061FC: MemLdStr NumeOrpa
  loc_B061FF: CStrI4
  loc_B06201: FStStrNoPop var_C8
  loc_B06204: ConcatStr
  loc_B06205: FStStrNoPop var_CC
  loc_B06208: LitStr " del "
  loc_B0620B: ConcatStr
  loc_B0620C: FStStrNoPop var_D0
  loc_B0620F: FLdPr Me
  loc_B06212: MemLdI2 PeriInfo
  loc_B06215: CStrUI1
  loc_B06217: FStStrNoPop var_D4
  loc_B0621A: ConcatStr
  loc_B0621B: FStStrNoPop var_D8
  loc_B0621E: LitStr "."
  loc_B06221: ConcatStr
  loc_B06222: FStStrNoPop var_DC
  loc_B06225: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0622A: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B0623D: Branch loc_B06590
  loc_B06240: LitI4 0
  loc_B06245: FLdRfVar var_E0
  loc_B06248: FLdPr var_100
  loc_B0624B: from_stack_1 = clsliquidacion.RecordCount
  loc_B06250: ILdRf var_E0
  loc_B06253: FLdPr Me
  loc_B06256: MemLdRfVar from_stack_1.global_136
  loc_B06259: Redim
  loc_B06263: FLdPr var_100
  loc_B06266: Call clsliquidacion.MoveFirst()
  loc_B0626B: LitI2_Byte 1
  loc_B0626D: FLdPr Me
  loc_B06270: MemLdRfVar from_stack_1.global_152
  loc_B06273: FLdPr Me
  loc_B06276: MemLdStr global_136
  loc_B06279: LitI2_Byte 1
  loc_B0627B: FnUBound
  loc_B0627D: CI2I4
  loc_B0627E: ForI2 var_104
  loc_B06284: FLdRfVar var_E8
  loc_B06287: LitVarStr var_94, "Comprobante"
  loc_B0628C: PopAdLdVar
  loc_B0628D: FLdRfVar var_E4
  loc_B06290: FLdRfVar var_A8
  loc_B06293: FLdPr var_100
  loc_B06296: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B0629B: FLdPr var_A8
  loc_B0629E:  = Me.Fields
  loc_B062A3: FLdPr var_E4
  loc_B062A6: from_stack_2 = Me.Item(from_stack_1)
  loc_B062AB: LitI2_Byte 0
  loc_B062AD: LitVar_Missing var_F8
  loc_B062B0: LitI2_Byte 0
  loc_B062B2: FLdZeroAd var_E8
  loc_B062B5: CVarAd
  loc_B062B9: PopAdLdVar
  loc_B062BA: FLdPr Me
  loc_B062BD: MemLdI2 global_152
  loc_B062C0: CI4UI1
  loc_B062C1: FLdPr Me
  loc_B062C4: MemLdStr global_136
  loc_B062C7: AryLock
  loc_B062CA: Ary1LdPr
  loc_B062CB: MemLdRfVar from_stack_1.global_0
  loc_B062CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B062D3: AryUnlock
  loc_B062D6: FFreeAd var_A8 = ""
  loc_B062DD: FFreeVar var_B8 = ""
  loc_B062E4: FLdRfVar var_E8
  loc_B062E7: LitVarStr var_94, "ImpoImpu"
  loc_B062EC: PopAdLdVar
  loc_B062ED: FLdRfVar var_E4
  loc_B062F0: FLdRfVar var_A8
  loc_B062F3: FLdPr var_100
  loc_B062F6: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B062FB: FLdPr var_A8
  loc_B062FE:  = Me.Fields
  loc_B06303: FLdPr var_E4
  loc_B06306: from_stack_2 = Me.Item(from_stack_1)
  loc_B0630B: LitI2_Byte 0
  loc_B0630D: FLdPr Me
  loc_B06310: MemLdRfVar from_stack_1.global_148
  loc_B06313: CVarRef
  loc_B06318: LitI2_Byte &HFF
  loc_B0631A: FLdZeroAd var_E8
  loc_B0631D: CVarAd
  loc_B06321: PopAdLdVar
  loc_B06322: FLdPr Me
  loc_B06325: MemLdI2 global_152
  loc_B06328: CI4UI1
  loc_B06329: FLdPr Me
  loc_B0632C: MemLdStr global_136
  loc_B0632F: AryLock
  loc_B06332: Ary1LdPr
  loc_B06333: MemLdRfVar from_stack_1.global_4
  loc_B06336: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0633B: AryUnlock
  loc_B0633E: FFreeAd var_A8 = ""
  loc_B06345: FFree1Var var_B8 = ""
  loc_B06348: LitI2_Byte 1
  loc_B0634A: PopTmpLdAd2 var_10A
  loc_B0634D: FLdPr var_100
  loc_B06350: Call clsliquidacion.Move(from_stack_1v)
  loc_B06355: FLdPr Me
  loc_B06358: MemLdRfVar from_stack_1.global_152
  loc_B0635B: NextI2 var_104, loc_B06284
  loc_B06360: LitNothing
  loc_B06362: FStAd var_100 
  loc_B06366: FLdPr Me
  loc_B06369: MemLdRfVar from_stack_1.global_116
  loc_B0636C: NewIfNullAd
  loc_B0636F: FStAd var_110 
  loc_B06373: LitStr "SELECT IF(proveedor.PainProv=0,'cheque',IF(cheque.AutoCheq=1,'cheque','transferencia')) medio, DetaBanc, IF(proveedor.PainProv=0,NumeMoba,IF(cheque.AutoCheq=1,NumeMoba,InteMoba)) NumeMoba, ImpoCheq"
  loc_B06376: LitStr " FROM cheque"
  loc_B06379: ConcatStr
  loc_B0637A: FStStrNoPop var_C0
  loc_B0637D: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B06380: ConcatStr
  loc_B06381: FStStrNoPop var_C4
  loc_B06384: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_B06387: ConcatStr
  loc_B06388: FStStrNoPop var_C8
  loc_B0638B: LitStr " WHERE cheque.PeriInfo = @periinfo AND NumeOrpa = @numeorpa AND cheque.CucuPers = @cucupers AND cheque.FeanCheq IS NULL"
  loc_B0638E: ConcatStr
  loc_B0638F: FStStrNoPop var_CC
  loc_B06392: LitStr " UNION ALL"
  loc_B06395: ConcatStr
  loc_B06396: FStStrNoPop var_D0
  loc_B06399: LitStr " SELECT 'retencion', DetaRete, CertLine, ImpoLine"
  loc_B0639C: ConcatStr
  loc_B0639D: FStStrNoPop var_D4
  loc_B063A0: LitStr " FROM liquidacion"
  loc_B063A3: ConcatStr
  loc_B063A4: FStStrNoPop var_D8
  loc_B063A7: LitStr " INNER JOIN liquidaneto ON liquidaneto.ExpeImpu = liquidacion.ExpeImpu AND liquidaneto.NumeLiqu = liquidacion.NumeLiqu AND liquidaneto.CodiRete > 0"
  loc_B063AA: ConcatStr
  loc_B063AB: FStStrNoPop var_DC
  loc_B063AE: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = liquidaneto.PeriInfo AND retenciones.CodiRete = liquidaneto.CodiRete"
  loc_B063B1: ConcatStr
  loc_B063B2: FStStrNoPop var_114
  loc_B063B5: LitStr " WHERE liquidacion.PeriInfo = @periinfo AND liquidacion.NumeOrpa = @numeorpa AND liquidaneto.CucuPers = @cucupers"
  loc_B063B8: ConcatStr
  loc_B063B9: FStStrNoPop var_118
  loc_B063BC: FLdPr var_110
  loc_B063BF: Call clscheque.RedefineRS(from_stack_1v)
  loc_B063C4: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_114 = ""
  loc_B063DB: FLdRfVar var_E0
  loc_B063DE: FLdPr var_110
  loc_B063E1: from_stack_1 = clscheque.RecordCount
  loc_B063E6: ILdRf var_E0
  loc_B063E9: LitI4 1
  loc_B063EE: LtI4
  loc_B063EF: BranchF loc_B06452
  loc_B063F2: LitI4 0
  loc_B063F7: LitStr "No se encontraron medios de pago del proveedor "
  loc_B063FA: FLdPr Me
  loc_B063FD: MemLdStr CucuPers
  loc_B06400: ConcatStr
  loc_B06401: FStStrNoPop var_C0
  loc_B06404: LitStr " que corresponda a la orden de pago Nº "
  loc_B06407: ConcatStr
  loc_B06408: FStStrNoPop var_C4
  loc_B0640B: FLdPr Me
  loc_B0640E: MemLdStr NumeOrpa
  loc_B06411: CStrI4
  loc_B06413: FStStrNoPop var_C8
  loc_B06416: ConcatStr
  loc_B06417: FStStrNoPop var_CC
  loc_B0641A: LitStr " del "
  loc_B0641D: ConcatStr
  loc_B0641E: FStStrNoPop var_D0
  loc_B06421: FLdPr Me
  loc_B06424: MemLdI2 PeriInfo
  loc_B06427: CStrUI1
  loc_B06429: FStStrNoPop var_D4
  loc_B0642C: ConcatStr
  loc_B0642D: FStStrNoPop var_D8
  loc_B06430: LitStr "."
  loc_B06433: ConcatStr
  loc_B06434: FStStrNoPop var_DC
  loc_B06437: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0643C: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B0644F: Branch loc_B06590
  loc_B06452: LitI4 0
  loc_B06457: LitI4 0
  loc_B0645C: FLdPr Me
  loc_B0645F: MemLdRfVar from_stack_1.global_140
  loc_B06462: Redim
  loc_B0646C: FLdPr var_110
  loc_B0646F: Call clscheque.MoveFirst()
  loc_B06474: FLdRfVar var_B8
  loc_B06477: FLdRfVar var_E8
  loc_B0647A: LitVarStr var_94, "medio"
  loc_B0647F: PopAdLdVar
  loc_B06480: FLdRfVar var_E4
  loc_B06483: FLdRfVar var_A8
  loc_B06486: FLdPr var_110
  loc_B06489: from_stack_1v = clscheque.RsFrmGet()
  loc_B0648E: FLdPr var_A8
  loc_B06491:  = Me.Fields
  loc_B06496: FLdPr var_E4
  loc_B06499: from_stack_2 = Me.Item(from_stack_1)
  loc_B0649E: FLdPr var_E8
  loc_B064A1:  = Me.Value
  loc_B064A6: LitVarStr var_158, " "
  loc_B064AB: FStVarCopyObj var_168
  loc_B064AE: FLdRfVar var_168
  loc_B064B1: LitVarStr var_138, " ha remitido un cheque a su orden "
  loc_B064B6: FStVarCopyObj var_148
  loc_B064B9: FLdRfVar var_148
  loc_B064BC: FLdRfVar var_B8
  loc_B064BF: LitVarStr var_A4, "cheque"
  loc_B064C4: HardType
  loc_B064C5: EqVar var_F8
  loc_B064C9: FStVar var_128
  loc_B064CD: FLdRfVar var_128
  loc_B064D0: FLdRfVar var_178
  loc_B064D3: ImpAdCallFPR4  = IIf(, , )
  loc_B064D8: FLdRfVar var_178
  loc_B064DB: CStrVarTmp
  loc_B064DC: FStStrNoPop var_C0
  loc_B064DF: FLdPr Me
  loc_B064E2: MemStStrCopy
  loc_B064E6: FFree1Str var_C0
  loc_B064E9: FFreeAd var_A8 = "": var_E4 = ""
  loc_B064F2: FFreeVar var_B8 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_B064FF: Call Proc_90_30_9B7E34()
  loc_B06504: FLdRfVar var_10A
  loc_B06507: FLdPr var_110
  loc_B0650A: from_stack_1 = clscheque.EOF
  loc_B0650F: FLdI2 var_10A
  loc_B06512: NotI4
  loc_B06513: BranchF loc_B06582
  loc_B06516: FLdRfVar var_B8
  loc_B06519: FLdRfVar var_E8
  loc_B0651C: LitVarStr var_94, "medio"
  loc_B06521: PopAdLdVar
  loc_B06522: FLdRfVar var_E4
  loc_B06525: FLdRfVar var_A8
  loc_B06528: FLdPr var_110
  loc_B0652B: from_stack_1v = clscheque.RsFrmGet()
  loc_B06530: FLdPr var_A8
  loc_B06533:  = Me.Fields
  loc_B06538: FLdPr var_E4
  loc_B0653B: from_stack_2 = Me.Item(from_stack_1)
  loc_B06540: FLdPr var_E8
  loc_B06543:  = Me.Value
  loc_B06548: FLdRfVar var_B8
  loc_B0654B: FLdPr Me
  loc_B0654E: MemLdUI1 global_144
  loc_B06552: CI4UI1
  loc_B06553: FLdPr Me
  loc_B06556: MemLdStr global_140
  loc_B06559: Ary1LdPr
  loc_B0655A: MemLdStr global_0
  loc_B0655D: CVarStr var_A4
  loc_B06560: HardType
  loc_B06561: NeVarBool
  loc_B06563: FFreeAd var_A8 = "": var_E4 = ""
  loc_B0656C: FFree1Var var_B8 = ""
  loc_B0656F: BranchF loc_B0657A
  loc_B06572: Call Proc_90_30_9B7E34()
  loc_B06577: Branch loc_B0657F
  loc_B0657A: Call Proc_90_31_A14570()
  loc_B0657F: Branch loc_B06504
  loc_B06582: LitNothing
  loc_B06584: FStAd var_110 
  loc_B06588: LitI2_Byte &HFF
  loc_B0658A: FLdPr Me
  loc_B0658D: MemStI2 bGenerado
  loc_B06590: LitI4 0
  loc_B06595: CI2I4
  loc_B06596: FLdPr Me
  loc_B06599: Me.MousePointer = from_stack_1
  loc_B0659E: LitVarStr var_94, vbNullString
  loc_B065A3: PopAdLdVar
  loc_B065A4: FLdPr Me
  loc_B065A7: VCallAd Control_ID_sBar
  loc_B065AA: FStAdFunc var_A8
  loc_B065AD: FLdPr var_A8
  loc_B065B0: LateIdSt
  loc_B065B5: FFree1Ad var_A8
  loc_B065B8: ExitProcHresult
  loc_B065B9: FnLBound
End Sub

Public Sub GeneraHTML() '9B8A74
  'Data Table: 48709C
  loc_9B89C4: LitVarStr var_94, "Generando cuerpo del mensaje..."
  loc_9B89C9: PopAdLdVar
  loc_9B89CA: FLdPr Me
  loc_9B89CD: VCallAd Control_ID_sBar
  loc_9B89D0: FStAdFunc var_A8
  loc_9B89D3: FLdPr var_A8
  loc_9B89D6: LateIdSt
  loc_9B89DB: FFree1Ad var_A8
  loc_9B89DE: FLdPr Me
  loc_9B89E1: MemLdStr NumeOrpa
  loc_9B89E4: CStrI4
  loc_9B89E6: FStStrNoPop var_AC
  loc_9B89E9: LitStr "-"
  loc_9B89EC: ConcatStr
  loc_9B89ED: FStStrNoPop var_B0
  loc_9B89F0: FLdPr Me
  loc_9B89F3: MemLdI2 PeriInfo
  loc_9B89F6: CStrUI1
  loc_9B89F8: FStStrNoPop var_B4
  loc_9B89FB: ConcatStr
  loc_9B89FC: PopTmpLdAdStr
  loc_9B8A00: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_9B8A05: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_9B8A10: FLdRfVar var_A8
  loc_9B8A13: LitI2_Byte 0
  loc_9B8A15: LitI2_Byte &HFF
  loc_9B8A17: ImpAdLdI4 MemVar_C3D83C
  loc_9B8A1A: FLdPr Me
  loc_9B8A1D: MemLdRfVar from_stack_1.global_160
  loc_9B8A20: NewIfNullPr IFileSystem3
  loc_9B8A23: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9B8A28: ILdRf var_A8
  loc_9B8A2B: FLdPr Me
  loc_9B8A2E: MemStVarAd
  loc_9B8A32: FFree1Ad var_A8
  loc_9B8A35: Call Proc_90_33_A87560()
  loc_9B8A3A: Call Proc_90_32_AA1E28()
  loc_9B8A3F: Call Proc_90_34_973CE0()
  loc_9B8A44: FLdPr Me
  loc_9B8A47: MemLdRfVar from_stack_1.htmFile
  loc_9B8A4A: LdPrVar
  loc_9B8A4C: LateMemCall
  loc_9B8A52: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9B8A57: LitVarStr var_94, vbNullString
  loc_9B8A5C: PopAdLdVar
  loc_9B8A5D: FLdPr Me
  loc_9B8A60: VCallAd Control_ID_sBar
  loc_9B8A63: FStAdFunc var_A8
  loc_9B8A66: FLdPr var_A8
  loc_9B8A69: LateIdSt
  loc_9B8A6E: FFree1Ad var_A8
  loc_9B8A71: ExitProcHresult
End Sub

Private Function Proc_90_28_B6CDA0() 'B6CDA0
  'Data Table: 48709C
  loc_B6C21C: OnErrorGoto loc_B6CD14
  loc_B6C221: LitVarStr var_B4, "Enviando..."
  loc_B6C226: PopAdLdVar
  loc_B6C227: FLdPr Me
  loc_B6C22A: VCallAd Control_ID_sBar
  loc_B6C22D: FStAdFunc var_C8
  loc_B6C230: FLdPr var_C8
  loc_B6C233: LateIdSt
  loc_B6C238: FFree1Ad var_C8
  loc_B6C23D: LitI4 &HB
  loc_B6C242: CI2I4
  loc_B6C243: FLdPr Me
  loc_B6C246: Me.MousePointer = from_stack_1
  loc_B6C24D: LitI2_Byte 0
  loc_B6C24F: FLdPr Me
  loc_B6C252: Me.Enabled = from_stack_1b
  loc_B6C259: LitI2_Byte 3
  loc_B6C25B: FLdPr Me
  loc_B6C25E: VCallAd Control_ID_Shape1
  loc_B6C261: FStAdFunc var_C8
  loc_B6C264: FLdPr var_C8
  loc_B6C267: Me.BorderWidth = from_stack_1
  loc_B6C26C: FFree1Ad var_C8
  loc_B6C271: LitI2_Byte &HFF
  loc_B6C273: FLdPr Me
  loc_B6C276: VCallAd Control_ID_EnviandoFra
  loc_B6C279: FStAdFunc var_C8
  loc_B6C27C: FLdPr var_C8
  loc_B6C27F: Me.Visible = from_stack_1b
  loc_B6C284: FFree1Ad var_C8
  loc_B6C289: FLdRfVar var_F4
  loc_B6C28C: FLdRfVar var_F0
  loc_B6C28F: LitVarI2 var_E8, 1
  loc_B6C294: FLdPrThis
  loc_B6C295: VCallAd Control_ID_ImageList1
  loc_B6C298: FStAdFunc var_C8
  loc_B6C29B: FLdPr var_C8
  loc_B6C29E: LateIdLdVar var_D8 DispID_4 0
  loc_B6C2A5: CastAdVar Me
  loc_B6C2A9: FStAdFunc var_EC
  loc_B6C2AC: FLdPr var_EC
  loc_B6C2AF:  = Me.ListImages.ControlDefault
  loc_B6C2B4: FLdPr var_F0
  loc_B6C2B7:  = Me.Picture
  loc_B6C2BC: FLdZeroAd var_F4
  loc_B6C2BF: FStAdFuncNoPop
  loc_B6C2C2: FLdPrThis
  loc_B6C2C3: VCallAd Control_ID_Image1
  loc_B6C2C6: FStAdFunc var_FC
  loc_B6C2C9: FLdPr var_FC
  loc_B6C2CC: Me.Picture = from_stack_1
  loc_B6C2D1: FFreeAd var_C8 = "": var_EC = "": var_F0 = "": var_F8 = ""
  loc_B6C2DE: FFreeVar var_D8 = ""
  loc_B6C2E7: LitI2_Byte &HFF
  loc_B6C2E9: FLdPr Me
  loc_B6C2EC: VCallAd Control_ID_Timer1
  loc_B6C2EF: FStAdFunc var_C8
  loc_B6C2F2: FLdPr var_C8
  loc_B6C2F5: Me.Enabled = from_stack_1b
  loc_B6C2FA: FFree1Ad var_C8
  loc_B6C2FF: ImpAdCallFPR4 DoEvents()
  loc_B6C306: LitI4 0
  loc_B6C30B: LitStr "CDO.Configuration"
  loc_B6C30E: FLdRfVar var_D8
  loc_B6C311: ImpAdCallFPR4  = CreateObject(, )
  loc_B6C316: FLdRfVar var_D8
  loc_B6C319: CAdVar
  loc_B6C31B: FStAd var_88 
  loc_B6C31F: FFree1Var var_D8 = ""
  loc_B6C324: LitStr "Municipalidad de Guaymallén"
  loc_B6C327: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B6C32A: EqStr
  loc_B6C32C: BranchF loc_B6C4FF
  loc_B6C331: FLdPr Me
  loc_B6C334: MemLdRfVar from_stack_1.eUsua
  loc_B6C337: NewIfNullRf
  loc_B6C33B: ImpAdLdI4 MemVar_C3D03C
  loc_B6C33E: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_B6C345: FLdPr var_88
  loc_B6C348: LateMemLdVar
  loc_B6C34D: FStVarZero
  loc_B6C351: FLdRfVar var_10C
  loc_B6C354: FStR4 var_110
  loc_B6C359: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C35C: LitStr "smtpserver"
  loc_B6C35F: ConcatStr
  loc_B6C360: CVarStr var_D8
  loc_B6C363: PopAdLdVar
  loc_B6C364: FLdRfVar var_114
  loc_B6C367: FLdPr Me
  loc_B6C36A: MemLdRfVar from_stack_1.eUsua
  loc_B6C36D: NewIfNullPr tblusuario
  loc_B6C370: from_stack_1v = tblusuario.SemaUsuaGet()
  loc_B6C375: FLdZeroAd var_114
  loc_B6C378: CVarStr var_E8
  loc_B6C37B: PopAdLdVar
  loc_B6C37C: ILdRf var_110
  loc_B6C37F: VarLateMemCallSt
  loc_B6C385: FFreeVar var_D8 = ""
  loc_B6C38E: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C391: LitStr "smtpserverport"
  loc_B6C394: ConcatStr
  loc_B6C395: CVarStr var_D8
  loc_B6C398: PopAdLdVar
  loc_B6C399: FLdRfVar var_114
  loc_B6C39C: FLdPr Me
  loc_B6C39F: MemLdRfVar from_stack_1.eUsua
  loc_B6C3A2: NewIfNullPr tblusuario
  loc_B6C3A5: from_stack_1v = tblusuario.PumaUsuaGet()
  loc_B6C3AA: FLdZeroAd var_114
  loc_B6C3AD: CVarStr var_E8
  loc_B6C3B0: PopAdLdVar
  loc_B6C3B1: ILdRf var_110
  loc_B6C3B4: VarLateMemCallSt
  loc_B6C3BA: FFreeVar var_D8 = ""
  loc_B6C3C3: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C3C6: LitStr "sendusing"
  loc_B6C3C9: ConcatStr
  loc_B6C3CA: CVarStr var_D8
  loc_B6C3CD: PopAdLdVar
  loc_B6C3CE: LitVarI2 var_C4, 2
  loc_B6C3D3: PopAdLdVar
  loc_B6C3D4: ILdRf var_110
  loc_B6C3D7: VarLateMemCallSt
  loc_B6C3DD: FFree1Var var_D8 = ""
  loc_B6C3E2: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C3E5: LitStr "sendusername"
  loc_B6C3E8: ConcatStr
  loc_B6C3E9: CVarStr var_D8
  loc_B6C3EC: PopAdLdVar
  loc_B6C3ED: FLdRfVar var_114
  loc_B6C3F0: FLdPr Me
  loc_B6C3F3: MemLdRfVar from_stack_1.eUsua
  loc_B6C3F6: NewIfNullPr tblusuario
  loc_B6C3F9: from_stack_1v = tblusuario.UsmaUsuaGet()
  loc_B6C3FE: FLdZeroAd var_114
  loc_B6C401: CVarStr var_E8
  loc_B6C404: PopAdLdVar
  loc_B6C405: ILdRf var_110
  loc_B6C408: VarLateMemCallSt
  loc_B6C40E: FFreeVar var_D8 = ""
  loc_B6C417: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C41A: LitStr "sendpassword"
  loc_B6C41D: ConcatStr
  loc_B6C41E: CVarStr var_D8
  loc_B6C421: PopAdLdVar
  loc_B6C422: FLdRfVar var_114
  loc_B6C425: FLdPr Me
  loc_B6C428: MemLdRfVar from_stack_1.eUsua
  loc_B6C42B: NewIfNullPr tblusuario
  loc_B6C42E: from_stack_1v = tblusuario.ComaUsuaGet()
  loc_B6C433: FLdZeroAd var_114
  loc_B6C436: CVarStr var_E8
  loc_B6C439: PopAdLdVar
  loc_B6C43A: ILdRf var_110
  loc_B6C43D: VarLateMemCallSt
  loc_B6C443: FFreeVar var_D8 = ""
  loc_B6C44C: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C44F: LitStr "smtpusessl"
  loc_B6C452: ConcatStr
  loc_B6C453: CVarStr var_D8
  loc_B6C456: PopAdLdVar
  loc_B6C457: FLdRfVar var_114
  loc_B6C45A: FLdPr Me
  loc_B6C45D: MemLdRfVar from_stack_1.eUsua
  loc_B6C460: NewIfNullPr tblusuario
  loc_B6C463: from_stack_1v = tblusuario.UsslUsuaGet()
  loc_B6C468: FLdZeroAd var_114
  loc_B6C46B: CVarStr var_E8
  loc_B6C46E: PopAdLdVar
  loc_B6C46F: ILdRf var_110
  loc_B6C472: VarLateMemCallSt
  loc_B6C478: FFreeVar var_D8 = ""
  loc_B6C481: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C484: LitStr "smtpsuetls"
  loc_B6C487: ConcatStr
  loc_B6C488: CVarStr var_D8
  loc_B6C48B: PopAdLdVar
  loc_B6C48C: FLdRfVar var_114
  loc_B6C48F: FLdPr Me
  loc_B6C492: MemLdRfVar from_stack_1.eUsua
  loc_B6C495: NewIfNullPr tblusuario
  loc_B6C498: from_stack_1v = tblusuario.UtlsUsuaGet()
  loc_B6C49D: FLdZeroAd var_114
  loc_B6C4A0: CVarStr var_E8
  loc_B6C4A3: PopAdLdVar
  loc_B6C4A4: ILdRf var_110
  loc_B6C4A7: VarLateMemCallSt
  loc_B6C4AD: FFreeVar var_D8 = ""
  loc_B6C4B6: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C4B9: LitStr "smtpconnectiontimeout"
  loc_B6C4BC: ConcatStr
  loc_B6C4BD: CVarStr var_D8
  loc_B6C4C0: PopAdLdVar
  loc_B6C4C1: LitVarI2 var_C4, 30
  loc_B6C4C6: PopAdLdVar
  loc_B6C4C7: ILdRf var_110
  loc_B6C4CA: VarLateMemCallSt
  loc_B6C4D0: FFree1Var var_D8 = ""
  loc_B6C4D5: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C4D8: LitStr "smtpauthenticate"
  loc_B6C4DB: ConcatStr
  loc_B6C4DC: CVarStr var_D8
  loc_B6C4DF: PopAdLdVar
  loc_B6C4E0: LitVarStr var_C4, "1"
  loc_B6C4E5: PopAdLdVar
  loc_B6C4E6: ILdRf var_110
  loc_B6C4E9: VarLateMemCallSt
  loc_B6C4EF: FFree1Var var_D8 = ""
  loc_B6C4F4: LitI4 0
  loc_B6C4F9: FStR4 var_110
  loc_B6C4FC: Branch loc_B6C617
  loc_B6C503: FLdPr var_88
  loc_B6C506: LateMemLdVar
  loc_B6C50B: FStVarZero
  loc_B6C50F: FLdRfVar var_134
  loc_B6C512: FStR4 var_138
  loc_B6C517: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C51A: LitStr "smtpserver"
  loc_B6C51D: ConcatStr
  loc_B6C51E: CVarStr var_D8
  loc_B6C521: PopAdLdVar
  loc_B6C522: LitVarStr var_C4, "infogov.com.ar"
  loc_B6C527: PopAdLdVar
  loc_B6C528: ILdRf var_138
  loc_B6C52B: VarLateMemCallSt
  loc_B6C531: FFree1Var var_D8 = ""
  loc_B6C536: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C539: LitStr "smtpserverport"
  loc_B6C53C: ConcatStr
  loc_B6C53D: CVarStr var_D8
  loc_B6C540: PopAdLdVar
  loc_B6C541: LitVarStr var_C4, "25"
  loc_B6C546: PopAdLdVar
  loc_B6C547: ILdRf var_138
  loc_B6C54A: VarLateMemCallSt
  loc_B6C550: FFree1Var var_D8 = ""
  loc_B6C555: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C558: LitStr "sendusing"
  loc_B6C55B: ConcatStr
  loc_B6C55C: CVarStr var_D8
  loc_B6C55F: PopAdLdVar
  loc_B6C560: LitVarStr var_C4, "2"
  loc_B6C565: PopAdLdVar
  loc_B6C566: ILdRf var_138
  loc_B6C569: VarLateMemCallSt
  loc_B6C56F: FFree1Var var_D8 = ""
  loc_B6C574: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C577: LitStr "sendusername"
  loc_B6C57A: ConcatStr
  loc_B6C57B: CVarStr var_D8
  loc_B6C57E: PopAdLdVar
  loc_B6C57F: LitVarStr var_C4, "guaymallen"
  loc_B6C584: PopAdLdVar
  loc_B6C585: ILdRf var_138
  loc_B6C588: VarLateMemCallSt
  loc_B6C58E: FFree1Var var_D8 = ""
  loc_B6C593: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C596: LitStr "sendpassword"
  loc_B6C599: ConcatStr
  loc_B6C59A: CVarStr var_D8
  loc_B6C59D: PopAdLdVar
  loc_B6C59E: LitVarStr var_C4, "MunGy148O"
  loc_B6C5A3: PopAdLdVar
  loc_B6C5A4: ILdRf var_138
  loc_B6C5A7: VarLateMemCallSt
  loc_B6C5AD: FFree1Var var_D8 = ""
  loc_B6C5B2: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C5B5: LitStr "smtpusessl"
  loc_B6C5B8: ConcatStr
  loc_B6C5B9: CVarStr var_D8
  loc_B6C5BC: PopAdLdVar
  loc_B6C5BD: LitVarStr var_C4, "1"
  loc_B6C5C2: PopAdLdVar
  loc_B6C5C3: ILdRf var_138
  loc_B6C5C6: VarLateMemCallSt
  loc_B6C5CC: FFree1Var var_D8 = ""
  loc_B6C5D1: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C5D4: LitStr "smtpconnectiontimeout"
  loc_B6C5D7: ConcatStr
  loc_B6C5D8: CVarStr var_D8
  loc_B6C5DB: PopAdLdVar
  loc_B6C5DC: LitVarStr var_C4, "30"
  loc_B6C5E1: PopAdLdVar
  loc_B6C5E2: ILdRf var_138
  loc_B6C5E5: VarLateMemCallSt
  loc_B6C5EB: FFree1Var var_D8 = ""
  loc_B6C5F0: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6C5F3: LitStr "smtpauthenticate"
  loc_B6C5F6: ConcatStr
  loc_B6C5F7: CVarStr var_D8
  loc_B6C5FA: PopAdLdVar
  loc_B6C5FB: LitVarStr var_C4, "1"
  loc_B6C600: PopAdLdVar
  loc_B6C601: ILdRf var_138
  loc_B6C604: VarLateMemCallSt
  loc_B6C60A: FFree1Var var_D8 = ""
  loc_B6C60F: LitI4 0
  loc_B6C614: FStR4 var_138
  loc_B6C61B: FLdPr var_88
  loc_B6C61E: LateMemLdVar
  loc_B6C623: LdPrVar
  loc_B6C625: LateMemCall
  loc_B6C62B: FFree1Var var_E8 = ""
  loc_B6C630: LitI4 0
  loc_B6C635: LitStr "CDO.Message"
  loc_B6C638: FLdRfVar var_D8
  loc_B6C63B: ImpAdCallFPR4  = CreateObject(, )
  loc_B6C640: FLdRfVar var_D8
  loc_B6C643: CAdVar
  loc_B6C645: FStAd var_8C 
  loc_B6C649: FFree1Var var_D8 = ""
  loc_B6C64E: ILdRf var_8C
  loc_B6C651: FStAd var_13C 
  loc_B6C657: ILdRf var_88
  loc_B6C65A: CVarAd
  loc_B6C65E: PopAdLdVar
  loc_B6C65F: FLdPr var_13C
  loc_B6C662: LateMemSt
  loc_B6C668: FLdRfVar var_114
  loc_B6C66B: FLdPr Me
  loc_B6C66E: VCallAd Control_ID_txtSender
  loc_B6C671: FStAdFunc var_C8
  loc_B6C674: FLdPr var_C8
  loc_B6C677:  = Me.Text
  loc_B6C67C: FLdZeroAd var_114
  loc_B6C67F: CVarStr var_D8
  loc_B6C682: PopAdLdVar
  loc_B6C683: FLdPr var_13C
  loc_B6C686: LateMemSt
  loc_B6C68A: FFree1Ad var_C8
  loc_B6C68D: FFree1Var var_D8 = ""
  loc_B6C692: FLdRfVar var_114
  loc_B6C695: FLdPr Me
  loc_B6C698: VCallAd Control_ID_txtRecipient
  loc_B6C69B: FStAdFunc var_C8
  loc_B6C69E: FLdPr var_C8
  loc_B6C6A1:  = Me.Text
  loc_B6C6A6: FLdZeroAd var_114
  loc_B6C6A9: CVarStr var_D8
  loc_B6C6AC: PopAdLdVar
  loc_B6C6AD: FLdPr var_13C
  loc_B6C6B0: LateMemSt
  loc_B6C6B4: FFree1Ad var_C8
  loc_B6C6B7: FFree1Var var_D8 = ""
  loc_B6C6BC: LitStr "tesoreriaguaymallen@yahoo.com.ar"
  loc_B6C6BF: LitStr vbNullString
  loc_B6C6C2: NeStr
  loc_B6C6C4: BranchF loc_B6C6D6
  loc_B6C6C9: LitVarStr var_B4, "tesoreriaguaymallen@yahoo.com.ar"
  loc_B6C6CE: PopAdLdVar
  loc_B6C6CF: FLdPr var_13C
  loc_B6C6D2: LateMemSt
  loc_B6C6D8: FLdRfVar var_114
  loc_B6C6DB: FLdPr Me
  loc_B6C6DE: VCallAd Control_ID_txtSubject
  loc_B6C6E1: FStAdFunc var_C8
  loc_B6C6E4: FLdPr var_C8
  loc_B6C6E7:  = Me.Text
  loc_B6C6EC: FLdZeroAd var_114
  loc_B6C6EF: CVarStr var_D8
  loc_B6C6F2: PopAdLdVar
  loc_B6C6F3: FLdPr var_13C
  loc_B6C6F6: LateMemSt
  loc_B6C6FA: FFree1Ad var_C8
  loc_B6C6FD: FFree1Var var_D8 = ""
  loc_B6C702: FLdRfVar var_114
  loc_B6C705: FLdPr Me
  loc_B6C708: MemLdPr html
  loc_B6C70B: LateIdLdVar var_D8 DispID_1075 0
  loc_B6C712: CastAdVar Me
  loc_B6C716: FStAdFunc var_C8
  loc_B6C719: FLdPr var_C8
  loc_B6C71C:  = Me.ScaleTop
  loc_B6C721: FLdZeroAd var_114
  loc_B6C724: FStStr var_9C
  loc_B6C727: FFree1Ad var_C8
  loc_B6C72A: FFree1Var var_D8 = ""
  loc_B6C72F: LitVarI2 var_C4, 0
  loc_B6C734: PopAdLdVar
  loc_B6C735: FLdRfVar var_EC
  loc_B6C738: LitVarStr var_B4, "BODY"
  loc_B6C73D: PopAdLdVar
  loc_B6C73E: FLdPr Me
  loc_B6C741: MemLdPr html
  loc_B6C744: LateIdLdVar var_D8 DispID_1003 0
  loc_B6C74B: CastAdVar Me
  loc_B6C74F: FStAdFunc var_C8
  loc_B6C752: FLdPr var_C8
  loc_B6C75A: FLdPr var_EC
  loc_B6C75D: LateIdCallLdVar
  loc_B6C767: VarLateMemLdVar var_15C, .background
  loc_B6C76D: LitVarStr var_14C, vbNullString
  loc_B6C772: HardType
  loc_B6C773: NeVarBool
  loc_B6C775: FFreeAd var_C8 = ""
  loc_B6C77C: FFreeVar var_D8 = "": var_E8 = ""
  loc_B6C785: BranchF loc_B6C8CE
  loc_B6C78A: LitVarI2 var_C4, 0
  loc_B6C78F: PopAdLdVar
  loc_B6C790: FLdRfVar var_EC
  loc_B6C793: LitVarStr var_B4, "BODY"
  loc_B6C798: PopAdLdVar
  loc_B6C799: FLdPr Me
  loc_B6C79C: MemLdPr html
  loc_B6C79F: LateIdLdVar var_D8 DispID_1003 0
  loc_B6C7A6: CastAdVar Me
  loc_B6C7AA: FStAdFunc var_C8
  loc_B6C7AD: FLdPr var_C8
  loc_B6C7B5: FLdPr var_EC
  loc_B6C7B8: LateIdCallLdVar
  loc_B6C7C2: VarLateMemLdVar var_15C, .background
  loc_B6C7C8: CStrVarTmp
  loc_B6C7C9: FStStr var_A4
  loc_B6C7CC: FFreeAd var_C8 = ""
  loc_B6C7D3: FFreeVar var_D8 = "": var_E8 = ""
  loc_B6C7DE: ILdRf var_A4
  loc_B6C7E1: FLdRfVar var_114
  loc_B6C7E4: CStr2Ansi
  loc_B6C7E5: ILdRf var_114
  loc_B6C7E8: ImpAdCallI2 PathIsURL()
  loc_B6C7ED: FStR4 var_170
  loc_B6C7F0: SetLastSystemError
  loc_B6C7F1: ILdRf var_114
  loc_B6C7F4: FLdRfVar var_A4
  loc_B6C7F7: CStr2Uni
  loc_B6C7F9: ILdRf var_170
  loc_B6C7FC: LitI4 1
  loc_B6C801: NeI4
  loc_B6C802: FFree1Str var_114
  loc_B6C805: BranchF loc_B6C8CC
  loc_B6C80A: LitStr "cid:"
  loc_B6C80D: LitStr "BackGround"
  loc_B6C810: ConcatStr
  loc_B6C811: CVarStr var_E8
  loc_B6C814: PopAdLdVar
  loc_B6C815: LitVarI2 var_C4, 0
  loc_B6C81A: PopAdLdVar
  loc_B6C81B: FLdRfVar var_EC
  loc_B6C81E: LitVarStr var_B4, "BODY"
  loc_B6C823: PopAdLdVar
  loc_B6C824: FLdPr Me
  loc_B6C827: MemLdPr html
  loc_B6C82A: LateIdLdVar var_D8 DispID_1003 0
  loc_B6C831: CastAdVar Me
  loc_B6C835: FStAdFunc var_C8
  loc_B6C838: FLdPr var_C8
  loc_B6C840: FLdPr var_EC
  loc_B6C843: LateIdCallLdVar
  loc_B6C84D: VarLateMemSt .background
  loc_B6C851: FFreeAd var_C8 = ""
  loc_B6C858: FFreeVar var_D8 = "": var_E8 = ""
  loc_B6C863: FLdRfVar var_A4
  loc_B6C866: CDargRef
  loc_B6C86A: LitVarStr var_C4, "BackGround"
  loc_B6C86F: PopAdLdVar
  loc_B6C870: LitVarI2 var_14C, 1
  loc_B6C875: PopAdLdVar
  loc_B6C876: FLdPr var_13C
  loc_B6C879: LateMemCallLdVar var_D8, .AddRelatedBodyPart
  loc_B6C881: CAdVar
  loc_B6C883: FStAd var_90 
  loc_B6C887: FFree1Var var_D8 = ""
  loc_B6C88C: FLdPr var_90
  loc_B6C88F: LateMemLdVar
  loc_B6C894: FStVarZero
  loc_B6C898: FLdRfVar var_190
  loc_B6C89B: FStR4 var_194
  loc_B6C8A0: LitVarStr var_B4, "urn:schemas:mailheader:Content-ID"
  loc_B6C8A5: PopAdLdVar
  loc_B6C8A6: LitVarStr var_124, "BackGround"
  loc_B6C8AB: PopAdLdVar
  loc_B6C8AC: ILdRf var_194
  loc_B6C8AF: VarLateMemCallSt
  loc_B6C8B7: ILdRf var_194
  loc_B6C8BA: LdPrVar
  loc_B6C8BC: LateMemCall
  loc_B6C8C4: LitI4 0
  loc_B6C8C9: FStR4 var_194
  loc_B6C8D2: LitI4 0
  loc_B6C8D7: FLdRfVar var_94
  loc_B6C8DA: FLdRfVar var_170
  loc_B6C8DD: FLdPr Me
  loc_B6C8E0: MemLdPr html
  loc_B6C8E3: LateIdLdVar var_D8 DispID_1011 0
  loc_B6C8EA: CastAdVar Me
  loc_B6C8EE: FStAdFunc var_C8
  loc_B6C8F1: FLdPr var_C8
  loc_B6C8F9: ILdRf var_170
  loc_B6C8FC: LitI4 1
  loc_B6C901: SubI4
  loc_B6C902: FFree1Ad var_C8
  loc_B6C905: FFree1Var var_D8 = ""
  loc_B6C908: ForI4 var_19C
  loc_B6C910: FLdRfVar var_EC
  loc_B6C913: LitVar_Missing var_C4
  loc_B6C916: PopAdLdVar
  loc_B6C917: ILdRf var_94
  loc_B6C91A: CVarI4
  loc_B6C91E: PopAdLdVar
  loc_B6C91F: FLdPr Me
  loc_B6C922: MemLdPr html
  loc_B6C925: LateIdLdVar var_D8 DispID_1011 0
  loc_B6C92C: CastAdVar Me
  loc_B6C930: FStAdFunc var_C8
  loc_B6C933: FLdPr var_C8
  loc_B6C93B: FLdPr var_EC
  loc_B6C93E: LateMemLdVar
  loc_B6C943: CStrVarTmp
  loc_B6C944: FStStr var_A4
  loc_B6C947: FFreeAd var_C8 = ""
  loc_B6C94E: FFreeVar var_D8 = ""
  loc_B6C957: LitI4 8
  loc_B6C95C: ILdRf var_A4
  loc_B6C95F: ImpAdCallI2 Left$(, )
  loc_B6C964: FStStrNoPop var_114
  loc_B6C967: LitStr "file:///"
  loc_B6C96A: EqStr
  loc_B6C96C: FFree1Str var_114
  loc_B6C96F: BranchF loc_B6CA84
  loc_B6C974: FLdRfVar var_D8
  loc_B6C977: FLdRfVar var_A4
  loc_B6C97A: Call Proc_90_29_9A2C54()
  loc_B6C97F: FLdRfVar var_D8
  loc_B6C982: CStrVarTmp
  loc_B6C983: FStStr var_98
  loc_B6C986: FFree1Var var_D8 = ""
  loc_B6C98B: ILdRf var_98
  loc_B6C98E: LitStr vbNullString
  loc_B6C991: NeStr
  loc_B6C993: BranchF loc_B6CA82
  loc_B6C998: LitStr "cid:"
  loc_B6C99B: ILdRf var_98
  loc_B6C99E: ConcatStr
  loc_B6C99F: FStStrNoPop var_114
  loc_B6C9A2: ILdRf var_94
  loc_B6C9A5: CStrI4
  loc_B6C9A7: FStStrNoPop var_1A0
  loc_B6C9AA: ConcatStr
  loc_B6C9AB: CVarStr var_E8
  loc_B6C9AE: PopAdLdVar
  loc_B6C9AF: FLdRfVar var_EC
  loc_B6C9B2: LitVar_Missing var_C4
  loc_B6C9B5: PopAdLdVar
  loc_B6C9B6: ILdRf var_94
  loc_B6C9B9: CVarI4
  loc_B6C9BD: PopAdLdVar
  loc_B6C9BE: FLdPr Me
  loc_B6C9C1: MemLdPr html
  loc_B6C9C4: LateIdLdVar var_D8 DispID_1011 0
  loc_B6C9CB: CastAdVar Me
  loc_B6C9CF: FStAdFunc var_C8
  loc_B6C9D2: FLdPr var_C8
  loc_B6C9DA: FLdPr var_EC
  loc_B6C9DD: LateMemSt
  loc_B6C9E1: FFreeStr var_114 = ""
  loc_B6C9E8: FFreeAd var_C8 = ""
  loc_B6C9EF: FFreeVar var_D8 = ""
  loc_B6C9F8: FLdRfVar var_A4
  loc_B6C9FB: CDargRef
  loc_B6C9FF: ILdRf var_98
  loc_B6CA02: ILdRf var_94
  loc_B6CA05: CStrI4
  loc_B6CA07: FStStrNoPop var_114
  loc_B6CA0A: ConcatStr
  loc_B6CA0B: CVarStr var_D8
  loc_B6CA0E: PopAdLdVar
  loc_B6CA0F: LitVarI2 var_124, 1
  loc_B6CA14: PopAdLdVar
  loc_B6CA15: FLdPr var_13C
  loc_B6CA18: LateMemCallLdVar var_E8, .AddRelatedBodyPart
  loc_B6CA20: CAdVar
  loc_B6CA22: FStAd var_90 
  loc_B6CA26: FFree1Str var_114
  loc_B6CA29: FFreeVar var_D8 = ""
  loc_B6CA32: FLdPr var_90
  loc_B6CA35: LateMemLdVar
  loc_B6CA3A: FStVarZero
  loc_B6CA3E: FLdRfVar var_1B0
  loc_B6CA41: FStR4 var_1B4
  loc_B6CA46: LitVarStr var_B4, "urn:schemas:mailheader:Content-ID"
  loc_B6CA4B: PopAdLdVar
  loc_B6CA4C: ILdRf var_98
  loc_B6CA4F: ILdRf var_94
  loc_B6CA52: CStrI4
  loc_B6CA54: FStStrNoPop var_114
  loc_B6CA57: ConcatStr
  loc_B6CA58: CVarStr var_D8
  loc_B6CA5B: PopAdLdVar
  loc_B6CA5C: ILdRf var_1B4
  loc_B6CA5F: VarLateMemCallSt
  loc_B6CA65: FFree1Str var_114
  loc_B6CA68: FFree1Var var_D8 = ""
  loc_B6CA6D: ILdRf var_1B4
  loc_B6CA70: LdPrVar
  loc_B6CA72: LateMemCall
  loc_B6CA7A: LitI4 0
  loc_B6CA7F: FStR4 var_1B4
  loc_B6CA88: FLdRfVar var_94
  loc_B6CA8B: NextI4 var_19C, loc_B6C90E
  loc_B6CA92: FLdRfVar var_114
  loc_B6CA95: FLdPr Me
  loc_B6CA98: MemLdPr html
  loc_B6CA9B: LateIdLdVar var_D8 DispID_1075 0
  loc_B6CAA2: CastAdVar Me
  loc_B6CAA6: FStAdFunc var_C8
  loc_B6CAA9: FLdPr var_C8
  loc_B6CAAC:  = Me.ScaleTop
  loc_B6CAB1: FLdZeroAd var_114
  loc_B6CAB4: CVarStr var_E8
  loc_B6CAB7: PopAdLdVar
  loc_B6CAB8: FLdPr var_13C
  loc_B6CABB: LateMemSt
  loc_B6CABF: FFree1Ad var_C8
  loc_B6CAC2: FFreeVar var_D8 = ""
  loc_B6CACB: ILdRf var_9C
  loc_B6CACE: FLdPr Me
  loc_B6CAD1: MemLdPr html
  loc_B6CAD4: LateIdLdVar var_D8 DispID_1004 0
  loc_B6CADB: CastAdVar Me
  loc_B6CADF: FStAdFunc var_C8
  loc_B6CAE2: FLdPr var_C8
  loc_B6CAE5: Me.CurrentX = from_stack_1s
  loc_B6CAEA: FFree1Ad var_C8
  loc_B6CAED: FFree1Var var_D8 = ""
  loc_B6CAF2: FLdRfVar var_114
  loc_B6CAF5: FLdPr Me
  loc_B6CAF8: VCallAd Control_ID_txtAdjunto
  loc_B6CAFB: FStAdFunc var_C8
  loc_B6CAFE: FLdPr var_C8
  loc_B6CB01:  = Me.Text
  loc_B6CB06: ILdRf var_114
  loc_B6CB09: LitStr vbNullString
  loc_B6CB0C: NeStr
  loc_B6CB0E: FFree1Str var_114
  loc_B6CB11: FFree1Ad var_C8
  loc_B6CB14: BranchF loc_B6CBB9
  loc_B6CB19: FLdRfVar var_1CC
  loc_B6CB1C: FLdRfVar var_C8
  loc_B6CB1F: LitI4 2
  loc_B6CB24: FLdPr Me
  loc_B6CB27: MemLdRfVar from_stack_1.global_160
  loc_B6CB2A: NewIfNullPr IFileSystem3
  loc_B6CB2D: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_B6CB32: FLdPr var_C8
  loc_B6CB35:  = Me.Path
  loc_B6CB3A: FLdRfVar var_1D4
  loc_B6CB3D: LitStr "Certificado de Retención "
  loc_B6CB40: FLdPr Me
  loc_B6CB43: MemLdI2 PeriInfo
  loc_B6CB46: CStrUI1
  loc_B6CB48: FStStrNoPop var_114
  loc_B6CB4B: ConcatStr
  loc_B6CB4C: FStStrNoPop var_1A0
  loc_B6CB4F: LitStr "-"
  loc_B6CB52: ConcatStr
  loc_B6CB53: FStStrNoPop var_1B8
  loc_B6CB56: FLdPr Me
  loc_B6CB59: MemLdStr NumeOrpa
  loc_B6CB5C: CStrI4
  loc_B6CB5E: FStStrNoPop var_1BC
  loc_B6CB61: ConcatStr
  loc_B6CB62: FStStrNoPop var_1C0
  loc_B6CB65: LitStr "-"
  loc_B6CB68: ConcatStr
  loc_B6CB69: FStStrNoPop var_1C4
  loc_B6CB6C: FLdPr Me
  loc_B6CB6F: MemLdStr CucuPers
  loc_B6CB72: ConcatStr
  loc_B6CB73: FStStrNoPop var_1C8
  loc_B6CB76: LitStr ".pdf"
  loc_B6CB79: ConcatStr
  loc_B6CB7A: FStStrNoPop var_1D0
  loc_B6CB7D: ILdRf var_1CC
  loc_B6CB80: FLdPr Me
  loc_B6CB83: MemLdRfVar from_stack_1.global_160
  loc_B6CB86: NewIfNullPr IFileSystem3
  loc_B6CB89: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B6CB8E: FLdZeroAd var_1D4
  loc_B6CB91: CVarStr var_D8
  loc_B6CB94: PopAdLdVar
  loc_B6CB95: FLdPr var_13C
  loc_B6CB98: LateMemCall
  loc_B6CB9E: FFreeStr var_114 = "": var_1A0 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = ""
  loc_B6CBB3: FFree1Ad var_C8
  loc_B6CBB6: FFree1Var var_D8 = ""
  loc_B6CBBB: LitVarStr var_B4, "urn:schemas:httpmail:priority"
  loc_B6CBC0: PopAdLdVar
  loc_B6CBC1: FLdPr Me
  loc_B6CBC4: MemLdI2 global_100
  loc_B6CBC7: LitI2_Byte 1
  loc_B6CBC9: SubI2
  loc_B6CBCA: CVarI2 var_124
  loc_B6CBCD: PopAdLdVar
  loc_B6CBCE: FLdPr var_13C
  loc_B6CBD1: LateMemCallSt
  loc_B6CBD9: LitVarStr var_B4, "urn:schemas:mailheader:X-Priority"
  loc_B6CBDE: PopAdLdVar
  loc_B6CBDF: FLdPr Me
  loc_B6CBE2: MemLdI2 global_100
  loc_B6CBE5: LitI2_Byte 1
  loc_B6CBE7: SubI2
  loc_B6CBE8: CVarI2 var_124
  loc_B6CBEB: PopAdLdVar
  loc_B6CBEC: FLdPr var_13C
  loc_B6CBEF: LateMemCallSt
  loc_B6CBF7: LitVarStr var_B4, "urn:schemas:httpmail:importance"
  loc_B6CBFC: PopAdLdVar
  loc_B6CBFD: FLdPr Me
  loc_B6CC00: MemLdI2 global_100
  loc_B6CC03: CVarI2 var_124
  loc_B6CC06: PopAdLdVar
  loc_B6CC07: FLdPr var_13C
  loc_B6CC0A: LateMemCallSt
  loc_B6CC12: LitI2_Byte 0
  loc_B6CC14: BranchF loc_B6CC51
  loc_B6CC19: LitVarStr var_B4, "urn:schemas:mailheader:disposition-notification-to"
  loc_B6CC1E: PopAdLdVar
  loc_B6CC1F: FLdPr var_13C
  loc_B6CC22: LateMemLdVar
  loc_B6CC27: PopAdLdVar
  loc_B6CC28: FLdPr var_13C
  loc_B6CC2B: LateMemCallSt
  loc_B6CC31: FFree1Var var_D8 = ""
  loc_B6CC36: LitVarStr var_B4, "urn:schemas:mailheader:return-receipt-to"
  loc_B6CC3B: PopAdLdVar
  loc_B6CC3C: FLdPr var_13C
  loc_B6CC3F: LateMemLdVar
  loc_B6CC44: PopAdLdVar
  loc_B6CC45: FLdPr var_13C
  loc_B6CC48: LateMemCallSt
  loc_B6CC4E: FFree1Var var_D8 = ""
  loc_B6CC55: FLdPr var_13C
  loc_B6CC58: LateMemLdVar
  loc_B6CC5D: LdPrVar
  loc_B6CC5F: LateMemCall
  loc_B6CC65: FFree1Var var_E8 = ""
  loc_B6CC6A: FLdPr var_13C
  loc_B6CC6D: LateMemCall
  loc_B6CC75: LitNothing
  loc_B6CC77: FStAd var_13C 
  loc_B6CC7D: LitI2_Byte 1
  loc_B6CC7F: FLdPr Me
  loc_B6CC82: VCallAd Control_ID_Shape1
  loc_B6CC85: FStAdFunc var_C8
  loc_B6CC88: FLdPr var_C8
  loc_B6CC8B: Me.BorderWidth = from_stack_1
  loc_B6CC90: FFree1Ad var_C8
  loc_B6CC95: LitI2_Byte 0
  loc_B6CC97: FLdPr Me
  loc_B6CC9A: VCallAd Control_ID_EnviandoFra
  loc_B6CC9D: FStAdFunc var_C8
  loc_B6CCA0: FLdPr var_C8
  loc_B6CCA3: Me.Visible = from_stack_1b
  loc_B6CCA8: FFree1Ad var_C8
  loc_B6CCAD: LitI2_Byte 0
  loc_B6CCAF: FLdPr Me
  loc_B6CCB2: VCallAd Control_ID_Timer1
  loc_B6CCB5: FStAdFunc var_C8
  loc_B6CCB8: FLdPr var_C8
  loc_B6CCBB: Me.Enabled = from_stack_1b
  loc_B6CCC0: FFree1Ad var_C8
  loc_B6CCC5: LitI2_Byte &HFF
  loc_B6CCC7: FLdPr Me
  loc_B6CCCA: Me.Enabled = from_stack_1b
  loc_B6CCD1: FLdPr Me
  loc_B6CCD4: VCallAd Control_ID_cmdSalir
  loc_B6CCD7: FStAdFunc var_C8
  loc_B6CCDA: FLdPr var_C8
  loc_B6CCDD: Me.SetFocus
  loc_B6CCE2: FFree1Ad var_C8
  loc_B6CCE7: LitI4 0
  loc_B6CCEC: CI2I4
  loc_B6CCED: FLdPr Me
  loc_B6CCF0: Me.MousePointer = from_stack_1
  loc_B6CCF7: LitVarStr var_B4, "Mensaje enviado."
  loc_B6CCFC: PopAdLdVar
  loc_B6CCFD: FLdPr Me
  loc_B6CD00: VCallAd Control_ID_sBar
  loc_B6CD03: FStAdFunc var_C8
  loc_B6CD06: FLdPr var_C8
  loc_B6CD09: LateIdSt
  loc_B6CD0E: FFree1Ad var_C8
  loc_B6CD13: ExitProcHresult
  loc_B6CD16: LitVar_Missing var_16C
  loc_B6CD19: LitVar_Missing var_15C
  loc_B6CD1C: LitVar_Missing var_E8
  loc_B6CD1F: LitI4 0
  loc_B6CD24: LitStr "Error: "
  loc_B6CD27: FLdRfVar var_170
  loc_B6CD2A: ImpAdCallI2 Err 'rtcErrObj
  loc_B6CD2F: FStAdFunc var_C8
  loc_B6CD32: FLdPr var_C8
  loc_B6CD35:  = Err.Number
  loc_B6CD3A: ILdRf var_170
  loc_B6CD3D: CStrI4
  loc_B6CD3F: FStStrNoPop var_114
  loc_B6CD42: ConcatStr
  loc_B6CD43: FStStrNoPop var_1A0
  loc_B6CD46: LitStr ": "
  loc_B6CD49: ConcatStr
  loc_B6CD4A: FStStrNoPop var_1BC
  loc_B6CD4D: FLdRfVar var_1B8
  loc_B6CD50: ImpAdCallI2 Err 'rtcErrObj
  loc_B6CD55: FStAdFunc var_EC
  loc_B6CD58: FLdPr var_EC
  loc_B6CD5B:  = Err.Description
  loc_B6CD60: ILdRf var_1B8
  loc_B6CD63: ConcatStr
  loc_B6CD64: CVarStr var_D8
  loc_B6CD67: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B6CD6C: FFreeStr var_114 = "": var_1A0 = "": var_1BC = ""
  loc_B6CD77: FFreeAd var_C8 = ""
  loc_B6CD7E: FFreeVar var_D8 = "": var_E8 = "": var_15C = ""
  loc_B6CD8B: Resume
  loc_B6CD91: LitI2_Byte &HFF
  loc_B6CD93: FLdPr Me
  loc_B6CD96: Me.Enabled = from_stack_1b
  loc_B6CD9D: ExitProcHresult
End Function

Private Function Proc_90_29_9A2C54(arg_C) '9A2C54
  'Data Table: 48709C
  loc_9A2BE8: ZeroRetValVar
  loc_9A2BEA: LitI4 0
  loc_9A2BEF: LitI4 -1
  loc_9A2BF4: LitStr "/"
  loc_9A2BF7: ILdI4 arg_C
  loc_9A2BFA: ImpAdCallI2 InStrRev(, , , )
  loc_9A2BFF: FStR4 var_98
  loc_9A2C02: ILdRf var_98
  loc_9A2C05: CBoolI4
  loc_9A2C07: BranchF loc_9A2C4E
  loc_9A2C0A: LitVar_Missing var_CC
  loc_9A2C0D: ILdRf var_98
  loc_9A2C10: LitI4 1
  loc_9A2C15: AddI4
  loc_9A2C16: ILdRf arg_C
  loc_9A2C19: CVarRef
  loc_9A2C1E: FLdRfVar var_DC
  loc_9A2C21: ImpAdCallFPR4  = Mid(, , )
  loc_9A2C26: FLdRfVar var_DC
  loc_9A2C29: CStrVarTmp
  loc_9A2C2A: FStStr var_9C
  loc_9A2C2D: FFreeVar var_CC = ""
  loc_9A2C34: FLdRfVar var_E4
  loc_9A2C37: LitI2_Byte &HFF
  loc_9A2C39: PopTmpLdAd2 var_DE
  loc_9A2C3C: FLdRfVar var_9C
  loc_9A2C3F: from_stack_3v = GetStringFile(from_stack_1v, from_stack_2v)
  loc_9A2C44: FLdZeroAd var_E4
  loc_9A2C47: CVarStr var_CC
  loc_9A2C4A: FStVar var_94
  loc_9A2C4E: ExitProcCbHresult
End Function

Private Function Proc_90_30_9B7E34() '9B7E34
  'Data Table: 48709C
  loc_9B7D8C: FLdPr Me
  loc_9B7D8F: MemLdUI1 global_144
  loc_9B7D93: CI2UI1
  loc_9B7D95: LitI2_Byte 1
  loc_9B7D97: AddI2
  loc_9B7D98: CUI1I2
  loc_9B7D9A: FLdPr Me
  loc_9B7D9D: MemStUI1
  loc_9B7DA1: LitI2_Byte 0
  loc_9B7DA3: FLdPr Me
  loc_9B7DA6: MemStI2 global_146
  loc_9B7DA9: LitI4 0
  loc_9B7DAE: FLdPr Me
  loc_9B7DB1: MemLdUI1 global_144
  loc_9B7DB5: CI4UI1
  loc_9B7DB6: FLdPr Me
  loc_9B7DB9: MemLdRfVar from_stack_1.global_140
  loc_9B7DBC: RedimPreserve
  loc_9B7DC6: FLdRfVar var_A0
  loc_9B7DC9: LitVarStr var_9C, "medio"
  loc_9B7DCE: PopAdLdVar
  loc_9B7DCF: FLdRfVar var_8C
  loc_9B7DD2: FLdRfVar var_88
  loc_9B7DD5: FLdPr Me
  loc_9B7DD8: MemLdRfVar from_stack_1.global_116
  loc_9B7DDB: NewIfNullPr clscheque
  loc_9B7DDE: from_stack_1v = clscheque.RsFrmGet()
  loc_9B7DE3: FLdPr var_88
  loc_9B7DE6:  = Me.Fields
  loc_9B7DEB: FLdPr var_8C
  loc_9B7DEE: from_stack_2 = Me.Item(from_stack_1)
  loc_9B7DF3: LitI2_Byte 0
  loc_9B7DF5: LitVar_Missing var_D4
  loc_9B7DF8: LitI2_Byte 0
  loc_9B7DFA: FLdZeroAd var_A0
  loc_9B7DFD: CVarAd
  loc_9B7E01: PopAdLdVar
  loc_9B7E02: FLdPr Me
  loc_9B7E05: MemLdUI1 global_144
  loc_9B7E09: CI4UI1
  loc_9B7E0A: FLdPr Me
  loc_9B7E0D: MemLdStr global_140
  loc_9B7E10: AryLock
  loc_9B7E13: Ary1LdPr
  loc_9B7E14: MemLdRfVar from_stack_1.global_0
  loc_9B7E17: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B7E1C: AryUnlock
  loc_9B7E1F: FFreeAd var_88 = ""
  loc_9B7E26: FFreeVar var_B4 = ""
  loc_9B7E2D: Call Proc_90_31_A14570()
  loc_9B7E32: ExitProcHresult
  loc_9B7E33: ConcatStr
End Function

Private Function Proc_90_31_A14570() 'A14570
  'Data Table: 48709C
  loc_A143F8: FLdPr Me
  loc_A143FB: MemLdI2 global_146
  loc_A143FE: LitI2_Byte 1
  loc_A14400: AddI2
  loc_A14401: FLdPr Me
  loc_A14404: MemStI2 global_146
  loc_A14407: LitI4 0
  loc_A1440C: FLdPr Me
  loc_A1440F: MemLdI2 global_146
  loc_A14412: CI4UI1
  loc_A14413: FLdPr Me
  loc_A14416: MemLdUI1 global_144
  loc_A1441A: CI4UI1
  loc_A1441B: FLdPr Me
  loc_A1441E: MemLdStr global_140
  loc_A14421: Ary1LdPr
  loc_A14422: MemLdRfVar from_stack_1.global_4
  loc_A14425: RedimPreserve
  loc_A1442F: FLdPr Me
  loc_A14432: MemLdI2 global_146
  loc_A14435: CI4UI1
  loc_A14436: FLdPr Me
  loc_A14439: MemLdUI1 global_144
  loc_A1443D: CI4UI1
  loc_A1443E: FLdPr Me
  loc_A14441: MemLdStr global_140
  loc_A14444: AryLock
  loc_A14447: Ary1LdPr
  loc_A14448: MemLdStr global_4
  loc_A1444B: AryLock
  loc_A1444E: Ary1LdRf
  loc_A1444F: FStR4 var_90
  loc_A14452: FLdRfVar var_AC
  loc_A14455: LitVarStr var_A8, "DetaBanc"
  loc_A1445A: PopAdLdVar
  loc_A1445B: FLdRfVar var_98
  loc_A1445E: FLdRfVar var_94
  loc_A14461: FLdPr Me
  loc_A14464: MemLdRfVar from_stack_1.global_116
  loc_A14467: NewIfNullPr clscheque
  loc_A1446A: from_stack_1v = clscheque.RsFrmGet()
  loc_A1446F: FLdPr var_94
  loc_A14472:  = Me.Fields
  loc_A14477: FLdPr var_98
  loc_A1447A: from_stack_2 = Me.Item(from_stack_1)
  loc_A1447F: LitI2_Byte 0
  loc_A14481: LitVar_Missing var_DC
  loc_A14484: LitI2_Byte 0
  loc_A14486: FLdZeroAd var_AC
  loc_A14489: CVarAd
  loc_A1448D: PopAdLdVar
  loc_A1448E: FMemLdRf unk_48700D
  loc_A14493: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A14498: FFreeAd var_94 = ""
  loc_A1449F: FFreeVar var_BC = ""
  loc_A144A6: FLdRfVar var_AC
  loc_A144A9: LitVarStr var_A8, "NumeMoba"
  loc_A144AE: PopAdLdVar
  loc_A144AF: FLdRfVar var_98
  loc_A144B2: FLdRfVar var_94
  loc_A144B5: FLdPr Me
  loc_A144B8: MemLdRfVar from_stack_1.global_116
  loc_A144BB: NewIfNullPr clscheque
  loc_A144BE: from_stack_1v = clscheque.RsFrmGet()
  loc_A144C3: FLdPr var_94
  loc_A144C6:  = Me.Fields
  loc_A144CB: FLdPr var_98
  loc_A144CE: from_stack_2 = Me.Item(from_stack_1)
  loc_A144D3: LitI2_Byte 0
  loc_A144D5: LitVar_Missing var_DC
  loc_A144D8: LitI2_Byte 0
  loc_A144DA: FLdZeroAd var_AC
  loc_A144DD: CVarAd
  loc_A144E1: PopAdLdVar
  loc_A144E2: FMemLdRf unk_48700D
  loc_A144E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A144EC: FFreeAd var_94 = ""
  loc_A144F3: FFreeVar var_BC = ""
  loc_A144FA: FLdRfVar var_AC
  loc_A144FD: LitVarStr var_A8, "ImpoCheq"
  loc_A14502: PopAdLdVar
  loc_A14503: FLdRfVar var_98
  loc_A14506: FLdRfVar var_94
  loc_A14509: FLdPr Me
  loc_A1450C: MemLdRfVar from_stack_1.global_116
  loc_A1450F: NewIfNullPr clscheque
  loc_A14512: from_stack_1v = clscheque.RsFrmGet()
  loc_A14517: FLdPr var_94
  loc_A1451A:  = Me.Fields
  loc_A1451F: FLdPr var_98
  loc_A14522: from_stack_2 = Me.Item(from_stack_1)
  loc_A14527: LitI2_Byte 0
  loc_A14529: LitVar_Missing var_DC
  loc_A1452C: LitI2_Byte &HFF
  loc_A1452E: FLdZeroAd var_AC
  loc_A14531: CVarAd
  loc_A14535: PopAdLdVar
  loc_A14536: FMemLdRf unk_48700D
  loc_A1453B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A14540: FFreeAd var_94 = ""
  loc_A14547: FFreeVar var_BC = ""
  loc_A1454E: LitI2_Byte 1
  loc_A14550: PopTmpLdAd2 var_DE
  loc_A14553: FLdPr Me
  loc_A14556: MemLdRfVar from_stack_1.global_116
  loc_A14559: NewIfNullPr clscheque
  loc_A1455C: Call clscheque.Move(from_stack_1v)
  loc_A14561: LitI4 0
  loc_A14566: FStR4 var_90
  loc_A14569: AryUnlock
  loc_A1456C: AryUnlock
  loc_A1456F: ExitProcHresult
End Function

Private Function Proc_90_32_AA1E28() 'AA1E28
  'Data Table: 48709C
  loc_AA194C: LitVarStr var_94, "<table width=""60" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA1951: PopAdLdVar
  loc_AA1952: FLdPr Me
  loc_AA1955: MemLdRfVar from_stack_1.htmFile
  loc_AA1958: LdPrVar
  loc_AA195A: LateMemCall
  loc_AA1960: LitVarStr var_94, "  <tr align=""right"" class=""LineaDato"" valign=""top"">"
  loc_AA1965: PopAdLdVar
  loc_AA1966: FLdPr Me
  loc_AA1969: MemLdRfVar from_stack_1.htmFile
  loc_AA196C: LdPrVar
  loc_AA196E: LateMemCall
  loc_AA1974: LitStr "    <td rowspan="""
  loc_AA1977: FLdPr Me
  loc_AA197A: MemLdStr global_136
  loc_AA197D: LitI2_Byte 1
  loc_AA197F: FnUBound
  loc_AA1981: CStrI4
  loc_AA1983: FStStrNoPop var_A8
  loc_AA1986: ConcatStr
  loc_AA1987: FStStrNoPop var_AC
  loc_AA198A: LitStr """ align=""left"" class=""Encabezado"">Comprobante:</td>"
  loc_AA198D: ConcatStr
  loc_AA198E: CVarStr var_BC
  loc_AA1991: PopAdLdVar
  loc_AA1992: FLdPr Me
  loc_AA1995: MemLdRfVar from_stack_1.htmFile
  loc_AA1998: LdPrVar
  loc_AA199A: LateMemCall
  loc_AA19A0: FFreeStr var_A8 = ""
  loc_AA19A7: FFree1Var var_BC = ""
  loc_AA19AA: LitI2_Byte 1
  loc_AA19AC: FLdPr Me
  loc_AA19AF: MemLdRfVar from_stack_1.global_152
  loc_AA19B2: FLdPr Me
  loc_AA19B5: MemLdStr global_136
  loc_AA19B8: LitI2_Byte 1
  loc_AA19BA: FnUBound
  loc_AA19BC: CI2I4
  loc_AA19BD: ForI2 var_C0
  loc_AA19C3: FLdPr Me
  loc_AA19C6: MemLdI2 global_152
  loc_AA19C9: LitI2_Byte 1
  loc_AA19CB: GtI2
  loc_AA19CC: BranchF loc_AA19E3
  loc_AA19CF: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA19D4: PopAdLdVar
  loc_AA19D5: FLdPr Me
  loc_AA19D8: MemLdRfVar from_stack_1.htmFile
  loc_AA19DB: LdPrVar
  loc_AA19DD: LateMemCall
  loc_AA19E3: LitStr "    <td align=""right"">"
  loc_AA19E6: FLdPr Me
  loc_AA19E9: MemLdI2 global_152
  loc_AA19EC: CI4UI1
  loc_AA19ED: FLdPr Me
  loc_AA19F0: MemLdStr global_136
  loc_AA19F3: Ary1LdPr
  loc_AA19F4: MemLdStr global_0
  loc_AA19F7: ConcatStr
  loc_AA19F8: FStStrNoPop var_A8
  loc_AA19FB: LitStr "</td>"
  loc_AA19FE: ConcatStr
  loc_AA19FF: CVarStr var_BC
  loc_AA1A02: PopAdLdVar
  loc_AA1A03: FLdPr Me
  loc_AA1A06: MemLdRfVar from_stack_1.htmFile
  loc_AA1A09: LdPrVar
  loc_AA1A0B: LateMemCall
  loc_AA1A11: FFree1Str var_A8
  loc_AA1A14: FFree1Var var_BC = ""
  loc_AA1A17: LitStr "    <td align=""right"">"
  loc_AA1A1A: LitI4 1
  loc_AA1A1F: LitI4 1
  loc_AA1A24: LitVarStr var_A4, "currency"
  loc_AA1A29: FStVarCopyObj var_BC
  loc_AA1A2C: FLdRfVar var_BC
  loc_AA1A2F: FLdPr Me
  loc_AA1A32: MemLdI2 global_152
  loc_AA1A35: CI4UI1
  loc_AA1A36: FLdPr Me
  loc_AA1A39: MemLdStr global_136
  loc_AA1A3C: AryLock
  loc_AA1A3F: Ary1LdPr
  loc_AA1A40: MemLdRfVar from_stack_1.global_4
  loc_AA1A43: CVarRef
  loc_AA1A48: ImpAdCallI2 Format$(, )
  loc_AA1A4D: FStStr var_A8
  loc_AA1A50: AryUnlock
  loc_AA1A53: ILdRf var_A8
  loc_AA1A56: ConcatStr
  loc_AA1A57: FStStrNoPop var_AC
  loc_AA1A5A: LitStr "</td>"
  loc_AA1A5D: ConcatStr
  loc_AA1A5E: CVarStr var_D4
  loc_AA1A61: PopAdLdVar
  loc_AA1A62: FLdPr Me
  loc_AA1A65: MemLdRfVar from_stack_1.htmFile
  loc_AA1A68: LdPrVar
  loc_AA1A6A: LateMemCall
  loc_AA1A70: FFreeStr var_A8 = ""
  loc_AA1A77: FFreeVar var_BC = ""
  loc_AA1A7E: LitVarStr var_94, "     </tr>"
  loc_AA1A83: PopAdLdVar
  loc_AA1A84: FLdPr Me
  loc_AA1A87: MemLdRfVar from_stack_1.htmFile
  loc_AA1A8A: LdPrVar
  loc_AA1A8C: LateMemCall
  loc_AA1A92: FLdPr Me
  loc_AA1A95: MemLdRfVar from_stack_1.global_152
  loc_AA1A98: NextI2 var_C0, loc_AA19C3
  loc_AA1A9D: LitVarStr var_94, "  <tr align=""right"" class=""LineaDato"">"
  loc_AA1AA2: PopAdLdVar
  loc_AA1AA3: FLdPr Me
  loc_AA1AA6: MemLdRfVar from_stack_1.htmFile
  loc_AA1AA9: LdPrVar
  loc_AA1AAB: LateMemCall
  loc_AA1AB1: LitVarStr var_94, "    <td colspan=""2"" align=""right"" class=""Totales"">Total de comprobantes:</td>"
  loc_AA1AB6: PopAdLdVar
  loc_AA1AB7: FLdPr Me
  loc_AA1ABA: MemLdRfVar from_stack_1.htmFile
  loc_AA1ABD: LdPrVar
  loc_AA1ABF: LateMemCall
  loc_AA1AC5: LitStr "    <td class=""Totales"">"
  loc_AA1AC8: LitI4 1
  loc_AA1ACD: LitI4 1
  loc_AA1AD2: LitVarStr var_A4, "currency"
  loc_AA1AD7: FStVarCopyObj var_BC
  loc_AA1ADA: FLdRfVar var_BC
  loc_AA1ADD: FLdPr Me
  loc_AA1AE0: MemLdRfVar from_stack_1.global_148
  loc_AA1AE3: CVarRef
  loc_AA1AE8: ImpAdCallI2 Format$(, )
  loc_AA1AED: FStStrNoPop var_A8
  loc_AA1AF0: ConcatStr
  loc_AA1AF1: FStStrNoPop var_AC
  loc_AA1AF4: LitStr "</td>"
  loc_AA1AF7: ConcatStr
  loc_AA1AF8: CVarStr var_D4
  loc_AA1AFB: PopAdLdVar
  loc_AA1AFC: FLdPr Me
  loc_AA1AFF: MemLdRfVar from_stack_1.htmFile
  loc_AA1B02: LdPrVar
  loc_AA1B04: LateMemCall
  loc_AA1B0A: FFreeStr var_A8 = ""
  loc_AA1B11: FFreeVar var_BC = ""
  loc_AA1B18: LitVarStr var_94, "  </tr>"
  loc_AA1B1D: PopAdLdVar
  loc_AA1B1E: FLdPr Me
  loc_AA1B21: MemLdRfVar from_stack_1.htmFile
  loc_AA1B24: LdPrVar
  loc_AA1B26: LateMemCall
  loc_AA1B2C: LitVarStr var_94, "</table>"
  loc_AA1B31: PopAdLdVar
  loc_AA1B32: FLdPr Me
  loc_AA1B35: MemLdRfVar from_stack_1.htmFile
  loc_AA1B38: LdPrVar
  loc_AA1B3A: LateMemCall
  loc_AA1B40: LitVarStr var_94, "<p>&nbsp;</p>"
  loc_AA1B45: PopAdLdVar
  loc_AA1B46: FLdPr Me
  loc_AA1B49: MemLdRfVar from_stack_1.htmFile
  loc_AA1B4C: LdPrVar
  loc_AA1B4E: LateMemCall
  loc_AA1B54: LitVarStr var_94, "<table width=""60" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA1B59: PopAdLdVar
  loc_AA1B5A: FLdPr Me
  loc_AA1B5D: MemLdRfVar from_stack_1.htmFile
  loc_AA1B60: LdPrVar
  loc_AA1B62: LateMemCall
  loc_AA1B68: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"" valign=""top"">"
  loc_AA1B6D: PopAdLdVar
  loc_AA1B6E: FLdPr Me
  loc_AA1B71: MemLdRfVar from_stack_1.htmFile
  loc_AA1B74: LdPrVar
  loc_AA1B76: LateMemCall
  loc_AA1B7C: LitVarStr var_94, "   <td colspan=""2"">Medio de pago</td>"
  loc_AA1B81: PopAdLdVar
  loc_AA1B82: FLdPr Me
  loc_AA1B85: MemLdRfVar from_stack_1.htmFile
  loc_AA1B88: LdPrVar
  loc_AA1B8A: LateMemCall
  loc_AA1B90: LitVarStr var_94, "   <td align=""left"">Número</td>"
  loc_AA1B95: PopAdLdVar
  loc_AA1B96: FLdPr Me
  loc_AA1B99: MemLdRfVar from_stack_1.htmFile
  loc_AA1B9C: LdPrVar
  loc_AA1B9E: LateMemCall
  loc_AA1BA4: LitVarStr var_94, "   <td align=""left"">Importe</td>"
  loc_AA1BA9: PopAdLdVar
  loc_AA1BAA: FLdPr Me
  loc_AA1BAD: MemLdRfVar from_stack_1.htmFile
  loc_AA1BB0: LdPrVar
  loc_AA1BB2: LateMemCall
  loc_AA1BB8: LitVarStr var_94, " </tr>"
  loc_AA1BBD: PopAdLdVar
  loc_AA1BBE: FLdPr Me
  loc_AA1BC1: MemLdRfVar from_stack_1.htmFile
  loc_AA1BC4: LdPrVar
  loc_AA1BC6: LateMemCall
  loc_AA1BCC: LitI2_Byte 1
  loc_AA1BCE: CUI1I2
  loc_AA1BD0: FLdPr Me
  loc_AA1BD3: MemLdRfVar from_stack_1.global_144
  loc_AA1BD6: FLdPr Me
  loc_AA1BD9: MemLdStr global_140
  loc_AA1BDC: LitI2_Byte 1
  loc_AA1BDE: FnUBound
  loc_AA1BE0: CUI1I4
  loc_AA1BE2: ForUI1 var_E8
  loc_AA1BE8: LitVarStr var_94, " <tr align=""right"" class=""LineaDato"" valign=""top"">"
  loc_AA1BED: PopAdLdVar
  loc_AA1BEE: FLdPr Me
  loc_AA1BF1: MemLdRfVar from_stack_1.htmFile
  loc_AA1BF4: LdPrVar
  loc_AA1BF6: LateMemCall
  loc_AA1BFC: LitStr "   <td rowspan="""
  loc_AA1BFF: FLdPr Me
  loc_AA1C02: MemLdUI1 global_144
  loc_AA1C06: CI4UI1
  loc_AA1C07: FLdPr Me
  loc_AA1C0A: MemLdStr global_140
  loc_AA1C0D: Ary1LdPr
  loc_AA1C0E: MemLdStr global_4
  loc_AA1C11: LitI2_Byte 1
  loc_AA1C13: FnUBound
  loc_AA1C15: CStrI4
  loc_AA1C17: FStStrNoPop var_A8
  loc_AA1C1A: ConcatStr
  loc_AA1C1B: FStStrNoPop var_AC
  loc_AA1C1E: LitStr """ align=""left"" class=""Encabezado"">"
  loc_AA1C21: ConcatStr
  loc_AA1C22: FStStrNoPop var_EC
  loc_AA1C25: FLdPr Me
  loc_AA1C28: MemLdUI1 global_144
  loc_AA1C2C: CI4UI1
  loc_AA1C2D: FLdPr Me
  loc_AA1C30: MemLdStr global_140
  loc_AA1C33: Ary1LdPr
  loc_AA1C34: MemLdStr global_0
  loc_AA1C37: ConcatStr
  loc_AA1C38: FStStrNoPop var_F0
  loc_AA1C3B: LitStr ":</td>"
  loc_AA1C3E: ConcatStr
  loc_AA1C3F: CVarStr var_BC
  loc_AA1C42: PopAdLdVar
  loc_AA1C43: FLdPr Me
  loc_AA1C46: MemLdRfVar from_stack_1.htmFile
  loc_AA1C49: LdPrVar
  loc_AA1C4B: LateMemCall
  loc_AA1C51: FFreeStr var_A8 = "": var_AC = "": var_EC = ""
  loc_AA1C5C: FFree1Var var_BC = ""
  loc_AA1C5F: LitI2_Byte 1
  loc_AA1C61: FLdPr Me
  loc_AA1C64: MemLdRfVar from_stack_1.global_146
  loc_AA1C67: FLdPr Me
  loc_AA1C6A: MemLdUI1 global_144
  loc_AA1C6E: CI4UI1
  loc_AA1C6F: FLdPr Me
  loc_AA1C72: MemLdStr global_140
  loc_AA1C75: Ary1LdPr
  loc_AA1C76: MemLdStr global_4
  loc_AA1C79: LitI2_Byte 1
  loc_AA1C7B: FnUBound
  loc_AA1C7D: CI2I4
  loc_AA1C7E: ForI2 var_F4
  loc_AA1C84: FLdPr Me
  loc_AA1C87: MemLdI2 global_146
  loc_AA1C8A: LitI2_Byte 1
  loc_AA1C8C: GtI2
  loc_AA1C8D: BranchF loc_AA1CA4
  loc_AA1C90: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA1C95: PopAdLdVar
  loc_AA1C96: FLdPr Me
  loc_AA1C99: MemLdRfVar from_stack_1.htmFile
  loc_AA1C9C: LdPrVar
  loc_AA1C9E: LateMemCall
  loc_AA1CA4: FLdPr Me
  loc_AA1CA7: MemLdI2 global_146
  loc_AA1CAA: CI4UI1
  loc_AA1CAB: FLdPr Me
  loc_AA1CAE: MemLdUI1 global_144
  loc_AA1CB2: CI4UI1
  loc_AA1CB3: FLdPr Me
  loc_AA1CB6: MemLdStr global_140
  loc_AA1CB9: AryLock
  loc_AA1CBC: Ary1LdPr
  loc_AA1CBD: MemLdStr global_4
  loc_AA1CC0: AryLock
  loc_AA1CC3: Ary1LdRf
  loc_AA1CC4: FStR4 var_100
  loc_AA1CC7: LitVarStr var_110, "   <td align=""left"">"
  loc_AA1CCC: LitVarStr var_E4, "&nbsp;"
  loc_AA1CD1: FStVarCopyObj var_BC
  loc_AA1CD4: FLdRfVar var_BC
  loc_AA1CD7: FMemLdRf 0
  loc_AA1CDC: CVarRef
  loc_AA1CE1: FMemLdR4 var_100(0)
  loc_AA1CE6: LitStr vbNullString
  loc_AA1CE9: NeStr
  loc_AA1CEB: CVarBoolI2 var_94
  loc_AA1CEF: FLdRfVar var_D4
  loc_AA1CF2: ImpAdCallFPR4  = IIf(, , )
  loc_AA1CF7: FLdRfVar var_D4
  loc_AA1CFA: ConcatVar var_120
  loc_AA1CFE: LitVarStr var_130, "</td>"
  loc_AA1D03: ConcatVar var_140
  loc_AA1D07: PopAdLdVar
  loc_AA1D08: FLdPr Me
  loc_AA1D0B: MemLdRfVar from_stack_1.htmFile
  loc_AA1D0E: LdPrVar
  loc_AA1D10: LateMemCall
  loc_AA1D16: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_120 = ""
  loc_AA1D23: LitStr "   <td align=""right"">"
  loc_AA1D26: FMemLdR4 var_100(4)
  loc_AA1D2B: ConcatStr
  loc_AA1D2C: FStStrNoPop var_A8
  loc_AA1D2F: LitStr "</td>"
  loc_AA1D32: ConcatStr
  loc_AA1D33: CVarStr var_BC
  loc_AA1D36: PopAdLdVar
  loc_AA1D37: FLdPr Me
  loc_AA1D3A: MemLdRfVar from_stack_1.htmFile
  loc_AA1D3D: LdPrVar
  loc_AA1D3F: LateMemCall
  loc_AA1D45: FFree1Str var_A8
  loc_AA1D48: FFree1Var var_BC = ""
  loc_AA1D4B: LitStr "   <td align=""right"">"
  loc_AA1D4E: LitI4 1
  loc_AA1D53: LitI4 1
  loc_AA1D58: LitVarStr var_A4, "currency"
  loc_AA1D5D: FStVarCopyObj var_BC
  loc_AA1D60: FLdRfVar var_BC
  loc_AA1D63: FMemLdRf 0
  loc_AA1D68: CVarRef
  loc_AA1D6D: ImpAdCallI2 Format$(, )
  loc_AA1D72: FStStrNoPop var_A8
  loc_AA1D75: ConcatStr
  loc_AA1D76: FStStrNoPop var_AC
  loc_AA1D79: LitStr "</td>"
  loc_AA1D7C: ConcatStr
  loc_AA1D7D: CVarStr var_D4
  loc_AA1D80: PopAdLdVar
  loc_AA1D81: FLdPr Me
  loc_AA1D84: MemLdRfVar from_stack_1.htmFile
  loc_AA1D87: LdPrVar
  loc_AA1D89: LateMemCall
  loc_AA1D8F: FFreeStr var_A8 = ""
  loc_AA1D96: FFreeVar var_BC = ""
  loc_AA1D9D: LitVarStr var_94, "     </tr>"
  loc_AA1DA2: PopAdLdVar
  loc_AA1DA3: FLdPr Me
  loc_AA1DA6: MemLdRfVar from_stack_1.htmFile
  loc_AA1DA9: LdPrVar
  loc_AA1DAB: LateMemCall
  loc_AA1DB1: LitI4 0
  loc_AA1DB6: FStR4 var_100
  loc_AA1DB9: AryUnlock
  loc_AA1DBC: AryUnlock
  loc_AA1DBF: FLdPr Me
  loc_AA1DC2: MemLdRfVar from_stack_1.global_146
  loc_AA1DC5: NextI2 var_F4, loc_AA1C84
  loc_AA1DCA: FLdPr Me
  loc_AA1DCD: MemLdRfVar from_stack_1.global_144
  loc_AA1DD0: NextUI1
  loc_AA1DD6: LitVarStr var_94, "</table>"
  loc_AA1DDB: PopAdLdVar
  loc_AA1DDC: FLdPr Me
  loc_AA1DDF: MemLdRfVar from_stack_1.htmFile
  loc_AA1DE2: LdPrVar
  loc_AA1DE4: LateMemCall
  loc_AA1DEA: LitVarStr var_94, "<p>&nbsp;</p>"
  loc_AA1DEF: PopAdLdVar
  loc_AA1DF0: FLdPr Me
  loc_AA1DF3: MemLdRfVar from_stack_1.htmFile
  loc_AA1DF6: LdPrVar
  loc_AA1DF8: LateMemCall
  loc_AA1DFE: LitVarStr var_94, "<p><strong>El presente mail es únicamente para envío de aviso automático, por favor, NO lo responda...</strong></p>"
  loc_AA1E03: PopAdLdVar
  loc_AA1E04: FLdPr Me
  loc_AA1E07: MemLdRfVar from_stack_1.htmFile
  loc_AA1E0A: LdPrVar
  loc_AA1E0C: LateMemCall
  loc_AA1E12: LitVarStr var_94, "<p>desarrollado por InfoGov S.A. - www.infogov.com.ar</p>"
  loc_AA1E17: PopAdLdVar
  loc_AA1E18: FLdPr Me
  loc_AA1E1B: MemLdRfVar from_stack_1.htmFile
  loc_AA1E1E: LdPrVar
  loc_AA1E20: LateMemCall
  loc_AA1E26: ExitProcHresult
End Function

Private Function Proc_90_33_A87560() 'A87560
  'Data Table: 48709C
  loc_A8711C: LitVarStr var_94, "<html>"
  loc_A87121: PopAdLdVar
  loc_A87122: FLdPr Me
  loc_A87125: MemLdRfVar from_stack_1.htmFile
  loc_A87128: LdPrVar
  loc_A8712A: LateMemCall
  loc_A87130: LitVarStr var_94, "<head>"
  loc_A87135: PopAdLdVar
  loc_A87136: FLdPr Me
  loc_A87139: MemLdRfVar from_stack_1.htmFile
  loc_A8713C: LdPrVar
  loc_A8713E: LateMemCall
  loc_A87144: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A87149: PopAdLdVar
  loc_A8714A: FLdPr Me
  loc_A8714D: MemLdRfVar from_stack_1.htmFile
  loc_A87150: LdPrVar
  loc_A87152: LateMemCall
  loc_A87158: LitVarStr var_94, "<title>Orden de pago</title>"
  loc_A8715D: PopAdLdVar
  loc_A8715E: FLdPr Me
  loc_A87161: MemLdRfVar from_stack_1.htmFile
  loc_A87164: LdPrVar
  loc_A87166: LateMemCall
  loc_A8716C: LitStr vbNullString
  loc_A8716F: ILdRf Me
  loc_A87172: CastAd
  loc_A87175: FStAdFunc var_A8
  loc_A87178: FLdRfVar var_A8
  loc_A8717B: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A87180: FFree1Ad var_A8
  loc_A87183: LitVarStr var_94, "</head>"
  loc_A87188: PopAdLdVar
  loc_A87189: FLdPr Me
  loc_A8718C: MemLdRfVar from_stack_1.htmFile
  loc_A8718F: LdPrVar
  loc_A87191: LateMemCall
  loc_A87197: LitStr "<body background="""
  loc_A8719A: FLdRfVar var_AC
  loc_A8719D: ImpAdLdI4 MemVar_C3D83C
  loc_A871A0: FLdPr Me
  loc_A871A3: MemLdRfVar from_stack_1.global_160
  loc_A871A6: NewIfNullPr IFileSystem3
  loc_A871A9: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_A871AE: ILdRf var_AC
  loc_A871B1: ConcatStr
  loc_A871B2: FStStrNoPop var_B0
  loc_A871B5: LitStr "\l4.jpg"">"
  loc_A871B8: ConcatStr
  loc_A871B9: CVarStr var_C0
  loc_A871BC: PopAdLdVar
  loc_A871BD: FLdPr Me
  loc_A871C0: MemLdRfVar from_stack_1.htmFile
  loc_A871C3: LdPrVar
  loc_A871C5: LateMemCall
  loc_A871CB: FFreeStr var_AC = ""
  loc_A871D2: FFree1Var var_C0 = ""
  loc_A871D5: LitStr "Municipalidad de Guaymallén"
  loc_A871D8: LitStr "Municipalidad de General Alvear"
  loc_A871DB: EqStr
  loc_A871DD: BranchF loc_A872AB
  loc_A871E0: LitVarStr var_94, "<p><br />"
  loc_A871E5: PopAdLdVar
  loc_A871E6: FLdPr Me
  loc_A871E9: MemLdRfVar from_stack_1.htmFile
  loc_A871EC: LdPrVar
  loc_A871EE: LateMemCall
  loc_A871F4: LitVarStr var_94, "  <span class=""Normal""><strong>Estimado Proveedor:</strong></span><br />"
  loc_A871F9: PopAdLdVar
  loc_A871FA: FLdPr Me
  loc_A871FD: MemLdRfVar from_stack_1.htmFile
  loc_A87200: LdPrVar
  loc_A87202: LateMemCall
  loc_A87208: LitVarStr var_94, "  <span class=""Normal"">Le informamos que estamos realizando un pago a su favor.</span><br />"
  loc_A8720D: PopAdLdVar
  loc_A8720E: FLdPr Me
  loc_A87211: MemLdRfVar from_stack_1.htmFile
  loc_A87214: LdPrVar
  loc_A87216: LateMemCall
  loc_A8721C: LitVarStr var_94, "  <span class=""Normal"">Quedamos a disposición por cualquier consulta al respecto, le agradecemos por confiar en nosotros.-</span><br />"
  loc_A87221: PopAdLdVar
  loc_A87222: FLdPr Me
  loc_A87225: MemLdRfVar from_stack_1.htmFile
  loc_A87228: LdPrVar
  loc_A8722A: LateMemCall
  loc_A87230: LitVarStr var_94, "  <span class=""Normal"">Atentamente.-</span><br />"
  loc_A87235: PopAdLdVar
  loc_A87236: FLdPr Me
  loc_A87239: MemLdRfVar from_stack_1.htmFile
  loc_A8723C: LdPrVar
  loc_A8723E: LateMemCall
  loc_A87244: LitVarStr var_94, "  <span class=""Normal"">DEPARTAMENTO DE PAGOS</span><br />"
  loc_A87249: PopAdLdVar
  loc_A8724A: FLdPr Me
  loc_A8724D: MemLdRfVar from_stack_1.htmFile
  loc_A87250: LdPrVar
  loc_A87252: LateMemCall
  loc_A87258: LitVarStr var_94, "  <span class=""Normal"">MUNICIPALIDAD DE GENERAL ALVEAR</span><br />"
  loc_A8725D: PopAdLdVar
  loc_A8725E: FLdPr Me
  loc_A87261: MemLdRfVar from_stack_1.htmFile
  loc_A87264: LdPrVar
  loc_A87266: LateMemCall
  loc_A8726C: LitVarStr var_94, "  <span class=""Normal"">pagoaproveedores@alvearmendoza.gob.ar</span><br />"
  loc_A87271: PopAdLdVar
  loc_A87272: FLdPr Me
  loc_A87275: MemLdRfVar from_stack_1.htmFile
  loc_A87278: LdPrVar
  loc_A8727A: LateMemCall
  loc_A87280: LitVarStr var_94, "  <span class=""Normal"">02625-422661 interno 2290</span><br />"
  loc_A87285: PopAdLdVar
  loc_A87286: FLdPr Me
  loc_A87289: MemLdRfVar from_stack_1.htmFile
  loc_A8728C: LdPrVar
  loc_A8728E: LateMemCall
  loc_A87294: LitVarStr var_94, "</p>"
  loc_A87299: PopAdLdVar
  loc_A8729A: FLdPr Me
  loc_A8729D: MemLdRfVar from_stack_1.htmFile
  loc_A872A0: LdPrVar
  loc_A872A2: LateMemCall
  loc_A872A8: Branch loc_A8736C
  loc_A872AB: LitStr "Municipalidad de Guaymallén"
  loc_A872AE: LitStr "Municipalidad de Guaymallén"
  loc_A872B1: EqStr
  loc_A872B3: BranchF loc_A87307
  loc_A872B6: LitVarStr var_94, "<p><br />"
  loc_A872BB: PopAdLdVar
  loc_A872BC: FLdPr Me
  loc_A872BF: MemLdRfVar from_stack_1.htmFile
  loc_A872C2: LdPrVar
  loc_A872C4: LateMemCall
  loc_A872CA: LitStr "  <span class=""Normal""><strong>"""
  loc_A872CD: LitStr "Municipalidad de Guaymallén"
  loc_A872D0: ConcatStr
  loc_A872D1: FStStrNoPop var_AC
  loc_A872D4: LitStr """ informa: Sr. Proveedor, a partir de las 48 horas de la presente, consulte por su pago en Tesorería General según el siguiente detalle.</strong></span>"
  loc_A872D7: ConcatStr
  loc_A872D8: CVarStr var_C0
  loc_A872DB: PopAdLdVar
  loc_A872DC: FLdPr Me
  loc_A872DF: MemLdRfVar from_stack_1.htmFile
  loc_A872E2: LdPrVar
  loc_A872E4: LateMemCall
  loc_A872EA: FFree1Str var_AC
  loc_A872ED: FFree1Var var_C0 = ""
  loc_A872F0: LitVarStr var_94, "</p>"
  loc_A872F5: PopAdLdVar
  loc_A872F6: FLdPr Me
  loc_A872F9: MemLdRfVar from_stack_1.htmFile
  loc_A872FC: LdPrVar
  loc_A872FE: LateMemCall
  loc_A87304: Branch loc_A8736C
  loc_A87307: LitVarStr var_94, "<p><br />"
  loc_A8730C: PopAdLdVar
  loc_A8730D: FLdPr Me
  loc_A87310: MemLdRfVar from_stack_1.htmFile
  loc_A87313: LdPrVar
  loc_A87315: LateMemCall
  loc_A8731B: LitStr "  <span class=""Normal""><strong>Sr. Proveedor, """
  loc_A8731E: LitStr "Municipalidad de Guaymallén"
  loc_A87321: ConcatStr
  loc_A87322: FStStrNoPop var_AC
  loc_A87325: LitStr """ le informa que a partir del día "
  loc_A87328: ConcatStr
  loc_A87329: FStStrNoPop var_B0
  loc_A8732C: FLdPr Me
  loc_A8732F: MemLdStr FechaPago
  loc_A87332: ConcatStr
  loc_A87333: FStStrNoPop var_C4
  loc_A87336: LitStr " tiene a su disposición un pago según el siguiente detalle.</strong></span>"
  loc_A87339: ConcatStr
  loc_A8733A: CVarStr var_C0
  loc_A8733D: PopAdLdVar
  loc_A8733E: FLdPr Me
  loc_A87341: MemLdRfVar from_stack_1.htmFile
  loc_A87344: LdPrVar
  loc_A87346: LateMemCall
  loc_A8734C: FFreeStr var_AC = "": var_B0 = ""
  loc_A87355: FFree1Var var_C0 = ""
  loc_A87358: LitVarStr var_94, "</p>"
  loc_A8735D: PopAdLdVar
  loc_A8735E: FLdPr Me
  loc_A87361: MemLdRfVar from_stack_1.htmFile
  loc_A87364: LdPrVar
  loc_A87366: LateMemCall
  loc_A8736C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A87371: PopAdLdVar
  loc_A87372: FLdPr Me
  loc_A87375: MemLdRfVar from_stack_1.htmFile
  loc_A87378: LdPrVar
  loc_A8737A: LateMemCall
  loc_A87380: LitVarStr var_94, "  <tr>"
  loc_A87385: PopAdLdVar
  loc_A87386: FLdPr Me
  loc_A87389: MemLdRfVar from_stack_1.htmFile
  loc_A8738C: LdPrVar
  loc_A8738E: LateMemCall
  loc_A87394: LitStr "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A87397: LitStr "Municipalidad de Guaymallén"
  loc_A8739A: ConcatStr
  loc_A8739B: FStStrNoPop var_AC
  loc_A8739E: LitStr "</p>"
  loc_A873A1: ConcatStr
  loc_A873A2: CVarStr var_C0
  loc_A873A5: PopAdLdVar
  loc_A873A6: FLdPr Me
  loc_A873A9: MemLdRfVar from_stack_1.htmFile
  loc_A873AC: LdPrVar
  loc_A873AE: LateMemCall
  loc_A873B4: FFree1Str var_AC
  loc_A873B7: FFree1Var var_C0 = ""
  loc_A873BA: LitStr "    <p>ORDEN DE PAGO N&ordm; "
  loc_A873BD: FLdPr Me
  loc_A873C0: MemLdStr NumeOrpa
  loc_A873C3: CStrI4
  loc_A873C5: FStStrNoPop var_AC
  loc_A873C8: ConcatStr
  loc_A873C9: FStStrNoPop var_B0
  loc_A873CC: LitStr "</p></th>"
  loc_A873CF: ConcatStr
  loc_A873D0: CVarStr var_C0
  loc_A873D3: PopAdLdVar
  loc_A873D4: FLdPr Me
  loc_A873D7: MemLdRfVar from_stack_1.htmFile
  loc_A873DA: LdPrVar
  loc_A873DC: LateMemCall
  loc_A873E2: FFreeStr var_AC = ""
  loc_A873E9: FFree1Var var_C0 = ""
  loc_A873EC: LitVarStr var_94, "  </tr>"
  loc_A873F1: PopAdLdVar
  loc_A873F2: FLdPr Me
  loc_A873F5: MemLdRfVar from_stack_1.htmFile
  loc_A873F8: LdPrVar
  loc_A873FA: LateMemCall
  loc_A87400: LitVarStr var_94, "  <tr><th colspan=""3"" align=""left""><hr></th></tr>"
  loc_A87405: PopAdLdVar
  loc_A87406: FLdPr Me
  loc_A87409: MemLdRfVar from_stack_1.htmFile
  loc_A8740C: LdPrVar
  loc_A8740E: LateMemCall
  loc_A87414: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A87419: PopAdLdVar
  loc_A8741A: FLdPr Me
  loc_A8741D: MemLdRfVar from_stack_1.htmFile
  loc_A87420: LdPrVar
  loc_A87422: LateMemCall
  loc_A87428: LitStr "    <th align=""left"">Proveedor: <span class=""Normal"">"
  loc_A8742B: FLdPr Me
  loc_A8742E: MemLdStr CucuPers
  loc_A87431: ConcatStr
  loc_A87432: FStStrNoPop var_AC
  loc_A87435: LitStr " - "
  loc_A87438: ConcatStr
  loc_A87439: FStStrNoPop var_B0
  loc_A8743C: FLdPr Me
  loc_A8743F: MemLdStr global_132
  loc_A87442: ConcatStr
  loc_A87443: FStStrNoPop var_C4
  loc_A87446: LitStr "</span></th>"
  loc_A87449: ConcatStr
  loc_A8744A: CVarStr var_C0
  loc_A8744D: PopAdLdVar
  loc_A8744E: FLdPr Me
  loc_A87451: MemLdRfVar from_stack_1.htmFile
  loc_A87454: LdPrVar
  loc_A87456: LateMemCall
  loc_A8745C: FFreeStr var_AC = "": var_B0 = ""
  loc_A87465: FFree1Var var_C0 = ""
  loc_A87468: LitVarStr var_94, "  </tr>"
  loc_A8746D: PopAdLdVar
  loc_A8746E: FLdPr Me
  loc_A87471: MemLdRfVar from_stack_1.htmFile
  loc_A87474: LdPrVar
  loc_A87476: LateMemCall
  loc_A8747C: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A87481: PopAdLdVar
  loc_A87482: FLdPr Me
  loc_A87485: MemLdRfVar from_stack_1.htmFile
  loc_A87488: LdPrVar
  loc_A8748A: LateMemCall
  loc_A87490: LitStr "    <th align=""left"">Expediente: <span class=""Normal"">"
  loc_A87493: FLdPr Me
  loc_A87496: MemLdStr global_120
  loc_A87499: ConcatStr
  loc_A8749A: FStStrNoPop var_AC
  loc_A8749D: LitStr " - Liquidación: "
  loc_A874A0: ConcatStr
  loc_A874A1: FStStrNoPop var_B0
  loc_A874A4: FLdPr Me
  loc_A874A7: MemLdStr global_124
  loc_A874AA: ConcatStr
  loc_A874AB: FStStrNoPop var_C4
  loc_A874AE: LitStr "</span></th>"
  loc_A874B1: ConcatStr
  loc_A874B2: CVarStr var_C0
  loc_A874B5: PopAdLdVar
  loc_A874B6: FLdPr Me
  loc_A874B9: MemLdRfVar from_stack_1.htmFile
  loc_A874BC: LdPrVar
  loc_A874BE: LateMemCall
  loc_A874C4: FFreeStr var_AC = "": var_B0 = ""
  loc_A874CD: FFree1Var var_C0 = ""
  loc_A874D0: LitVarStr var_94, "  </tr>"
  loc_A874D5: PopAdLdVar
  loc_A874D6: FLdPr Me
  loc_A874D9: MemLdRfVar from_stack_1.htmFile
  loc_A874DC: LdPrVar
  loc_A874DE: LateMemCall
  loc_A874E4: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A874E9: PopAdLdVar
  loc_A874EA: FLdPr Me
  loc_A874ED: MemLdRfVar from_stack_1.htmFile
  loc_A874F0: LdPrVar
  loc_A874F2: LateMemCall
  loc_A874F8: LitStr "    <th align=""left"">Detalle: <span class=""Normal"">"
  loc_A874FB: FLdPr Me
  loc_A874FE: MemLdStr global_128
  loc_A87501: ConcatStr
  loc_A87502: FStStrNoPop var_AC
  loc_A87505: LitStr "</span></th>"
  loc_A87508: ConcatStr
  loc_A87509: CVarStr var_C0
  loc_A8750C: PopAdLdVar
  loc_A8750D: FLdPr Me
  loc_A87510: MemLdRfVar from_stack_1.htmFile
  loc_A87513: LdPrVar
  loc_A87515: LateMemCall
  loc_A8751B: FFree1Str var_AC
  loc_A8751E: FFree1Var var_C0 = ""
  loc_A87521: LitVarStr var_94, "  </tr>"
  loc_A87526: PopAdLdVar
  loc_A87527: FLdPr Me
  loc_A8752A: MemLdRfVar from_stack_1.htmFile
  loc_A8752D: LdPrVar
  loc_A8752F: LateMemCall
  loc_A87535: LitVarStr var_94, "</table>"
  loc_A8753A: PopAdLdVar
  loc_A8753B: FLdPr Me
  loc_A8753E: MemLdRfVar from_stack_1.htmFile
  loc_A87541: LdPrVar
  loc_A87543: LateMemCall
  loc_A87549: LitVarStr var_94, "<p>&nbsp;</p>"
  loc_A8754E: PopAdLdVar
  loc_A8754F: FLdPr Me
  loc_A87552: MemLdRfVar from_stack_1.htmFile
  loc_A87555: LdPrVar
  loc_A87557: LateMemCall
  loc_A8755D: ExitProcHresult
  loc_A8755E: CI2UI1
End Function

Private Function Proc_90_34_973CE0() '973CE0
  'Data Table: 48709C
  loc_973CB4: LitVarStr var_94, "</body>"
  loc_973CB9: PopAdLdVar
  loc_973CBA: FLdPr Me
  loc_973CBD: MemLdRfVar from_stack_1.htmFile
  loc_973CC0: LdPrVar
  loc_973CC2: LateMemCall
  loc_973CC8: LitVarStr var_94, "</html>"
  loc_973CCD: PopAdLdVar
  loc_973CCE: FLdPr Me
  loc_973CD1: MemLdRfVar from_stack_1.htmFile
  loc_973CD4: LdPrVar
  loc_973CD6: LateMemCall
  loc_973CDC: ExitProcHresult
End Function
