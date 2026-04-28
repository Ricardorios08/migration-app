VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWOW64\comctl32.ocx"
Begin VB.Form dlgEnvioEmailPagado
  Caption = "Envío de E-mail"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgEnvioEmailPagado.frx":0000
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
    OleObjectBlob = "dlgEnvioEmailPagado.frx":030A
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
    OleObjectBlob = "dlgEnvioEmailPagado.frx":03B2
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
      OleObjectBlob = "dlgEnvioEmailPagado.frx":0466
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

Attribute VB_Name = "dlgEnvioEmailPagado"

Public html As New UnkObject
Public PeriInfo As Integer
Public NumeOrpa As Long
Public CucuPers As String
Public MostrarUG As String
Public FechaPago As String
Public htmFile As Variant
Public bGenerado As Boolean
Public eUsua As New Class

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_3_00577EB4
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub Form_Load() '940EC8
  'Data Table: 48CF58
  loc_940EBC: LitI2_Byte 0
  loc_940EBE: FLdPr Me
  loc_940EC1: MemStI2 global_168
  loc_940EC4: ExitProcHresult
  loc_940EC5: ILdRf arg_29FF
End Sub

Private Sub Form_Unload(Cancel As Integer) '953748
  'Data Table: 48CF58
  loc_953734: LitI4 0
  loc_953739: FStStrCopy var_88
  loc_95373C: FLdRfVar var_88
  loc_95373F: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_953744: FFree1Str var_88
  loc_953747: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A665C4
  'Data Table: 48CF58
  loc_A6628C: LitStr "Municipalidad de Guaymallén"
  loc_A6628F: LitStr " - InfoGov S.A <"
  loc_A66292: ConcatStr
  loc_A66293: FStStrNoPop var_88
  loc_A66296: LitStr "guaymallen@infogov.com.ar"
  loc_A66299: ConcatStr
  loc_A6629A: FStStrNoPop var_8C
  loc_A6629D: LitStr ">"
  loc_A662A0: ConcatStr
  loc_A662A1: FStStrNoPop var_90
  loc_A662A4: FLdPrThis
  loc_A662A5: VCallAd Control_ID_txtSender
  loc_A662A8: FStAdFunc var_94
  loc_A662AB: FLdPr var_94
  loc_A662AE: Me.Text = from_stack_1
  loc_A662B3: FFreeStr var_88 = "": var_8C = ""
  loc_A662BC: FFree1Ad var_94
  loc_A662BF: Call GeneraReporte()
  loc_A662C4: FLdPr Me
  loc_A662C7: MemLdI2 bGenerado
  loc_A662CA: NotI4
  loc_A662CB: BranchF loc_A662E6
  loc_A662CE: ILdRf Me
  loc_A662D1: FStAdNoPop
  loc_A662D5: ImpAdLdRf MemVar_C44F9C
  loc_A662D8: NewIfNullPr Me
  loc_A662DB: Me.Global.Unload from_stack_1
  loc_A662E0: FFree1Ad var_94
  loc_A662E3: Branch loc_A66570
  loc_A662E6: Call GeneraHTML()
  loc_A662EB: ImpAdLdRf MemVar_C3D83C
  loc_A662EE: CDargRef
  loc_A662F2: FLdPrThis
  loc_A662F3: VCallAd Control_ID_WebBrowser1
  loc_A662F6: FStAdFunc var_94
  loc_A662F9: FLdPr var_94
  loc_A662FC: LateIdCall
  loc_A66304: FFree1Ad var_94
  loc_A66307: ImpAdCallFPR4 DoEvents()
  loc_A6630C: FLdPrThis
  loc_A6630D: VCallAd Control_ID_WebBrowser1
  loc_A66310: FStAdFunc var_94
  loc_A66313: FLdPr var_94
  loc_A66316: LateIdLdVar var_B4 DispID_-525 -1
  loc_A6631D: CI4Var
  loc_A6631F: LitI4 4
  loc_A66324: NeI4
  loc_A66325: FFree1Ad var_94
  loc_A66328: FFree1Var var_B4 = ""
  loc_A6632B: BranchT loc_A66307
  loc_A6632E: LitVarStr var_A4, "Off"
  loc_A66333: PopAdLdVar
  loc_A66334: FLdPrThis
  loc_A66335: VCallAd Control_ID_WebBrowser1
  loc_A66338: FStAdFunc var_94
  loc_A6633B: FLdPr var_94
  loc_A6633E: LateIdLdVar var_B4 DispID_203 0
  loc_A66345: VarLateMemSt .designMode
  loc_A66349: FFree1Ad var_94
  loc_A6634C: FFree1Var var_B4 = ""
  loc_A6634F: FLdPrThis
  loc_A66350: VCallAd Control_ID_WebBrowser1
  loc_A66353: FStAdFunc var_94
  loc_A66356: FLdPr var_94
  loc_A66359: LateIdLdVar var_B4 DispID_203 0
  loc_A66360: CastAdVar Me
  loc_A66364: FStAdFuncNoPop
  loc_A66367: FLdPr Me
  loc_A6636A: MemStAd
  loc_A6636E: FFreeAd var_94 = ""
  loc_A66375: FFree1Var var_B4 = ""
  loc_A66378: LitI2_Byte 1
  loc_A6637A: FLdPr Me
  loc_A6637D: MemStI2 global_104
  loc_A66380: LitI2_Byte 0
  loc_A66382: CUI1I2
  loc_A66384: FLdPr Me
  loc_A66387: MemStUI1
  loc_A6638B: LitI4 &HB
  loc_A66390: CI2I4
  loc_A66391: FLdPr Me
  loc_A66394: Me.MousePointer = from_stack_1
  loc_A66399: LitI2_Byte 0
  loc_A6639B: FLdPr Me
  loc_A6639E: Me.Enabled = from_stack_1b
  loc_A663A3: LitI2_Byte 0
  loc_A663A5: FLdPr Me
  loc_A663A8: VCallAd Control_ID_cmdEnviar
  loc_A663AB: FStAdFunc var_94
  loc_A663AE: FLdPr var_94
  loc_A663B1: Me.Enabled = from_stack_1b
  loc_A663B6: FFree1Ad var_94
  loc_A663B9: LitVarStr var_A4, "Generando archivo adjunto (Certificado de Retención)..."
  loc_A663BE: PopAdLdVar
  loc_A663BF: FLdPr Me
  loc_A663C2: VCallAd Control_ID_sBar
  loc_A663C5: FStAdFunc var_94
  loc_A663C8: FLdPr var_94
  loc_A663CB: LateIdSt
  loc_A663D0: FFree1Ad var_94
  loc_A663D3: ImpAdLdRf MemVar_C3D85C
  loc_A663D6: NewIfNullAd
  loc_A663D9: FStAd var_CC 
  loc_A663DD: ImpAdLdRf MemVar_C3D85C
  loc_A663E0: NewIfNullAd
  loc_A663E3: CastAd
  loc_A663E6: FStAdFuncNoPop
  loc_A663E9: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_A663EE: FFree1Ad var_94
  loc_A663F1: FLdPr Me
  loc_A663F4: MemLdI2 PeriInfo
  loc_A663F7: CStrUI1
  loc_A663F9: FStStrNoPop var_88
  loc_A663FC: FLdPr var_CC
  loc_A663FF: VCallAd Control_ID_txtRecipientName
  loc_A66402: FStAdFunc var_94
  loc_A66405: FLdPr var_94
  loc_A66408: Me.Text = from_stack_1
  loc_A6640D: FFree1Str var_88
  loc_A66410: FFree1Ad var_94
  loc_A66413: FLdPr Me
  loc_A66416: MemLdStr NumeOrpa
  loc_A66419: CStrI4
  loc_A6641B: FStStrNoPop var_88
  loc_A6641E: FLdPr var_CC
  loc_A66421: VCallAd Control_ID_cmdEnviar
  loc_A66424: FStAdFunc var_94
  loc_A66427: FLdPr var_94
  loc_A6642A: Me.Text = from_stack_1
  loc_A6642F: FFree1Str var_88
  loc_A66432: FFree1Ad var_94
  loc_A66435: FLdPr Me
  loc_A66438: MemLdRfVar from_stack_1.CucuPers
  loc_A6643B: CDargRef
  loc_A6643F: FLdPr var_CC
  loc_A66442: VCallAd Control_ID_
  loc_A66445: FStAdFunc var_94
  loc_A66448: FLdPr var_94
  loc_A6644B: LateIdSt
  loc_A66450: FFree1Ad var_94
  loc_A66453: LitI4 1
  loc_A66458: CI2I4
  loc_A66459: FLdPr var_CC
  loc_A6645C: VCallAd Control_ID_txtSubject
  loc_A6645F: FStAdFunc var_94
  loc_A66462: FLdPr var_94
  loc_A66465: Me.Value = from_stack_1
  loc_A6646A: FFree1Ad var_94
  loc_A6646D: FLdRfVar var_CE
  loc_A66470: FLdPr var_CC
  loc_A66473: from_stack_1v = rptCertificadoderetencion.GenerarPDF()
  loc_A66478: FLdI2 var_CE
  loc_A6647B: BranchF loc_A6653B
  loc_A6647E: FLdRfVar var_88
  loc_A66481: FLdPr var_CC
  loc_A66484:  = Me.Caption
  loc_A66489: ILdRf var_88
  loc_A6648C: LitStr " "
  loc_A6648F: ConcatStr
  loc_A66490: FStStrNoPop var_8C
  loc_A66493: FLdPr Me
  loc_A66496: MemLdI2 PeriInfo
  loc_A66499: CStrUI1
  loc_A6649B: FStStrNoPop var_90
  loc_A6649E: ConcatStr
  loc_A6649F: FStStrNoPop var_D4
  loc_A664A2: LitStr "-"
  loc_A664A5: ConcatStr
  loc_A664A6: FStStrNoPop var_D8
  loc_A664A9: FLdPr Me
  loc_A664AC: MemLdStr NumeOrpa
  loc_A664AF: CStrI4
  loc_A664B1: FStStrNoPop var_DC
  loc_A664B4: ConcatStr
  loc_A664B5: FStStrNoPop var_E0
  loc_A664B8: LitStr "-"
  loc_A664BB: ConcatStr
  loc_A664BC: FStStrNoPop var_E4
  loc_A664BF: FLdPr Me
  loc_A664C2: MemLdStr CucuPers
  loc_A664C5: ConcatStr
  loc_A664C6: FStStrNoPop var_E8
  loc_A664C9: LitStr ".pdf"
  loc_A664CC: ConcatStr
  loc_A664CD: FStStrNoPop var_EC
  loc_A664D0: FLdPr Me
  loc_A664D3: VCallAd Control_ID_txtAdjunto
  loc_A664D6: FStAdFunc var_94
  loc_A664D9: FLdPr var_94
  loc_A664DC: Me.Text = from_stack_1
  loc_A664E1: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A664F8: FFree1Ad var_94
  loc_A664FB: FLdRfVar var_88
  loc_A664FE: FLdPr Me
  loc_A66501: VCallAd Control_ID_txtSubject
  loc_A66504: FStAdFunc var_94
  loc_A66507: FLdPr var_94
  loc_A6650A:  = Me.Text
  loc_A6650F: ILdRf var_88
  loc_A66512: LitStr " - Se adjunta certificado/s de retención/es..."
  loc_A66515: ConcatStr
  loc_A66516: FStStrNoPop var_8C
  loc_A66519: FLdPr Me
  loc_A6651C: VCallAd Control_ID_txtSubject
  loc_A6651F: FStAdFunc var_C8
  loc_A66522: FLdPr var_C8
  loc_A66525: Me.Text = from_stack_1
  loc_A6652A: FFreeStr var_88 = ""
  loc_A66531: FFreeAd var_94 = ""
  loc_A66538: Branch loc_A66552
  loc_A6653B: LitStr vbNullString
  loc_A6653E: FLdPr Me
  loc_A66541: VCallAd Control_ID_txtAdjunto
  loc_A66544: FStAdFunc var_94
  loc_A66547: FLdPr var_94
  loc_A6654A: Me.Text = from_stack_1
  loc_A6654F: FFree1Ad var_94
  loc_A66552: ImpAdLdRf MemVar_C3D85C
  loc_A66555: NewIfNullAd
  loc_A66558: FStAdNoPop
  loc_A6655C: ImpAdLdRf MemVar_C44F9C
  loc_A6655F: NewIfNullPr Me
  loc_A66562: Me.Global.Unload from_stack_1
  loc_A66567: FFree1Ad var_94
  loc_A6656A: LitNothing
  loc_A6656C: FStAd var_CC 
  loc_A66570: LitI2_Byte &HFF
  loc_A66572: FLdPr Me
  loc_A66575: Me.Enabled = from_stack_1b
  loc_A6657A: LitI4 0
  loc_A6657F: CI2I4
  loc_A66580: FLdPr Me
  loc_A66583: Me.MousePointer = from_stack_1
  loc_A66588: LitVarStr var_A4, "Preparado para enviar"
  loc_A6658D: PopAdLdVar
  loc_A6658E: FLdPr Me
  loc_A66591: VCallAd Control_ID_sBar
  loc_A66594: FStAdFunc var_94
  loc_A66597: FLdPr var_94
  loc_A6659A: LateIdSt
  loc_A6659F: FFree1Ad var_94
  loc_A665A2: LitI2_Byte &HFF
  loc_A665A4: FLdPr Me
  loc_A665A7: VCallAd Control_ID_cmdEnviar
  loc_A665AA: FStAdFunc var_94
  loc_A665AD: FLdPr var_94
  loc_A665B0: Me.Enabled = from_stack_1b
  loc_A665B5: FFree1Ad var_94
  loc_A665B8: LitI2_Byte &HFF
  loc_A665BA: FLdPr Me
  loc_A665BD: MemStI2 global_168
  loc_A665C0: ExitProcHresult
  loc_A665C1: FFree1Var var_D8 = ""
End Sub

Private Sub cmdEnviar_Click() '96A5EC
  'Data Table: 48CF58
  loc_96A5D0: Call Proc_89_30_B6E610()
  loc_96A5D5: ILdRf Me
  loc_96A5D8: FStAdNoPop
  loc_96A5DC: ImpAdLdRf MemVar_C44F9C
  loc_96A5DF: NewIfNullPr Me
  loc_96A5E2: Me.Global.Unload from_stack_1
  loc_96A5E7: FFree1Ad var_88
  loc_96A5EA: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '953BA4
  'Data Table: 48CF58
  loc_953B8C: ILdRf Me
  loc_953B8F: FStAdNoPop
  loc_953B93: ImpAdLdRf MemVar_C44F9C
  loc_953B96: NewIfNullPr Me
  loc_953B99: Me.Global.Unload from_stack_1
  loc_953B9E: FFree1Ad var_88
  loc_953BA1: ExitProcHresult
  loc_953BA2: CopyBytes
End Sub

Private Sub Timer1_Timer() '9AD204
  'Data Table: 48CF58
  loc_9AD174: FLdPr Me
  loc_9AD177: MemLdUI1 global_106
  loc_9AD17B: CI2UI1
  loc_9AD17D: LitI2_Byte 1
  loc_9AD17F: AddI2
  loc_9AD180: CUI1I2
  loc_9AD182: FLdPr Me
  loc_9AD185: MemStUI1
  loc_9AD189: FLdRfVar var_B4
  loc_9AD18C: FLdRfVar var_B0
  loc_9AD18F: FLdPr Me
  loc_9AD192: MemLdRfVar from_stack_1.global_106
  loc_9AD195: CVarRef
  loc_9AD19A: FLdPrThis
  loc_9AD19B: VCallAd Control_ID_ImageList1
  loc_9AD19E: FStAdFunc var_88
  loc_9AD1A1: FLdPr var_88
  loc_9AD1A4: LateIdLdVar var_98 DispID_4 0
  loc_9AD1AB: CastAdVar Me
  loc_9AD1AF: FStAdFunc var_AC
  loc_9AD1B2: FLdPr var_AC
  loc_9AD1B5:  = Me.ListImages.ControlDefault
  loc_9AD1BA: FLdPr var_B0
  loc_9AD1BD:  = Me.Picture
  loc_9AD1C2: FLdZeroAd var_B4
  loc_9AD1C5: FStAdFuncNoPop
  loc_9AD1C8: FLdPrThis
  loc_9AD1C9: VCallAd Control_ID_Image1
  loc_9AD1CC: FStAdFunc var_BC
  loc_9AD1CF: FLdPr var_BC
  loc_9AD1D2: Me.Picture = from_stack_1
  loc_9AD1D7: FFreeAd var_88 = "": var_AC = "": var_B0 = "": var_B8 = ""
  loc_9AD1E4: FFree1Var var_98 = ""
  loc_9AD1E7: FLdPr Me
  loc_9AD1EA: MemLdUI1 global_106
  loc_9AD1EE: CI2UI1
  loc_9AD1F0: LitI2_Byte &HC
  loc_9AD1F2: EqI2
  loc_9AD1F3: BranchF loc_9AD201
  loc_9AD1F6: LitI2_Byte 0
  loc_9AD1F8: CUI1I2
  loc_9AD1FA: FLdPr Me
  loc_9AD1FD: MemStUI1
  loc_9AD201: ExitProcHresult
  loc_9AD202: Branch loc_9BB214
End Sub

Public Function htmlGet() '48DF64
  htmlGet = html
End Function

Public Sub htmlPut(Value) '48DF73
  html = Value
End Sub

Public Sub htmlSet(Value) '48DF82
  html = Value
End Sub

Public Function PeriInfoGet() '48DF91
  PeriInfoGet = PeriInfo
End Function

Public Sub PeriInfoPut(Value) '48DFA0
  PeriInfo = Value
End Sub

Public Function NumeOrpaGet() '48DFAF
  NumeOrpaGet = NumeOrpa
End Function

Public Sub NumeOrpaPut(Value) '48DFBE
  NumeOrpa = Value
End Sub

Public Function CucuPersGet() '48DFCD
  CucuPersGet = CucuPers
End Function

Public Sub CucuPersPut(Value) '48DFDC
  CucuPers = Value
End Sub

Public Function MostrarUGGet() '48DFEB
  MostrarUGGet = MostrarUG
End Function

Public Sub MostrarUGPut(Value) '48DFFA
  MostrarUG = Value
End Sub

Public Function FechaPagoGet() '48E009
  FechaPagoGet = FechaPago
End Function

Public Sub FechaPagoPut(Value) '48E018
  FechaPago = Value
End Sub

Public Function htmFileGet() '48E027
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '48E036
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '48E045
  htmFile = Value
End Sub

Public Function bGeneradoGet() '48E054
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '48E063
  bGenerado = Value
End Sub

Public Function global_4771672Get() '48E072
  global_4771672Get = global_4771672
End Function

Public Sub global_4771672Put(Value) '48E08C
  global_4771672 = Value
End Sub

Public Sub global_4771672Set(Value) '48E0A6
  global_4771672 = Value
End Sub

Public Function GetStringFile(value, Force) 'A1DD74
  'Data Table: 48CF58
  loc_A1DBD8: ZeroRetVal
  loc_A1DBDA: ILdI2 Force
  loc_A1DBDD: BranchF loc_A1DC01
  loc_A1DBE0: LitI4 0
  loc_A1DBE5: LitI4 -1
  loc_A1DBEA: LitI4 1
  loc_A1DBEF: LitStr " "
  loc_A1DBF2: LitStr "+"
  loc_A1DBF5: ILdI4 value
  loc_A1DBF8: ImpAdCallI2 Replace(, , , , , )
  loc_A1DBFD: IStStr
  loc_A1DC01: LitI4 0
  loc_A1DC06: FLdRfVar var_A0
  loc_A1DC09: ImpAdCallFPR4  = Chr()
  loc_A1DC0E: LitI4 0
  loc_A1DC13: LitI4 -1
  loc_A1DC18: LitI4 1
  loc_A1DC1D: FLdRfVar var_A0
  loc_A1DC20: CStrVarVal var_A4
  loc_A1DC24: LitStr Chr(37) & "25"
  loc_A1DC27: ILdI4 value
  loc_A1DC2A: ImpAdCallI2 Replace(, , , , , )
  loc_A1DC2F: IStStr
  loc_A1DC33: FFree1Str var_A4
  loc_A1DC36: FFree1Var var_A0 = ""
  loc_A1DC39: LitI4 1
  loc_A1DC3E: ILdI4 value
  loc_A1DC41: LitStr Chr(37)
  loc_A1DC44: LitI4 0
  loc_A1DC49: FnInStr4
  loc_A1DC4B: FStR4 var_90
  loc_A1DC4E: ILdRf var_90
  loc_A1DC51: LitI4 0
  loc_A1DC56: GtI4
  loc_A1DC57: BranchF loc_A1DCF5
  loc_A1DC5A: LitI4 1
  loc_A1DC5F: ILdI4 value
  loc_A1DC62: LitStr Chr(37)
  loc_A1DC65: LitI4 0
  loc_A1DC6A: FnInStr4
  loc_A1DC6C: FStR4 var_90
  loc_A1DC6F: ILdRf var_90
  loc_A1DC72: LitI4 0
  loc_A1DC77: NeI4
  loc_A1DC78: BranchF loc_A1DCF2
  loc_A1DC7B: LitVarI2 var_A0, 2
  loc_A1DC80: ILdRf var_90
  loc_A1DC83: LitI4 1
  loc_A1DC88: AddI4
  loc_A1DC89: ILdRf value
  loc_A1DC8C: CVarRef
  loc_A1DC91: FLdRfVar var_D4
  loc_A1DC94: ImpAdCallFPR4  = Mid(, , )
  loc_A1DC99: FLdRfVar var_D4
  loc_A1DC9C: CStrVarTmp
  loc_A1DC9D: FStStr var_8C
  loc_A1DCA0: FFreeVar var_A0 = ""
  loc_A1DCA7: LitStr "&H"
  loc_A1DCAA: ILdRf var_8C
  loc_A1DCAD: ConcatStr
  loc_A1DCAE: FStStrNoPop var_A4
  loc_A1DCB1: CI4Str
  loc_A1DCB2: FLdRfVar var_A0
  loc_A1DCB5: ImpAdCallFPR4  = Chr()
  loc_A1DCBA: LitI4 0
  loc_A1DCBF: LitI4 -1
  loc_A1DCC4: LitI4 1
  loc_A1DCC9: FLdRfVar var_A0
  loc_A1DCCC: CStrVarVal var_DC
  loc_A1DCD0: LitStr Chr(37)
  loc_A1DCD3: ILdRf var_8C
  loc_A1DCD6: ConcatStr
  loc_A1DCD7: FStStrNoPop var_D8
  loc_A1DCDA: ILdI4 value
  loc_A1DCDD: ImpAdCallI2 Replace(, , , , , )
  loc_A1DCE2: IStStr
  loc_A1DCE6: FFreeStr var_A4 = "": var_D8 = ""
  loc_A1DCEF: FFree1Var var_A0 = ""
  loc_A1DCF2: Branch loc_A1DC4E
  loc_A1DCF5: LitI4 0
  loc_A1DCFA: FLdRfVar var_A0
  loc_A1DCFD: ImpAdCallFPR4  = Chr()
  loc_A1DD02: LitI4 0
  loc_A1DD07: LitI4 -1
  loc_A1DD0C: LitI4 1
  loc_A1DD11: LitStr Chr(37)
  loc_A1DD14: FLdRfVar var_A0
  loc_A1DD17: CStrVarVal var_A4
  loc_A1DD1B: ILdI4 value
  loc_A1DD1E: ImpAdCallI2 Replace(, , , , , )
  loc_A1DD23: IStStr
  loc_A1DD27: FFree1Str var_A4
  loc_A1DD2A: FFree1Var var_A0 = ""
  loc_A1DD2D: LitI4 0
  loc_A1DD32: LitI4 -1
  loc_A1DD37: LitI4 1
  loc_A1DD3C: LitStr "\"
  loc_A1DD3F: LitStr "/"
  loc_A1DD42: ILdI4 value
  loc_A1DD45: ImpAdCallI2 Replace(, , , , , )
  loc_A1DD4A: IStStr
  loc_A1DD4E: LitI4 0
  loc_A1DD53: LitI4 -1
  loc_A1DD58: LitI4 1
  loc_A1DD5D: LitStr "_"
  loc_A1DD60: LitStr " "
  loc_A1DD63: ILdI4 value
  loc_A1DD66: ImpAdCallI2 Replace(, , , , , )
  loc_A1DD6B: FStStr var_88
  loc_A1DD6E: ExitProcCbHresult
End Function

Public Sub GeneraReporte() 'B242E8
  'Data Table: 48CF58
  loc_B23A28: FLdPr Me
  loc_B23A2B: MemLdI2 bGenerado
  loc_B23A2E: BranchF loc_B23A32
  loc_B23A31: ExitProcHresult
  loc_B23A32: LitVarStr var_94, "Generando reporte..."
  loc_B23A37: PopAdLdVar
  loc_B23A38: FLdPr Me
  loc_B23A3B: VCallAd Control_ID_sBar
  loc_B23A3E: FStAdFunc var_A8
  loc_B23A41: FLdPr var_A8
  loc_B23A44: LateIdSt
  loc_B23A49: FFree1Ad var_A8
  loc_B23A4C: LitI4 &HB
  loc_B23A51: CI2I4
  loc_B23A52: FLdPr Me
  loc_B23A55: Me.MousePointer = from_stack_1
  loc_B23A5A: LitI4 0
  loc_B23A5F: LitI4 0
  loc_B23A64: FLdPr Me
  loc_B23A67: MemLdRfVar from_stack_1.global_140
  loc_B23A6A: Redim
  loc_B23A74: LitI4 0
  loc_B23A79: LitI4 0
  loc_B23A7E: FLdPr Me
  loc_B23A81: MemLdRfVar from_stack_1.global_144
  loc_B23A84: Redim
  loc_B23A8E: LitI2_Byte 0
  loc_B23A90: CUI1I2
  loc_B23A92: FLdPr Me
  loc_B23A95: MemStUI1
  loc_B23A99: LitI2_Byte 0
  loc_B23A9B: LitVar_Missing var_B8
  loc_B23A9E: LitI2_Byte &HFF
  loc_B23AA0: LitVarI2 var_94, 0
  loc_B23AA5: PopAdLdVar
  loc_B23AA6: FLdPr Me
  loc_B23AA9: MemLdRfVar from_stack_1.global_152
  loc_B23AAC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23AB1: FFree1Var var_B8 = ""
  loc_B23AB4: FLdPr Me
  loc_B23AB7: MemLdRfVar from_stack_1.global_108
  loc_B23ABA: NewIfNullAd
  loc_B23ABD: FStAd var_BC 
  loc_B23AC1: LitStr "SET @periinfo="
  loc_B23AC4: FLdPr Me
  loc_B23AC7: MemLdI2 PeriInfo
  loc_B23ACA: CStrUI1
  loc_B23ACC: FStStrNoPop var_C0
  loc_B23ACF: ConcatStr
  loc_B23AD0: FStStrNoPop var_C4
  loc_B23AD3: LitStr ", @numeorpa="
  loc_B23AD6: ConcatStr
  loc_B23AD7: FStStrNoPop var_C8
  loc_B23ADA: FLdPr Me
  loc_B23ADD: MemLdStr NumeOrpa
  loc_B23AE0: CStrI4
  loc_B23AE2: FStStrNoPop var_CC
  loc_B23AE5: ConcatStr
  loc_B23AE6: FStStrNoPop var_D0
  loc_B23AE9: LitStr ", @cucupers='"
  loc_B23AEC: ConcatStr
  loc_B23AED: FStStrNoPop var_D4
  loc_B23AF0: FLdPr Me
  loc_B23AF3: MemLdStr CucuPers
  loc_B23AF6: ConcatStr
  loc_B23AF7: FStStrNoPop var_D8
  loc_B23AFA: LitStr "';"
  loc_B23AFD: ConcatStr
  loc_B23AFE: FStStrNoPop var_DC
  loc_B23B01: FLdPr var_BC
  loc_B23B04: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_B23B09: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B23B1C: LitStr "SELECT NumeOrpa, ExpeImpu, NumeLiqu, DetaOrpa"
  loc_B23B1F: LitStr " FROM ordenpago"
  loc_B23B22: ConcatStr
  loc_B23B23: FStStrNoPop var_C0
  loc_B23B26: LitStr " WHERE PeriInfo = @periinfo AND NumeOrpa = @numeorpa;"
  loc_B23B29: ConcatStr
  loc_B23B2A: FStStrNoPop var_C4
  loc_B23B2D: FLdPr var_BC
  loc_B23B30: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_B23B35: FFreeStr var_C0 = ""
  loc_B23B3C: FLdRfVar var_E0
  loc_B23B3F: FLdPr var_BC
  loc_B23B42: from_stack_1 = clsordenpago.RecordCount
  loc_B23B47: ILdRf var_E0
  loc_B23B4A: LitI4 1
  loc_B23B4F: LtI4
  loc_B23B50: BranchF loc_B23B9E
  loc_B23B53: LitI4 0
  loc_B23B58: LitStr "No se encontró la orden de pago Nº "
  loc_B23B5B: FLdPr Me
  loc_B23B5E: MemLdStr NumeOrpa
  loc_B23B61: CStrI4
  loc_B23B63: FStStrNoPop var_C0
  loc_B23B66: ConcatStr
  loc_B23B67: FStStrNoPop var_C4
  loc_B23B6A: LitStr " del "
  loc_B23B6D: ConcatStr
  loc_B23B6E: FStStrNoPop var_C8
  loc_B23B71: FLdPr Me
  loc_B23B74: MemLdI2 PeriInfo
  loc_B23B77: CStrUI1
  loc_B23B79: FStStrNoPop var_CC
  loc_B23B7C: ConcatStr
  loc_B23B7D: FStStrNoPop var_D0
  loc_B23B80: LitStr "."
  loc_B23B83: ConcatStr
  loc_B23B84: FStStrNoPop var_D4
  loc_B23B87: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B23B8C: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_B23B9B: Branch loc_B242BF
  loc_B23B9E: FLdRfVar var_E8
  loc_B23BA1: LitVarStr var_94, "ExpeImpu"
  loc_B23BA6: PopAdLdVar
  loc_B23BA7: FLdRfVar var_E4
  loc_B23BAA: FLdRfVar var_A8
  loc_B23BAD: FLdPr var_BC
  loc_B23BB0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B23BB5: FLdPr var_A8
  loc_B23BB8:  = Me.Fields
  loc_B23BBD: FLdPr var_E4
  loc_B23BC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B23BC5: LitI2_Byte 0
  loc_B23BC7: LitVar_Missing var_F8
  loc_B23BCA: LitI2_Byte 0
  loc_B23BCC: FLdZeroAd var_E8
  loc_B23BCF: CVarAd
  loc_B23BD3: PopAdLdVar
  loc_B23BD4: FLdPr Me
  loc_B23BD7: MemLdRfVar from_stack_1.global_124
  loc_B23BDA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23BDF: FFreeAd var_A8 = ""
  loc_B23BE6: FFreeVar var_B8 = ""
  loc_B23BED: FLdRfVar var_E8
  loc_B23BF0: LitVarStr var_94, "NumeLiqu"
  loc_B23BF5: PopAdLdVar
  loc_B23BF6: FLdRfVar var_E4
  loc_B23BF9: FLdRfVar var_A8
  loc_B23BFC: FLdPr var_BC
  loc_B23BFF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B23C04: FLdPr var_A8
  loc_B23C07:  = Me.Fields
  loc_B23C0C: FLdPr var_E4
  loc_B23C0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B23C14: LitI2_Byte 0
  loc_B23C16: LitVar_Missing var_F8
  loc_B23C19: LitI2_Byte 0
  loc_B23C1B: FLdZeroAd var_E8
  loc_B23C1E: CVarAd
  loc_B23C22: PopAdLdVar
  loc_B23C23: FLdPr Me
  loc_B23C26: MemLdRfVar from_stack_1.global_128
  loc_B23C29: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23C2E: FFreeAd var_A8 = ""
  loc_B23C35: FFreeVar var_B8 = ""
  loc_B23C3C: FLdRfVar var_E8
  loc_B23C3F: LitVarStr var_94, "DetaOrpa"
  loc_B23C44: PopAdLdVar
  loc_B23C45: FLdRfVar var_E4
  loc_B23C48: FLdRfVar var_A8
  loc_B23C4B: FLdPr var_BC
  loc_B23C4E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B23C53: FLdPr var_A8
  loc_B23C56:  = Me.Fields
  loc_B23C5B: FLdPr var_E4
  loc_B23C5E: from_stack_2 = Me.Item(from_stack_1)
  loc_B23C63: LitI2_Byte 0
  loc_B23C65: LitVar_Missing var_F8
  loc_B23C68: LitI2_Byte 0
  loc_B23C6A: FLdZeroAd var_E8
  loc_B23C6D: CVarAd
  loc_B23C71: PopAdLdVar
  loc_B23C72: FLdPr Me
  loc_B23C75: MemLdRfVar from_stack_1.global_132
  loc_B23C78: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23C7D: FFreeAd var_A8 = ""
  loc_B23C84: FFreeVar var_B8 = ""
  loc_B23C8B: LitNothing
  loc_B23C8D: FStAd var_BC 
  loc_B23C91: FLdPr Me
  loc_B23C94: MemLdRfVar from_stack_1.global_112
  loc_B23C97: NewIfNullAd
  loc_B23C9A: FStAd var_FC 
  loc_B23C9E: LitStr "SELECT CucuPers, DetaProv"
  loc_B23CA1: LitStr " FROM proveedor"
  loc_B23CA4: ConcatStr
  loc_B23CA5: FStStrNoPop var_C0
  loc_B23CA8: LitStr " WHERE CucuPers = @cucupers;"
  loc_B23CAB: ConcatStr
  loc_B23CAC: FStStrNoPop var_C4
  loc_B23CAF: FLdPr var_FC
  loc_B23CB2: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_B23CB7: FFreeStr var_C0 = ""
  loc_B23CBE: FLdRfVar var_E0
  loc_B23CC1: FLdPr var_FC
  loc_B23CC4: from_stack_1 = clsproveedor.RecordCount
  loc_B23CC9: ILdRf var_E0
  loc_B23CCC: LitI4 1
  loc_B23CD1: LtI4
  loc_B23CD2: BranchF loc_B23D35
  loc_B23CD5: LitI4 0
  loc_B23CDA: LitStr "No se encontró el proveedor "
  loc_B23CDD: FLdPr Me
  loc_B23CE0: MemLdStr CucuPers
  loc_B23CE3: ConcatStr
  loc_B23CE4: FStStrNoPop var_C0
  loc_B23CE7: LitStr " que corresponda a la orden de pago Nº "
  loc_B23CEA: ConcatStr
  loc_B23CEB: FStStrNoPop var_C4
  loc_B23CEE: FLdPr Me
  loc_B23CF1: MemLdStr NumeOrpa
  loc_B23CF4: CStrI4
  loc_B23CF6: FStStrNoPop var_C8
  loc_B23CF9: ConcatStr
  loc_B23CFA: FStStrNoPop var_CC
  loc_B23CFD: LitStr " del "
  loc_B23D00: ConcatStr
  loc_B23D01: FStStrNoPop var_D0
  loc_B23D04: FLdPr Me
  loc_B23D07: MemLdI2 PeriInfo
  loc_B23D0A: CStrUI1
  loc_B23D0C: FStStrNoPop var_D4
  loc_B23D0F: ConcatStr
  loc_B23D10: FStStrNoPop var_D8
  loc_B23D13: LitStr "."
  loc_B23D16: ConcatStr
  loc_B23D17: FStStrNoPop var_DC
  loc_B23D1A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B23D1F: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B23D32: Branch loc_B242BF
  loc_B23D35: FLdRfVar var_E8
  loc_B23D38: LitVarStr var_94, "DetaProv"
  loc_B23D3D: PopAdLdVar
  loc_B23D3E: FLdRfVar var_E4
  loc_B23D41: FLdRfVar var_A8
  loc_B23D44: FLdPr var_FC
  loc_B23D47: from_stack_1v = clsproveedor.RsFrmGet()
  loc_B23D4C: FLdPr var_A8
  loc_B23D4F:  = Me.Fields
  loc_B23D54: FLdPr var_E4
  loc_B23D57: from_stack_2 = Me.Item(from_stack_1)
  loc_B23D5C: LitI2_Byte 0
  loc_B23D5E: LitVar_Missing var_F8
  loc_B23D61: LitI2_Byte 0
  loc_B23D63: FLdZeroAd var_E8
  loc_B23D66: CVarAd
  loc_B23D6A: PopAdLdVar
  loc_B23D6B: FLdPr Me
  loc_B23D6E: MemLdRfVar from_stack_1.global_136
  loc_B23D71: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23D76: FFreeAd var_A8 = ""
  loc_B23D7D: FFreeVar var_B8 = ""
  loc_B23D84: LitNothing
  loc_B23D86: FStAd var_FC 
  loc_B23D8A: FLdPr Me
  loc_B23D8D: MemLdRfVar from_stack_1.global_116
  loc_B23D90: NewIfNullAd
  loc_B23D93: FStAd var_100 
  loc_B23D97: LitStr "SELECT NumeFact comprobante, SUM(ImpoImpu) ImpoImpu, ld.CodiUnga, DetaUnga, p.EnviarUgProv"
  loc_B23D9A: LitStr " FROM ordenpago o"
  loc_B23D9D: ConcatStr
  loc_B23D9E: FStStrNoPop var_C0
  loc_B23DA1: LitStr " INNER JOIN v_liqdeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu"
  loc_B23DA4: ConcatStr
  loc_B23DA5: FStStrNoPop var_C4
  loc_B23DA8: LitStr " AND ld.NumeFact != ''"
  loc_B23DAB: ConcatStr
  loc_B23DAC: FStStrNoPop var_C8
  loc_B23DAF: LitStr " AND ld.CucuPers = @cucupers"
  loc_B23DB2: ConcatStr
  loc_B23DB3: FStStrNoPop var_CC
  loc_B23DB6: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = ld.CodiUnga"
  loc_B23DB9: ConcatStr
  loc_B23DBA: FStStrNoPop var_D0
  loc_B23DBD: LitStr " INNER JOIN proveedor p ON p.CucuPers = ld.CucuPers"
  loc_B23DC0: ConcatStr
  loc_B23DC1: FStStrNoPop var_D4
  loc_B23DC4: LitStr " WHERE o.PeriInfo = @periinfo AND o.NumeOrpa = @numeorpa"
  loc_B23DC7: ConcatStr
  loc_B23DC8: FStStrNoPop var_D8
  loc_B23DCB: LitStr " GROUP BY NumeFact;"
  loc_B23DCE: ConcatStr
  loc_B23DCF: FStStrNoPop var_DC
  loc_B23DD2: FLdPr var_100
  loc_B23DD5: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_B23DDA: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B23DED: FLdRfVar var_E0
  loc_B23DF0: FLdPr var_100
  loc_B23DF3: from_stack_1 = clsliquidacion.RecordCount
  loc_B23DF8: ILdRf var_E0
  loc_B23DFB: LitI4 1
  loc_B23E00: LtI4
  loc_B23E01: BranchF loc_B23E64
  loc_B23E04: LitI4 0
  loc_B23E09: LitStr "No se encontraron comprobantes del proveedor "
  loc_B23E0C: FLdPr Me
  loc_B23E0F: MemLdStr CucuPers
  loc_B23E12: ConcatStr
  loc_B23E13: FStStrNoPop var_C0
  loc_B23E16: LitStr " que corresponda a la orden de pago Nº "
  loc_B23E19: ConcatStr
  loc_B23E1A: FStStrNoPop var_C4
  loc_B23E1D: FLdPr Me
  loc_B23E20: MemLdStr NumeOrpa
  loc_B23E23: CStrI4
  loc_B23E25: FStStrNoPop var_C8
  loc_B23E28: ConcatStr
  loc_B23E29: FStStrNoPop var_CC
  loc_B23E2C: LitStr " del "
  loc_B23E2F: ConcatStr
  loc_B23E30: FStStrNoPop var_D0
  loc_B23E33: FLdPr Me
  loc_B23E36: MemLdI2 PeriInfo
  loc_B23E39: CStrUI1
  loc_B23E3B: FStStrNoPop var_D4
  loc_B23E3E: ConcatStr
  loc_B23E3F: FStStrNoPop var_D8
  loc_B23E42: LitStr "."
  loc_B23E45: ConcatStr
  loc_B23E46: FStStrNoPop var_DC
  loc_B23E49: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B23E4E: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B23E61: Branch loc_B242BF
  loc_B23E64: LitI4 0
  loc_B23E69: FLdRfVar var_E0
  loc_B23E6C: FLdPr var_100
  loc_B23E6F: from_stack_1 = clsliquidacion.RecordCount
  loc_B23E74: ILdRf var_E0
  loc_B23E77: FLdPr Me
  loc_B23E7A: MemLdRfVar from_stack_1.global_140
  loc_B23E7D: Redim
  loc_B23E87: FLdPr var_100
  loc_B23E8A: Call clsliquidacion.MoveFirst()
  loc_B23E8F: LitI2_Byte 1
  loc_B23E91: FLdPr Me
  loc_B23E94: MemLdRfVar from_stack_1.global_156
  loc_B23E97: FLdPr Me
  loc_B23E9A: MemLdStr global_140
  loc_B23E9D: LitI2_Byte 1
  loc_B23E9F: FnUBound
  loc_B23EA1: CI2I4
  loc_B23EA2: ForI2 var_104
  loc_B23EA8: FLdRfVar var_E8
  loc_B23EAB: LitVarStr var_94, "Comprobante"
  loc_B23EB0: PopAdLdVar
  loc_B23EB1: FLdRfVar var_E4
  loc_B23EB4: FLdRfVar var_A8
  loc_B23EB7: FLdPr var_100
  loc_B23EBA: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B23EBF: FLdPr var_A8
  loc_B23EC2:  = Me.Fields
  loc_B23EC7: FLdPr var_E4
  loc_B23ECA: from_stack_2 = Me.Item(from_stack_1)
  loc_B23ECF: LitI2_Byte 0
  loc_B23ED1: LitVar_Missing var_F8
  loc_B23ED4: LitI2_Byte 0
  loc_B23ED6: FLdZeroAd var_E8
  loc_B23ED9: CVarAd
  loc_B23EDD: PopAdLdVar
  loc_B23EDE: FLdPr Me
  loc_B23EE1: MemLdI2 global_156
  loc_B23EE4: CI4UI1
  loc_B23EE5: FLdPr Me
  loc_B23EE8: MemLdStr global_140
  loc_B23EEB: AryLock
  loc_B23EEE: Ary1LdPr
  loc_B23EEF: MemLdRfVar from_stack_1.global_0
  loc_B23EF2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23EF7: AryUnlock
  loc_B23EFA: FFreeAd var_A8 = ""
  loc_B23F01: FFreeVar var_B8 = ""
  loc_B23F08: FLdRfVar var_E8
  loc_B23F0B: LitVarStr var_94, "ImpoImpu"
  loc_B23F10: PopAdLdVar
  loc_B23F11: FLdRfVar var_E4
  loc_B23F14: FLdRfVar var_A8
  loc_B23F17: FLdPr var_100
  loc_B23F1A: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B23F1F: FLdPr var_A8
  loc_B23F22:  = Me.Fields
  loc_B23F27: FLdPr var_E4
  loc_B23F2A: from_stack_2 = Me.Item(from_stack_1)
  loc_B23F2F: LitI2_Byte 0
  loc_B23F31: FLdPr Me
  loc_B23F34: MemLdRfVar from_stack_1.global_152
  loc_B23F37: CVarRef
  loc_B23F3C: LitI2_Byte &HFF
  loc_B23F3E: FLdZeroAd var_E8
  loc_B23F41: CVarAd
  loc_B23F45: PopAdLdVar
  loc_B23F46: FLdPr Me
  loc_B23F49: MemLdI2 global_156
  loc_B23F4C: CI4UI1
  loc_B23F4D: FLdPr Me
  loc_B23F50: MemLdStr global_140
  loc_B23F53: AryLock
  loc_B23F56: Ary1LdPr
  loc_B23F57: MemLdRfVar from_stack_1.global_4
  loc_B23F5A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23F5F: AryUnlock
  loc_B23F62: FFreeAd var_A8 = ""
  loc_B23F69: FFree1Var var_B8 = ""
  loc_B23F6C: FLdRfVar var_E8
  loc_B23F6F: LitVarStr var_94, "DetaUnga"
  loc_B23F74: PopAdLdVar
  loc_B23F75: FLdRfVar var_E4
  loc_B23F78: FLdRfVar var_A8
  loc_B23F7B: FLdPr var_100
  loc_B23F7E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B23F83: FLdPr var_A8
  loc_B23F86:  = Me.Fields
  loc_B23F8B: FLdPr var_E4
  loc_B23F8E: from_stack_2 = Me.Item(from_stack_1)
  loc_B23F93: LitI2_Byte 0
  loc_B23F95: LitVar_Missing var_F8
  loc_B23F98: LitI2_Byte 0
  loc_B23F9A: FLdZeroAd var_E8
  loc_B23F9D: CVarAd
  loc_B23FA1: PopAdLdVar
  loc_B23FA2: FLdPr Me
  loc_B23FA5: MemLdI2 global_156
  loc_B23FA8: CI4UI1
  loc_B23FA9: FLdPr Me
  loc_B23FAC: MemLdStr global_140
  loc_B23FAF: AryLock
  loc_B23FB2: Ary1LdPr
  loc_B23FB3: MemLdRfVar from_stack_1.global_8
  loc_B23FB6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B23FBB: AryUnlock
  loc_B23FBE: FFreeAd var_A8 = ""
  loc_B23FC5: FFreeVar var_B8 = ""
  loc_B23FCC: FLdRfVar var_E8
  loc_B23FCF: LitVarStr var_94, "EnviarUgProv"
  loc_B23FD4: PopAdLdVar
  loc_B23FD5: FLdRfVar var_E4
  loc_B23FD8: FLdRfVar var_A8
  loc_B23FDB: FLdPr var_100
  loc_B23FDE: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B23FE3: FLdPr var_A8
  loc_B23FE6:  = Me.Fields
  loc_B23FEB: FLdPr var_E4
  loc_B23FEE: from_stack_2 = Me.Item(from_stack_1)
  loc_B23FF3: LitI2_Byte 0
  loc_B23FF5: LitVar_Missing var_F8
  loc_B23FF8: LitI2_Byte 0
  loc_B23FFA: FLdZeroAd var_E8
  loc_B23FFD: CVarAd
  loc_B24001: PopAdLdVar
  loc_B24002: FLdPr Me
  loc_B24005: MemLdI2 global_156
  loc_B24008: CI4UI1
  loc_B24009: FLdPr Me
  loc_B2400C: MemLdStr global_140
  loc_B2400F: AryLock
  loc_B24012: Ary1LdPr
  loc_B24013: MemLdRfVar from_stack_1.global_12
  loc_B24016: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2401B: AryUnlock
  loc_B2401E: FFreeAd var_A8 = ""
  loc_B24025: FFreeVar var_B8 = ""
  loc_B2402C: LitI2_Byte 1
  loc_B2402E: PopTmpLdAd2 var_10A
  loc_B24031: FLdPr var_100
  loc_B24034: Call clsliquidacion.Move(from_stack_1v)
  loc_B24039: FLdPr Me
  loc_B2403C: MemLdRfVar from_stack_1.global_156
  loc_B2403F: NextI2 var_104, loc_B23EA8
  loc_B24044: LitNothing
  loc_B24046: FStAd var_100 
  loc_B2404A: FLdPr Me
  loc_B2404D: MemLdRfVar from_stack_1.global_120
  loc_B24050: NewIfNullAd
  loc_B24053: FStAd var_110 
  loc_B24057: LitStr "SELECT IF(ch.AutoCheq=1,'cheque manual',IF(ch.AutoCheq=2,'cheque impreso','transferencia')) medio, '' DetaBanc, NumeMoba, ImpoCheq"
  loc_B2405A: LitStr " FROM cheque ch"
  loc_B2405D: ConcatStr
  loc_B2405E: FStStrNoPop var_C0
  loc_B24061: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B24064: ConcatStr
  loc_B24065: FStStrNoPop var_C4
  loc_B24068: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B2406B: ConcatStr
  loc_B2406C: FStStrNoPop var_C8
  loc_B2406F: LitStr " WHERE ch.PeriInfo = @periinfo AND ch.NumeOrpa = @numeorpa AND ch.CucuPers = @cucupers AND ch.FeanCheq IS NULL"
  loc_B24072: ConcatStr
  loc_B24073: FStStrNoPop var_CC
  loc_B24076: LitStr " UNION ALL"
  loc_B24079: ConcatStr
  loc_B2407A: FStStrNoPop var_D0
  loc_B2407D: LitStr " SELECT CONCAT('retención: ',DetaRete) medio, DetaRete, CertLine, ImpoLine"
  loc_B24080: ConcatStr
  loc_B24081: FStStrNoPop var_D4
  loc_B24084: LitStr " FROM liquidacion l"
  loc_B24087: ConcatStr
  loc_B24088: FStStrNoPop var_D8
  loc_B2408B: LitStr " INNER JOIN liquidaneto lqn ON lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu AND lqn.CodiRete > 0"
  loc_B2408E: ConcatStr
  loc_B2408F: FStStrNoPop var_DC
  loc_B24092: LitStr " INNER JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_B24095: ConcatStr
  loc_B24096: FStStrNoPop var_114
  loc_B24099: LitStr " WHERE l.PeriInfo = @periinfo AND l.NumeOrpa = @numeorpa AND lqn.CucuPers = @cucupers;"
  loc_B2409C: ConcatStr
  loc_B2409D: FStStrNoPop var_118
  loc_B240A0: FLdPr var_110
  loc_B240A3: Call clscheque.RedefineRS(from_stack_1v)
  loc_B240A8: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_114 = ""
  loc_B240BF: FLdRfVar var_E0
  loc_B240C2: FLdPr var_110
  loc_B240C5: from_stack_1 = clscheque.RecordCount
  loc_B240CA: ILdRf var_E0
  loc_B240CD: LitI4 1
  loc_B240D2: LtI4
  loc_B240D3: BranchF loc_B24136
  loc_B240D6: LitI4 0
  loc_B240DB: LitStr "No se encontraron medios de pago del proveedor "
  loc_B240DE: FLdPr Me
  loc_B240E1: MemLdStr CucuPers
  loc_B240E4: ConcatStr
  loc_B240E5: FStStrNoPop var_C0
  loc_B240E8: LitStr " que corresponda a la orden de pago Nº "
  loc_B240EB: ConcatStr
  loc_B240EC: FStStrNoPop var_C4
  loc_B240EF: FLdPr Me
  loc_B240F2: MemLdStr NumeOrpa
  loc_B240F5: CStrI4
  loc_B240F7: FStStrNoPop var_C8
  loc_B240FA: ConcatStr
  loc_B240FB: FStStrNoPop var_CC
  loc_B240FE: LitStr " del "
  loc_B24101: ConcatStr
  loc_B24102: FStStrNoPop var_D0
  loc_B24105: FLdPr Me
  loc_B24108: MemLdI2 PeriInfo
  loc_B2410B: CStrUI1
  loc_B2410D: FStStrNoPop var_D4
  loc_B24110: ConcatStr
  loc_B24111: FStStrNoPop var_D8
  loc_B24114: LitStr "."
  loc_B24117: ConcatStr
  loc_B24118: FStStrNoPop var_DC
  loc_B2411B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B24120: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B24133: Branch loc_B242BF
  loc_B24136: LitI4 0
  loc_B2413B: LitI4 0
  loc_B24140: FLdPr Me
  loc_B24143: MemLdRfVar from_stack_1.global_144
  loc_B24146: Redim
  loc_B24150: FLdPr var_110
  loc_B24153: Call clscheque.MoveFirst()
  loc_B24158: FLdRfVar var_B8
  loc_B2415B: FLdRfVar var_E8
  loc_B2415E: LitVarStr var_94, "medio"
  loc_B24163: PopAdLdVar
  loc_B24164: FLdRfVar var_E4
  loc_B24167: FLdRfVar var_A8
  loc_B2416A: FLdPr var_110
  loc_B2416D: from_stack_1v = clscheque.RsFrmGet()
  loc_B24172: FLdPr var_A8
  loc_B24175:  = Me.Fields
  loc_B2417A: FLdPr var_E4
  loc_B2417D: from_stack_2 = Me.Item(from_stack_1)
  loc_B24182: FLdPr var_E8
  loc_B24185:  = Me.Value
  loc_B2418A: FLdRfVar var_144
  loc_B2418D: FLdRfVar var_134
  loc_B24190: LitVarStr var_130, "medio"
  loc_B24195: PopAdLdVar
  loc_B24196: FLdRfVar var_120
  loc_B24199: FLdRfVar var_11C
  loc_B2419C: FLdPr var_110
  loc_B2419F: from_stack_1v = clscheque.RsFrmGet()
  loc_B241A4: FLdPr var_11C
  loc_B241A7:  = Me.Fields
  loc_B241AC: FLdPr var_120
  loc_B241AF: from_stack_2 = Me.Item(from_stack_1)
  loc_B241B4: FLdPr var_134
  loc_B241B7:  = Me.Value
  loc_B241BC: LitVarStr var_1B4, " ha efectuado una transferencia a su cuenta "
  loc_B241C1: FStVarCopyObj var_1C4
  loc_B241C4: FLdRfVar var_1C4
  loc_B241C7: LitVarStr var_194, " ha entregado un cheque a su orden "
  loc_B241CC: FStVarCopyObj var_1A4
  loc_B241CF: FLdRfVar var_1A4
  loc_B241D2: FLdRfVar var_B8
  loc_B241D5: LitVarStr var_A4, "cheque manual"
  loc_B241DA: HardType
  loc_B241DB: EqVar var_F8
  loc_B241DF: FLdRfVar var_144
  loc_B241E2: LitVarStr var_154, "cheque impreso"
  loc_B241E7: HardType
  loc_B241E8: EqVar var_164
  loc_B241EC: OrVar var_174
  loc_B241F0: FStVar var_184
  loc_B241F4: FLdRfVar var_184
  loc_B241F7: FLdRfVar var_1D4
  loc_B241FA: ImpAdCallFPR4  = IIf(, , )
  loc_B241FF: FLdRfVar var_1D4
  loc_B24202: CStrVarTmp
  loc_B24203: FStStrNoPop var_C0
  loc_B24206: FLdPr Me
  loc_B24209: MemStStrCopy
  loc_B2420D: FFree1Str var_C0
  loc_B24210: FFreeAd var_A8 = "": var_E4 = "": var_E8 = "": var_11C = "": var_120 = ""
  loc_B2421F: FFreeVar var_B8 = "": var_144 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_B2422E: Call Proc_89_32_9B8794()
  loc_B24233: FLdRfVar var_10A
  loc_B24236: FLdPr var_110
  loc_B24239: from_stack_1 = clscheque.EOF
  loc_B2423E: FLdI2 var_10A
  loc_B24241: NotI4
  loc_B24242: BranchF loc_B242B1
  loc_B24245: FLdRfVar var_B8
  loc_B24248: FLdRfVar var_E8
  loc_B2424B: LitVarStr var_94, "medio"
  loc_B24250: PopAdLdVar
  loc_B24251: FLdRfVar var_E4
  loc_B24254: FLdRfVar var_A8
  loc_B24257: FLdPr var_110
  loc_B2425A: from_stack_1v = clscheque.RsFrmGet()
  loc_B2425F: FLdPr var_A8
  loc_B24262:  = Me.Fields
  loc_B24267: FLdPr var_E4
  loc_B2426A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2426F: FLdPr var_E8
  loc_B24272:  = Me.Value
  loc_B24277: FLdRfVar var_B8
  loc_B2427A: FLdPr Me
  loc_B2427D: MemLdUI1 global_148
  loc_B24281: CI4UI1
  loc_B24282: FLdPr Me
  loc_B24285: MemLdStr global_144
  loc_B24288: Ary1LdPr
  loc_B24289: MemLdStr global_0
  loc_B2428C: CVarStr var_A4
  loc_B2428F: HardType
  loc_B24290: NeVarBool
  loc_B24292: FFreeAd var_A8 = "": var_E4 = ""
  loc_B2429B: FFree1Var var_B8 = ""
  loc_B2429E: BranchF loc_B242A9
  loc_B242A1: Call Proc_89_32_9B8794()
  loc_B242A6: Branch loc_B242AE
  loc_B242A9: Call Proc_89_33_A33948()
  loc_B242AE: Branch loc_B24233
  loc_B242B1: LitNothing
  loc_B242B3: FStAd var_110 
  loc_B242B7: LitI2_Byte &HFF
  loc_B242B9: FLdPr Me
  loc_B242BC: MemStI2 bGenerado
  loc_B242BF: LitI4 0
  loc_B242C4: CI2I4
  loc_B242C5: FLdPr Me
  loc_B242C8: Me.MousePointer = from_stack_1
  loc_B242CD: LitVarStr var_94, vbNullString
  loc_B242D2: PopAdLdVar
  loc_B242D3: FLdPr Me
  loc_B242D6: VCallAd Control_ID_sBar
  loc_B242D9: FStAdFunc var_A8
  loc_B242DC: FLdPr var_A8
  loc_B242DF: LateIdSt
  loc_B242E4: FFree1Ad var_A8
  loc_B242E7: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9B8E44
  'Data Table: 48CF58
  loc_9B8D94: LitVarStr var_94, "Generando cuerpo del mensaje..."
  loc_9B8D99: PopAdLdVar
  loc_9B8D9A: FLdPr Me
  loc_9B8D9D: VCallAd Control_ID_sBar
  loc_9B8DA0: FStAdFunc var_A8
  loc_9B8DA3: FLdPr var_A8
  loc_9B8DA6: LateIdSt
  loc_9B8DAB: FFree1Ad var_A8
  loc_9B8DAE: FLdPr Me
  loc_9B8DB1: MemLdStr NumeOrpa
  loc_9B8DB4: CStrI4
  loc_9B8DB6: FStStrNoPop var_AC
  loc_9B8DB9: LitStr "-"
  loc_9B8DBC: ConcatStr
  loc_9B8DBD: FStStrNoPop var_B0
  loc_9B8DC0: FLdPr Me
  loc_9B8DC3: MemLdI2 PeriInfo
  loc_9B8DC6: CStrUI1
  loc_9B8DC8: FStStrNoPop var_B4
  loc_9B8DCB: ConcatStr
  loc_9B8DCC: PopTmpLdAdStr
  loc_9B8DD0: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_9B8DD5: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_9B8DE0: FLdRfVar var_A8
  loc_9B8DE3: LitI2_Byte 0
  loc_9B8DE5: LitI2_Byte &HFF
  loc_9B8DE7: ImpAdLdI4 MemVar_C3D83C
  loc_9B8DEA: FLdPr Me
  loc_9B8DED: MemLdRfVar from_stack_1.global_164
  loc_9B8DF0: NewIfNullPr IFileSystem3
  loc_9B8DF3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9B8DF8: ILdRf var_A8
  loc_9B8DFB: FLdPr Me
  loc_9B8DFE: MemStVarAd
  loc_9B8E02: FFree1Ad var_A8
  loc_9B8E05: Call Proc_89_35_A5FFC8()
  loc_9B8E0A: Call Proc_89_34_AA8368()
  loc_9B8E0F: Call Proc_89_36_973218()
  loc_9B8E14: FLdPr Me
  loc_9B8E17: MemLdRfVar from_stack_1.htmFile
  loc_9B8E1A: LdPrVar
  loc_9B8E1C: LateMemCall
  loc_9B8E22: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9B8E27: LitVarStr var_94, vbNullString
  loc_9B8E2C: PopAdLdVar
  loc_9B8E2D: FLdPr Me
  loc_9B8E30: VCallAd Control_ID_sBar
  loc_9B8E33: FStAdFunc var_A8
  loc_9B8E36: FLdPr var_A8
  loc_9B8E39: LateIdSt
  loc_9B8E3E: FFree1Ad var_A8
  loc_9B8E41: ExitProcHresult
End Sub

Private Function Proc_89_30_B6E610() 'B6E610
  'Data Table: 48CF58
  loc_B6DA8C: OnErrorGoto loc_B6E584
  loc_B6DA91: LitVarStr var_B4, "Enviando..."
  loc_B6DA96: PopAdLdVar
  loc_B6DA97: FLdPr Me
  loc_B6DA9A: VCallAd Control_ID_sBar
  loc_B6DA9D: FStAdFunc var_C8
  loc_B6DAA0: FLdPr var_C8
  loc_B6DAA3: LateIdSt
  loc_B6DAA8: FFree1Ad var_C8
  loc_B6DAAD: LitI4 &HB
  loc_B6DAB2: CI2I4
  loc_B6DAB3: FLdPr Me
  loc_B6DAB6: Me.MousePointer = from_stack_1
  loc_B6DABD: LitI2_Byte 0
  loc_B6DABF: FLdPr Me
  loc_B6DAC2: Me.Enabled = from_stack_1b
  loc_B6DAC9: LitI2_Byte 3
  loc_B6DACB: FLdPr Me
  loc_B6DACE: VCallAd Control_ID_Shape1
  loc_B6DAD1: FStAdFunc var_C8
  loc_B6DAD4: FLdPr var_C8
  loc_B6DAD7: Me.BorderWidth = from_stack_1
  loc_B6DADC: FFree1Ad var_C8
  loc_B6DAE1: LitI2_Byte &HFF
  loc_B6DAE3: FLdPr Me
  loc_B6DAE6: VCallAd Control_ID_EnviandoFra
  loc_B6DAE9: FStAdFunc var_C8
  loc_B6DAEC: FLdPr var_C8
  loc_B6DAEF: Me.Visible = from_stack_1b
  loc_B6DAF4: FFree1Ad var_C8
  loc_B6DAF9: FLdRfVar var_F4
  loc_B6DAFC: FLdRfVar var_F0
  loc_B6DAFF: LitVarI2 var_E8, 1
  loc_B6DB04: FLdPrThis
  loc_B6DB05: VCallAd Control_ID_ImageList1
  loc_B6DB08: FStAdFunc var_C8
  loc_B6DB0B: FLdPr var_C8
  loc_B6DB0E: LateIdLdVar var_D8 DispID_4 0
  loc_B6DB15: CastAdVar Me
  loc_B6DB19: FStAdFunc var_EC
  loc_B6DB1C: FLdPr var_EC
  loc_B6DB1F:  = Me.ListImages.ControlDefault
  loc_B6DB24: FLdPr var_F0
  loc_B6DB27:  = Me.Picture
  loc_B6DB2C: FLdZeroAd var_F4
  loc_B6DB2F: FStAdFuncNoPop
  loc_B6DB32: FLdPrThis
  loc_B6DB33: VCallAd Control_ID_Image1
  loc_B6DB36: FStAdFunc var_FC
  loc_B6DB39: FLdPr var_FC
  loc_B6DB3C: Me.Picture = from_stack_1
  loc_B6DB41: FFreeAd var_C8 = "": var_EC = "": var_F0 = "": var_F8 = ""
  loc_B6DB4E: FFreeVar var_D8 = ""
  loc_B6DB57: LitI2_Byte &HFF
  loc_B6DB59: FLdPr Me
  loc_B6DB5C: VCallAd Control_ID_Timer1
  loc_B6DB5F: FStAdFunc var_C8
  loc_B6DB62: FLdPr var_C8
  loc_B6DB65: Me.Enabled = from_stack_1b
  loc_B6DB6A: FFree1Ad var_C8
  loc_B6DB6F: ImpAdCallFPR4 DoEvents()
  loc_B6DB76: LitI4 0
  loc_B6DB7B: LitStr "CDO.Configuration"
  loc_B6DB7E: FLdRfVar var_D8
  loc_B6DB81: ImpAdCallFPR4  = CreateObject(, )
  loc_B6DB86: FLdRfVar var_D8
  loc_B6DB89: CAdVar
  loc_B6DB8B: FStAd var_88 
  loc_B6DB8F: FFree1Var var_D8 = ""
  loc_B6DB94: LitStr "Municipalidad de Guaymallén"
  loc_B6DB97: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B6DB9A: EqStr
  loc_B6DB9C: BranchF loc_B6DD6F
  loc_B6DBA1: FLdPr Me
  loc_B6DBA4: MemLdRfVar from_stack_1.eUsua
  loc_B6DBA7: NewIfNullRf
  loc_B6DBAB: ImpAdLdI4 MemVar_C3D03C
  loc_B6DBAE: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_B6DBB5: FLdPr var_88
  loc_B6DBB8: LateMemLdVar
  loc_B6DBBD: FStVarZero
  loc_B6DBC1: FLdRfVar var_10C
  loc_B6DBC4: FStR4 var_110
  loc_B6DBC9: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DBCC: LitStr "smtpserver"
  loc_B6DBCF: ConcatStr
  loc_B6DBD0: CVarStr var_D8
  loc_B6DBD3: PopAdLdVar
  loc_B6DBD4: FLdRfVar var_114
  loc_B6DBD7: FLdPr Me
  loc_B6DBDA: MemLdRfVar from_stack_1.eUsua
  loc_B6DBDD: NewIfNullPr tblusuario
  loc_B6DBE0: from_stack_1v = tblusuario.SemaUsuaGet()
  loc_B6DBE5: FLdZeroAd var_114
  loc_B6DBE8: CVarStr var_E8
  loc_B6DBEB: PopAdLdVar
  loc_B6DBEC: ILdRf var_110
  loc_B6DBEF: VarLateMemCallSt
  loc_B6DBF5: FFreeVar var_D8 = ""
  loc_B6DBFE: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DC01: LitStr "smtpserverport"
  loc_B6DC04: ConcatStr
  loc_B6DC05: CVarStr var_D8
  loc_B6DC08: PopAdLdVar
  loc_B6DC09: FLdRfVar var_114
  loc_B6DC0C: FLdPr Me
  loc_B6DC0F: MemLdRfVar from_stack_1.eUsua
  loc_B6DC12: NewIfNullPr tblusuario
  loc_B6DC15: from_stack_1v = tblusuario.PumaUsuaGet()
  loc_B6DC1A: FLdZeroAd var_114
  loc_B6DC1D: CVarStr var_E8
  loc_B6DC20: PopAdLdVar
  loc_B6DC21: ILdRf var_110
  loc_B6DC24: VarLateMemCallSt
  loc_B6DC2A: FFreeVar var_D8 = ""
  loc_B6DC33: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DC36: LitStr "sendusing"
  loc_B6DC39: ConcatStr
  loc_B6DC3A: CVarStr var_D8
  loc_B6DC3D: PopAdLdVar
  loc_B6DC3E: LitVarI2 var_C4, 2
  loc_B6DC43: PopAdLdVar
  loc_B6DC44: ILdRf var_110
  loc_B6DC47: VarLateMemCallSt
  loc_B6DC4D: FFree1Var var_D8 = ""
  loc_B6DC52: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DC55: LitStr "sendusername"
  loc_B6DC58: ConcatStr
  loc_B6DC59: CVarStr var_D8
  loc_B6DC5C: PopAdLdVar
  loc_B6DC5D: FLdRfVar var_114
  loc_B6DC60: FLdPr Me
  loc_B6DC63: MemLdRfVar from_stack_1.eUsua
  loc_B6DC66: NewIfNullPr tblusuario
  loc_B6DC69: from_stack_1v = tblusuario.UsmaUsuaGet()
  loc_B6DC6E: FLdZeroAd var_114
  loc_B6DC71: CVarStr var_E8
  loc_B6DC74: PopAdLdVar
  loc_B6DC75: ILdRf var_110
  loc_B6DC78: VarLateMemCallSt
  loc_B6DC7E: FFreeVar var_D8 = ""
  loc_B6DC87: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DC8A: LitStr "sendpassword"
  loc_B6DC8D: ConcatStr
  loc_B6DC8E: CVarStr var_D8
  loc_B6DC91: PopAdLdVar
  loc_B6DC92: FLdRfVar var_114
  loc_B6DC95: FLdPr Me
  loc_B6DC98: MemLdRfVar from_stack_1.eUsua
  loc_B6DC9B: NewIfNullPr tblusuario
  loc_B6DC9E: from_stack_1v = tblusuario.ComaUsuaGet()
  loc_B6DCA3: FLdZeroAd var_114
  loc_B6DCA6: CVarStr var_E8
  loc_B6DCA9: PopAdLdVar
  loc_B6DCAA: ILdRf var_110
  loc_B6DCAD: VarLateMemCallSt
  loc_B6DCB3: FFreeVar var_D8 = ""
  loc_B6DCBC: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DCBF: LitStr "smtpusessl"
  loc_B6DCC2: ConcatStr
  loc_B6DCC3: CVarStr var_D8
  loc_B6DCC6: PopAdLdVar
  loc_B6DCC7: FLdRfVar var_114
  loc_B6DCCA: FLdPr Me
  loc_B6DCCD: MemLdRfVar from_stack_1.eUsua
  loc_B6DCD0: NewIfNullPr tblusuario
  loc_B6DCD3: from_stack_1v = tblusuario.UsslUsuaGet()
  loc_B6DCD8: FLdZeroAd var_114
  loc_B6DCDB: CVarStr var_E8
  loc_B6DCDE: PopAdLdVar
  loc_B6DCDF: ILdRf var_110
  loc_B6DCE2: VarLateMemCallSt
  loc_B6DCE8: FFreeVar var_D8 = ""
  loc_B6DCF1: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DCF4: LitStr "smtpsuetls"
  loc_B6DCF7: ConcatStr
  loc_B6DCF8: CVarStr var_D8
  loc_B6DCFB: PopAdLdVar
  loc_B6DCFC: FLdRfVar var_114
  loc_B6DCFF: FLdPr Me
  loc_B6DD02: MemLdRfVar from_stack_1.eUsua
  loc_B6DD05: NewIfNullPr tblusuario
  loc_B6DD08: from_stack_1v = tblusuario.UtlsUsuaGet()
  loc_B6DD0D: FLdZeroAd var_114
  loc_B6DD10: CVarStr var_E8
  loc_B6DD13: PopAdLdVar
  loc_B6DD14: ILdRf var_110
  loc_B6DD17: VarLateMemCallSt
  loc_B6DD1D: FFreeVar var_D8 = ""
  loc_B6DD26: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DD29: LitStr "smtpconnectiontimeout"
  loc_B6DD2C: ConcatStr
  loc_B6DD2D: CVarStr var_D8
  loc_B6DD30: PopAdLdVar
  loc_B6DD31: LitVarI2 var_C4, 30
  loc_B6DD36: PopAdLdVar
  loc_B6DD37: ILdRf var_110
  loc_B6DD3A: VarLateMemCallSt
  loc_B6DD40: FFree1Var var_D8 = ""
  loc_B6DD45: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DD48: LitStr "smtpauthenticate"
  loc_B6DD4B: ConcatStr
  loc_B6DD4C: CVarStr var_D8
  loc_B6DD4F: PopAdLdVar
  loc_B6DD50: LitVarStr var_C4, "1"
  loc_B6DD55: PopAdLdVar
  loc_B6DD56: ILdRf var_110
  loc_B6DD59: VarLateMemCallSt
  loc_B6DD5F: FFree1Var var_D8 = ""
  loc_B6DD64: LitI4 0
  loc_B6DD69: FStR4 var_110
  loc_B6DD6C: Branch loc_B6DE87
  loc_B6DD73: FLdPr var_88
  loc_B6DD76: LateMemLdVar
  loc_B6DD7B: FStVarZero
  loc_B6DD7F: FLdRfVar var_134
  loc_B6DD82: FStR4 var_138
  loc_B6DD87: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DD8A: LitStr "smtpserver"
  loc_B6DD8D: ConcatStr
  loc_B6DD8E: CVarStr var_D8
  loc_B6DD91: PopAdLdVar
  loc_B6DD92: LitVarStr var_C4, "infogov.com.ar"
  loc_B6DD97: PopAdLdVar
  loc_B6DD98: ILdRf var_138
  loc_B6DD9B: VarLateMemCallSt
  loc_B6DDA1: FFree1Var var_D8 = ""
  loc_B6DDA6: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DDA9: LitStr "smtpserverport"
  loc_B6DDAC: ConcatStr
  loc_B6DDAD: CVarStr var_D8
  loc_B6DDB0: PopAdLdVar
  loc_B6DDB1: LitVarStr var_C4, "25"
  loc_B6DDB6: PopAdLdVar
  loc_B6DDB7: ILdRf var_138
  loc_B6DDBA: VarLateMemCallSt
  loc_B6DDC0: FFree1Var var_D8 = ""
  loc_B6DDC5: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DDC8: LitStr "sendusing"
  loc_B6DDCB: ConcatStr
  loc_B6DDCC: CVarStr var_D8
  loc_B6DDCF: PopAdLdVar
  loc_B6DDD0: LitVarStr var_C4, "2"
  loc_B6DDD5: PopAdLdVar
  loc_B6DDD6: ILdRf var_138
  loc_B6DDD9: VarLateMemCallSt
  loc_B6DDDF: FFree1Var var_D8 = ""
  loc_B6DDE4: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DDE7: LitStr "sendusername"
  loc_B6DDEA: ConcatStr
  loc_B6DDEB: CVarStr var_D8
  loc_B6DDEE: PopAdLdVar
  loc_B6DDEF: LitVarStr var_C4, "guaymallen"
  loc_B6DDF4: PopAdLdVar
  loc_B6DDF5: ILdRf var_138
  loc_B6DDF8: VarLateMemCallSt
  loc_B6DDFE: FFree1Var var_D8 = ""
  loc_B6DE03: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DE06: LitStr "sendpassword"
  loc_B6DE09: ConcatStr
  loc_B6DE0A: CVarStr var_D8
  loc_B6DE0D: PopAdLdVar
  loc_B6DE0E: LitVarStr var_C4, "MunGy148O"
  loc_B6DE13: PopAdLdVar
  loc_B6DE14: ILdRf var_138
  loc_B6DE17: VarLateMemCallSt
  loc_B6DE1D: FFree1Var var_D8 = ""
  loc_B6DE22: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DE25: LitStr "smtpusessl"
  loc_B6DE28: ConcatStr
  loc_B6DE29: CVarStr var_D8
  loc_B6DE2C: PopAdLdVar
  loc_B6DE2D: LitVarStr var_C4, "1"
  loc_B6DE32: PopAdLdVar
  loc_B6DE33: ILdRf var_138
  loc_B6DE36: VarLateMemCallSt
  loc_B6DE3C: FFree1Var var_D8 = ""
  loc_B6DE41: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DE44: LitStr "smtpconnectiontimeout"
  loc_B6DE47: ConcatStr
  loc_B6DE48: CVarStr var_D8
  loc_B6DE4B: PopAdLdVar
  loc_B6DE4C: LitVarStr var_C4, "30"
  loc_B6DE51: PopAdLdVar
  loc_B6DE52: ILdRf var_138
  loc_B6DE55: VarLateMemCallSt
  loc_B6DE5B: FFree1Var var_D8 = ""
  loc_B6DE60: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B6DE63: LitStr "smtpauthenticate"
  loc_B6DE66: ConcatStr
  loc_B6DE67: CVarStr var_D8
  loc_B6DE6A: PopAdLdVar
  loc_B6DE6B: LitVarStr var_C4, "1"
  loc_B6DE70: PopAdLdVar
  loc_B6DE71: ILdRf var_138
  loc_B6DE74: VarLateMemCallSt
  loc_B6DE7A: FFree1Var var_D8 = ""
  loc_B6DE7F: LitI4 0
  loc_B6DE84: FStR4 var_138
  loc_B6DE8B: FLdPr var_88
  loc_B6DE8E: LateMemLdVar
  loc_B6DE93: LdPrVar
  loc_B6DE95: LateMemCall
  loc_B6DE9B: FFree1Var var_E8 = ""
  loc_B6DEA0: LitI4 0
  loc_B6DEA5: LitStr "CDO.Message"
  loc_B6DEA8: FLdRfVar var_D8
  loc_B6DEAB: ImpAdCallFPR4  = CreateObject(, )
  loc_B6DEB0: FLdRfVar var_D8
  loc_B6DEB3: CAdVar
  loc_B6DEB5: FStAd var_8C 
  loc_B6DEB9: FFree1Var var_D8 = ""
  loc_B6DEBE: ILdRf var_8C
  loc_B6DEC1: FStAd var_13C 
  loc_B6DEC7: ILdRf var_88
  loc_B6DECA: CVarAd
  loc_B6DECE: PopAdLdVar
  loc_B6DECF: FLdPr var_13C
  loc_B6DED2: LateMemSt
  loc_B6DED8: FLdRfVar var_114
  loc_B6DEDB: FLdPr Me
  loc_B6DEDE: VCallAd Control_ID_txtSender
  loc_B6DEE1: FStAdFunc var_C8
  loc_B6DEE4: FLdPr var_C8
  loc_B6DEE7:  = Me.Text
  loc_B6DEEC: FLdZeroAd var_114
  loc_B6DEEF: CVarStr var_D8
  loc_B6DEF2: PopAdLdVar
  loc_B6DEF3: FLdPr var_13C
  loc_B6DEF6: LateMemSt
  loc_B6DEFA: FFree1Ad var_C8
  loc_B6DEFD: FFree1Var var_D8 = ""
  loc_B6DF02: FLdRfVar var_114
  loc_B6DF05: FLdPr Me
  loc_B6DF08: VCallAd Control_ID_txtRecipient
  loc_B6DF0B: FStAdFunc var_C8
  loc_B6DF0E: FLdPr var_C8
  loc_B6DF11:  = Me.Text
  loc_B6DF16: FLdZeroAd var_114
  loc_B6DF19: CVarStr var_D8
  loc_B6DF1C: PopAdLdVar
  loc_B6DF1D: FLdPr var_13C
  loc_B6DF20: LateMemSt
  loc_B6DF24: FFree1Ad var_C8
  loc_B6DF27: FFree1Var var_D8 = ""
  loc_B6DF2C: LitStr "tesoreriaguaymallen@yahoo.com.ar"
  loc_B6DF2F: LitStr vbNullString
  loc_B6DF32: NeStr
  loc_B6DF34: BranchF loc_B6DF46
  loc_B6DF39: LitVarStr var_B4, "tesoreriaguaymallen@yahoo.com.ar"
  loc_B6DF3E: PopAdLdVar
  loc_B6DF3F: FLdPr var_13C
  loc_B6DF42: LateMemSt
  loc_B6DF48: FLdRfVar var_114
  loc_B6DF4B: FLdPr Me
  loc_B6DF4E: VCallAd Control_ID_txtSubject
  loc_B6DF51: FStAdFunc var_C8
  loc_B6DF54: FLdPr var_C8
  loc_B6DF57:  = Me.Text
  loc_B6DF5C: FLdZeroAd var_114
  loc_B6DF5F: CVarStr var_D8
  loc_B6DF62: PopAdLdVar
  loc_B6DF63: FLdPr var_13C
  loc_B6DF66: LateMemSt
  loc_B6DF6A: FFree1Ad var_C8
  loc_B6DF6D: FFree1Var var_D8 = ""
  loc_B6DF72: FLdRfVar var_114
  loc_B6DF75: FLdPr Me
  loc_B6DF78: MemLdPr html
  loc_B6DF7B: LateIdLdVar var_D8 DispID_1075 0
  loc_B6DF82: CastAdVar Me
  loc_B6DF86: FStAdFunc var_C8
  loc_B6DF89: FLdPr var_C8
  loc_B6DF8C:  = Me.ScaleTop
  loc_B6DF91: FLdZeroAd var_114
  loc_B6DF94: FStStr var_9C
  loc_B6DF97: FFree1Ad var_C8
  loc_B6DF9A: FFree1Var var_D8 = ""
  loc_B6DF9F: LitVarI2 var_C4, 0
  loc_B6DFA4: PopAdLdVar
  loc_B6DFA5: FLdRfVar var_EC
  loc_B6DFA8: LitVarStr var_B4, "BODY"
  loc_B6DFAD: PopAdLdVar
  loc_B6DFAE: FLdPr Me
  loc_B6DFB1: MemLdPr html
  loc_B6DFB4: LateIdLdVar var_D8 DispID_1003 0
  loc_B6DFBB: CastAdVar Me
  loc_B6DFBF: FStAdFunc var_C8
  loc_B6DFC2: FLdPr var_C8
  loc_B6DFCA: FLdPr var_EC
  loc_B6DFCD: LateIdCallLdVar
  loc_B6DFD7: VarLateMemLdVar var_15C, .background
  loc_B6DFDD: LitVarStr var_14C, vbNullString
  loc_B6DFE2: HardType
  loc_B6DFE3: NeVarBool
  loc_B6DFE5: FFreeAd var_C8 = ""
  loc_B6DFEC: FFreeVar var_D8 = "": var_E8 = ""
  loc_B6DFF5: BranchF loc_B6E13E
  loc_B6DFFA: LitVarI2 var_C4, 0
  loc_B6DFFF: PopAdLdVar
  loc_B6E000: FLdRfVar var_EC
  loc_B6E003: LitVarStr var_B4, "BODY"
  loc_B6E008: PopAdLdVar
  loc_B6E009: FLdPr Me
  loc_B6E00C: MemLdPr html
  loc_B6E00F: LateIdLdVar var_D8 DispID_1003 0
  loc_B6E016: CastAdVar Me
  loc_B6E01A: FStAdFunc var_C8
  loc_B6E01D: FLdPr var_C8
  loc_B6E025: FLdPr var_EC
  loc_B6E028: LateIdCallLdVar
  loc_B6E032: VarLateMemLdVar var_15C, .background
  loc_B6E038: CStrVarTmp
  loc_B6E039: FStStr var_A4
  loc_B6E03C: FFreeAd var_C8 = ""
  loc_B6E043: FFreeVar var_D8 = "": var_E8 = ""
  loc_B6E04E: ILdRf var_A4
  loc_B6E051: FLdRfVar var_114
  loc_B6E054: CStr2Ansi
  loc_B6E055: ILdRf var_114
  loc_B6E058: ImpAdCallI2 PathIsURL()
  loc_B6E05D: FStR4 var_170
  loc_B6E060: SetLastSystemError
  loc_B6E061: ILdRf var_114
  loc_B6E064: FLdRfVar var_A4
  loc_B6E067: CStr2Uni
  loc_B6E069: ILdRf var_170
  loc_B6E06C: LitI4 1
  loc_B6E071: NeI4
  loc_B6E072: FFree1Str var_114
  loc_B6E075: BranchF loc_B6E13C
  loc_B6E07A: LitStr "cid:"
  loc_B6E07D: LitStr "BackGround"
  loc_B6E080: ConcatStr
  loc_B6E081: CVarStr var_E8
  loc_B6E084: PopAdLdVar
  loc_B6E085: LitVarI2 var_C4, 0
  loc_B6E08A: PopAdLdVar
  loc_B6E08B: FLdRfVar var_EC
  loc_B6E08E: LitVarStr var_B4, "BODY"
  loc_B6E093: PopAdLdVar
  loc_B6E094: FLdPr Me
  loc_B6E097: MemLdPr html
  loc_B6E09A: LateIdLdVar var_D8 DispID_1003 0
  loc_B6E0A1: CastAdVar Me
  loc_B6E0A5: FStAdFunc var_C8
  loc_B6E0A8: FLdPr var_C8
  loc_B6E0B0: FLdPr var_EC
  loc_B6E0B3: LateIdCallLdVar
  loc_B6E0BD: VarLateMemSt .background
  loc_B6E0C1: FFreeAd var_C8 = ""
  loc_B6E0C8: FFreeVar var_D8 = "": var_E8 = ""
  loc_B6E0D3: FLdRfVar var_A4
  loc_B6E0D6: CDargRef
  loc_B6E0DA: LitVarStr var_C4, "BackGround"
  loc_B6E0DF: PopAdLdVar
  loc_B6E0E0: LitVarI2 var_14C, 1
  loc_B6E0E5: PopAdLdVar
  loc_B6E0E6: FLdPr var_13C
  loc_B6E0E9: LateMemCallLdVar var_D8, .AddRelatedBodyPart
  loc_B6E0F1: CAdVar
  loc_B6E0F3: FStAd var_90 
  loc_B6E0F7: FFree1Var var_D8 = ""
  loc_B6E0FC: FLdPr var_90
  loc_B6E0FF: LateMemLdVar
  loc_B6E104: FStVarZero
  loc_B6E108: FLdRfVar var_190
  loc_B6E10B: FStR4 var_194
  loc_B6E110: LitVarStr var_B4, "urn:schemas:mailheader:Content-ID"
  loc_B6E115: PopAdLdVar
  loc_B6E116: LitVarStr var_124, "BackGround"
  loc_B6E11B: PopAdLdVar
  loc_B6E11C: ILdRf var_194
  loc_B6E11F: VarLateMemCallSt
  loc_B6E127: ILdRf var_194
  loc_B6E12A: LdPrVar
  loc_B6E12C: LateMemCall
  loc_B6E134: LitI4 0
  loc_B6E139: FStR4 var_194
  loc_B6E142: LitI4 0
  loc_B6E147: FLdRfVar var_94
  loc_B6E14A: FLdRfVar var_170
  loc_B6E14D: FLdPr Me
  loc_B6E150: MemLdPr html
  loc_B6E153: LateIdLdVar var_D8 DispID_1011 0
  loc_B6E15A: CastAdVar Me
  loc_B6E15E: FStAdFunc var_C8
  loc_B6E161: FLdPr var_C8
  loc_B6E169: ILdRf var_170
  loc_B6E16C: LitI4 1
  loc_B6E171: SubI4
  loc_B6E172: FFree1Ad var_C8
  loc_B6E175: FFree1Var var_D8 = ""
  loc_B6E178: ForI4 var_19C
  loc_B6E180: FLdRfVar var_EC
  loc_B6E183: LitVar_Missing var_C4
  loc_B6E186: PopAdLdVar
  loc_B6E187: ILdRf var_94
  loc_B6E18A: CVarI4
  loc_B6E18E: PopAdLdVar
  loc_B6E18F: FLdPr Me
  loc_B6E192: MemLdPr html
  loc_B6E195: LateIdLdVar var_D8 DispID_1011 0
  loc_B6E19C: CastAdVar Me
  loc_B6E1A0: FStAdFunc var_C8
  loc_B6E1A3: FLdPr var_C8
  loc_B6E1AB: FLdPr var_EC
  loc_B6E1AE: LateMemLdVar
  loc_B6E1B3: CStrVarTmp
  loc_B6E1B4: FStStr var_A4
  loc_B6E1B7: FFreeAd var_C8 = ""
  loc_B6E1BE: FFreeVar var_D8 = ""
  loc_B6E1C7: LitI4 8
  loc_B6E1CC: ILdRf var_A4
  loc_B6E1CF: ImpAdCallI2 Left$(, )
  loc_B6E1D4: FStStrNoPop var_114
  loc_B6E1D7: LitStr "file:///"
  loc_B6E1DA: EqStr
  loc_B6E1DC: FFree1Str var_114
  loc_B6E1DF: BranchF loc_B6E2F4
  loc_B6E1E4: FLdRfVar var_D8
  loc_B6E1E7: FLdRfVar var_A4
  loc_B6E1EA: Call Proc_89_31_9A2154()
  loc_B6E1EF: FLdRfVar var_D8
  loc_B6E1F2: CStrVarTmp
  loc_B6E1F3: FStStr var_98
  loc_B6E1F6: FFree1Var var_D8 = ""
  loc_B6E1FB: ILdRf var_98
  loc_B6E1FE: LitStr vbNullString
  loc_B6E201: NeStr
  loc_B6E203: BranchF loc_B6E2F2
  loc_B6E208: LitStr "cid:"
  loc_B6E20B: ILdRf var_98
  loc_B6E20E: ConcatStr
  loc_B6E20F: FStStrNoPop var_114
  loc_B6E212: ILdRf var_94
  loc_B6E215: CStrI4
  loc_B6E217: FStStrNoPop var_1A0
  loc_B6E21A: ConcatStr
  loc_B6E21B: CVarStr var_E8
  loc_B6E21E: PopAdLdVar
  loc_B6E21F: FLdRfVar var_EC
  loc_B6E222: LitVar_Missing var_C4
  loc_B6E225: PopAdLdVar
  loc_B6E226: ILdRf var_94
  loc_B6E229: CVarI4
  loc_B6E22D: PopAdLdVar
  loc_B6E22E: FLdPr Me
  loc_B6E231: MemLdPr html
  loc_B6E234: LateIdLdVar var_D8 DispID_1011 0
  loc_B6E23B: CastAdVar Me
  loc_B6E23F: FStAdFunc var_C8
  loc_B6E242: FLdPr var_C8
  loc_B6E24A: FLdPr var_EC
  loc_B6E24D: LateMemSt
  loc_B6E251: FFreeStr var_114 = ""
  loc_B6E258: FFreeAd var_C8 = ""
  loc_B6E25F: FFreeVar var_D8 = ""
  loc_B6E268: FLdRfVar var_A4
  loc_B6E26B: CDargRef
  loc_B6E26F: ILdRf var_98
  loc_B6E272: ILdRf var_94
  loc_B6E275: CStrI4
  loc_B6E277: FStStrNoPop var_114
  loc_B6E27A: ConcatStr
  loc_B6E27B: CVarStr var_D8
  loc_B6E27E: PopAdLdVar
  loc_B6E27F: LitVarI2 var_124, 1
  loc_B6E284: PopAdLdVar
  loc_B6E285: FLdPr var_13C
  loc_B6E288: LateMemCallLdVar var_E8, .AddRelatedBodyPart
  loc_B6E290: CAdVar
  loc_B6E292: FStAd var_90 
  loc_B6E296: FFree1Str var_114
  loc_B6E299: FFreeVar var_D8 = ""
  loc_B6E2A2: FLdPr var_90
  loc_B6E2A5: LateMemLdVar
  loc_B6E2AA: FStVarZero
  loc_B6E2AE: FLdRfVar var_1B0
  loc_B6E2B1: FStR4 var_1B4
  loc_B6E2B6: LitVarStr var_B4, "urn:schemas:mailheader:Content-ID"
  loc_B6E2BB: PopAdLdVar
  loc_B6E2BC: ILdRf var_98
  loc_B6E2BF: ILdRf var_94
  loc_B6E2C2: CStrI4
  loc_B6E2C4: FStStrNoPop var_114
  loc_B6E2C7: ConcatStr
  loc_B6E2C8: CVarStr var_D8
  loc_B6E2CB: PopAdLdVar
  loc_B6E2CC: ILdRf var_1B4
  loc_B6E2CF: VarLateMemCallSt
  loc_B6E2D5: FFree1Str var_114
  loc_B6E2D8: FFree1Var var_D8 = ""
  loc_B6E2DD: ILdRf var_1B4
  loc_B6E2E0: LdPrVar
  loc_B6E2E2: LateMemCall
  loc_B6E2EA: LitI4 0
  loc_B6E2EF: FStR4 var_1B4
  loc_B6E2F8: FLdRfVar var_94
  loc_B6E2FB: NextI4 var_19C, loc_B6E17E
  loc_B6E302: FLdRfVar var_114
  loc_B6E305: FLdPr Me
  loc_B6E308: MemLdPr html
  loc_B6E30B: LateIdLdVar var_D8 DispID_1075 0
  loc_B6E312: CastAdVar Me
  loc_B6E316: FStAdFunc var_C8
  loc_B6E319: FLdPr var_C8
  loc_B6E31C:  = Me.ScaleTop
  loc_B6E321: FLdZeroAd var_114
  loc_B6E324: CVarStr var_E8
  loc_B6E327: PopAdLdVar
  loc_B6E328: FLdPr var_13C
  loc_B6E32B: LateMemSt
  loc_B6E32F: FFree1Ad var_C8
  loc_B6E332: FFreeVar var_D8 = ""
  loc_B6E33B: ILdRf var_9C
  loc_B6E33E: FLdPr Me
  loc_B6E341: MemLdPr html
  loc_B6E344: LateIdLdVar var_D8 DispID_1004 0
  loc_B6E34B: CastAdVar Me
  loc_B6E34F: FStAdFunc var_C8
  loc_B6E352: FLdPr var_C8
  loc_B6E355: Me.CurrentX = from_stack_1s
  loc_B6E35A: FFree1Ad var_C8
  loc_B6E35D: FFree1Var var_D8 = ""
  loc_B6E362: FLdRfVar var_114
  loc_B6E365: FLdPr Me
  loc_B6E368: VCallAd Control_ID_txtAdjunto
  loc_B6E36B: FStAdFunc var_C8
  loc_B6E36E: FLdPr var_C8
  loc_B6E371:  = Me.Text
  loc_B6E376: ILdRf var_114
  loc_B6E379: LitStr vbNullString
  loc_B6E37C: NeStr
  loc_B6E37E: FFree1Str var_114
  loc_B6E381: FFree1Ad var_C8
  loc_B6E384: BranchF loc_B6E429
  loc_B6E389: FLdRfVar var_1CC
  loc_B6E38C: FLdRfVar var_C8
  loc_B6E38F: LitI4 2
  loc_B6E394: FLdPr Me
  loc_B6E397: MemLdRfVar from_stack_1.global_164
  loc_B6E39A: NewIfNullPr IFileSystem3
  loc_B6E39D: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_B6E3A2: FLdPr var_C8
  loc_B6E3A5:  = Me.Path
  loc_B6E3AA: FLdRfVar var_1D4
  loc_B6E3AD: LitStr "Certificado de Retención "
  loc_B6E3B0: FLdPr Me
  loc_B6E3B3: MemLdI2 PeriInfo
  loc_B6E3B6: CStrUI1
  loc_B6E3B8: FStStrNoPop var_114
  loc_B6E3BB: ConcatStr
  loc_B6E3BC: FStStrNoPop var_1A0
  loc_B6E3BF: LitStr "-"
  loc_B6E3C2: ConcatStr
  loc_B6E3C3: FStStrNoPop var_1B8
  loc_B6E3C6: FLdPr Me
  loc_B6E3C9: MemLdStr NumeOrpa
  loc_B6E3CC: CStrI4
  loc_B6E3CE: FStStrNoPop var_1BC
  loc_B6E3D1: ConcatStr
  loc_B6E3D2: FStStrNoPop var_1C0
  loc_B6E3D5: LitStr "-"
  loc_B6E3D8: ConcatStr
  loc_B6E3D9: FStStrNoPop var_1C4
  loc_B6E3DC: FLdPr Me
  loc_B6E3DF: MemLdStr CucuPers
  loc_B6E3E2: ConcatStr
  loc_B6E3E3: FStStrNoPop var_1C8
  loc_B6E3E6: LitStr ".pdf"
  loc_B6E3E9: ConcatStr
  loc_B6E3EA: FStStrNoPop var_1D0
  loc_B6E3ED: ILdRf var_1CC
  loc_B6E3F0: FLdPr Me
  loc_B6E3F3: MemLdRfVar from_stack_1.global_164
  loc_B6E3F6: NewIfNullPr IFileSystem3
  loc_B6E3F9: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B6E3FE: FLdZeroAd var_1D4
  loc_B6E401: CVarStr var_D8
  loc_B6E404: PopAdLdVar
  loc_B6E405: FLdPr var_13C
  loc_B6E408: LateMemCall
  loc_B6E40E: FFreeStr var_114 = "": var_1A0 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = ""
  loc_B6E423: FFree1Ad var_C8
  loc_B6E426: FFree1Var var_D8 = ""
  loc_B6E42B: LitVarStr var_B4, "urn:schemas:httpmail:priority"
  loc_B6E430: PopAdLdVar
  loc_B6E431: FLdPr Me
  loc_B6E434: MemLdI2 global_104
  loc_B6E437: LitI2_Byte 1
  loc_B6E439: SubI2
  loc_B6E43A: CVarI2 var_124
  loc_B6E43D: PopAdLdVar
  loc_B6E43E: FLdPr var_13C
  loc_B6E441: LateMemCallSt
  loc_B6E449: LitVarStr var_B4, "urn:schemas:mailheader:X-Priority"
  loc_B6E44E: PopAdLdVar
  loc_B6E44F: FLdPr Me
  loc_B6E452: MemLdI2 global_104
  loc_B6E455: LitI2_Byte 1
  loc_B6E457: SubI2
  loc_B6E458: CVarI2 var_124
  loc_B6E45B: PopAdLdVar
  loc_B6E45C: FLdPr var_13C
  loc_B6E45F: LateMemCallSt
  loc_B6E467: LitVarStr var_B4, "urn:schemas:httpmail:importance"
  loc_B6E46C: PopAdLdVar
  loc_B6E46D: FLdPr Me
  loc_B6E470: MemLdI2 global_104
  loc_B6E473: CVarI2 var_124
  loc_B6E476: PopAdLdVar
  loc_B6E477: FLdPr var_13C
  loc_B6E47A: LateMemCallSt
  loc_B6E482: LitI2_Byte 0
  loc_B6E484: BranchF loc_B6E4C1
  loc_B6E489: LitVarStr var_B4, "urn:schemas:mailheader:disposition-notification-to"
  loc_B6E48E: PopAdLdVar
  loc_B6E48F: FLdPr var_13C
  loc_B6E492: LateMemLdVar
  loc_B6E497: PopAdLdVar
  loc_B6E498: FLdPr var_13C
  loc_B6E49B: LateMemCallSt
  loc_B6E4A1: FFree1Var var_D8 = ""
  loc_B6E4A6: LitVarStr var_B4, "urn:schemas:mailheader:return-receipt-to"
  loc_B6E4AB: PopAdLdVar
  loc_B6E4AC: FLdPr var_13C
  loc_B6E4AF: LateMemLdVar
  loc_B6E4B4: PopAdLdVar
  loc_B6E4B5: FLdPr var_13C
  loc_B6E4B8: LateMemCallSt
  loc_B6E4BE: FFree1Var var_D8 = ""
  loc_B6E4C5: FLdPr var_13C
  loc_B6E4C8: LateMemLdVar
  loc_B6E4CD: LdPrVar
  loc_B6E4CF: LateMemCall
  loc_B6E4D5: FFree1Var var_E8 = ""
  loc_B6E4DA: FLdPr var_13C
  loc_B6E4DD: LateMemCall
  loc_B6E4E5: LitNothing
  loc_B6E4E7: FStAd var_13C 
  loc_B6E4ED: LitI2_Byte 1
  loc_B6E4EF: FLdPr Me
  loc_B6E4F2: VCallAd Control_ID_Shape1
  loc_B6E4F5: FStAdFunc var_C8
  loc_B6E4F8: FLdPr var_C8
  loc_B6E4FB: Me.BorderWidth = from_stack_1
  loc_B6E500: FFree1Ad var_C8
  loc_B6E505: LitI2_Byte 0
  loc_B6E507: FLdPr Me
  loc_B6E50A: VCallAd Control_ID_EnviandoFra
  loc_B6E50D: FStAdFunc var_C8
  loc_B6E510: FLdPr var_C8
  loc_B6E513: Me.Visible = from_stack_1b
  loc_B6E518: FFree1Ad var_C8
  loc_B6E51D: LitI2_Byte 0
  loc_B6E51F: FLdPr Me
  loc_B6E522: VCallAd Control_ID_Timer1
  loc_B6E525: FStAdFunc var_C8
  loc_B6E528: FLdPr var_C8
  loc_B6E52B: Me.Enabled = from_stack_1b
  loc_B6E530: FFree1Ad var_C8
  loc_B6E535: LitI2_Byte &HFF
  loc_B6E537: FLdPr Me
  loc_B6E53A: Me.Enabled = from_stack_1b
  loc_B6E541: FLdPr Me
  loc_B6E544: VCallAd Control_ID_cmdSalir
  loc_B6E547: FStAdFunc var_C8
  loc_B6E54A: FLdPr var_C8
  loc_B6E54D: Me.SetFocus
  loc_B6E552: FFree1Ad var_C8
  loc_B6E557: LitI4 0
  loc_B6E55C: CI2I4
  loc_B6E55D: FLdPr Me
  loc_B6E560: Me.MousePointer = from_stack_1
  loc_B6E567: LitVarStr var_B4, "Mensaje enviado."
  loc_B6E56C: PopAdLdVar
  loc_B6E56D: FLdPr Me
  loc_B6E570: VCallAd Control_ID_sBar
  loc_B6E573: FStAdFunc var_C8
  loc_B6E576: FLdPr var_C8
  loc_B6E579: LateIdSt
  loc_B6E57E: FFree1Ad var_C8
  loc_B6E583: ExitProcHresult
  loc_B6E586: LitVar_Missing var_16C
  loc_B6E589: LitVar_Missing var_15C
  loc_B6E58C: LitVar_Missing var_E8
  loc_B6E58F: LitI4 0
  loc_B6E594: LitStr "Error: "
  loc_B6E597: FLdRfVar var_170
  loc_B6E59A: ImpAdCallI2 Err 'rtcErrObj
  loc_B6E59F: FStAdFunc var_C8
  loc_B6E5A2: FLdPr var_C8
  loc_B6E5A5:  = Err.Number
  loc_B6E5AA: ILdRf var_170
  loc_B6E5AD: CStrI4
  loc_B6E5AF: FStStrNoPop var_114
  loc_B6E5B2: ConcatStr
  loc_B6E5B3: FStStrNoPop var_1A0
  loc_B6E5B6: LitStr ": "
  loc_B6E5B9: ConcatStr
  loc_B6E5BA: FStStrNoPop var_1BC
  loc_B6E5BD: FLdRfVar var_1B8
  loc_B6E5C0: ImpAdCallI2 Err 'rtcErrObj
  loc_B6E5C5: FStAdFunc var_EC
  loc_B6E5C8: FLdPr var_EC
  loc_B6E5CB:  = Err.Description
  loc_B6E5D0: ILdRf var_1B8
  loc_B6E5D3: ConcatStr
  loc_B6E5D4: CVarStr var_D8
  loc_B6E5D7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B6E5DC: FFreeStr var_114 = "": var_1A0 = "": var_1BC = ""
  loc_B6E5E7: FFreeAd var_C8 = ""
  loc_B6E5EE: FFreeVar var_D8 = "": var_E8 = "": var_15C = ""
  loc_B6E5FB: Resume
  loc_B6E601: LitI2_Byte &HFF
  loc_B6E603: FLdPr Me
  loc_B6E606: Me.Enabled = from_stack_1b
  loc_B6E60D: ExitProcHresult
End Function

Private Function Proc_89_31_9A2154(arg_C) '9A2154
  'Data Table: 48CF58
  loc_9A20E8: ZeroRetValVar
  loc_9A20EA: LitI4 0
  loc_9A20EF: LitI4 -1
  loc_9A20F4: LitStr "/"
  loc_9A20F7: ILdI4 arg_C
  loc_9A20FA: ImpAdCallI2 InStrRev(, , , )
  loc_9A20FF: FStR4 var_98
  loc_9A2102: ILdRf var_98
  loc_9A2105: CBoolI4
  loc_9A2107: BranchF loc_9A214E
  loc_9A210A: LitVar_Missing var_CC
  loc_9A210D: ILdRf var_98
  loc_9A2110: LitI4 1
  loc_9A2115: AddI4
  loc_9A2116: ILdRf arg_C
  loc_9A2119: CVarRef
  loc_9A211E: FLdRfVar var_DC
  loc_9A2121: ImpAdCallFPR4  = Mid(, , )
  loc_9A2126: FLdRfVar var_DC
  loc_9A2129: CStrVarTmp
  loc_9A212A: FStStr var_9C
  loc_9A212D: FFreeVar var_CC = ""
  loc_9A2134: FLdRfVar var_E4
  loc_9A2137: LitI2_Byte &HFF
  loc_9A2139: PopTmpLdAd2 var_DE
  loc_9A213C: FLdRfVar var_9C
  loc_9A213F: from_stack_3v = GetStringFile(from_stack_1v, from_stack_2v)
  loc_9A2144: FLdZeroAd var_E4
  loc_9A2147: CVarStr var_CC
  loc_9A214A: FStVar var_94
  loc_9A214E: ExitProcCbHresult
End Function

Private Function Proc_89_32_9B8794() '9B8794
  'Data Table: 48CF58
  loc_9B86EC: FLdPr Me
  loc_9B86EF: MemLdUI1 global_148
  loc_9B86F3: CI2UI1
  loc_9B86F5: LitI2_Byte 1
  loc_9B86F7: AddI2
  loc_9B86F8: CUI1I2
  loc_9B86FA: FLdPr Me
  loc_9B86FD: MemStUI1
  loc_9B8701: LitI2_Byte 0
  loc_9B8703: FLdPr Me
  loc_9B8706: MemStI2 global_150
  loc_9B8709: LitI4 0
  loc_9B870E: FLdPr Me
  loc_9B8711: MemLdUI1 global_148
  loc_9B8715: CI4UI1
  loc_9B8716: FLdPr Me
  loc_9B8719: MemLdRfVar from_stack_1.global_144
  loc_9B871C: RedimPreserve
  loc_9B8726: FLdRfVar var_A0
  loc_9B8729: LitVarStr var_9C, "medio"
  loc_9B872E: PopAdLdVar
  loc_9B872F: FLdRfVar var_8C
  loc_9B8732: FLdRfVar var_88
  loc_9B8735: FLdPr Me
  loc_9B8738: MemLdRfVar from_stack_1.global_120
  loc_9B873B: NewIfNullPr clscheque
  loc_9B873E: from_stack_1v = clscheque.RsFrmGet()
  loc_9B8743: FLdPr var_88
  loc_9B8746:  = Me.Fields
  loc_9B874B: FLdPr var_8C
  loc_9B874E: from_stack_2 = Me.Item(from_stack_1)
  loc_9B8753: LitI2_Byte 0
  loc_9B8755: LitVar_Missing var_D4
  loc_9B8758: LitI2_Byte 0
  loc_9B875A: FLdZeroAd var_A0
  loc_9B875D: CVarAd
  loc_9B8761: PopAdLdVar
  loc_9B8762: FLdPr Me
  loc_9B8765: MemLdUI1 global_148
  loc_9B8769: CI4UI1
  loc_9B876A: FLdPr Me
  loc_9B876D: MemLdStr global_144
  loc_9B8770: AryLock
  loc_9B8773: Ary1LdPr
  loc_9B8774: MemLdRfVar from_stack_1.global_0
  loc_9B8777: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B877C: AryUnlock
  loc_9B877F: FFreeAd var_88 = ""
  loc_9B8786: FFreeVar var_B4 = ""
  loc_9B878D: Call Proc_89_33_A33948()
  loc_9B8792: ExitProcHresult
  loc_9B8793: ConcatStr
End Function

Private Function Proc_89_33_A33948() 'A33948
  'Data Table: 48CF58
  loc_A33760: FLdPr Me
  loc_A33763: MemLdI2 global_150
  loc_A33766: LitI2_Byte 1
  loc_A33768: AddI2
  loc_A33769: FLdPr Me
  loc_A3376C: MemStI2 global_150
  loc_A3376F: LitI4 0
  loc_A33774: FLdPr Me
  loc_A33777: MemLdI2 global_150
  loc_A3377A: CI4UI1
  loc_A3377B: FLdPr Me
  loc_A3377E: MemLdUI1 global_148
  loc_A33782: CI4UI1
  loc_A33783: FLdPr Me
  loc_A33786: MemLdStr global_144
  loc_A33789: Ary1LdPr
  loc_A3378A: MemLdRfVar from_stack_1.global_4
  loc_A3378D: RedimPreserve
  loc_A33797: FLdPr Me
  loc_A3379A: MemLdI2 global_150
  loc_A3379D: CI4UI1
  loc_A3379E: FLdPr Me
  loc_A337A1: MemLdUI1 global_148
  loc_A337A5: CI4UI1
  loc_A337A6: FLdPr Me
  loc_A337A9: MemLdStr global_144
  loc_A337AC: AryLock
  loc_A337AF: Ary1LdPr
  loc_A337B0: MemLdStr global_4
  loc_A337B3: AryLock
  loc_A337B6: Ary1LdRf
  loc_A337B7: FStR4 var_90
  loc_A337BA: FLdRfVar var_AC
  loc_A337BD: LitVarStr var_A8, "DetaBanc"
  loc_A337C2: PopAdLdVar
  loc_A337C3: FLdRfVar var_98
  loc_A337C6: FLdRfVar var_94
  loc_A337C9: FLdPr Me
  loc_A337CC: MemLdRfVar from_stack_1.global_120
  loc_A337CF: NewIfNullPr clscheque
  loc_A337D2: from_stack_1v = clscheque.RsFrmGet()
  loc_A337D7: FLdPr var_94
  loc_A337DA:  = Me.Fields
  loc_A337DF: FLdPr var_98
  loc_A337E2: from_stack_2 = Me.Item(from_stack_1)
  loc_A337E7: LitI2_Byte 0
  loc_A337E9: LitVar_Missing var_DC
  loc_A337EC: LitI2_Byte 0
  loc_A337EE: FLdZeroAd var_AC
  loc_A337F1: CVarAd
  loc_A337F5: PopAdLdVar
  loc_A337F6: FMemLdRf unk_48CEC9
  loc_A337FB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A33800: FFreeAd var_94 = ""
  loc_A33807: FFreeVar var_BC = ""
  loc_A3380E: FLdRfVar var_BC
  loc_A33811: FLdRfVar var_AC
  loc_A33814: LitVarStr var_A8, "NumeMoba"
  loc_A33819: PopAdLdVar
  loc_A3381A: FLdRfVar var_98
  loc_A3381D: FLdRfVar var_94
  loc_A33820: FLdPr Me
  loc_A33823: MemLdRfVar from_stack_1.global_120
  loc_A33826: NewIfNullPr clscheque
  loc_A33829: from_stack_1v = clscheque.RsFrmGet()
  loc_A3382E: FLdPr var_94
  loc_A33831:  = Me.Fields
  loc_A33836: FLdPr var_98
  loc_A33839: from_stack_2 = Me.Item(from_stack_1)
  loc_A3383E: FLdPr var_AC
  loc_A33841:  = Me.Value
  loc_A33846: FLdRfVar var_EC
  loc_A33849: LitVarStr var_CC, "NumeMoba"
  loc_A3384E: PopAdLdVar
  loc_A3384F: FLdRfVar var_E8
  loc_A33852: FLdRfVar var_E4
  loc_A33855: FLdPr Me
  loc_A33858: MemLdRfVar from_stack_1.global_120
  loc_A3385B: NewIfNullPr clscheque
  loc_A3385E: from_stack_1v = clscheque.RsFrmGet()
  loc_A33863: FLdPr var_E4
  loc_A33866:  = Me.Fields
  loc_A3386B: FLdPr var_E8
  loc_A3386E: from_stack_2 = Me.Item(from_stack_1)
  loc_A33873: LitVarStr var_10C, "&nbsp;"
  loc_A33878: FStVarCopyObj var_11C
  loc_A3387B: FLdRfVar var_11C
  loc_A3387E: FLdZeroAd var_EC
  loc_A33881: CVarAd
  loc_A33885: FLdRfVar var_BC
  loc_A33888: FnCStrVar
  loc_A3388A: FStStrNoPop var_E0
  loc_A3388D: LitStr "0"
  loc_A33890: NeStr
  loc_A33892: CVarBoolI2 var_FC
  loc_A33896: FLdRfVar var_12C
  loc_A33899: ImpAdCallFPR4  = IIf(, , )
  loc_A3389E: LitI2_Byte 0
  loc_A338A0: LitVar_Missing var_14C
  loc_A338A3: LitI2_Byte 0
  loc_A338A5: FLdVar var_12C
  loc_A338A9: FMemLdRf unk_48CEC9
  loc_A338AE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A338B3: FFree1Str var_E0
  loc_A338B6: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_E4 = ""
  loc_A338C3: FFreeVar var_BC = "": var_FC = "": var_DC = "": var_11C = "": var_12C = ""
  loc_A338D2: FLdRfVar var_AC
  loc_A338D5: LitVarStr var_A8, "ImpoCheq"
  loc_A338DA: PopAdLdVar
  loc_A338DB: FLdRfVar var_98
  loc_A338DE: FLdRfVar var_94
  loc_A338E1: FLdPr Me
  loc_A338E4: MemLdRfVar from_stack_1.global_120
  loc_A338E7: NewIfNullPr clscheque
  loc_A338EA: from_stack_1v = clscheque.RsFrmGet()
  loc_A338EF: FLdPr var_94
  loc_A338F2:  = Me.Fields
  loc_A338F7: FLdPr var_98
  loc_A338FA: from_stack_2 = Me.Item(from_stack_1)
  loc_A338FF: LitI2_Byte 0
  loc_A33901: LitVar_Missing var_DC
  loc_A33904: LitI2_Byte &HFF
  loc_A33906: FLdZeroAd var_AC
  loc_A33909: CVarAd
  loc_A3390D: PopAdLdVar
  loc_A3390E: FMemLdRf unk_48CEC9
  loc_A33913: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A33918: FFreeAd var_94 = ""
  loc_A3391F: FFreeVar var_BC = ""
  loc_A33926: LitI2_Byte 1
  loc_A33928: PopTmpLdAd2 var_14E
  loc_A3392B: FLdPr Me
  loc_A3392E: MemLdRfVar from_stack_1.global_120
  loc_A33931: NewIfNullPr clscheque
  loc_A33934: Call clscheque.Move(from_stack_1v)
  loc_A33939: LitI4 0
  loc_A3393E: FStR4 var_90
  loc_A33941: AryUnlock
  loc_A33944: AryUnlock
  loc_A33947: ExitProcHresult
End Function

Private Function Proc_89_34_AA8368() 'AA8368
  'Data Table: 48CF58
  loc_AA7E4C: LitI4 1
  loc_AA7E51: FLdPr Me
  loc_AA7E54: MemLdStr global_140
  loc_AA7E57: Ary1LdPr
  loc_AA7E58: MemLdStr global_12
  loc_AA7E5B: LitStr "1"
  loc_AA7E5E: EqStr
  loc_AA7E60: BranchF loc_AA7E77
  loc_AA7E63: LitI2_Byte &HFF
  loc_AA7E65: CStrBool
  loc_AA7E67: FStStrNoPop var_88
  loc_AA7E6A: FLdPr Me
  loc_AA7E6D: MemStStrCopy
  loc_AA7E71: FFree1Str var_88
  loc_AA7E74: Branch loc_AA7E88
  loc_AA7E77: LitI2_Byte 0
  loc_AA7E79: CStrBool
  loc_AA7E7B: FStStrNoPop var_88
  loc_AA7E7E: FLdPr Me
  loc_AA7E81: MemStStrCopy
  loc_AA7E85: FFree1Str var_88
  loc_AA7E88: LitVarStr var_98, "<table width=""60" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA7E8D: PopAdLdVar
  loc_AA7E8E: FLdPr Me
  loc_AA7E91: MemLdRfVar from_stack_1.htmFile
  loc_AA7E94: LdPrVar
  loc_AA7E96: LateMemCall
  loc_AA7E9C: LitVarStr var_98, "  <tr align=""right"" class=""LineaDato"" valign=""top"">"
  loc_AA7EA1: PopAdLdVar
  loc_AA7EA2: FLdPr Me
  loc_AA7EA5: MemLdRfVar from_stack_1.htmFile
  loc_AA7EA8: LdPrVar
  loc_AA7EAA: LateMemCall
  loc_AA7EB0: LitStr "    <td rowspan="""
  loc_AA7EB3: FLdPr Me
  loc_AA7EB6: MemLdStr global_140
  loc_AA7EB9: LitI2_Byte 1
  loc_AA7EBB: FnUBound
  loc_AA7EBD: CStrI4
  loc_AA7EBF: FStStrNoPop var_88
  loc_AA7EC2: ConcatStr
  loc_AA7EC3: FStStrNoPop var_AC
  loc_AA7EC6: LitStr """ align=""left"" class=""Encabezado"">Comprobante</td>"
  loc_AA7EC9: ConcatStr
  loc_AA7ECA: CVarStr var_BC
  loc_AA7ECD: PopAdLdVar
  loc_AA7ECE: FLdPr Me
  loc_AA7ED1: MemLdRfVar from_stack_1.htmFile
  loc_AA7ED4: LdPrVar
  loc_AA7ED6: LateMemCall
  loc_AA7EDC: FFreeStr var_88 = ""
  loc_AA7EE3: FFree1Var var_BC = ""
  loc_AA7EE6: LitI2_Byte 1
  loc_AA7EE8: FLdPr Me
  loc_AA7EEB: MemLdRfVar from_stack_1.global_156
  loc_AA7EEE: FLdPr Me
  loc_AA7EF1: MemLdStr global_140
  loc_AA7EF4: LitI2_Byte 1
  loc_AA7EF6: FnUBound
  loc_AA7EF8: CI2I4
  loc_AA7EF9: ForI2 var_C0
  loc_AA7EFF: FLdPr Me
  loc_AA7F02: MemLdI2 global_156
  loc_AA7F05: LitI2_Byte 1
  loc_AA7F07: GtI2
  loc_AA7F08: BranchF loc_AA7F1F
  loc_AA7F0B: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA7F10: PopAdLdVar
  loc_AA7F11: FLdPr Me
  loc_AA7F14: MemLdRfVar from_stack_1.htmFile
  loc_AA7F17: LdPrVar
  loc_AA7F19: LateMemCall
  loc_AA7F1F: LitStr "    <td align=""right"">"
  loc_AA7F22: FLdPr Me
  loc_AA7F25: MemLdI2 global_156
  loc_AA7F28: CI4UI1
  loc_AA7F29: FLdPr Me
  loc_AA7F2C: MemLdStr global_140
  loc_AA7F2F: Ary1LdPr
  loc_AA7F30: MemLdStr global_0
  loc_AA7F33: ConcatStr
  loc_AA7F34: FStStrNoPop var_88
  loc_AA7F37: LitStr "</td>"
  loc_AA7F3A: ConcatStr
  loc_AA7F3B: CVarStr var_BC
  loc_AA7F3E: PopAdLdVar
  loc_AA7F3F: FLdPr Me
  loc_AA7F42: MemLdRfVar from_stack_1.htmFile
  loc_AA7F45: LdPrVar
  loc_AA7F47: LateMemCall
  loc_AA7F4D: FFree1Str var_88
  loc_AA7F50: FFree1Var var_BC = ""
  loc_AA7F53: LitStr "    <td align=""right"">&#160;$&#160;"
  loc_AA7F56: LitI4 1
  loc_AA7F5B: LitI4 1
  loc_AA7F60: LitVarStr var_A8, "###,###,##0.00"
  loc_AA7F65: FStVarCopyObj var_BC
  loc_AA7F68: FLdRfVar var_BC
  loc_AA7F6B: FLdPr Me
  loc_AA7F6E: MemLdI2 global_156
  loc_AA7F71: CI4UI1
  loc_AA7F72: FLdPr Me
  loc_AA7F75: MemLdStr global_140
  loc_AA7F78: AryLock
  loc_AA7F7B: Ary1LdPr
  loc_AA7F7C: MemLdRfVar from_stack_1.global_4
  loc_AA7F7F: CVarRef
  loc_AA7F84: ImpAdCallI2 Format$(, )
  loc_AA7F89: FStStr var_88
  loc_AA7F8C: AryUnlock
  loc_AA7F8F: ILdRf var_88
  loc_AA7F92: ConcatStr
  loc_AA7F93: FStStrNoPop var_AC
  loc_AA7F96: LitStr "</td>"
  loc_AA7F99: ConcatStr
  loc_AA7F9A: CVarStr var_D4
  loc_AA7F9D: PopAdLdVar
  loc_AA7F9E: FLdPr Me
  loc_AA7FA1: MemLdRfVar from_stack_1.htmFile
  loc_AA7FA4: LdPrVar
  loc_AA7FA6: LateMemCall
  loc_AA7FAC: FFreeStr var_88 = ""
  loc_AA7FB3: FFreeVar var_BC = ""
  loc_AA7FBA: FLdPr Me
  loc_AA7FBD: MemLdStr MostrarUG
  loc_AA7FC0: CBoolStr
  loc_AA7FC2: BranchF loc_AA7FF9
  loc_AA7FC5: LitStr "    <td align=""right"">"
  loc_AA7FC8: FLdPr Me
  loc_AA7FCB: MemLdI2 global_156
  loc_AA7FCE: CI4UI1
  loc_AA7FCF: FLdPr Me
  loc_AA7FD2: MemLdStr global_140
  loc_AA7FD5: Ary1LdPr
  loc_AA7FD6: MemLdStr global_8
  loc_AA7FD9: ConcatStr
  loc_AA7FDA: FStStrNoPop var_88
  loc_AA7FDD: LitStr "</td>"
  loc_AA7FE0: ConcatStr
  loc_AA7FE1: CVarStr var_BC
  loc_AA7FE4: PopAdLdVar
  loc_AA7FE5: FLdPr Me
  loc_AA7FE8: MemLdRfVar from_stack_1.htmFile
  loc_AA7FEB: LdPrVar
  loc_AA7FED: LateMemCall
  loc_AA7FF3: FFree1Str var_88
  loc_AA7FF6: FFree1Var var_BC = ""
  loc_AA7FF9: LitVarStr var_98, "     </tr>"
  loc_AA7FFE: PopAdLdVar
  loc_AA7FFF: FLdPr Me
  loc_AA8002: MemLdRfVar from_stack_1.htmFile
  loc_AA8005: LdPrVar
  loc_AA8007: LateMemCall
  loc_AA800D: FLdPr Me
  loc_AA8010: MemLdRfVar from_stack_1.global_156
  loc_AA8013: NextI2 var_C0, loc_AA7EFF
  loc_AA8018: LitVarStr var_98, "  <tr align=""right"" class=""LineaDato"">"
  loc_AA801D: PopAdLdVar
  loc_AA801E: FLdPr Me
  loc_AA8021: MemLdRfVar from_stack_1.htmFile
  loc_AA8024: LdPrVar
  loc_AA8026: LateMemCall
  loc_AA802C: FLdPr Me
  loc_AA802F: MemLdStr MostrarUG
  loc_AA8032: CBoolStr
  loc_AA8034: BranchF loc_AA804E
  loc_AA8037: LitVarStr var_98, "    <td colspan=""3"" align=""right"" class=""Totales"">Total de comprobantes</td>"
  loc_AA803C: PopAdLdVar
  loc_AA803D: FLdPr Me
  loc_AA8040: MemLdRfVar from_stack_1.htmFile
  loc_AA8043: LdPrVar
  loc_AA8045: LateMemCall
  loc_AA804B: Branch loc_AA8062
  loc_AA804E: LitVarStr var_98, "    <td colspan=""2"" align=""right"" class=""Totales"">Total de comprobantes</td>"
  loc_AA8053: PopAdLdVar
  loc_AA8054: FLdPr Me
  loc_AA8057: MemLdRfVar from_stack_1.htmFile
  loc_AA805A: LdPrVar
  loc_AA805C: LateMemCall
  loc_AA8062: LitStr "    <td class=""Totales"">"
  loc_AA8065: LitI4 1
  loc_AA806A: LitI4 1
  loc_AA806F: LitVarStr var_A8, "currency"
  loc_AA8074: FStVarCopyObj var_BC
  loc_AA8077: FLdRfVar var_BC
  loc_AA807A: FLdPr Me
  loc_AA807D: MemLdRfVar from_stack_1.global_152
  loc_AA8080: CVarRef
  loc_AA8085: ImpAdCallI2 Format$(, )
  loc_AA808A: FStStrNoPop var_88
  loc_AA808D: ConcatStr
  loc_AA808E: FStStrNoPop var_AC
  loc_AA8091: LitStr "</td>"
  loc_AA8094: ConcatStr
  loc_AA8095: CVarStr var_D4
  loc_AA8098: PopAdLdVar
  loc_AA8099: FLdPr Me
  loc_AA809C: MemLdRfVar from_stack_1.htmFile
  loc_AA809F: LdPrVar
  loc_AA80A1: LateMemCall
  loc_AA80A7: FFreeStr var_88 = ""
  loc_AA80AE: FFreeVar var_BC = ""
  loc_AA80B5: LitVarStr var_98, "  </tr>"
  loc_AA80BA: PopAdLdVar
  loc_AA80BB: FLdPr Me
  loc_AA80BE: MemLdRfVar from_stack_1.htmFile
  loc_AA80C1: LdPrVar
  loc_AA80C3: LateMemCall
  loc_AA80C9: LitVarStr var_98, "</table>"
  loc_AA80CE: PopAdLdVar
  loc_AA80CF: FLdPr Me
  loc_AA80D2: MemLdRfVar from_stack_1.htmFile
  loc_AA80D5: LdPrVar
  loc_AA80D7: LateMemCall
  loc_AA80DD: LitVarStr var_98, "<p>&nbsp;</p>"
  loc_AA80E2: PopAdLdVar
  loc_AA80E3: FLdPr Me
  loc_AA80E6: MemLdRfVar from_stack_1.htmFile
  loc_AA80E9: LdPrVar
  loc_AA80EB: LateMemCall
  loc_AA80F1: LitVarStr var_98, "<table width=""60" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA80F6: PopAdLdVar
  loc_AA80F7: FLdPr Me
  loc_AA80FA: MemLdRfVar from_stack_1.htmFile
  loc_AA80FD: LdPrVar
  loc_AA80FF: LateMemCall
  loc_AA8105: LitVarStr var_98, " <tr align=""left"" class=""Encabezado"" valign=""top"">"
  loc_AA810A: PopAdLdVar
  loc_AA810B: FLdPr Me
  loc_AA810E: MemLdRfVar from_stack_1.htmFile
  loc_AA8111: LdPrVar
  loc_AA8113: LateMemCall
  loc_AA8119: LitVarStr var_98, "   <td align=""center"">Medio de pago</td>"
  loc_AA811E: PopAdLdVar
  loc_AA811F: FLdPr Me
  loc_AA8122: MemLdRfVar from_stack_1.htmFile
  loc_AA8125: LdPrVar
  loc_AA8127: LateMemCall
  loc_AA812D: LitVarStr var_98, "   <td align=""center"">Número</td>"
  loc_AA8132: PopAdLdVar
  loc_AA8133: FLdPr Me
  loc_AA8136: MemLdRfVar from_stack_1.htmFile
  loc_AA8139: LdPrVar
  loc_AA813B: LateMemCall
  loc_AA8141: LitVarStr var_98, "   <td align=""center"">Importe</td>"
  loc_AA8146: PopAdLdVar
  loc_AA8147: FLdPr Me
  loc_AA814A: MemLdRfVar from_stack_1.htmFile
  loc_AA814D: LdPrVar
  loc_AA814F: LateMemCall
  loc_AA8155: LitVarStr var_98, " </tr>"
  loc_AA815A: PopAdLdVar
  loc_AA815B: FLdPr Me
  loc_AA815E: MemLdRfVar from_stack_1.htmFile
  loc_AA8161: LdPrVar
  loc_AA8163: LateMemCall
  loc_AA8169: LitI2_Byte 1
  loc_AA816B: CUI1I2
  loc_AA816D: FLdPr Me
  loc_AA8170: MemLdRfVar from_stack_1.global_148
  loc_AA8173: FLdPr Me
  loc_AA8176: MemLdStr global_144
  loc_AA8179: LitI2_Byte 1
  loc_AA817B: FnUBound
  loc_AA817D: CUI1I4
  loc_AA817F: ForUI1 var_E8
  loc_AA8185: LitVarStr var_98, " <tr align=""right"" class=""LineaDato"" valign=""top"">"
  loc_AA818A: PopAdLdVar
  loc_AA818B: FLdPr Me
  loc_AA818E: MemLdRfVar from_stack_1.htmFile
  loc_AA8191: LdPrVar
  loc_AA8193: LateMemCall
  loc_AA8199: LitStr "   <td align=""left"" rowspan="""
  loc_AA819C: FLdPr Me
  loc_AA819F: MemLdUI1 global_148
  loc_AA81A3: CI4UI1
  loc_AA81A4: FLdPr Me
  loc_AA81A7: MemLdStr global_144
  loc_AA81AA: Ary1LdPr
  loc_AA81AB: MemLdStr global_4
  loc_AA81AE: LitI2_Byte 1
  loc_AA81B0: FnUBound
  loc_AA81B2: CStrI4
  loc_AA81B4: FStStrNoPop var_88
  loc_AA81B7: ConcatStr
  loc_AA81B8: FStStrNoPop var_AC
  loc_AA81BB: LitStr """ >"
  loc_AA81BE: ConcatStr
  loc_AA81BF: FStStrNoPop var_EC
  loc_AA81C2: FLdPr Me
  loc_AA81C5: MemLdUI1 global_148
  loc_AA81C9: CI4UI1
  loc_AA81CA: FLdPr Me
  loc_AA81CD: MemLdStr global_144
  loc_AA81D0: Ary1LdPr
  loc_AA81D1: MemLdStr global_0
  loc_AA81D4: ConcatStr
  loc_AA81D5: FStStrNoPop var_F0
  loc_AA81D8: LitStr "</td>"
  loc_AA81DB: ConcatStr
  loc_AA81DC: CVarStr var_BC
  loc_AA81DF: PopAdLdVar
  loc_AA81E0: FLdPr Me
  loc_AA81E3: MemLdRfVar from_stack_1.htmFile
  loc_AA81E6: LdPrVar
  loc_AA81E8: LateMemCall
  loc_AA81EE: FFreeStr var_88 = "": var_AC = "": var_EC = ""
  loc_AA81F9: FFree1Var var_BC = ""
  loc_AA81FC: LitI2_Byte 1
  loc_AA81FE: FLdPr Me
  loc_AA8201: MemLdRfVar from_stack_1.global_150
  loc_AA8204: FLdPr Me
  loc_AA8207: MemLdUI1 global_148
  loc_AA820B: CI4UI1
  loc_AA820C: FLdPr Me
  loc_AA820F: MemLdStr global_144
  loc_AA8212: Ary1LdPr
  loc_AA8213: MemLdStr global_4
  loc_AA8216: LitI2_Byte 1
  loc_AA8218: FnUBound
  loc_AA821A: CI2I4
  loc_AA821B: ForI2 var_F4
  loc_AA8221: FLdPr Me
  loc_AA8224: MemLdI2 global_150
  loc_AA8227: LitI2_Byte 1
  loc_AA8229: GtI2
  loc_AA822A: BranchF loc_AA8241
  loc_AA822D: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA8232: PopAdLdVar
  loc_AA8233: FLdPr Me
  loc_AA8236: MemLdRfVar from_stack_1.htmFile
  loc_AA8239: LdPrVar
  loc_AA823B: LateMemCall
  loc_AA8241: FLdPr Me
  loc_AA8244: MemLdI2 global_150
  loc_AA8247: CI4UI1
  loc_AA8248: FLdPr Me
  loc_AA824B: MemLdUI1 global_148
  loc_AA824F: CI4UI1
  loc_AA8250: FLdPr Me
  loc_AA8253: MemLdStr global_144
  loc_AA8256: AryLock
  loc_AA8259: Ary1LdPr
  loc_AA825A: MemLdStr global_4
  loc_AA825D: AryLock
  loc_AA8260: Ary1LdRf
  loc_AA8261: FStR4 var_100
  loc_AA8264: LitStr "   <td align=""right"">"
  loc_AA8267: FMemLdR4 var_100(4)
  loc_AA826C: ConcatStr
  loc_AA826D: FStStrNoPop var_88
  loc_AA8270: LitStr "</td>"
  loc_AA8273: ConcatStr
  loc_AA8274: CVarStr var_BC
  loc_AA8277: PopAdLdVar
  loc_AA8278: FLdPr Me
  loc_AA827B: MemLdRfVar from_stack_1.htmFile
  loc_AA827E: LdPrVar
  loc_AA8280: LateMemCall
  loc_AA8286: FFree1Str var_88
  loc_AA8289: FFree1Var var_BC = ""
  loc_AA828C: LitStr "   <td align=""right"">"
  loc_AA828F: LitI4 1
  loc_AA8294: LitI4 1
  loc_AA8299: LitVarStr var_A8, "currency"
  loc_AA829E: FStVarCopyObj var_BC
  loc_AA82A1: FLdRfVar var_BC
  loc_AA82A4: FMemLdRf unk_48CE59
  loc_AA82A9: CVarRef
  loc_AA82AE: ImpAdCallI2 Format$(, )
  loc_AA82B3: FStStrNoPop var_88
  loc_AA82B6: ConcatStr
  loc_AA82B7: FStStrNoPop var_AC
  loc_AA82BA: LitStr "</td>"
  loc_AA82BD: ConcatStr
  loc_AA82BE: CVarStr var_D4
  loc_AA82C1: PopAdLdVar
  loc_AA82C2: FLdPr Me
  loc_AA82C5: MemLdRfVar from_stack_1.htmFile
  loc_AA82C8: LdPrVar
  loc_AA82CA: LateMemCall
  loc_AA82D0: FFreeStr var_88 = ""
  loc_AA82D7: FFreeVar var_BC = ""
  loc_AA82DE: LitVarStr var_98, "     </tr>"
  loc_AA82E3: PopAdLdVar
  loc_AA82E4: FLdPr Me
  loc_AA82E7: MemLdRfVar from_stack_1.htmFile
  loc_AA82EA: LdPrVar
  loc_AA82EC: LateMemCall
  loc_AA82F2: LitI4 0
  loc_AA82F7: FStR4 var_100
  loc_AA82FA: AryUnlock
  loc_AA82FD: AryUnlock
  loc_AA8300: FLdPr Me
  loc_AA8303: MemLdRfVar from_stack_1.global_150
  loc_AA8306: NextI2 var_F4, loc_AA8221
  loc_AA830B: FLdPr Me
  loc_AA830E: MemLdRfVar from_stack_1.global_148
  loc_AA8311: NextUI1
  loc_AA8317: LitVarStr var_98, "</table>"
  loc_AA831C: PopAdLdVar
  loc_AA831D: FLdPr Me
  loc_AA8320: MemLdRfVar from_stack_1.htmFile
  loc_AA8323: LdPrVar
  loc_AA8325: LateMemCall
  loc_AA832B: LitVarStr var_98, "<p>&nbsp;</p>"
  loc_AA8330: PopAdLdVar
  loc_AA8331: FLdPr Me
  loc_AA8334: MemLdRfVar from_stack_1.htmFile
  loc_AA8337: LdPrVar
  loc_AA8339: LateMemCall
  loc_AA833F: LitVarStr var_98, "<p><strong>El presente mail es un aviso automático, por favor, NO lo responda...</strong></p>"
  loc_AA8344: PopAdLdVar
  loc_AA8345: FLdPr Me
  loc_AA8348: MemLdRfVar from_stack_1.htmFile
  loc_AA834B: LdPrVar
  loc_AA834D: LateMemCall
  loc_AA8353: LitVarStr var_98, "<p>desarrollado por InfoGov S.A. - www.infogov.com.ar</p>"
  loc_AA8358: PopAdLdVar
  loc_AA8359: FLdPr Me
  loc_AA835C: MemLdRfVar from_stack_1.htmFile
  loc_AA835F: LdPrVar
  loc_AA8361: LateMemCall
  loc_AA8367: ExitProcHresult
End Function

Private Function Proc_89_35_A5FFC8() 'A5FFC8
  'Data Table: 48CF58
  loc_A5FCAC: LitVarStr var_94, "<html>"
  loc_A5FCB1: PopAdLdVar
  loc_A5FCB2: FLdPr Me
  loc_A5FCB5: MemLdRfVar from_stack_1.htmFile
  loc_A5FCB8: LdPrVar
  loc_A5FCBA: LateMemCall
  loc_A5FCC0: LitVarStr var_94, "<head>"
  loc_A5FCC5: PopAdLdVar
  loc_A5FCC6: FLdPr Me
  loc_A5FCC9: MemLdRfVar from_stack_1.htmFile
  loc_A5FCCC: LdPrVar
  loc_A5FCCE: LateMemCall
  loc_A5FCD4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A5FCD9: PopAdLdVar
  loc_A5FCDA: FLdPr Me
  loc_A5FCDD: MemLdRfVar from_stack_1.htmFile
  loc_A5FCE0: LdPrVar
  loc_A5FCE2: LateMemCall
  loc_A5FCE8: LitVarStr var_94, "<title>Orden de pago</title>"
  loc_A5FCED: PopAdLdVar
  loc_A5FCEE: FLdPr Me
  loc_A5FCF1: MemLdRfVar from_stack_1.htmFile
  loc_A5FCF4: LdPrVar
  loc_A5FCF6: LateMemCall
  loc_A5FCFC: LitStr vbNullString
  loc_A5FCFF: ILdRf Me
  loc_A5FD02: CastAd
  loc_A5FD05: FStAdFunc var_A8
  loc_A5FD08: FLdRfVar var_A8
  loc_A5FD0B: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A5FD10: FFree1Ad var_A8
  loc_A5FD13: LitVarStr var_94, "</head>"
  loc_A5FD18: PopAdLdVar
  loc_A5FD19: FLdPr Me
  loc_A5FD1C: MemLdRfVar from_stack_1.htmFile
  loc_A5FD1F: LdPrVar
  loc_A5FD21: LateMemCall
  loc_A5FD27: LitStr "<body background="""
  loc_A5FD2A: FLdRfVar var_AC
  loc_A5FD2D: ImpAdLdI4 MemVar_C3D83C
  loc_A5FD30: FLdPr Me
  loc_A5FD33: MemLdRfVar from_stack_1.global_164
  loc_A5FD36: NewIfNullPr IFileSystem3
  loc_A5FD39: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_A5FD3E: ILdRf var_AC
  loc_A5FD41: ConcatStr
  loc_A5FD42: FStStrNoPop var_B0
  loc_A5FD45: LitStr "\l4.jpg"">"
  loc_A5FD48: ConcatStr
  loc_A5FD49: CVarStr var_C0
  loc_A5FD4C: PopAdLdVar
  loc_A5FD4D: FLdPr Me
  loc_A5FD50: MemLdRfVar from_stack_1.htmFile
  loc_A5FD53: LdPrVar
  loc_A5FD55: LateMemCall
  loc_A5FD5B: FFreeStr var_AC = ""
  loc_A5FD62: FFree1Var var_C0 = ""
  loc_A5FD65: LitVarStr var_94, "<p><br />"
  loc_A5FD6A: PopAdLdVar
  loc_A5FD6B: FLdPr Me
  loc_A5FD6E: MemLdRfVar from_stack_1.htmFile
  loc_A5FD71: LdPrVar
  loc_A5FD73: LateMemCall
  loc_A5FD79: LitStr "  <span class=""Normal""><strong>Sr. Proveedor, "
  loc_A5FD7C: LitStr "Municipalidad de Guaymallén"
  loc_A5FD7F: ConcatStr
  loc_A5FD80: FStStrNoPop var_AC
  loc_A5FD83: LitStr " le informa que el día "
  loc_A5FD86: ConcatStr
  loc_A5FD87: FStStrNoPop var_B0
  loc_A5FD8A: FLdPr Me
  loc_A5FD8D: MemLdStr FechaPago
  loc_A5FD90: ConcatStr
  loc_A5FD91: FStStrNoPop var_C4
  loc_A5FD94: FLdPr Me
  loc_A5FD97: MemLdStr global_160
  loc_A5FD9A: ConcatStr
  loc_A5FD9B: FStStrNoPop var_C8
  loc_A5FD9E: LitStr " según el siguiente detalle.</strong></span>"
  loc_A5FDA1: ConcatStr
  loc_A5FDA2: CVarStr var_C0
  loc_A5FDA5: PopAdLdVar
  loc_A5FDA6: FLdPr Me
  loc_A5FDA9: MemLdRfVar from_stack_1.htmFile
  loc_A5FDAC: LdPrVar
  loc_A5FDAE: LateMemCall
  loc_A5FDB4: FFreeStr var_AC = "": var_B0 = "": var_C4 = ""
  loc_A5FDBF: FFree1Var var_C0 = ""
  loc_A5FDC2: LitVarStr var_94, "</p>"
  loc_A5FDC7: PopAdLdVar
  loc_A5FDC8: FLdPr Me
  loc_A5FDCB: MemLdRfVar from_stack_1.htmFile
  loc_A5FDCE: LdPrVar
  loc_A5FDD0: LateMemCall
  loc_A5FDD6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A5FDDB: PopAdLdVar
  loc_A5FDDC: FLdPr Me
  loc_A5FDDF: MemLdRfVar from_stack_1.htmFile
  loc_A5FDE2: LdPrVar
  loc_A5FDE4: LateMemCall
  loc_A5FDEA: LitVarStr var_94, "  <tr>"
  loc_A5FDEF: PopAdLdVar
  loc_A5FDF0: FLdPr Me
  loc_A5FDF3: MemLdRfVar from_stack_1.htmFile
  loc_A5FDF6: LdPrVar
  loc_A5FDF8: LateMemCall
  loc_A5FDFE: LitStr "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A5FE01: LitStr "Municipalidad de Guaymallén"
  loc_A5FE04: ConcatStr
  loc_A5FE05: FStStrNoPop var_AC
  loc_A5FE08: LitStr "</p>"
  loc_A5FE0B: ConcatStr
  loc_A5FE0C: CVarStr var_C0
  loc_A5FE0F: PopAdLdVar
  loc_A5FE10: FLdPr Me
  loc_A5FE13: MemLdRfVar from_stack_1.htmFile
  loc_A5FE16: LdPrVar
  loc_A5FE18: LateMemCall
  loc_A5FE1E: FFree1Str var_AC
  loc_A5FE21: FFree1Var var_C0 = ""
  loc_A5FE24: LitStr "    <p>ORDEN DE PAGO N&ordm; "
  loc_A5FE27: FLdPr Me
  loc_A5FE2A: MemLdStr NumeOrpa
  loc_A5FE2D: CStrI4
  loc_A5FE2F: FStStrNoPop var_AC
  loc_A5FE32: ConcatStr
  loc_A5FE33: FStStrNoPop var_B0
  loc_A5FE36: LitStr "</p></th>"
  loc_A5FE39: ConcatStr
  loc_A5FE3A: CVarStr var_C0
  loc_A5FE3D: PopAdLdVar
  loc_A5FE3E: FLdPr Me
  loc_A5FE41: MemLdRfVar from_stack_1.htmFile
  loc_A5FE44: LdPrVar
  loc_A5FE46: LateMemCall
  loc_A5FE4C: FFreeStr var_AC = ""
  loc_A5FE53: FFree1Var var_C0 = ""
  loc_A5FE56: LitVarStr var_94, "  </tr>"
  loc_A5FE5B: PopAdLdVar
  loc_A5FE5C: FLdPr Me
  loc_A5FE5F: MemLdRfVar from_stack_1.htmFile
  loc_A5FE62: LdPrVar
  loc_A5FE64: LateMemCall
  loc_A5FE6A: LitVarStr var_94, "  <tr><th colspan=""3"" align=""left""><hr></th></tr>"
  loc_A5FE6F: PopAdLdVar
  loc_A5FE70: FLdPr Me
  loc_A5FE73: MemLdRfVar from_stack_1.htmFile
  loc_A5FE76: LdPrVar
  loc_A5FE78: LateMemCall
  loc_A5FE7E: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A5FE83: PopAdLdVar
  loc_A5FE84: FLdPr Me
  loc_A5FE87: MemLdRfVar from_stack_1.htmFile
  loc_A5FE8A: LdPrVar
  loc_A5FE8C: LateMemCall
  loc_A5FE92: LitStr "    <th align=""left"">Proveedor: <span class=""Normal"">"
  loc_A5FE95: FLdPr Me
  loc_A5FE98: MemLdStr CucuPers
  loc_A5FE9B: ConcatStr
  loc_A5FE9C: FStStrNoPop var_AC
  loc_A5FE9F: LitStr " - "
  loc_A5FEA2: ConcatStr
  loc_A5FEA3: FStStrNoPop var_B0
  loc_A5FEA6: FLdPr Me
  loc_A5FEA9: MemLdStr global_136
  loc_A5FEAC: ConcatStr
  loc_A5FEAD: FStStrNoPop var_C4
  loc_A5FEB0: LitStr "</span></th>"
  loc_A5FEB3: ConcatStr
  loc_A5FEB4: CVarStr var_C0
  loc_A5FEB7: PopAdLdVar
  loc_A5FEB8: FLdPr Me
  loc_A5FEBB: MemLdRfVar from_stack_1.htmFile
  loc_A5FEBE: LdPrVar
  loc_A5FEC0: LateMemCall
  loc_A5FEC6: FFreeStr var_AC = "": var_B0 = ""
  loc_A5FECF: FFree1Var var_C0 = ""
  loc_A5FED2: LitVarStr var_94, "  </tr>"
  loc_A5FED7: PopAdLdVar
  loc_A5FED8: FLdPr Me
  loc_A5FEDB: MemLdRfVar from_stack_1.htmFile
  loc_A5FEDE: LdPrVar
  loc_A5FEE0: LateMemCall
  loc_A5FEE6: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A5FEEB: PopAdLdVar
  loc_A5FEEC: FLdPr Me
  loc_A5FEEF: MemLdRfVar from_stack_1.htmFile
  loc_A5FEF2: LdPrVar
  loc_A5FEF4: LateMemCall
  loc_A5FEFA: LitStr "    <th align=""left"">Expediente: <span class=""Normal"">"
  loc_A5FEFD: FLdPr Me
  loc_A5FF00: MemLdStr global_124
  loc_A5FF03: ConcatStr
  loc_A5FF04: FStStrNoPop var_AC
  loc_A5FF07: LitStr " - Liquidación: "
  loc_A5FF0A: ConcatStr
  loc_A5FF0B: FStStrNoPop var_B0
  loc_A5FF0E: FLdPr Me
  loc_A5FF11: MemLdStr global_128
  loc_A5FF14: ConcatStr
  loc_A5FF15: FStStrNoPop var_C4
  loc_A5FF18: LitStr "</span></th>"
  loc_A5FF1B: ConcatStr
  loc_A5FF1C: CVarStr var_C0
  loc_A5FF1F: PopAdLdVar
  loc_A5FF20: FLdPr Me
  loc_A5FF23: MemLdRfVar from_stack_1.htmFile
  loc_A5FF26: LdPrVar
  loc_A5FF28: LateMemCall
  loc_A5FF2E: FFreeStr var_AC = "": var_B0 = ""
  loc_A5FF37: FFree1Var var_C0 = ""
  loc_A5FF3A: LitVarStr var_94, "  </tr>"
  loc_A5FF3F: PopAdLdVar
  loc_A5FF40: FLdPr Me
  loc_A5FF43: MemLdRfVar from_stack_1.htmFile
  loc_A5FF46: LdPrVar
  loc_A5FF48: LateMemCall
  loc_A5FF4E: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A5FF53: PopAdLdVar
  loc_A5FF54: FLdPr Me
  loc_A5FF57: MemLdRfVar from_stack_1.htmFile
  loc_A5FF5A: LdPrVar
  loc_A5FF5C: LateMemCall
  loc_A5FF62: LitStr "    <th align=""left"">Detalle: <span class=""Normal"">"
  loc_A5FF65: FLdPr Me
  loc_A5FF68: MemLdStr global_132
  loc_A5FF6B: ConcatStr
  loc_A5FF6C: FStStrNoPop var_AC
  loc_A5FF6F: LitStr "</span></th>"
  loc_A5FF72: ConcatStr
  loc_A5FF73: CVarStr var_C0
  loc_A5FF76: PopAdLdVar
  loc_A5FF77: FLdPr Me
  loc_A5FF7A: MemLdRfVar from_stack_1.htmFile
  loc_A5FF7D: LdPrVar
  loc_A5FF7F: LateMemCall
  loc_A5FF85: FFree1Str var_AC
  loc_A5FF88: FFree1Var var_C0 = ""
  loc_A5FF8B: LitVarStr var_94, "  </tr>"
  loc_A5FF90: PopAdLdVar
  loc_A5FF91: FLdPr Me
  loc_A5FF94: MemLdRfVar from_stack_1.htmFile
  loc_A5FF97: LdPrVar
  loc_A5FF99: LateMemCall
  loc_A5FF9F: LitVarStr var_94, "</table>"
  loc_A5FFA4: PopAdLdVar
  loc_A5FFA5: FLdPr Me
  loc_A5FFA8: MemLdRfVar from_stack_1.htmFile
  loc_A5FFAB: LdPrVar
  loc_A5FFAD: LateMemCall
  loc_A5FFB3: LitVarStr var_94, "<p>&nbsp;</p>"
  loc_A5FFB8: PopAdLdVar
  loc_A5FFB9: FLdPr Me
  loc_A5FFBC: MemLdRfVar from_stack_1.htmFile
  loc_A5FFBF: LdPrVar
  loc_A5FFC1: LateMemCall
  loc_A5FFC7: ExitProcHresult
End Function

Private Function Proc_89_36_973218() '973218
  'Data Table: 48CF58
  loc_9731EC: LitVarStr var_94, "</body>"
  loc_9731F1: PopAdLdVar
  loc_9731F2: FLdPr Me
  loc_9731F5: MemLdRfVar from_stack_1.htmFile
  loc_9731F8: LdPrVar
  loc_9731FA: LateMemCall
  loc_973200: LitVarStr var_94, "</html>"
  loc_973205: PopAdLdVar
  loc_973206: FLdPr Me
  loc_973209: MemLdRfVar from_stack_1.htmFile
  loc_97320C: LdPrVar
  loc_97320E: LateMemCall
  loc_973214: ExitProcHresult
  loc_973215: PopTmpLdAd8 Proc_89_36_973218D9
End Function
