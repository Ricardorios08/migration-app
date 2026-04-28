VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{6B7E6392-850A-101B-AFC04210102A8DA7}#1.3#0"; "C:\WINDOWS\SysWOW64\comctl32.ocx"
Begin VB.Form dlgEnvioEmailUsuario
  Caption = "Envío de E-mail"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgEnvioEmailUsuario.frx":0000
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
    OleObjectBlob = "dlgEnvioEmailUsuario.frx":030A
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
    OleObjectBlob = "dlgEnvioEmailUsuario.frx":03B2
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
      OleObjectBlob = "dlgEnvioEmailUsuario.frx":0466
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

Attribute VB_Name = "dlgEnvioEmailUsuario"

Public Mensaje As String
Public htmFile As Variant
Public eUsua As New Class
Public iPeriInfo As Integer
Public iCodiNope As Integer
Public html As New UnkObject


Private Sub cmdEnviar_Click() '96A72C
  'Data Table: 4719D4
  loc_96A710: Call Proc_91_23_B59CBC()
  loc_96A715: ILdRf Me
  loc_96A718: FStAdNoPop
  loc_96A71C: ImpAdLdRf MemVar_C44F9C
  loc_96A71F: NewIfNullPr Me
  loc_96A722: Me.Global.Unload from_stack_1
  loc_96A727: FFree1Ad var_88
  loc_96A72A: ExitProcHresult
End Sub

Private Sub Form_Load() '941918
  'Data Table: 4719D4
  loc_94190C: LitI2_Byte 0
  loc_94190E: FLdPr Me
  loc_941911: MemStI2 global_100
  loc_941914: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '952FB0
  'Data Table: 4719D4
  loc_952F9C: LitI4 0
  loc_952FA1: FStStrCopy var_88
  loc_952FA4: FLdRfVar var_88
  loc_952FA7: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_952FAC: FFree1Str var_88
  loc_952FAF: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A31028
  'Data Table: 4719D4
  loc_A30E50: FLdPr Me
  loc_A30E53: MemLdRfVar from_stack_1.global_88
  loc_A30E56: NewIfNullRf
  loc_A30E5A: ImpAdLdI4 MemVar_C3D03C
  loc_A30E5D: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_A30E62: FLdRfVar var_88
  loc_A30E65: FLdPr Me
  loc_A30E68: MemLdRfVar from_stack_1.global_88
  loc_A30E6B: NewIfNullPr tblusuario
  loc_A30E6E: from_stack_1v = tblusuario.DetaPersGet()
  loc_A30E73: FLdRfVar var_8C
  loc_A30E76: FLdPr Me
  loc_A30E79: MemLdRfVar from_stack_1.global_88
  loc_A30E7C: NewIfNullPr tblusuario
  loc_A30E7F: from_stack_1v = tblusuario.CosaUsuaGet()
  loc_A30E84: FLdRfVar var_90
  loc_A30E87: FLdPr Me
  loc_A30E8A: MemLdRfVar from_stack_1.global_88
  loc_A30E8D: NewIfNullPr tblusuario
  loc_A30E90: from_stack_1v = tblusuario.DetaPersGet()
  loc_A30E95: FLdZeroAd var_90
  loc_A30E98: CVarStr var_C0
  loc_A30E9B: FLdZeroAd var_8C
  loc_A30E9E: CVarStr var_B0
  loc_A30EA1: ILdRf var_88
  loc_A30EA4: LitStr vbNullString
  loc_A30EA7: EqStr
  loc_A30EA9: CVarBoolI2 var_A0
  loc_A30EAD: FLdRfVar var_D0
  loc_A30EB0: ImpAdCallFPR4  = IIf(, , )
  loc_A30EB5: FLdRfVar var_D0
  loc_A30EB8: LitVarStr var_E0, " <"
  loc_A30EBD: ConcatVar var_F0
  loc_A30EC1: FLdRfVar var_F4
  loc_A30EC4: FLdPr Me
  loc_A30EC7: MemLdRfVar from_stack_1.global_88
  loc_A30ECA: NewIfNullPr tblusuario
  loc_A30ECD: from_stack_1v = tblusuario.CosaUsuaGet()
  loc_A30ED2: FLdZeroAd var_F4
  loc_A30ED5: CVarStr var_104
  loc_A30ED8: ConcatVar var_114
  loc_A30EDC: LitVarStr var_124, ">"
  loc_A30EE1: ConcatVar var_134
  loc_A30EE5: CStrVarVal var_138
  loc_A30EE9: FLdPrThis
  loc_A30EEA: VCallAd Control_ID_txtSender
  loc_A30EED: FStAdFunc var_13C
  loc_A30EF0: FLdPr var_13C
  loc_A30EF3: Me.Text = from_stack_1
  loc_A30EF8: FFreeStr var_88 = ""
  loc_A30EFF: FFree1Ad var_13C
  loc_A30F02: FFreeVar var_A0 = "": var_B0 = "": var_C0 = "": var_D0 = "": var_F0 = "": var_104 = "": var_114 = ""
  loc_A30F15: Call GeneraHTML()
  loc_A30F1A: ImpAdLdRf MemVar_C3D83C
  loc_A30F1D: CDargRef
  loc_A30F21: FLdPrThis
  loc_A30F22: VCallAd Control_ID_WebBrowser1
  loc_A30F25: FStAdFunc var_13C
  loc_A30F28: FLdPr var_13C
  loc_A30F2B: LateIdCall
  loc_A30F33: FFree1Ad var_13C
  loc_A30F36: ImpAdCallFPR4 DoEvents()
  loc_A30F3B: FLdPrThis
  loc_A30F3C: VCallAd Control_ID_WebBrowser1
  loc_A30F3F: FStAdFunc var_13C
  loc_A30F42: FLdPr var_13C
  loc_A30F45: LateIdLdVar var_B0 DispID_-525 -1
  loc_A30F4C: CI4Var
  loc_A30F4E: LitI4 4
  loc_A30F53: NeI4
  loc_A30F54: FFree1Ad var_13C
  loc_A30F57: FFree1Var var_B0 = ""
  loc_A30F5A: BranchT loc_A30F36
  loc_A30F5D: LitVarStr var_A0, "Off"
  loc_A30F62: PopAdLdVar
  loc_A30F63: FLdPrThis
  loc_A30F64: VCallAd Control_ID_WebBrowser1
  loc_A30F67: FStAdFunc var_13C
  loc_A30F6A: FLdPr var_13C
  loc_A30F6D: LateIdLdVar var_B0 DispID_203 0
  loc_A30F74: VarLateMemSt .designMode
  loc_A30F78: FFree1Ad var_13C
  loc_A30F7B: FFree1Var var_B0 = ""
  loc_A30F7E: FLdPrThis
  loc_A30F7F: VCallAd Control_ID_WebBrowser1
  loc_A30F82: FStAdFunc var_13C
  loc_A30F85: FLdPr var_13C
  loc_A30F88: LateIdLdVar var_B0 DispID_203 0
  loc_A30F8F: CastAdVar Me
  loc_A30F93: FStAdFuncNoPop
  loc_A30F96: FLdPr Me
  loc_A30F99: Call dlgEnvioEmailUsuario.global_4659548Set(from_stack_1v)
  loc_A30F9E: FFreeAd var_13C = ""
  loc_A30FA5: FFree1Var var_B0 = ""
  loc_A30FA8: LitI2_Byte 1
  loc_A30FAA: FLdPr Me
  loc_A30FAD: MemStI2 global_84
  loc_A30FB0: LitI2_Byte 0
  loc_A30FB2: CUI1I2
  loc_A30FB4: FLdPr Me
  loc_A30FB7: MemStUI1
  loc_A30FBB: LitI4 &HB
  loc_A30FC0: CI2I4
  loc_A30FC1: FLdPr Me
  loc_A30FC4: Me.MousePointer = from_stack_1
  loc_A30FC9: LitI2_Byte 0
  loc_A30FCB: FLdPr Me
  loc_A30FCE: Me.Enabled = from_stack_1b
  loc_A30FD3: LitVarStr var_A0, "Generando archivo adjunto (Nota de pedido)..."
  loc_A30FD8: PopAdLdVar
  loc_A30FD9: FLdPr Me
  loc_A30FDC: VCallAd Control_ID_sBar
  loc_A30FDF: FStAdFunc var_13C
  loc_A30FE2: FLdPr var_13C
  loc_A30FE5: LateIdSt
  loc_A30FEA: FFree1Ad var_13C
  loc_A30FED: LitI2_Byte &HFF
  loc_A30FEF: FLdPr Me
  loc_A30FF2: Me.Enabled = from_stack_1b
  loc_A30FF7: LitI4 0
  loc_A30FFC: CI2I4
  loc_A30FFD: FLdPr Me
  loc_A31000: Me.MousePointer = from_stack_1
  loc_A31005: LitVarStr var_A0, "Preparado para enviar"
  loc_A3100A: PopAdLdVar
  loc_A3100B: FLdPr Me
  loc_A3100E: VCallAd Control_ID_sBar
  loc_A31011: FStAdFunc var_13C
  loc_A31014: FLdPr var_13C
  loc_A31017: LateIdSt
  loc_A3101C: FFree1Ad var_13C
  loc_A3101F: LitI2_Byte &HFF
  loc_A31021: FLdPr Me
  loc_A31024: MemStI2 global_100
  loc_A31027: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '954A30
  'Data Table: 4719D4
  loc_954A18: ILdRf Me
  loc_954A1B: FStAdNoPop
  loc_954A1F: ImpAdLdRf MemVar_C44F9C
  loc_954A22: NewIfNullPr Me
  loc_954A25: Me.Global.Unload from_stack_1
  loc_954A2A: FFree1Ad var_88
  loc_954A2D: ExitProcHresult
End Sub

Private Sub Timer1_Timer() '9ABFF8
  'Data Table: 4719D4
  loc_9ABF68: FLdPr Me
  loc_9ABF6B: MemLdUI1 global_92
  loc_9ABF6F: CI2UI1
  loc_9ABF71: LitI2_Byte 1
  loc_9ABF73: AddI2
  loc_9ABF74: CUI1I2
  loc_9ABF76: FLdPr Me
  loc_9ABF79: MemStUI1
  loc_9ABF7D: FLdRfVar var_B4
  loc_9ABF80: FLdRfVar var_B0
  loc_9ABF83: FLdPr Me
  loc_9ABF86: MemLdRfVar from_stack_1.global_92
  loc_9ABF89: CVarRef
  loc_9ABF8E: FLdPrThis
  loc_9ABF8F: VCallAd Control_ID_ImageList1
  loc_9ABF92: FStAdFunc var_88
  loc_9ABF95: FLdPr var_88
  loc_9ABF98: LateIdLdVar var_98 DispID_4 0
  loc_9ABF9F: CastAdVar Me
  loc_9ABFA3: FStAdFunc var_AC
  loc_9ABFA6: FLdPr var_AC
  loc_9ABFA9:  = Me.ListImages.ControlDefault
  loc_9ABFAE: FLdPr var_B0
  loc_9ABFB1:  = Me.Picture
  loc_9ABFB6: FLdZeroAd var_B4
  loc_9ABFB9: FStAdFuncNoPop
  loc_9ABFBC: FLdPrThis
  loc_9ABFBD: VCallAd Control_ID_Image1
  loc_9ABFC0: FStAdFunc var_BC
  loc_9ABFC3: FLdPr var_BC
  loc_9ABFC6: Me.Picture = from_stack_1
  loc_9ABFCB: FFreeAd var_88 = "": var_AC = "": var_B0 = "": var_B8 = ""
  loc_9ABFD8: FFree1Var var_98 = ""
  loc_9ABFDB: FLdPr Me
  loc_9ABFDE: MemLdUI1 global_92
  loc_9ABFE2: CI2UI1
  loc_9ABFE4: LitI2_Byte &HC
  loc_9ABFE6: EqI2
  loc_9ABFE7: BranchF loc_9ABFF5
  loc_9ABFEA: LitI2_Byte 0
  loc_9ABFEC: CUI1I2
  loc_9ABFEE: FLdPr Me
  loc_9ABFF1: MemStUI1
  loc_9ABFF5: ExitProcHresult
End Sub

Public Function MensajeGet() '472874
  MensajeGet = Mensaje
End Function

Public Sub MensajePut(Value) '472883
  Mensaje = Value
End Sub

Public Function htmFileGet() '472892
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4728A1
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4728B0
  htmFile = Value
End Sub

Public Function global_4659668Get() '4728BF
  global_4659668Get = global_4659668
End Function

Public Sub global_4659668Put(Value) '4728D9
  global_4659668 = Value
End Sub

Public Sub global_4659668Set(Value) '4728F3
  global_4659668 = Value
End Sub

Public Function iPeriInfoGet() '47290D
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '47291C
  iPeriInfo = Value
End Sub

Public Function iCodiNopeGet() '47292B
  iCodiNopeGet = iCodiNope
End Function

Public Sub iCodiNopePut(Value) '47293A
  iCodiNope = Value
End Sub

Public Function global_4659548Get() '472949
  global_4659548Get = global_4659548
End Function

Public Sub global_4659548Put(Value) '472963
  global_4659548 = Value
End Sub

Public Sub global_4659548Set(Value) '47297D
  global_4659548 = Value
End Sub

Public Function GetStringFile(value, Force) 'A1DB8C
  'Data Table: 4719D4
  loc_A1D9F0: ZeroRetVal
  loc_A1D9F2: ILdI2 Force
  loc_A1D9F5: BranchF loc_A1DA19
  loc_A1D9F8: LitI4 0
  loc_A1D9FD: LitI4 -1
  loc_A1DA02: LitI4 1
  loc_A1DA07: LitStr " "
  loc_A1DA0A: LitStr "+"
  loc_A1DA0D: ILdI4 value
  loc_A1DA10: ImpAdCallI2 Replace(, , , , , )
  loc_A1DA15: IStStr
  loc_A1DA19: LitI4 0
  loc_A1DA1E: FLdRfVar var_A0
  loc_A1DA21: ImpAdCallFPR4  = Chr()
  loc_A1DA26: LitI4 0
  loc_A1DA2B: LitI4 -1
  loc_A1DA30: LitI4 1
  loc_A1DA35: FLdRfVar var_A0
  loc_A1DA38: CStrVarVal var_A4
  loc_A1DA3C: LitStr Chr(37) & "25"
  loc_A1DA3F: ILdI4 value
  loc_A1DA42: ImpAdCallI2 Replace(, , , , , )
  loc_A1DA47: IStStr
  loc_A1DA4B: FFree1Str var_A4
  loc_A1DA4E: FFree1Var var_A0 = ""
  loc_A1DA51: LitI4 1
  loc_A1DA56: ILdI4 value
  loc_A1DA59: LitStr Chr(37)
  loc_A1DA5C: LitI4 0
  loc_A1DA61: FnInStr4
  loc_A1DA63: FStR4 var_90
  loc_A1DA66: ILdRf var_90
  loc_A1DA69: LitI4 0
  loc_A1DA6E: GtI4
  loc_A1DA6F: BranchF loc_A1DB0D
  loc_A1DA72: LitI4 1
  loc_A1DA77: ILdI4 value
  loc_A1DA7A: LitStr Chr(37)
  loc_A1DA7D: LitI4 0
  loc_A1DA82: FnInStr4
  loc_A1DA84: FStR4 var_90
  loc_A1DA87: ILdRf var_90
  loc_A1DA8A: LitI4 0
  loc_A1DA8F: NeI4
  loc_A1DA90: BranchF loc_A1DB0A
  loc_A1DA93: LitVarI2 var_A0, 2
  loc_A1DA98: ILdRf var_90
  loc_A1DA9B: LitI4 1
  loc_A1DAA0: AddI4
  loc_A1DAA1: ILdRf value
  loc_A1DAA4: CVarRef
  loc_A1DAA9: FLdRfVar var_D4
  loc_A1DAAC: ImpAdCallFPR4  = Mid(, , )
  loc_A1DAB1: FLdRfVar var_D4
  loc_A1DAB4: CStrVarTmp
  loc_A1DAB5: FStStr var_8C
  loc_A1DAB8: FFreeVar var_A0 = ""
  loc_A1DABF: LitStr "&H"
  loc_A1DAC2: ILdRf var_8C
  loc_A1DAC5: ConcatStr
  loc_A1DAC6: FStStrNoPop var_A4
  loc_A1DAC9: CI4Str
  loc_A1DACA: FLdRfVar var_A0
  loc_A1DACD: ImpAdCallFPR4  = Chr()
  loc_A1DAD2: LitI4 0
  loc_A1DAD7: LitI4 -1
  loc_A1DADC: LitI4 1
  loc_A1DAE1: FLdRfVar var_A0
  loc_A1DAE4: CStrVarVal var_DC
  loc_A1DAE8: LitStr Chr(37)
  loc_A1DAEB: ILdRf var_8C
  loc_A1DAEE: ConcatStr
  loc_A1DAEF: FStStrNoPop var_D8
  loc_A1DAF2: ILdI4 value
  loc_A1DAF5: ImpAdCallI2 Replace(, , , , , )
  loc_A1DAFA: IStStr
  loc_A1DAFE: FFreeStr var_A4 = "": var_D8 = ""
  loc_A1DB07: FFree1Var var_A0 = ""
  loc_A1DB0A: Branch loc_A1DA66
  loc_A1DB0D: LitI4 0
  loc_A1DB12: FLdRfVar var_A0
  loc_A1DB15: ImpAdCallFPR4  = Chr()
  loc_A1DB1A: LitI4 0
  loc_A1DB1F: LitI4 -1
  loc_A1DB24: LitI4 1
  loc_A1DB29: LitStr Chr(37)
  loc_A1DB2C: FLdRfVar var_A0
  loc_A1DB2F: CStrVarVal var_A4
  loc_A1DB33: ILdI4 value
  loc_A1DB36: ImpAdCallI2 Replace(, , , , , )
  loc_A1DB3B: IStStr
  loc_A1DB3F: FFree1Str var_A4
  loc_A1DB42: FFree1Var var_A0 = ""
  loc_A1DB45: LitI4 0
  loc_A1DB4A: LitI4 -1
  loc_A1DB4F: LitI4 1
  loc_A1DB54: LitStr "\"
  loc_A1DB57: LitStr "/"
  loc_A1DB5A: ILdI4 value
  loc_A1DB5D: ImpAdCallI2 Replace(, , , , , )
  loc_A1DB62: IStStr
  loc_A1DB66: LitI4 0
  loc_A1DB6B: LitI4 -1
  loc_A1DB70: LitI4 1
  loc_A1DB75: LitStr "_"
  loc_A1DB78: LitStr " "
  loc_A1DB7B: ILdI4 value
  loc_A1DB7E: ImpAdCallI2 Replace(, , , , , )
  loc_A1DB83: FStStr var_88
  loc_A1DB86: ExitProcCbHresult
End Function

Public Sub GeneraHTML() '9A3B24
  'Data Table: 4719D4
  loc_9A3AA4: LitVarStr var_94, "Generando cuerpo del mensaje..."
  loc_9A3AA9: PopAdLdVar
  loc_9A3AAA: FLdPr Me
  loc_9A3AAD: VCallAd Control_ID_sBar
  loc_9A3AB0: FStAdFunc var_A8
  loc_9A3AB3: FLdPr var_A8
  loc_9A3AB6: LateIdSt
  loc_9A3ABB: FFree1Ad var_A8
  loc_9A3ABE: ImpAdLdRf MemVar_C3D03C
  loc_9A3AC1: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_9A3AC6: FLdRfVar var_A8
  loc_9A3AC9: LitI2_Byte 0
  loc_9A3ACB: LitI2_Byte &HFF
  loc_9A3ACD: ImpAdLdI4 MemVar_C3D83C
  loc_9A3AD0: FLdPr Me
  loc_9A3AD3: MemLdRfVar from_stack_1.global_96
  loc_9A3AD6: NewIfNullPr IFileSystem3
  loc_9A3AD9: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9A3ADE: ILdRf var_A8
  loc_9A3AE1: FLdPr Me
  loc_9A3AE4: MemStVarAd
  loc_9A3AE8: FFree1Ad var_A8
  loc_9A3AEB: Call Proc_91_26_9A6458()
  loc_9A3AF0: Call Proc_91_25_97A358()
  loc_9A3AF5: Call Proc_91_27_973C84()
  loc_9A3AFA: FLdPr Me
  loc_9A3AFD: MemLdRfVar from_stack_1.htmFile
  loc_9A3B00: LdPrVar
  loc_9A3B02: LateMemCall
  loc_9A3B08: LitVarStr var_94, vbNullString
  loc_9A3B0D: PopAdLdVar
  loc_9A3B0E: FLdPr Me
  loc_9A3B11: VCallAd Control_ID_sBar
  loc_9A3B14: FStAdFunc var_A8
  loc_9A3B17: FLdPr var_A8
  loc_9A3B1A: LateIdSt
  loc_9A3B1F: FFree1Ad var_A8
  loc_9A3B22: ExitProcHresult
End Sub

Private Function Proc_91_23_B59CBC() 'B59CBC
  'Data Table: 4719D4
  loc_B59214: OnErrorGoto loc_B59C2F
  loc_B59219: LitVarStr var_B4, "Enviando..."
  loc_B5921E: PopAdLdVar
  loc_B5921F: FLdPr Me
  loc_B59222: VCallAd Control_ID_sBar
  loc_B59225: FStAdFunc var_C8
  loc_B59228: FLdPr var_C8
  loc_B5922B: LateIdSt
  loc_B59230: FFree1Ad var_C8
  loc_B59235: LitI4 &HB
  loc_B5923A: CI2I4
  loc_B5923B: FLdPr Me
  loc_B5923E: Me.MousePointer = from_stack_1
  loc_B59245: LitI2_Byte 0
  loc_B59247: FLdPr Me
  loc_B5924A: Me.Enabled = from_stack_1b
  loc_B59251: LitI2_Byte 3
  loc_B59253: FLdPr Me
  loc_B59256: VCallAd Control_ID_Shape1
  loc_B59259: FStAdFunc var_C8
  loc_B5925C: FLdPr var_C8
  loc_B5925F: Me.BorderWidth = from_stack_1
  loc_B59264: FFree1Ad var_C8
  loc_B59269: LitI2_Byte &HFF
  loc_B5926B: FLdPr Me
  loc_B5926E: VCallAd Control_ID_EnviandoFra
  loc_B59271: FStAdFunc var_C8
  loc_B59274: FLdPr var_C8
  loc_B59277: Me.Visible = from_stack_1b
  loc_B5927C: FFree1Ad var_C8
  loc_B59281: FLdRfVar var_F4
  loc_B59284: FLdRfVar var_F0
  loc_B59287: LitVarI2 var_E8, 1
  loc_B5928C: FLdPrThis
  loc_B5928D: VCallAd Control_ID_ImageList1
  loc_B59290: FStAdFunc var_C8
  loc_B59293: FLdPr var_C8
  loc_B59296: LateIdLdVar var_D8 DispID_4 0
  loc_B5929D: CastAdVar Me
  loc_B592A1: FStAdFunc var_EC
  loc_B592A4: FLdPr var_EC
  loc_B592A7:  = Me.ListImages.ControlDefault
  loc_B592AC: FLdPr var_F0
  loc_B592AF:  = Me.Picture
  loc_B592B4: FLdZeroAd var_F4
  loc_B592B7: FStAdFuncNoPop
  loc_B592BA: FLdPrThis
  loc_B592BB: VCallAd Control_ID_Image1
  loc_B592BE: FStAdFunc var_FC
  loc_B592C1: FLdPr var_FC
  loc_B592C4: Me.Picture = from_stack_1
  loc_B592C9: FFreeAd var_C8 = "": var_EC = "": var_F0 = "": var_F8 = ""
  loc_B592D6: FFreeVar var_D8 = ""
  loc_B592DF: LitI2_Byte &HFF
  loc_B592E1: FLdPr Me
  loc_B592E4: VCallAd Control_ID_Timer1
  loc_B592E7: FStAdFunc var_C8
  loc_B592EA: FLdPr var_C8
  loc_B592ED: Me.Enabled = from_stack_1b
  loc_B592F2: FFree1Ad var_C8
  loc_B592F7: ImpAdCallFPR4 DoEvents()
  loc_B592FE: LitI4 0
  loc_B59303: LitStr "CDO.Configuration"
  loc_B59306: FLdRfVar var_D8
  loc_B59309: ImpAdCallFPR4  = CreateObject(, )
  loc_B5930E: FLdRfVar var_D8
  loc_B59311: CAdVar
  loc_B59313: FStAd var_88 
  loc_B59317: FFree1Var var_D8 = ""
  loc_B5931C: FLdPr Me
  loc_B5931F: MemLdRfVar from_stack_1.eUsua
  loc_B59322: NewIfNullRf
  loc_B59326: ImpAdLdI4 MemVar_C3D03C
  loc_B59329: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_B59330: FLdPr var_88
  loc_B59333: LateMemLdVar
  loc_B59338: FStVarZero
  loc_B5933C: FLdRfVar var_10C
  loc_B5933F: FStR4 var_110
  loc_B59344: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B59347: LitStr "smtpserver"
  loc_B5934A: ConcatStr
  loc_B5934B: CVarStr var_D8
  loc_B5934E: PopAdLdVar
  loc_B5934F: FLdRfVar var_114
  loc_B59352: FLdPr Me
  loc_B59355: MemLdRfVar from_stack_1.global_88
  loc_B59358: NewIfNullPr tblusuario
  loc_B5935B: from_stack_1v = tblusuario.SemaUsuaGet()
  loc_B59360: FLdZeroAd var_114
  loc_B59363: CVarStr var_E8
  loc_B59366: PopAdLdVar
  loc_B59367: ILdRf var_110
  loc_B5936A: VarLateMemCallSt
  loc_B59370: FFreeVar var_D8 = ""
  loc_B59379: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B5937C: LitStr "smtpserverport"
  loc_B5937F: ConcatStr
  loc_B59380: CVarStr var_D8
  loc_B59383: PopAdLdVar
  loc_B59384: FLdRfVar var_114
  loc_B59387: FLdPr Me
  loc_B5938A: MemLdRfVar from_stack_1.global_88
  loc_B5938D: NewIfNullPr tblusuario
  loc_B59390: from_stack_1v = tblusuario.PumaUsuaGet()
  loc_B59395: FLdZeroAd var_114
  loc_B59398: CVarStr var_E8
  loc_B5939B: PopAdLdVar
  loc_B5939C: ILdRf var_110
  loc_B5939F: VarLateMemCallSt
  loc_B593A5: FFreeVar var_D8 = ""
  loc_B593AE: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B593B1: LitStr "sendusing"
  loc_B593B4: ConcatStr
  loc_B593B5: CVarStr var_D8
  loc_B593B8: PopAdLdVar
  loc_B593B9: LitVarI2 var_C4, 2
  loc_B593BE: PopAdLdVar
  loc_B593BF: ILdRf var_110
  loc_B593C2: VarLateMemCallSt
  loc_B593C8: FFree1Var var_D8 = ""
  loc_B593CD: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B593D0: LitStr "sendusername"
  loc_B593D3: ConcatStr
  loc_B593D4: CVarStr var_D8
  loc_B593D7: PopAdLdVar
  loc_B593D8: FLdRfVar var_114
  loc_B593DB: FLdPr Me
  loc_B593DE: MemLdRfVar from_stack_1.global_88
  loc_B593E1: NewIfNullPr tblusuario
  loc_B593E4: from_stack_1v = tblusuario.UsmaUsuaGet()
  loc_B593E9: FLdZeroAd var_114
  loc_B593EC: CVarStr var_E8
  loc_B593EF: PopAdLdVar
  loc_B593F0: ILdRf var_110
  loc_B593F3: VarLateMemCallSt
  loc_B593F9: FFreeVar var_D8 = ""
  loc_B59402: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B59405: LitStr "sendpassword"
  loc_B59408: ConcatStr
  loc_B59409: CVarStr var_D8
  loc_B5940C: PopAdLdVar
  loc_B5940D: FLdRfVar var_114
  loc_B59410: FLdPr Me
  loc_B59413: MemLdRfVar from_stack_1.global_88
  loc_B59416: NewIfNullPr tblusuario
  loc_B59419: from_stack_1v = tblusuario.ComaUsuaGet()
  loc_B5941E: FLdZeroAd var_114
  loc_B59421: CVarStr var_E8
  loc_B59424: PopAdLdVar
  loc_B59425: ILdRf var_110
  loc_B59428: VarLateMemCallSt
  loc_B5942E: FFreeVar var_D8 = ""
  loc_B59437: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B5943A: LitStr "smtpusessl"
  loc_B5943D: ConcatStr
  loc_B5943E: CVarStr var_D8
  loc_B59441: PopAdLdVar
  loc_B59442: FLdRfVar var_114
  loc_B59445: FLdPr Me
  loc_B59448: MemLdRfVar from_stack_1.global_88
  loc_B5944B: NewIfNullPr tblusuario
  loc_B5944E: from_stack_1v = tblusuario.UsslUsuaGet()
  loc_B59453: FLdZeroAd var_114
  loc_B59456: CVarStr var_E8
  loc_B59459: PopAdLdVar
  loc_B5945A: ILdRf var_110
  loc_B5945D: VarLateMemCallSt
  loc_B59463: FFreeVar var_D8 = ""
  loc_B5946C: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B5946F: LitStr "smtpsuetls"
  loc_B59472: ConcatStr
  loc_B59473: CVarStr var_D8
  loc_B59476: PopAdLdVar
  loc_B59477: FLdRfVar var_114
  loc_B5947A: FLdPr Me
  loc_B5947D: MemLdRfVar from_stack_1.global_88
  loc_B59480: NewIfNullPr tblusuario
  loc_B59483: from_stack_1v = tblusuario.UtlsUsuaGet()
  loc_B59488: FLdZeroAd var_114
  loc_B5948B: CVarStr var_E8
  loc_B5948E: PopAdLdVar
  loc_B5948F: ILdRf var_110
  loc_B59492: VarLateMemCallSt
  loc_B59498: FFreeVar var_D8 = ""
  loc_B594A1: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B594A4: LitStr "smtpconnectiontimeout"
  loc_B594A7: ConcatStr
  loc_B594A8: CVarStr var_D8
  loc_B594AB: PopAdLdVar
  loc_B594AC: LitVarI2 var_C4, 30
  loc_B594B1: PopAdLdVar
  loc_B594B2: ILdRf var_110
  loc_B594B5: VarLateMemCallSt
  loc_B594BB: FFree1Var var_D8 = ""
  loc_B594C0: LitStr "http://schemas.microsoft.com/cdo/configuration/"
  loc_B594C3: LitStr "smtpauthenticate"
  loc_B594C6: ConcatStr
  loc_B594C7: CVarStr var_D8
  loc_B594CA: PopAdLdVar
  loc_B594CB: LitVarStr var_C4, "1"
  loc_B594D0: PopAdLdVar
  loc_B594D1: ILdRf var_110
  loc_B594D4: VarLateMemCallSt
  loc_B594DA: FFree1Var var_D8 = ""
  loc_B594DF: LitI4 0
  loc_B594E4: FStR4 var_110
  loc_B594E9: FLdPr var_88
  loc_B594EC: LateMemLdVar
  loc_B594F1: LdPrVar
  loc_B594F3: LateMemCall
  loc_B594F9: FFree1Var var_E8 = ""
  loc_B594FE: LitI4 0
  loc_B59503: LitStr "CDO.Message"
  loc_B59506: FLdRfVar var_D8
  loc_B59509: ImpAdCallFPR4  = CreateObject(, )
  loc_B5950E: FLdRfVar var_D8
  loc_B59511: CAdVar
  loc_B59513: FStAd var_8C 
  loc_B59517: FFree1Var var_D8 = ""
  loc_B5951C: ILdRf var_8C
  loc_B5951F: FStAd var_128 
  loc_B59525: ILdRf var_88
  loc_B59528: CVarAd
  loc_B5952C: PopAdLdVar
  loc_B5952D: FLdPr var_128
  loc_B59530: LateMemSt
  loc_B59536: FLdRfVar var_114
  loc_B59539: FLdPr Me
  loc_B5953C: VCallAd Control_ID_txtSender
  loc_B5953F: FStAdFunc var_C8
  loc_B59542: FLdPr var_C8
  loc_B59545:  = Me.Text
  loc_B5954A: FLdZeroAd var_114
  loc_B5954D: CVarStr var_D8
  loc_B59550: PopAdLdVar
  loc_B59551: FLdPr var_128
  loc_B59554: LateMemSt
  loc_B59558: FFree1Ad var_C8
  loc_B5955B: FFree1Var var_D8 = ""
  loc_B59560: FLdRfVar var_114
  loc_B59563: FLdPr Me
  loc_B59566: VCallAd Control_ID_txtRecipient
  loc_B59569: FStAdFunc var_C8
  loc_B5956C: FLdPr var_C8
  loc_B5956F:  = Me.Text
  loc_B59574: FLdZeroAd var_114
  loc_B59577: CVarStr var_D8
  loc_B5957A: PopAdLdVar
  loc_B5957B: FLdPr var_128
  loc_B5957E: LateMemSt
  loc_B59582: FFree1Ad var_C8
  loc_B59585: FFree1Var var_D8 = ""
  loc_B5958A: LitStr "tesoreriaguaymallen@yahoo.com.ar"
  loc_B5958D: LitStr vbNullString
  loc_B59590: NeStr
  loc_B59592: BranchF loc_B595A4
  loc_B59597: LitVarStr var_B4, "tesoreriaguaymallen@yahoo.com.ar"
  loc_B5959C: PopAdLdVar
  loc_B5959D: FLdPr var_128
  loc_B595A0: LateMemSt
  loc_B595A6: FLdRfVar var_114
  loc_B595A9: FLdPr Me
  loc_B595AC: VCallAd Control_ID_txtSubject
  loc_B595AF: FStAdFunc var_C8
  loc_B595B2: FLdPr var_C8
  loc_B595B5:  = Me.Text
  loc_B595BA: FLdZeroAd var_114
  loc_B595BD: CVarStr var_D8
  loc_B595C0: PopAdLdVar
  loc_B595C1: FLdPr var_128
  loc_B595C4: LateMemSt
  loc_B595C8: FFree1Ad var_C8
  loc_B595CB: FFree1Var var_D8 = ""
  loc_B595D0: FLdRfVar var_114
  loc_B595D3: FLdRfVar var_C8
  loc_B595D6: FLdPr Me
  loc_B595D9: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B595DE: FLdPr var_C8
  loc_B595E1: LateIdLdVar var_D8 DispID_1075 0
  loc_B595E8: CastAdVar Me
  loc_B595EC: FStAdFunc var_EC
  loc_B595EF: FLdPr var_EC
  loc_B595F2:  = Me.ScaleTop
  loc_B595F7: FLdZeroAd var_114
  loc_B595FA: FStStr var_9C
  loc_B595FD: FFreeAd var_C8 = ""
  loc_B59604: FFree1Var var_D8 = ""
  loc_B59609: LitVarI2 var_C4, 0
  loc_B5960E: PopAdLdVar
  loc_B5960F: FLdRfVar var_F0
  loc_B59612: LitVarStr var_B4, "BODY"
  loc_B59617: PopAdLdVar
  loc_B59618: FLdRfVar var_C8
  loc_B5961B: FLdPr Me
  loc_B5961E: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B59623: FLdPr var_C8
  loc_B59626: LateIdLdVar var_D8 DispID_1003 0
  loc_B5962D: CastAdVar Me
  loc_B59631: FStAdFunc var_EC
  loc_B59634: FLdPr var_EC
  loc_B5963C: FLdPr var_F0
  loc_B5963F: LateIdCallLdVar
  loc_B59649: VarLateMemLdVar var_148, .background
  loc_B5964F: LitVarStr var_138, vbNullString
  loc_B59654: HardType
  loc_B59655: NeVarBool
  loc_B59657: FFreeAd var_C8 = "": var_EC = ""
  loc_B59660: FFreeVar var_D8 = "": var_E8 = ""
  loc_B59669: BranchF loc_B597C6
  loc_B5966E: LitVarI2 var_C4, 0
  loc_B59673: PopAdLdVar
  loc_B59674: FLdRfVar var_F0
  loc_B59677: LitVarStr var_B4, "BODY"
  loc_B5967C: PopAdLdVar
  loc_B5967D: FLdRfVar var_C8
  loc_B59680: FLdPr Me
  loc_B59683: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B59688: FLdPr var_C8
  loc_B5968B: LateIdLdVar var_D8 DispID_1003 0
  loc_B59692: CastAdVar Me
  loc_B59696: FStAdFunc var_EC
  loc_B59699: FLdPr var_EC
  loc_B596A1: FLdPr var_F0
  loc_B596A4: LateIdCallLdVar
  loc_B596AE: VarLateMemLdVar var_148, .background
  loc_B596B4: CStrVarTmp
  loc_B596B5: FStStr var_A4
  loc_B596B8: FFreeAd var_C8 = "": var_EC = ""
  loc_B596C1: FFreeVar var_D8 = "": var_E8 = ""
  loc_B596CC: ILdRf var_A4
  loc_B596CF: FLdRfVar var_114
  loc_B596D2: CStr2Ansi
  loc_B596D3: ILdRf var_114
  loc_B596D6: ImpAdCallI2 PathIsURL()
  loc_B596DB: FStR4 var_15C
  loc_B596DE: SetLastSystemError
  loc_B596DF: ILdRf var_114
  loc_B596E2: FLdRfVar var_A4
  loc_B596E5: CStr2Uni
  loc_B596E7: ILdRf var_15C
  loc_B596EA: LitI4 1
  loc_B596EF: NeI4
  loc_B596F0: FFree1Str var_114
  loc_B596F3: BranchF loc_B597C4
  loc_B596F8: LitStr "cid:"
  loc_B596FB: LitStr "BackGround"
  loc_B596FE: ConcatStr
  loc_B596FF: CVarStr var_E8
  loc_B59702: PopAdLdVar
  loc_B59703: LitVarI2 var_C4, 0
  loc_B59708: PopAdLdVar
  loc_B59709: FLdRfVar var_F0
  loc_B5970C: LitVarStr var_B4, "BODY"
  loc_B59711: PopAdLdVar
  loc_B59712: FLdRfVar var_C8
  loc_B59715: FLdPr Me
  loc_B59718: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B5971D: FLdPr var_C8
  loc_B59720: LateIdLdVar var_D8 DispID_1003 0
  loc_B59727: CastAdVar Me
  loc_B5972B: FStAdFunc var_EC
  loc_B5972E: FLdPr var_EC
  loc_B59736: FLdPr var_F0
  loc_B59739: LateIdCallLdVar
  loc_B59743: VarLateMemSt .background
  loc_B59747: FFreeAd var_C8 = "": var_EC = ""
  loc_B59750: FFreeVar var_D8 = "": var_E8 = ""
  loc_B5975B: FLdRfVar var_A4
  loc_B5975E: CDargRef
  loc_B59762: LitVarStr var_C4, "BackGround"
  loc_B59767: PopAdLdVar
  loc_B59768: LitVarI2 var_138, 1
  loc_B5976D: PopAdLdVar
  loc_B5976E: FLdPr var_128
  loc_B59771: LateMemCallLdVar var_D8, .AddRelatedBodyPart
  loc_B59779: CAdVar
  loc_B5977B: FStAd var_90 
  loc_B5977F: FFree1Var var_D8 = ""
  loc_B59784: FLdPr var_90
  loc_B59787: LateMemLdVar
  loc_B5978C: FStVarZero
  loc_B59790: FLdRfVar var_17C
  loc_B59793: FStR4 var_180
  loc_B59798: LitVarStr var_B4, "urn:schemas:mailheader:Content-ID"
  loc_B5979D: PopAdLdVar
  loc_B5979E: LitVarStr var_124, "BackGround"
  loc_B597A3: PopAdLdVar
  loc_B597A4: ILdRf var_180
  loc_B597A7: VarLateMemCallSt
  loc_B597AF: ILdRf var_180
  loc_B597B2: LdPrVar
  loc_B597B4: LateMemCall
  loc_B597BC: LitI4 0
  loc_B597C1: FStR4 var_180
  loc_B597CA: LitI4 0
  loc_B597CF: FLdRfVar var_94
  loc_B597D2: FLdRfVar var_15C
  loc_B597D5: FLdRfVar var_C8
  loc_B597D8: FLdPr Me
  loc_B597DB: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B597E0: FLdPr var_C8
  loc_B597E3: LateIdLdVar var_D8 DispID_1011 0
  loc_B597EA: CastAdVar Me
  loc_B597EE: FStAdFunc var_EC
  loc_B597F1: FLdPr var_EC
  loc_B597F9: ILdRf var_15C
  loc_B597FC: LitI4 1
  loc_B59801: SubI4
  loc_B59802: FFreeAd var_C8 = ""
  loc_B59809: FFree1Var var_D8 = ""
  loc_B5980C: ForI4 var_188
  loc_B59814: FLdRfVar var_F0
  loc_B59817: LitVar_Missing var_C4
  loc_B5981A: PopAdLdVar
  loc_B5981B: ILdRf var_94
  loc_B5981E: CVarI4
  loc_B59822: PopAdLdVar
  loc_B59823: FLdRfVar var_C8
  loc_B59826: FLdPr Me
  loc_B59829: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B5982E: FLdPr var_C8
  loc_B59831: LateIdLdVar var_D8 DispID_1011 0
  loc_B59838: CastAdVar Me
  loc_B5983C: FStAdFunc var_EC
  loc_B5983F: FLdPr var_EC
  loc_B59847: FLdPr var_F0
  loc_B5984A: LateMemLdVar
  loc_B5984F: CStrVarTmp
  loc_B59850: FStStr var_A4
  loc_B59853: FFreeAd var_C8 = "": var_EC = ""
  loc_B5985C: FFreeVar var_D8 = ""
  loc_B59865: LitI4 8
  loc_B5986A: ILdRf var_A4
  loc_B5986D: ImpAdCallI2 Left$(, )
  loc_B59872: FStStrNoPop var_114
  loc_B59875: LitStr "file:///"
  loc_B59878: EqStr
  loc_B5987A: FFree1Str var_114
  loc_B5987D: BranchF loc_B5999C
  loc_B59882: FLdRfVar var_D8
  loc_B59885: FLdRfVar var_A4
  loc_B59888: Call Proc_91_24_9A2574()
  loc_B5988D: FLdRfVar var_D8
  loc_B59890: CStrVarTmp
  loc_B59891: FStStr var_98
  loc_B59894: FFree1Var var_D8 = ""
  loc_B59899: ILdRf var_98
  loc_B5989C: LitStr vbNullString
  loc_B5989F: NeStr
  loc_B598A1: BranchF loc_B5999A
  loc_B598A6: LitStr "cid:"
  loc_B598A9: ILdRf var_98
  loc_B598AC: ConcatStr
  loc_B598AD: FStStrNoPop var_114
  loc_B598B0: ILdRf var_94
  loc_B598B3: CStrI4
  loc_B598B5: FStStrNoPop var_18C
  loc_B598B8: ConcatStr
  loc_B598B9: CVarStr var_E8
  loc_B598BC: PopAdLdVar
  loc_B598BD: FLdRfVar var_F0
  loc_B598C0: LitVar_Missing var_C4
  loc_B598C3: PopAdLdVar
  loc_B598C4: ILdRf var_94
  loc_B598C7: CVarI4
  loc_B598CB: PopAdLdVar
  loc_B598CC: FLdRfVar var_C8
  loc_B598CF: FLdPr Me
  loc_B598D2: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B598D7: FLdPr var_C8
  loc_B598DA: LateIdLdVar var_D8 DispID_1011 0
  loc_B598E1: CastAdVar Me
  loc_B598E5: FStAdFunc var_EC
  loc_B598E8: FLdPr var_EC
  loc_B598F0: FLdPr var_F0
  loc_B598F3: LateMemSt
  loc_B598F7: FFreeStr var_114 = ""
  loc_B598FE: FFreeAd var_C8 = "": var_EC = ""
  loc_B59907: FFreeVar var_D8 = ""
  loc_B59910: FLdRfVar var_A4
  loc_B59913: CDargRef
  loc_B59917: ILdRf var_98
  loc_B5991A: ILdRf var_94
  loc_B5991D: CStrI4
  loc_B5991F: FStStrNoPop var_114
  loc_B59922: ConcatStr
  loc_B59923: CVarStr var_D8
  loc_B59926: PopAdLdVar
  loc_B59927: LitVarI2 var_124, 1
  loc_B5992C: PopAdLdVar
  loc_B5992D: FLdPr var_128
  loc_B59930: LateMemCallLdVar var_E8, .AddRelatedBodyPart
  loc_B59938: CAdVar
  loc_B5993A: FStAd var_90 
  loc_B5993E: FFree1Str var_114
  loc_B59941: FFreeVar var_D8 = ""
  loc_B5994A: FLdPr var_90
  loc_B5994D: LateMemLdVar
  loc_B59952: FStVarZero
  loc_B59956: FLdRfVar var_19C
  loc_B59959: FStR4 var_1A0
  loc_B5995E: LitVarStr var_B4, "urn:schemas:mailheader:Content-ID"
  loc_B59963: PopAdLdVar
  loc_B59964: ILdRf var_98
  loc_B59967: ILdRf var_94
  loc_B5996A: CStrI4
  loc_B5996C: FStStrNoPop var_114
  loc_B5996F: ConcatStr
  loc_B59970: CVarStr var_D8
  loc_B59973: PopAdLdVar
  loc_B59974: ILdRf var_1A0
  loc_B59977: VarLateMemCallSt
  loc_B5997D: FFree1Str var_114
  loc_B59980: FFree1Var var_D8 = ""
  loc_B59985: ILdRf var_1A0
  loc_B59988: LdPrVar
  loc_B5998A: LateMemCall
  loc_B59992: LitI4 0
  loc_B59997: FStR4 var_1A0
  loc_B599A0: FLdRfVar var_94
  loc_B599A3: NextI4 var_188, loc_B59812
  loc_B599AA: FLdRfVar var_114
  loc_B599AD: FLdRfVar var_C8
  loc_B599B0: FLdPr Me
  loc_B599B3: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B599B8: FLdPr var_C8
  loc_B599BB: LateIdLdVar var_D8 DispID_1075 0
  loc_B599C2: CastAdVar Me
  loc_B599C6: FStAdFunc var_EC
  loc_B599C9: FLdPr var_EC
  loc_B599CC:  = Me.ScaleTop
  loc_B599D1: FLdZeroAd var_114
  loc_B599D4: CVarStr var_E8
  loc_B599D7: PopAdLdVar
  loc_B599D8: FLdPr var_128
  loc_B599DB: LateMemSt
  loc_B599DF: FFreeAd var_C8 = ""
  loc_B599E6: FFreeVar var_D8 = ""
  loc_B599EF: ILdRf var_9C
  loc_B599F2: FLdRfVar var_C8
  loc_B599F5: FLdPr Me
  loc_B599F8: from_stack_1v = dlgEnvioEmailUsuario.global_4659548Get()
  loc_B599FD: FLdPr var_C8
  loc_B59A00: LateIdLdVar var_D8 DispID_1004 0
  loc_B59A07: CastAdVar Me
  loc_B59A0B: FStAdFunc var_EC
  loc_B59A0E: FLdPr var_EC
  loc_B59A11: Me.CurrentX = from_stack_1s
  loc_B59A16: FFreeAd var_C8 = ""
  loc_B59A1D: FFree1Var var_D8 = ""
  loc_B59A22: FLdRfVar var_114
  loc_B59A25: FLdPr Me
  loc_B59A28: VCallAd Control_ID_txtAdjunto
  loc_B59A2B: FStAdFunc var_C8
  loc_B59A2E: FLdPr var_C8
  loc_B59A31:  = Me.Text
  loc_B59A36: ILdRf var_114
  loc_B59A39: LitStr vbNullString
  loc_B59A3C: NeStr
  loc_B59A3E: FFree1Str var_114
  loc_B59A41: FFree1Ad var_C8
  loc_B59A44: BranchF loc_B59AD4
  loc_B59A49: FLdRfVar var_1B0
  loc_B59A4C: FLdRfVar var_C8
  loc_B59A4F: LitI4 2
  loc_B59A54: FLdPr Me
  loc_B59A57: MemLdRfVar from_stack_1.global_96
  loc_B59A5A: NewIfNullPr IFileSystem3
  loc_B59A5D: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_B59A62: FLdPr var_C8
  loc_B59A65:  = Me.Path
  loc_B59A6A: FLdRfVar var_1B8
  loc_B59A6D: LitStr "Nota de pedido "
  loc_B59A70: FLdPr Me
  loc_B59A73: MemLdI2 iPeriInfo
  loc_B59A76: CStrUI1
  loc_B59A78: FStStrNoPop var_114
  loc_B59A7B: ConcatStr
  loc_B59A7C: FStStrNoPop var_18C
  loc_B59A7F: LitStr "-"
  loc_B59A82: ConcatStr
  loc_B59A83: FStStrNoPop var_1A4
  loc_B59A86: FLdPr Me
  loc_B59A89: MemLdI2 iCodiNope
  loc_B59A8C: CStrUI1
  loc_B59A8E: FStStrNoPop var_1A8
  loc_B59A91: ConcatStr
  loc_B59A92: FStStrNoPop var_1AC
  loc_B59A95: LitStr ".pdf"
  loc_B59A98: ConcatStr
  loc_B59A99: FStStrNoPop var_1B4
  loc_B59A9C: ILdRf var_1B0
  loc_B59A9F: FLdPr Me
  loc_B59AA2: MemLdRfVar from_stack_1.global_96
  loc_B59AA5: NewIfNullPr IFileSystem3
  loc_B59AA8: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B59AAD: FLdZeroAd var_1B8
  loc_B59AB0: CVarStr var_D8
  loc_B59AB3: PopAdLdVar
  loc_B59AB4: FLdPr var_128
  loc_B59AB7: LateMemCall
  loc_B59ABD: FFreeStr var_114 = "": var_18C = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_B59ACE: FFree1Ad var_C8
  loc_B59AD1: FFree1Var var_D8 = ""
  loc_B59AD6: LitVarStr var_B4, "urn:schemas:httpmail:priority"
  loc_B59ADB: PopAdLdVar
  loc_B59ADC: FLdPr Me
  loc_B59ADF: MemLdI2 global_84
  loc_B59AE2: LitI2_Byte 1
  loc_B59AE4: SubI2
  loc_B59AE5: CVarI2 var_124
  loc_B59AE8: PopAdLdVar
  loc_B59AE9: FLdPr var_128
  loc_B59AEC: LateMemCallSt
  loc_B59AF4: LitVarStr var_B4, "urn:schemas:mailheader:X-Priority"
  loc_B59AF9: PopAdLdVar
  loc_B59AFA: FLdPr Me
  loc_B59AFD: MemLdI2 global_84
  loc_B59B00: LitI2_Byte 1
  loc_B59B02: SubI2
  loc_B59B03: CVarI2 var_124
  loc_B59B06: PopAdLdVar
  loc_B59B07: FLdPr var_128
  loc_B59B0A: LateMemCallSt
  loc_B59B12: LitVarStr var_B4, "urn:schemas:httpmail:importance"
  loc_B59B17: PopAdLdVar
  loc_B59B18: FLdPr Me
  loc_B59B1B: MemLdI2 global_84
  loc_B59B1E: CVarI2 var_124
  loc_B59B21: PopAdLdVar
  loc_B59B22: FLdPr var_128
  loc_B59B25: LateMemCallSt
  loc_B59B2D: LitI2_Byte 0
  loc_B59B2F: BranchF loc_B59B6C
  loc_B59B34: LitVarStr var_B4, "urn:schemas:mailheader:disposition-notification-to"
  loc_B59B39: PopAdLdVar
  loc_B59B3A: FLdPr var_128
  loc_B59B3D: LateMemLdVar
  loc_B59B42: PopAdLdVar
  loc_B59B43: FLdPr var_128
  loc_B59B46: LateMemCallSt
  loc_B59B4C: FFree1Var var_D8 = ""
  loc_B59B51: LitVarStr var_B4, "urn:schemas:mailheader:return-receipt-to"
  loc_B59B56: PopAdLdVar
  loc_B59B57: FLdPr var_128
  loc_B59B5A: LateMemLdVar
  loc_B59B5F: PopAdLdVar
  loc_B59B60: FLdPr var_128
  loc_B59B63: LateMemCallSt
  loc_B59B69: FFree1Var var_D8 = ""
  loc_B59B70: FLdPr var_128
  loc_B59B73: LateMemLdVar
  loc_B59B78: LdPrVar
  loc_B59B7A: LateMemCall
  loc_B59B80: FFree1Var var_E8 = ""
  loc_B59B85: FLdPr var_128
  loc_B59B88: LateMemCall
  loc_B59B90: LitNothing
  loc_B59B92: FStAd var_128 
  loc_B59B98: LitI2_Byte 1
  loc_B59B9A: FLdPr Me
  loc_B59B9D: VCallAd Control_ID_Shape1
  loc_B59BA0: FStAdFunc var_C8
  loc_B59BA3: FLdPr var_C8
  loc_B59BA6: Me.BorderWidth = from_stack_1
  loc_B59BAB: FFree1Ad var_C8
  loc_B59BB0: LitI2_Byte 0
  loc_B59BB2: FLdPr Me
  loc_B59BB5: VCallAd Control_ID_EnviandoFra
  loc_B59BB8: FStAdFunc var_C8
  loc_B59BBB: FLdPr var_C8
  loc_B59BBE: Me.Visible = from_stack_1b
  loc_B59BC3: FFree1Ad var_C8
  loc_B59BC8: LitI2_Byte 0
  loc_B59BCA: FLdPr Me
  loc_B59BCD: VCallAd Control_ID_Timer1
  loc_B59BD0: FStAdFunc var_C8
  loc_B59BD3: FLdPr var_C8
  loc_B59BD6: Me.Enabled = from_stack_1b
  loc_B59BDB: FFree1Ad var_C8
  loc_B59BE0: LitI2_Byte &HFF
  loc_B59BE2: FLdPr Me
  loc_B59BE5: Me.Enabled = from_stack_1b
  loc_B59BEC: FLdPr Me
  loc_B59BEF: VCallAd Control_ID_cmdSalir
  loc_B59BF2: FStAdFunc var_C8
  loc_B59BF5: FLdPr var_C8
  loc_B59BF8: Me.SetFocus
  loc_B59BFD: FFree1Ad var_C8
  loc_B59C02: LitI4 0
  loc_B59C07: CI2I4
  loc_B59C08: FLdPr Me
  loc_B59C0B: Me.MousePointer = from_stack_1
  loc_B59C12: LitVarStr var_B4, "Mensaje enviado."
  loc_B59C17: PopAdLdVar
  loc_B59C18: FLdPr Me
  loc_B59C1B: VCallAd Control_ID_sBar
  loc_B59C1E: FStAdFunc var_C8
  loc_B59C21: FLdPr var_C8
  loc_B59C24: LateIdSt
  loc_B59C29: FFree1Ad var_C8
  loc_B59C2E: ExitProcHresult
  loc_B59C31: LitVar_Missing var_158
  loc_B59C34: LitVar_Missing var_148
  loc_B59C37: LitVar_Missing var_E8
  loc_B59C3A: LitI4 0
  loc_B59C3F: LitStr "Error: "
  loc_B59C42: FLdRfVar var_15C
  loc_B59C45: ImpAdCallI2 Err 'rtcErrObj
  loc_B59C4A: FStAdFunc var_C8
  loc_B59C4D: FLdPr var_C8
  loc_B59C50:  = Err.Number
  loc_B59C55: ILdRf var_15C
  loc_B59C58: CStrI4
  loc_B59C5A: FStStrNoPop var_114
  loc_B59C5D: ConcatStr
  loc_B59C5E: FStStrNoPop var_18C
  loc_B59C61: LitStr ": "
  loc_B59C64: ConcatStr
  loc_B59C65: FStStrNoPop var_1A8
  loc_B59C68: FLdRfVar var_1A4
  loc_B59C6B: ImpAdCallI2 Err 'rtcErrObj
  loc_B59C70: FStAdFunc var_EC
  loc_B59C73: FLdPr var_EC
  loc_B59C76:  = Err.Description
  loc_B59C7B: ILdRf var_1A4
  loc_B59C7E: ConcatStr
  loc_B59C7F: CVarStr var_D8
  loc_B59C82: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B59C87: FFreeStr var_114 = "": var_18C = "": var_1A8 = ""
  loc_B59C92: FFreeAd var_C8 = ""
  loc_B59C99: FFreeVar var_D8 = "": var_E8 = "": var_148 = ""
  loc_B59CA6: Resume
  loc_B59CAC: LitI2_Byte &HFF
  loc_B59CAE: FLdPr Me
  loc_B59CB1: Me.Enabled = from_stack_1b
  loc_B59CB8: ExitProcHresult
End Function

Private Function Proc_91_24_9A2574(arg_C) '9A2574
  'Data Table: 4719D4
  loc_9A2508: ZeroRetValVar
  loc_9A250A: LitI4 0
  loc_9A250F: LitI4 -1
  loc_9A2514: LitStr "/"
  loc_9A2517: ILdI4 arg_C
  loc_9A251A: ImpAdCallI2 InStrRev(, , , )
  loc_9A251F: FStR4 var_98
  loc_9A2522: ILdRf var_98
  loc_9A2525: CBoolI4
  loc_9A2527: BranchF loc_9A256E
  loc_9A252A: LitVar_Missing var_CC
  loc_9A252D: ILdRf var_98
  loc_9A2530: LitI4 1
  loc_9A2535: AddI4
  loc_9A2536: ILdRf arg_C
  loc_9A2539: CVarRef
  loc_9A253E: FLdRfVar var_DC
  loc_9A2541: ImpAdCallFPR4  = Mid(, , )
  loc_9A2546: FLdRfVar var_DC
  loc_9A2549: CStrVarTmp
  loc_9A254A: FStStr var_9C
  loc_9A254D: FFreeVar var_CC = ""
  loc_9A2554: FLdRfVar var_E4
  loc_9A2557: LitI2_Byte &HFF
  loc_9A2559: PopTmpLdAd2 var_DE
  loc_9A255C: FLdRfVar var_9C
  loc_9A255F: from_stack_3v = GetStringFile(from_stack_1v, from_stack_2v)
  loc_9A2564: FLdZeroAd var_E4
  loc_9A2567: CVarStr var_CC
  loc_9A256A: FStVar var_94
  loc_9A256E: ExitProcCbHresult
End Function

Private Function Proc_91_25_97A358() '97A358
  'Data Table: 4719D4
  loc_97A32C: LitStr "<p>"
  loc_97A32F: FLdPr Me
  loc_97A332: MemLdStr Mensaje
  loc_97A335: ConcatStr
  loc_97A336: FStStrNoPop var_88
  loc_97A339: LitStr "</p>"
  loc_97A33C: ConcatStr
  loc_97A33D: CVarStr var_98
  loc_97A340: PopAdLdVar
  loc_97A341: FLdPr Me
  loc_97A344: MemLdRfVar from_stack_1.htmFile
  loc_97A347: LdPrVar
  loc_97A349: LateMemCall
  loc_97A34F: FFree1Str var_88
  loc_97A352: FFree1Var var_98 = ""
  loc_97A355: ExitProcHresult
End Function

Private Function Proc_91_26_9A6458() '9A6458
  'Data Table: 4719D4
  loc_9A63C8: LitVarStr var_94, "<html>"
  loc_9A63CD: PopAdLdVar
  loc_9A63CE: FLdPr Me
  loc_9A63D1: MemLdRfVar from_stack_1.htmFile
  loc_9A63D4: LdPrVar
  loc_9A63D6: LateMemCall
  loc_9A63DC: LitVarStr var_94, "<head>"
  loc_9A63E1: PopAdLdVar
  loc_9A63E2: FLdPr Me
  loc_9A63E5: MemLdRfVar from_stack_1.htmFile
  loc_9A63E8: LdPrVar
  loc_9A63EA: LateMemCall
  loc_9A63F0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9A63F5: PopAdLdVar
  loc_9A63F6: FLdPr Me
  loc_9A63F9: MemLdRfVar from_stack_1.htmFile
  loc_9A63FC: LdPrVar
  loc_9A63FE: LateMemCall
  loc_9A6404: LitVarStr var_94, "<title>InfoGov</title>"
  loc_9A6409: PopAdLdVar
  loc_9A640A: FLdPr Me
  loc_9A640D: MemLdRfVar from_stack_1.htmFile
  loc_9A6410: LdPrVar
  loc_9A6412: LateMemCall
  loc_9A6418: LitStr vbNullString
  loc_9A641B: ILdRf Me
  loc_9A641E: CastAd
  loc_9A6421: FStAdFunc var_A8
  loc_9A6424: FLdRfVar var_A8
  loc_9A6427: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9A642C: FFree1Ad var_A8
  loc_9A642F: LitVarStr var_94, "</head>"
  loc_9A6434: PopAdLdVar
  loc_9A6435: FLdPr Me
  loc_9A6438: MemLdRfVar from_stack_1.htmFile
  loc_9A643B: LdPrVar
  loc_9A643D: LateMemCall
  loc_9A6443: LitVarStr var_94, "<body>"
  loc_9A6448: PopAdLdVar
  loc_9A6449: FLdPr Me
  loc_9A644C: MemLdRfVar from_stack_1.htmFile
  loc_9A644F: LdPrVar
  loc_9A6451: LateMemCall
  loc_9A6457: ExitProcHresult
End Function

Private Function Proc_91_27_973C84() '973C84
  'Data Table: 4719D4
  loc_973C58: LitVarStr var_94, "</body>"
  loc_973C5D: PopAdLdVar
  loc_973C5E: FLdPr Me
  loc_973C61: MemLdRfVar from_stack_1.htmFile
  loc_973C64: LdPrVar
  loc_973C66: LateMemCall
  loc_973C6C: LitVarStr var_94, "</html>"
  loc_973C71: PopAdLdVar
  loc_973C72: FLdPr Me
  loc_973C75: MemLdRfVar from_stack_1.htmFile
  loc_973C78: LdPrVar
  loc_973C7A: LateMemCall
  loc_973C80: ExitProcHresult
End Function
