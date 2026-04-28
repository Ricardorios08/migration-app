VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmIngresosdeBoletos
  Caption = "Ingreso de Boletos"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmIngresosdeBoletos.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15612
  ClientHeight = 10440
  Begin VB.TextBox TotaBoleTxt
    ForeColor = &HFF0000&
    Left = 12480
    Top = 9960
    Width = 2055
    Height = 375
    TabIndex = 28
    Alignment = 1 'Right Justify
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
  Begin VB.TextBox CantBoleTxt
    ForeColor = &HFF0000&
    Left = 9120
    Top = 9960
    Width = 1335
    Height = 375
    TabIndex = 27
    Alignment = 1 'Right Justify
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
  Begin VB.Frame Frame3
    Caption = "Codigo de Barra"
    Left = 120
    Top = 5520
    Width = 8175
    Height = 975
    TabIndex = 24
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox BoletoTxt
      ForeColor = &HFF0000&
      Left = 120
      Top = 360
      Width = 7935
      Height = 345
      TabIndex = 10
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
  End
  Begin VB.Frame Frame2
    Caption = "Manual"
    Left = 8520
    Top = 5520
    Width = 6495
    Height = 975
    TabIndex = 22
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox NumeBoleTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 360
      Width = 1455
      Height = 345
      TabIndex = 12
      MaxLength = 8
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
    Begin VB.CommandButton AgregarBoletoCmd
      Caption = "Agregar    >>>"
      Left = 4080
      Top = 360
      Width = 2175
      Height = 375
      TabIndex = 13
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
    Begin VB.TextBox PeriBoleTxt
      ForeColor = &HFF0000&
      Left = 1680
      Top = 360
      Width = 735
      Height = 345
      TabIndex = 11
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
      CausesValidation = 0   'False
    End
    Begin VB.Label Label8
      Caption = "Boleto Nro.:"
      Left = 360
      Top = 360
      Width = 1245
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
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 3000
    Width = 13920
    Height = 2400
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox ImpoAcpaTxt
      ForeColor = &HFF0000&
      Left = 5880
      Top = 1800
      Width = 2532
      Height = 345
      TabIndex = 9
      MaxLength = 16
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox TocoAcpaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1800
      Width = 735
      Height = 345
      TabIndex = 8
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
    Begin VB.TextBox CodiEnreTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1320
      Width = 495
      Height = 345
      TabIndex = 6
      MaxLength = 3
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
    Begin VB.TextBox NumeAcpaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 840
      Width = 495
      Height = 345
      TabIndex = 3
      MaxLength = 3
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
    Begin VB.CommandButton CodiEnreCmd
      Left = 3120
      Top = 1320
      Width = 495
      Height = 345
      TabIndex = 7
      Picture = "frmIngresosdeBoletos.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton FeenAcpaCmd
      Left = 3960
      Top = 360
      Width = 375
      Height = 360
      TabIndex = 2
      Picture = "frmIngresosdeBoletos.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton FepaAcpaCmd
      Left = 6795
      Top = 840
      Width = 375
      Height = 360
      TabIndex = 5
      Picture = "frmIngresosdeBoletos.frx":3886
      Style = 1
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox FeenAcpaMsk
      Left = 2520
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 1
      OleObjectBlob = "frmIngresosdeBoletos.frx":3DC8
    End
    Begin MSMask.MaskEdBox FepaAcpaMsk
      Left = 5400
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 4
      OleObjectBlob = "frmIngresosdeBoletos.frx":3E78
    End
    Begin VB.Label Label7
      Caption = "Fecha de Envio:"
      Left = 720
      Top = 360
      Width = 1710
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
    Begin VB.Label Label2
      Caption = "Nro. de Grupo:"
      Left = 870
      Top = 840
      Width = 1560
      Height = 300
      TabIndex = 20
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
    Begin VB.Label Label3
      Caption = "Fecha de Pago:"
      Left = 3720
      Top = 840
      Width = 1680
      Height = 300
      TabIndex = 19
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
    Begin VB.Label Label4
      Caption = "Ente Recaudador:"
      Left = 480
      Top = 1320
      Width = 1950
      Height = 300
      TabIndex = 18
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
    Begin VB.Label Label1
      Caption = "Total de Boletos:"
      Left = 600
      Top = 1800
      Width = 1764
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
    Begin VB.Label Label6
      Caption = "Importe Total:"
      Left = 4320
      Top = 1800
      Width = 1470
      Height = 300
      TabIndex = 16
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
    Begin VB.Label DetaEnreLbl
      Left = 3720
      Top = 1320
      Width = 6015
      Height = 345
      TabIndex = 15
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 13920
    Height = 1875
    TabIndex = 0
    OleObjectBlob = "frmIngresosdeBoletos.frx":3F28
  End
  Begin MSDataGridLib.DataGrid dgdPago
    Left = 120
    Top = 6960
    Width = 15135
    Height = 2895
    TabIndex = 25
    OleObjectBlob = "frmIngresosdeBoletos.frx":4596
    Appearance = 0 'Flat
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmIngresosdeBoletos.frx":4E48
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15612
    Height = 528
    TabIndex = 32
    OleObjectBlob = "frmIngresosdeBoletos.frx":C9C6
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 33
      TabStop = 0   'False
      Picture = "frmIngresosdeBoletos.frx":CF22
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label13
    Caption = "Importe Total:"
    Left = 10920
    Top = 9960
    Width = 1470
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
  Begin VB.Label Label9
    Caption = "Cantidad:"
    Left = 8040
    Top = 9960
    Width = 1020
    Height = 300
    TabIndex = 30
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
  Begin VB.Label Label12
    Caption = "Para anular un boleto. Primero lo debe seleccionar y despues presionar la tecla ""Eliminar"""
    Left = 120
    Top = 9960
    Width = 6375
    Height = 255
    TabIndex = 29
  End
  Begin VB.Label Label11
    Caption = "Detalle de los boletos cobrados"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 120
    Top = 6600
    Width = 14970
    Height = 300
    TabIndex = 26
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
End

Attribute VB_Name = "frmIngresosdeBoletos"


Private Sub NumeAcpaTxt_GotFocus() '9C3B60
  'Data Table: 4FF4BC
  loc_9C3B4C: FLdPr Me
  loc_9C3B4F: VCallAd Control_ID_NumeAcpaTxt
  loc_9C3B52: CVarAd
  loc_9C3B56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3B5B: FFree1Var var_94 = ""
  loc_9C3B5E: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_KeyPress(KeyAscii As Integer) '9D8E68
  'Data Table: 4FF4BC
  loc_9D8E50: LitStr "0123456789"
  loc_9D8E53: FStStrCopy var_88
  loc_9D8E56: FLdRfVar var_88
  loc_9D8E59: ILdRf KeyAscii
  loc_9D8E5C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8E61: IStI2 KeyAscii
  loc_9D8E64: FFree1Str var_88
  loc_9D8E67: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_Validate(Cancel As Boolean) 'AEA3C4
  'Data Table: 4FF4BC
  loc_AEA244: FLdRfVar var_8A
  loc_AEA247: FLdPr Me
  loc_AEA24A: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA24D: FStAdFunc var_88
  loc_AEA250: FLdPr var_88
  loc_AEA253:  = Me.Enabled
  loc_AEA258: FLdI2 var_8A
  loc_AEA25B: LitI2_Byte &HFF
  loc_AEA25D: EqI2
  loc_AEA25E: FFree1Ad var_88
  loc_AEA261: BranchF loc_AEA3C1
  loc_AEA264: FLdRfVar var_90
  loc_AEA267: FLdPr Me
  loc_AEA26A: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA26D: FStAdFunc var_88
  loc_AEA270: FLdPr var_88
  loc_AEA273:  = Me.Text
  loc_AEA278: LitI2_Byte 0
  loc_AEA27A: LitI2_Byte 0
  loc_AEA27C: ILdRf var_90
  loc_AEA27F: LitStr "Numero de Grupo"
  loc_AEA282: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AEA287: FStStrNoPop var_94
  loc_AEA28A: FLdPr Me
  loc_AEA28D: MemStStrCopy
  loc_AEA291: FFreeStr var_90 = ""
  loc_AEA298: FFree1Ad var_88
  loc_AEA29B: FLdPr Me
  loc_AEA29E: MemLdStr global_96
  loc_AEA2A1: LitStr vbNullString
  loc_AEA2A4: NeStr
  loc_AEA2A6: BranchF loc_AEA2CC
  loc_AEA2A9: FLdPr Me
  loc_AEA2AC: MemLdStr global_96
  loc_AEA2AF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA2B4: FLdPr Me
  loc_AEA2B7: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA2BA: CVarAd
  loc_AEA2BE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA2C3: FFree1Var var_A4 = ""
  loc_AEA2C6: LitI2_Byte &HFF
  loc_AEA2C8: IStI2 Cancel
  loc_AEA2CB: ExitProcHresult
  loc_AEA2CC: FLdPr Me
  loc_AEA2CF: VCallAd Control_ID_FeenAcpaMsk
  loc_AEA2D2: FStAdFunc var_88
  loc_AEA2D5: FLdPr var_88
  loc_AEA2D8: LateIdLdVar var_A4 DispID_15 0
  loc_AEA2DF: PopAd
  loc_AEA2E1: FLdRfVar var_90
  loc_AEA2E4: FLdPr Me
  loc_AEA2E7: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA2EA: FStAdFunc var_A8
  loc_AEA2ED: FLdPr var_A8
  loc_AEA2F0:  = Me.Text
  loc_AEA2F5: FLdRfVar var_AC
  loc_AEA2F8: ILdRf var_90
  loc_AEA2FB: CI2Str
  loc_AEA2FD: FLdRfVar var_A4
  loc_AEA300: CStrVarTmp
  loc_AEA301: FStStrNoPop var_94
  loc_AEA304: FLdPr Me
  loc_AEA307: MemLdRfVar from_stack_1.global_52
  loc_AEA30A: NewIfNullPr clsacrepago
  loc_AEA30D: from_stack_3v = clsacrepago.ValidaClave(from_stack_1v, from_stack_2v)
  loc_AEA312: ILdRf var_AC
  loc_AEA315: FLdPr Me
  loc_AEA318: MemStStrCopy
  loc_AEA31C: FFreeStr var_94 = "": var_90 = ""
  loc_AEA325: FFreeAd var_88 = ""
  loc_AEA32C: FFree1Var var_A4 = ""
  loc_AEA32F: FLdPr Me
  loc_AEA332: MemLdStr global_96
  loc_AEA335: LitStr vbNullString
  loc_AEA338: NeStr
  loc_AEA33A: BranchF loc_AEA360
  loc_AEA33D: FLdPr Me
  loc_AEA340: MemLdStr global_96
  loc_AEA343: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA348: FLdPr Me
  loc_AEA34B: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA34E: CVarAd
  loc_AEA352: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA357: FFree1Var var_A4 = ""
  loc_AEA35A: LitI2_Byte &HFF
  loc_AEA35C: IStI2 Cancel
  loc_AEA35F: ExitProcHresult
  loc_AEA360: FLdRfVar var_90
  loc_AEA363: FLdPr Me
  loc_AEA366: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA369: FStAdFunc var_88
  loc_AEA36C: FLdPr var_88
  loc_AEA36F:  = Me.Text
  loc_AEA374: ILdRf var_90
  loc_AEA377: ImpAdCallI2 Proc_18_42_A841B8()
  loc_AEA37C: FStStrNoPop var_94
  loc_AEA37F: FLdPr Me
  loc_AEA382: MemStStrCopy
  loc_AEA386: FFreeStr var_90 = ""
  loc_AEA38D: FFree1Ad var_88
  loc_AEA390: FLdPr Me
  loc_AEA393: MemLdStr global_96
  loc_AEA396: LitStr vbNullString
  loc_AEA399: NeStr
  loc_AEA39B: BranchF loc_AEA3C1
  loc_AEA39E: FLdPr Me
  loc_AEA3A1: MemLdStr global_96
  loc_AEA3A4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA3A9: FLdPr Me
  loc_AEA3AC: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA3AF: CVarAd
  loc_AEA3B3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA3B8: FFree1Var var_A4 = ""
  loc_AEA3BB: LitI2_Byte &HFF
  loc_AEA3BD: IStI2 Cancel
  loc_AEA3C0: ExitProcHresult
  loc_AEA3C1: ExitProcHresult
End Sub

Private Sub TocoAcpaTxt_GotFocus() '9C38D8
  'Data Table: 4FF4BC
  loc_9C38C4: FLdPr Me
  loc_9C38C7: VCallAd Control_ID_TocoAcpaTxt
  loc_9C38CA: CVarAd
  loc_9C38CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C38D3: FFree1Var var_94 = ""
  loc_9C38D6: ExitProcHresult
End Sub

Private Sub TocoAcpaTxt_KeyPress(KeyAscii As Integer) '9D91AC
  'Data Table: 4FF4BC
  loc_9D9194: LitStr "0123456789"
  loc_9D9197: FStStrCopy var_88
  loc_9D919A: FLdRfVar var_88
  loc_9D919D: ILdRf KeyAscii
  loc_9D91A0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D91A5: IStI2 KeyAscii
  loc_9D91A8: FFree1Str var_88
  loc_9D91AB: ExitProcHresult
End Sub

Private Sub TocoAcpaTxt_Validate(Cancel As Boolean) 'A6D7E8
  'Data Table: 4FF4BC
  loc_A6D780: FLdRfVar var_8C
  loc_A6D783: FLdPr Me
  loc_A6D786: VCallAd Control_ID_NumeAcpaTxt
  loc_A6D789: FStAdFunc var_88
  loc_A6D78C: FLdPr var_88
  loc_A6D78F:  = Me.Text
  loc_A6D794: LitI2_Byte &HFF
  loc_A6D796: LitI2_Byte 0
  loc_A6D798: ILdRf var_8C
  loc_A6D79B: LitStr "Numero de Grupo"
  loc_A6D79E: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6D7A3: FStStrNoPop var_90
  loc_A6D7A6: FLdPr Me
  loc_A6D7A9: MemStStrCopy
  loc_A6D7AD: FFreeStr var_8C = ""
  loc_A6D7B4: FFree1Ad var_88
  loc_A6D7B7: FLdPr Me
  loc_A6D7BA: MemLdStr global_96
  loc_A6D7BD: LitStr vbNullString
  loc_A6D7C0: NeStr
  loc_A6D7C2: BranchF loc_A6D7E7
  loc_A6D7C5: FLdPr Me
  loc_A6D7C8: MemLdStr global_96
  loc_A6D7CB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6D7D0: FLdPr Me
  loc_A6D7D3: VCallAd Control_ID_NumeAcpaTxt
  loc_A6D7D6: CVarAd
  loc_A6D7DA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6D7DF: FFree1Var var_A0 = ""
  loc_A6D7E2: LitI2_Byte &HFF
  loc_A6D7E4: IStI2 Cancel
  loc_A6D7E7: ExitProcHresult
End Sub

Private Sub ImpoAcpaTxt_GotFocus() '9C3BA8
  'Data Table: 4FF4BC
  loc_9C3B94: FLdPr Me
  loc_9C3B97: VCallAd Control_ID_ImpoAcpaTxt
  loc_9C3B9A: CVarAd
  loc_9C3B9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3BA3: FFree1Var var_94 = ""
  loc_9C3BA6: ExitProcHresult
End Sub

Private Sub ImpoAcpaTxt_KeyPress(KeyAscii As Integer) 'A086F0
  'Data Table: 4FF4BC
  loc_A086BC: LitStr "0123456789,."
  loc_A086BF: FStStrCopy var_88
  loc_A086C2: FLdRfVar var_88
  loc_A086C5: ILdRf KeyAscii
  loc_A086C8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A086CD: IStI2 KeyAscii
  loc_A086D0: FFree1Str var_88
  loc_A086D3: ILdI2 KeyAscii
  loc_A086D6: LitStr "."
  loc_A086D9: ImpAdCallI2 Asc()
  loc_A086DE: EqI2
  loc_A086DF: BranchF loc_A086ED
  loc_A086E2: LitStr ","
  loc_A086E5: ImpAdCallI2 Asc()
  loc_A086EA: IStI2 KeyAscii
  loc_A086ED: ExitProcHresult
End Sub

Private Sub ImpoAcpaTxt_LostFocus() 'A767D8
  'Data Table: 4FF4BC
  loc_A76774: FLdRfVar var_8C
  loc_A76777: FLdPr Me
  loc_A7677A: VCallAd Control_ID_ImpoAcpaTxt
  loc_A7677D: FStAdFunc var_88
  loc_A76780: FLdPr var_88
  loc_A76783:  = Me.Text
  loc_A76788: LitI4 1
  loc_A7678D: LitI4 1
  loc_A76792: LitVarStr var_AC, "0.00"
  loc_A76797: FStVarCopyObj var_BC
  loc_A7679A: FLdRfVar var_BC
  loc_A7679D: FLdZeroAd var_8C
  loc_A767A0: CVarStr var_9C
  loc_A767A3: FLdRfVar var_CC
  loc_A767A6: ImpAdCallFPR4  = Format(, )
  loc_A767AB: FLdRfVar var_CC
  loc_A767AE: CStrVarVal var_D0
  loc_A767B2: FLdPr Me
  loc_A767B5: VCallAd Control_ID_ImpoAcpaTxt
  loc_A767B8: FStAdFunc var_D4
  loc_A767BB: FLdPr var_D4
  loc_A767BE: Me.Text = from_stack_1
  loc_A767C3: FFree1Str var_D0
  loc_A767C6: FFreeAd var_88 = ""
  loc_A767CD: FFreeVar var_9C = "": var_BC = ""
  loc_A767D6: ExitProcHresult
End Sub

Private Sub ImpoAcpaTxt_Validate(Cancel As Boolean) 'A8234C
  'Data Table: 4FF4BC
  loc_A822C4: FLdRfVar var_8A
  loc_A822C7: FLdPr Me
  loc_A822CA: VCallAd Control_ID_ImpoAcpaTxt
  loc_A822CD: FStAdFunc var_88
  loc_A822D0: FLdPr var_88
  loc_A822D3:  = Me.Enabled
  loc_A822D8: FLdI2 var_8A
  loc_A822DB: LitI2_Byte &HFF
  loc_A822DD: EqI2
  loc_A822DE: FFree1Ad var_88
  loc_A822E1: BranchF loc_A8234B
  loc_A822E4: FLdRfVar var_90
  loc_A822E7: FLdPr Me
  loc_A822EA: VCallAd Control_ID_ImpoAcpaTxt
  loc_A822ED: FStAdFunc var_88
  loc_A822F0: FLdPr var_88
  loc_A822F3:  = Me.Text
  loc_A822F8: LitI2_Byte &HFF
  loc_A822FA: LitI2_Byte 0
  loc_A822FC: ILdRf var_90
  loc_A822FF: LitStr "Importe Total"
  loc_A82302: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A82307: FStStrNoPop var_94
  loc_A8230A: FLdPr Me
  loc_A8230D: MemStStrCopy
  loc_A82311: FFreeStr var_90 = ""
  loc_A82318: FFree1Ad var_88
  loc_A8231B: FLdPr Me
  loc_A8231E: MemLdStr global_96
  loc_A82321: LitStr vbNullString
  loc_A82324: NeStr
  loc_A82326: BranchF loc_A8234B
  loc_A82329: FLdPr Me
  loc_A8232C: MemLdStr global_96
  loc_A8232F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82334: FLdPr Me
  loc_A82337: VCallAd Control_ID_ImpoAcpaTxt
  loc_A8233A: CVarAd
  loc_A8233E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82343: FFree1Var var_A4 = ""
  loc_A82346: LitI2_Byte &HFF
  loc_A82348: IStI2 Cancel
  loc_A8234B: ExitProcHresult
End Sub

Private Sub dgdPago_KeyDown(KeyCode As Integer, Shift As Integer) 'BF43B0
  'Data Table: 4FF4BC
  loc_BF3B84: LitStr "Municipalidad de Guaymallén"
  loc_BF3B87: LitStr "Municipalidad de Lavalle"
  loc_BF3B8A: EqStr
  loc_BF3B8C: BranchF loc_BF3FAD
  loc_BF3B8F: ILdI2 KeyCode
  loc_BF3B92: CI4UI1
  loc_BF3B93: LitI4 &H2E
  loc_BF3B98: EqI4
  loc_BF3B99: ImpAdLdI4 MemVar_D9302C
  loc_BF3B9C: LitStr "Flucania"
  loc_BF3B9F: EqStr
  loc_BF3BA1: ImpAdLdI4 MemVar_D9302C
  loc_BF3BA4: LitStr "Plujan"
  loc_BF3BA7: EqStr
  loc_BF3BA9: OrI4
  loc_BF3BAA: ImpAdLdI4 MemVar_D9302C
  loc_BF3BAD: LitStr "root"
  loc_BF3BB0: EqStr
  loc_BF3BB2: OrI4
  loc_BF3BB3: AndI4
  loc_BF3BB4: FLdPr Me
  loc_BF3BB7: MemLdI2 global_76
  loc_BF3BBA: LitI2_Byte 1
  loc_BF3BBC: EqI2
  loc_BF3BBD: FLdPr Me
  loc_BF3BC0: MemLdI2 global_76
  loc_BF3BC3: LitI2_Byte 2
  loc_BF3BC5: EqI2
  loc_BF3BC6: OrI4
  loc_BF3BC7: AndI4
  loc_BF3BC8: BranchF loc_BF3FAA
  loc_BF3BCB: FLdRfVar var_8C
  loc_BF3BCE: FLdPr Me
  loc_BF3BD1: MemLdRfVar from_stack_1.global_64
  loc_BF3BD4: NewIfNullPr clspago
  loc_BF3BD7: from_stack_1 = clspago.RecordCount
  loc_BF3BDC: ILdRf var_8C
  loc_BF3BDF: LitI4 0
  loc_BF3BE4: GtI4
  loc_BF3BE5: BranchF loc_BF3FAA
  loc_BF3BE8: LitVar_Missing var_10C
  loc_BF3BEB: LitVar_Missing var_EC
  loc_BF3BEE: LitVarStr var_BC, "InfoGov"
  loc_BF3BF3: FStVarCopyObj var_CC
  loc_BF3BF6: FLdRfVar var_CC
  loc_BF3BF9: LitI4 &H144
  loc_BF3BFE: LitVarStr var_9C, "¿Desea borrar el pago?"
  loc_BF3C03: FStVarCopyObj var_AC
  loc_BF3C06: FLdRfVar var_AC
  loc_BF3C09: ImpAdCallI2 MsgBox(, , , , )
  loc_BF3C0E: LitI4 6
  loc_BF3C13: EqI4
  loc_BF3C14: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_BF3C1F: BranchF loc_BF3FAA
  loc_BF3C22: LitVar_Missing var_16C
  loc_BF3C25: LitVar_Missing var_14C
  loc_BF3C28: LitVar_Missing var_12C
  loc_BF3C2B: LitVar_Missing var_10C
  loc_BF3C2E: LitVar_Missing var_EC
  loc_BF3C31: LitVarStr var_BC, "Anulación de Pagos"
  loc_BF3C36: FStVarCopyObj var_CC
  loc_BF3C39: FLdRfVar var_CC
  loc_BF3C3C: LitVarStr var_9C, "Ingrese el Detalle de la Anulación: "
  loc_BF3C41: FStVarCopyObj var_AC
  loc_BF3C44: FLdRfVar var_AC
  loc_BF3C47: ImpAdCallI2 InputBox(, , , , , , )
  loc_BF3C4C: FStStr var_88
  loc_BF3C4F: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = ""
  loc_BF3C60: ILdRf var_88
  loc_BF3C63: LitStr "Motivo de la Baja"
  loc_BF3C66: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_BF3C6B: FStStrNoPop var_170
  loc_BF3C6E: FLdPr Me
  loc_BF3C71: MemStStrCopy
  loc_BF3C75: FFree1Str var_170
  loc_BF3C78: FLdPr Me
  loc_BF3C7B: MemLdStr global_96
  loc_BF3C7E: LitStr vbNullString
  loc_BF3C81: NeStr
  loc_BF3C83: BranchF loc_BF3C94
  loc_BF3C86: FLdPr Me
  loc_BF3C89: MemLdStr global_96
  loc_BF3C8C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF3C91: Branch loc_BF3FAA
  loc_BF3C94: FLdRfVar var_170
  loc_BF3C97: FLdPr Me
  loc_BF3C9A: VCallAd Control_ID_TocoAcpaTxt
  loc_BF3C9D: FStAdFunc var_174
  loc_BF3CA0: FLdPr var_174
  loc_BF3CA3:  = Me.Text
  loc_BF3CA8: ILdRf var_170
  loc_BF3CAB: CI2Str
  loc_BF3CAD: LitI2_Byte 1
  loc_BF3CAF: SubI2
  loc_BF3CB0: CStrUI1
  loc_BF3CB2: FStStrNoPop var_178
  loc_BF3CB5: FLdPr Me
  loc_BF3CB8: VCallAd Control_ID_TocoAcpaTxt
  loc_BF3CBB: FStAdFunc var_17C
  loc_BF3CBE: FLdPr var_17C
  loc_BF3CC1: Me.Text = from_stack_1
  loc_BF3CC6: FFreeStr var_170 = ""
  loc_BF3CCD: FFreeAd var_174 = ""
  loc_BF3CD4: FLdRfVar var_170
  loc_BF3CD7: FLdPr Me
  loc_BF3CDA: VCallAd Control_ID_ImpoAcpaTxt
  loc_BF3CDD: FStAdFunc var_174
  loc_BF3CE0: FLdPr var_174
  loc_BF3CE3:  = Me.Text
  loc_BF3CE8: FLdRfVar var_184
  loc_BF3CEB: FLdPr Me
  loc_BF3CEE: MemLdRfVar from_stack_1.global_64
  loc_BF3CF1: NewIfNullPr clspago
  loc_BF3CF4: from_stack_1 = clspago.TotaPago
  loc_BF3CF9: LitI4 2
  loc_BF3CFE: ILdRf var_170
  loc_BF3D01: CR8Str
  loc_BF3D03: FLdFPR8 var_184
  loc_BF3D06: SubR4
  loc_BF3D07: CVarR8
  loc_BF3D0B: FLdRfVar var_CC
  loc_BF3D0E: ImpAdCallFPR4  = Round(, )
  loc_BF3D13: LitI4 1
  loc_BF3D18: LitI4 1
  loc_BF3D1D: LitVarStr var_BC, "###,###,##0.00"
  loc_BF3D22: FStVarCopyObj var_EC
  loc_BF3D25: FLdRfVar var_EC
  loc_BF3D28: FLdRfVar var_CC
  loc_BF3D2B: FLdRfVar var_10C
  loc_BF3D2E: ImpAdCallFPR4  = Format(, )
  loc_BF3D33: FLdRfVar var_10C
  loc_BF3D36: CStrVarVal var_178
  loc_BF3D3A: FLdPr Me
  loc_BF3D3D: VCallAd Control_ID_ImpoAcpaTxt
  loc_BF3D40: FStAdFunc var_17C
  loc_BF3D43: FLdPr var_17C
  loc_BF3D46: Me.Text = from_stack_1
  loc_BF3D4B: FFreeStr var_170 = ""
  loc_BF3D52: FFreeAd var_174 = ""
  loc_BF3D59: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_BF3D64: FLdRfVar var_170
  loc_BF3D67: FLdPr Me
  loc_BF3D6A: VCallAd Control_ID_CantBoleTxt
  loc_BF3D6D: FStAdFunc var_174
  loc_BF3D70: FLdPr var_174
  loc_BF3D73:  = Me.Text
  loc_BF3D78: ILdRf var_170
  loc_BF3D7B: CI2Str
  loc_BF3D7D: LitI2_Byte 1
  loc_BF3D7F: SubI2
  loc_BF3D80: CStrUI1
  loc_BF3D82: FStStrNoPop var_178
  loc_BF3D85: FLdPr Me
  loc_BF3D88: VCallAd Control_ID_CantBoleTxt
  loc_BF3D8B: FStAdFunc var_17C
  loc_BF3D8E: FLdPr var_17C
  loc_BF3D91: Me.Text = from_stack_1
  loc_BF3D96: FFreeStr var_170 = ""
  loc_BF3D9D: FFreeAd var_174 = ""
  loc_BF3DA4: FLdRfVar var_170
  loc_BF3DA7: FLdPr Me
  loc_BF3DAA: VCallAd Control_ID_TotaBoleTxt
  loc_BF3DAD: FStAdFunc var_174
  loc_BF3DB0: FLdPr var_174
  loc_BF3DB3:  = Me.Text
  loc_BF3DB8: FLdRfVar var_184
  loc_BF3DBB: FLdPr Me
  loc_BF3DBE: MemLdRfVar from_stack_1.global_64
  loc_BF3DC1: NewIfNullPr clspago
  loc_BF3DC4: from_stack_1 = clspago.TotaPago
  loc_BF3DC9: LitI4 2
  loc_BF3DCE: ILdRf var_170
  loc_BF3DD1: CR8Str
  loc_BF3DD3: FLdFPR8 var_184
  loc_BF3DD6: SubR4
  loc_BF3DD7: CVarR8
  loc_BF3DDB: FLdRfVar var_CC
  loc_BF3DDE: ImpAdCallFPR4  = Round(, )
  loc_BF3DE3: LitI4 1
  loc_BF3DE8: LitI4 1
  loc_BF3DED: LitVarStr var_BC, "###,###,##0.00"
  loc_BF3DF2: FStVarCopyObj var_EC
  loc_BF3DF5: FLdRfVar var_EC
  loc_BF3DF8: FLdRfVar var_CC
  loc_BF3DFB: FLdRfVar var_10C
  loc_BF3DFE: ImpAdCallFPR4  = Format(, )
  loc_BF3E03: FLdRfVar var_10C
  loc_BF3E06: CStrVarVal var_178
  loc_BF3E0A: FLdPr Me
  loc_BF3E0D: VCallAd Control_ID_TotaBoleTxt
  loc_BF3E10: FStAdFunc var_17C
  loc_BF3E13: FLdPr var_17C
  loc_BF3E16: Me.Text = from_stack_1
  loc_BF3E1B: FFreeStr var_170 = ""
  loc_BF3E22: FFreeAd var_174 = ""
  loc_BF3E29: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_BF3E34: FLdRfVar var_170
  loc_BF3E37: FLdPr Me
  loc_BF3E3A: MemLdRfVar from_stack_1.global_64
  loc_BF3E3D: NewIfNullPr clspago
  loc_BF3E40: from_stack_1 = clspago.FeenAcpa
  loc_BF3E45: FLdRfVar var_186
  loc_BF3E48: FLdPr Me
  loc_BF3E4B: MemLdRfVar from_stack_1.global_64
  loc_BF3E4E: NewIfNullPr clspago
  loc_BF3E51: from_stack_1 = clspago.NumeAcpa
  loc_BF3E56: FLdRfVar var_188
  loc_BF3E59: FLdPr Me
  loc_BF3E5C: MemLdRfVar from_stack_1.global_64
  loc_BF3E5F: NewIfNullPr clspago
  loc_BF3E62: from_stack_1 = clspago.PeriBole
  loc_BF3E67: FLdRfVar var_8C
  loc_BF3E6A: FLdPr Me
  loc_BF3E6D: MemLdRfVar from_stack_1.global_64
  loc_BF3E70: NewIfNullPr clspago
  loc_BF3E73: from_stack_1 = clspago.NumeBole
  loc_BF3E78: FLdRfVar var_184
  loc_BF3E7B: FLdPr Me
  loc_BF3E7E: MemLdRfVar from_stack_1.global_64
  loc_BF3E81: NewIfNullPr clspago
  loc_BF3E84: from_stack_1 = clspago.TotaPago
  loc_BF3E89: FLdR8 var_184
  loc_BF3E8C: ILdRf var_88
  loc_BF3E8F: ILdRf var_8C
  loc_BF3E92: FLdI2 var_188
  loc_BF3E95: FLdI2 var_186
  loc_BF3E98: ILdRf var_170
  loc_BF3E9B: FLdPr Me
  loc_BF3E9E: MemLdRfVar from_stack_1.global_60
  loc_BF3EA1: NewIfNullPr clspago
  loc_BF3EA4: Call clspago.Eliminar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BF3EA9: FFree1Str var_170
  loc_BF3EAC: FLdPr Me
  loc_BF3EAF: VCallAd Control_ID_FeenAcpaMsk
  loc_BF3EB2: FStAdFunc var_174
  loc_BF3EB5: FLdPr var_174
  loc_BF3EB8: LateIdLdVar var_AC DispID_15 0
  loc_BF3EBF: PopAd
  loc_BF3EC1: LitStr "SELECT pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.CodiOfic, pago.CuenCtct, infogov.persona.DetaPers, boleto.TipoBole, "
  loc_BF3EC4: LitStr " pago.CapiPago, pago.RecaPago, pago.DecaPago, pago.DerePago, pago.IntePago, pago.ExenPago, pago.AprePago, pago.TotaPago FROM pago "
  loc_BF3EC7: ConcatStr
  loc_BF3EC8: FStStrNoPop var_170
  loc_BF3ECB: LitStr " LEFT JOIN boleto ON pago.PeriBole = boleto.PeriBole"
  loc_BF3ECE: ConcatStr
  loc_BF3ECF: FStStrNoPop var_178
  loc_BF3ED2: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_BF3ED5: ConcatStr
  loc_BF3ED6: FStStrNoPop var_18C
  loc_BF3ED9: LitStr " LEFT JOIN infogov.persona ON pago.CucuPers = infogov.persona.CucuPers"
  loc_BF3EDC: ConcatStr
  loc_BF3EDD: FStStrNoPop var_190
  loc_BF3EE0: LitStr " WHERE FeenAcpa = '"
  loc_BF3EE3: ConcatStr
  loc_BF3EE4: FStStrNoPop var_194
  loc_BF3EE7: LitI4 1
  loc_BF3EEC: LitI4 1
  loc_BF3EF1: LitVarStr var_9C, "yyyy-mm-dd"
  loc_BF3EF6: FStVarCopyObj var_EC
  loc_BF3EF9: FLdRfVar var_EC
  loc_BF3EFC: FLdRfVar var_AC
  loc_BF3EFF: CStrVarTmp
  loc_BF3F00: CVarStr var_CC
  loc_BF3F03: ImpAdCallI2 Format$(, )
  loc_BF3F08: FStStrNoPop var_198
  loc_BF3F0B: ConcatStr
  loc_BF3F0C: FStStrNoPop var_19C
  loc_BF3F0F: LitStr "'"
  loc_BF3F12: ConcatStr
  loc_BF3F13: FStStrNoPop var_1A0
  loc_BF3F16: LitStr " AND NumeAcpa = "
  loc_BF3F19: ConcatStr
  loc_BF3F1A: FStStrNoPop var_1A8
  loc_BF3F1D: FLdRfVar var_1A4
  loc_BF3F20: FLdPr Me
  loc_BF3F23: VCallAd Control_ID_NumeAcpaTxt
  loc_BF3F26: FStAdFunc var_17C
  loc_BF3F29: FLdPr var_17C
  loc_BF3F2C:  = Me.Text
  loc_BF3F31: ILdRf var_1A4
  loc_BF3F34: ConcatStr
  loc_BF3F35: FStStrNoPop var_1AC
  loc_BF3F38: LitStr " AND ActuPago = 'No'"
  loc_BF3F3B: ConcatStr
  loc_BF3F3C: FStStrNoPop var_1B0
  loc_BF3F3F: LitStr " ORDER BY pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole"
  loc_BF3F42: ConcatStr
  loc_BF3F43: FStStrNoPop var_1B4
  loc_BF3F46: FLdPr Me
  loc_BF3F49: MemLdRfVar from_stack_1.global_64
  loc_BF3F4C: NewIfNullPr clspago
  loc_BF3F4F: Call clspago.RedefineRS(from_stack_1v)
  loc_BF3F54: FFreeStr var_170 = "": var_178 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A8 = "": var_1A4 = "": var_1AC = "": var_1B0 = ""
  loc_BF3F71: FFreeAd var_174 = ""
  loc_BF3F78: FFreeVar var_AC = "": var_CC = ""
  loc_BF3F81: LitStr "0"
  loc_BF3F84: FLdPr Me
  loc_BF3F87: VCallAd Control_ID_NumeBoleTxt
  loc_BF3F8A: FStAdFunc var_174
  loc_BF3F8D: FLdPr var_174
  loc_BF3F90: Me.Text = from_stack_1
  loc_BF3F95: FFree1Ad var_174
  loc_BF3F98: FLdPr Me
  loc_BF3F9B: VCallAd Control_ID_NumeBoleTxt
  loc_BF3F9E: CVarAd
  loc_BF3FA2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BF3FA7: FFree1Var var_AC = ""
  loc_BF3FAA: Branch loc_BF43AD
  loc_BF3FAD: ILdI2 KeyCode
  loc_BF3FB0: CI4UI1
  loc_BF3FB1: LitI4 &H2E
  loc_BF3FB6: EqI4
  loc_BF3FB7: FLdPr Me
  loc_BF3FBA: MemLdI2 global_76
  loc_BF3FBD: LitI2_Byte 1
  loc_BF3FBF: EqI2
  loc_BF3FC0: FLdPr Me
  loc_BF3FC3: MemLdI2 global_76
  loc_BF3FC6: LitI2_Byte 2
  loc_BF3FC8: EqI2
  loc_BF3FC9: OrI4
  loc_BF3FCA: AndI4
  loc_BF3FCB: BranchF loc_BF43AD
  loc_BF3FCE: FLdRfVar var_8C
  loc_BF3FD1: FLdPr Me
  loc_BF3FD4: MemLdRfVar from_stack_1.global_64
  loc_BF3FD7: NewIfNullPr clspago
  loc_BF3FDA: from_stack_1 = clspago.RecordCount
  loc_BF3FDF: ILdRf var_8C
  loc_BF3FE2: LitI4 0
  loc_BF3FE7: GtI4
  loc_BF3FE8: BranchF loc_BF43AD
  loc_BF3FEB: LitVar_Missing var_10C
  loc_BF3FEE: LitVar_Missing var_EC
  loc_BF3FF1: LitVarStr var_BC, "InfoGov"
  loc_BF3FF6: FStVarCopyObj var_CC
  loc_BF3FF9: FLdRfVar var_CC
  loc_BF3FFC: LitI4 &H144
  loc_BF4001: LitVarStr var_9C, "¿Desea borrar el pago?"
  loc_BF4006: FStVarCopyObj var_AC
  loc_BF4009: FLdRfVar var_AC
  loc_BF400C: ImpAdCallI2 MsgBox(, , , , )
  loc_BF4011: LitI4 6
  loc_BF4016: EqI4
  loc_BF4017: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_BF4022: BranchF loc_BF43AD
  loc_BF4025: LitVar_Missing var_16C
  loc_BF4028: LitVar_Missing var_14C
  loc_BF402B: LitVar_Missing var_12C
  loc_BF402E: LitVar_Missing var_10C
  loc_BF4031: LitVar_Missing var_EC
  loc_BF4034: LitVarStr var_BC, "Anulación de Pagos"
  loc_BF4039: FStVarCopyObj var_CC
  loc_BF403C: FLdRfVar var_CC
  loc_BF403F: LitVarStr var_9C, "Ingrese el Detalle de la Anulación: "
  loc_BF4044: FStVarCopyObj var_AC
  loc_BF4047: FLdRfVar var_AC
  loc_BF404A: ImpAdCallI2 InputBox(, , , , , , )
  loc_BF404F: FStStr var_88
  loc_BF4052: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = ""
  loc_BF4063: ILdRf var_88
  loc_BF4066: LitStr "Motivo de la Baja"
  loc_BF4069: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_BF406E: FStStrNoPop var_170
  loc_BF4071: FLdPr Me
  loc_BF4074: MemStStrCopy
  loc_BF4078: FFree1Str var_170
  loc_BF407B: FLdPr Me
  loc_BF407E: MemLdStr global_96
  loc_BF4081: LitStr vbNullString
  loc_BF4084: NeStr
  loc_BF4086: BranchF loc_BF4097
  loc_BF4089: FLdPr Me
  loc_BF408C: MemLdStr global_96
  loc_BF408F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF4094: Branch loc_BF43AD
  loc_BF4097: FLdRfVar var_170
  loc_BF409A: FLdPr Me
  loc_BF409D: VCallAd Control_ID_TocoAcpaTxt
  loc_BF40A0: FStAdFunc var_174
  loc_BF40A3: FLdPr var_174
  loc_BF40A6:  = Me.Text
  loc_BF40AB: ILdRf var_170
  loc_BF40AE: CI2Str
  loc_BF40B0: LitI2_Byte 1
  loc_BF40B2: SubI2
  loc_BF40B3: CStrUI1
  loc_BF40B5: FStStrNoPop var_178
  loc_BF40B8: FLdPr Me
  loc_BF40BB: VCallAd Control_ID_TocoAcpaTxt
  loc_BF40BE: FStAdFunc var_17C
  loc_BF40C1: FLdPr var_17C
  loc_BF40C4: Me.Text = from_stack_1
  loc_BF40C9: FFreeStr var_170 = ""
  loc_BF40D0: FFreeAd var_174 = ""
  loc_BF40D7: FLdRfVar var_170
  loc_BF40DA: FLdPr Me
  loc_BF40DD: VCallAd Control_ID_ImpoAcpaTxt
  loc_BF40E0: FStAdFunc var_174
  loc_BF40E3: FLdPr var_174
  loc_BF40E6:  = Me.Text
  loc_BF40EB: FLdRfVar var_184
  loc_BF40EE: FLdPr Me
  loc_BF40F1: MemLdRfVar from_stack_1.global_64
  loc_BF40F4: NewIfNullPr clspago
  loc_BF40F7: from_stack_1 = clspago.TotaPago
  loc_BF40FC: LitI4 2
  loc_BF4101: ILdRf var_170
  loc_BF4104: CR8Str
  loc_BF4106: FLdFPR8 var_184
  loc_BF4109: SubR4
  loc_BF410A: CVarR8
  loc_BF410E: FLdRfVar var_CC
  loc_BF4111: ImpAdCallFPR4  = Round(, )
  loc_BF4116: LitI4 1
  loc_BF411B: LitI4 1
  loc_BF4120: LitVarStr var_BC, "###,###,##0.00"
  loc_BF4125: FStVarCopyObj var_EC
  loc_BF4128: FLdRfVar var_EC
  loc_BF412B: FLdRfVar var_CC
  loc_BF412E: FLdRfVar var_10C
  loc_BF4131: ImpAdCallFPR4  = Format(, )
  loc_BF4136: FLdRfVar var_10C
  loc_BF4139: CStrVarVal var_178
  loc_BF413D: FLdPr Me
  loc_BF4140: VCallAd Control_ID_ImpoAcpaTxt
  loc_BF4143: FStAdFunc var_17C
  loc_BF4146: FLdPr var_17C
  loc_BF4149: Me.Text = from_stack_1
  loc_BF414E: FFreeStr var_170 = ""
  loc_BF4155: FFreeAd var_174 = ""
  loc_BF415C: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_BF4167: FLdRfVar var_170
  loc_BF416A: FLdPr Me
  loc_BF416D: VCallAd Control_ID_CantBoleTxt
  loc_BF4170: FStAdFunc var_174
  loc_BF4173: FLdPr var_174
  loc_BF4176:  = Me.Text
  loc_BF417B: ILdRf var_170
  loc_BF417E: CI2Str
  loc_BF4180: LitI2_Byte 1
  loc_BF4182: SubI2
  loc_BF4183: CStrUI1
  loc_BF4185: FStStrNoPop var_178
  loc_BF4188: FLdPr Me
  loc_BF418B: VCallAd Control_ID_CantBoleTxt
  loc_BF418E: FStAdFunc var_17C
  loc_BF4191: FLdPr var_17C
  loc_BF4194: Me.Text = from_stack_1
  loc_BF4199: FFreeStr var_170 = ""
  loc_BF41A0: FFreeAd var_174 = ""
  loc_BF41A7: FLdRfVar var_170
  loc_BF41AA: FLdPr Me
  loc_BF41AD: VCallAd Control_ID_TotaBoleTxt
  loc_BF41B0: FStAdFunc var_174
  loc_BF41B3: FLdPr var_174
  loc_BF41B6:  = Me.Text
  loc_BF41BB: FLdRfVar var_184
  loc_BF41BE: FLdPr Me
  loc_BF41C1: MemLdRfVar from_stack_1.global_64
  loc_BF41C4: NewIfNullPr clspago
  loc_BF41C7: from_stack_1 = clspago.TotaPago
  loc_BF41CC: LitI4 2
  loc_BF41D1: ILdRf var_170
  loc_BF41D4: CR8Str
  loc_BF41D6: FLdFPR8 var_184
  loc_BF41D9: SubR4
  loc_BF41DA: CVarR8
  loc_BF41DE: FLdRfVar var_CC
  loc_BF41E1: ImpAdCallFPR4  = Round(, )
  loc_BF41E6: LitI4 1
  loc_BF41EB: LitI4 1
  loc_BF41F0: LitVarStr var_BC, "###,###,##0.00"
  loc_BF41F5: FStVarCopyObj var_EC
  loc_BF41F8: FLdRfVar var_EC
  loc_BF41FB: FLdRfVar var_CC
  loc_BF41FE: FLdRfVar var_10C
  loc_BF4201: ImpAdCallFPR4  = Format(, )
  loc_BF4206: FLdRfVar var_10C
  loc_BF4209: CStrVarVal var_178
  loc_BF420D: FLdPr Me
  loc_BF4210: VCallAd Control_ID_TotaBoleTxt
  loc_BF4213: FStAdFunc var_17C
  loc_BF4216: FLdPr var_17C
  loc_BF4219: Me.Text = from_stack_1
  loc_BF421E: FFreeStr var_170 = ""
  loc_BF4225: FFreeAd var_174 = ""
  loc_BF422C: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_BF4237: FLdRfVar var_170
  loc_BF423A: FLdPr Me
  loc_BF423D: MemLdRfVar from_stack_1.global_64
  loc_BF4240: NewIfNullPr clspago
  loc_BF4243: from_stack_1 = clspago.FeenAcpa
  loc_BF4248: FLdRfVar var_186
  loc_BF424B: FLdPr Me
  loc_BF424E: MemLdRfVar from_stack_1.global_64
  loc_BF4251: NewIfNullPr clspago
  loc_BF4254: from_stack_1 = clspago.NumeAcpa
  loc_BF4259: FLdRfVar var_188
  loc_BF425C: FLdPr Me
  loc_BF425F: MemLdRfVar from_stack_1.global_64
  loc_BF4262: NewIfNullPr clspago
  loc_BF4265: from_stack_1 = clspago.PeriBole
  loc_BF426A: FLdRfVar var_8C
  loc_BF426D: FLdPr Me
  loc_BF4270: MemLdRfVar from_stack_1.global_64
  loc_BF4273: NewIfNullPr clspago
  loc_BF4276: from_stack_1 = clspago.NumeBole
  loc_BF427B: FLdRfVar var_184
  loc_BF427E: FLdPr Me
  loc_BF4281: MemLdRfVar from_stack_1.global_64
  loc_BF4284: NewIfNullPr clspago
  loc_BF4287: from_stack_1 = clspago.TotaPago
  loc_BF428C: FLdR8 var_184
  loc_BF428F: ILdRf var_88
  loc_BF4292: ILdRf var_8C
  loc_BF4295: FLdI2 var_188
  loc_BF4298: FLdI2 var_186
  loc_BF429B: ILdRf var_170
  loc_BF429E: FLdPr Me
  loc_BF42A1: MemLdRfVar from_stack_1.global_60
  loc_BF42A4: NewIfNullPr clspago
  loc_BF42A7: Call clspago.Eliminar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BF42AC: FFree1Str var_170
  loc_BF42AF: FLdPr Me
  loc_BF42B2: VCallAd Control_ID_FeenAcpaMsk
  loc_BF42B5: FStAdFunc var_174
  loc_BF42B8: FLdPr var_174
  loc_BF42BB: LateIdLdVar var_AC DispID_15 0
  loc_BF42C2: PopAd
  loc_BF42C4: LitStr "SELECT pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.CodiOfic, pago.CuenCtct, infogov.persona.DetaPers, boleto.TipoBole, "
  loc_BF42C7: LitStr " pago.CapiPago, pago.RecaPago, pago.DecaPago, pago.DerePago, pago.IntePago, pago.ExenPago, pago.AprePago, pago.TotaPago FROM pago "
  loc_BF42CA: ConcatStr
  loc_BF42CB: FStStrNoPop var_170
  loc_BF42CE: LitStr " LEFT JOIN boleto ON pago.PeriBole = boleto.PeriBole"
  loc_BF42D1: ConcatStr
  loc_BF42D2: FStStrNoPop var_178
  loc_BF42D5: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_BF42D8: ConcatStr
  loc_BF42D9: FStStrNoPop var_18C
  loc_BF42DC: LitStr " LEFT JOIN infogov.persona ON pago.CucuPers = infogov.persona.CucuPers"
  loc_BF42DF: ConcatStr
  loc_BF42E0: FStStrNoPop var_190
  loc_BF42E3: LitStr " WHERE FeenAcpa = '"
  loc_BF42E6: ConcatStr
  loc_BF42E7: FStStrNoPop var_194
  loc_BF42EA: LitI4 1
  loc_BF42EF: LitI4 1
  loc_BF42F4: LitVarStr var_9C, "yyyy-mm-dd"
  loc_BF42F9: FStVarCopyObj var_EC
  loc_BF42FC: FLdRfVar var_EC
  loc_BF42FF: FLdRfVar var_AC
  loc_BF4302: CStrVarTmp
  loc_BF4303: CVarStr var_CC
  loc_BF4306: ImpAdCallI2 Format$(, )
  loc_BF430B: FStStrNoPop var_198
  loc_BF430E: ConcatStr
  loc_BF430F: FStStrNoPop var_19C
  loc_BF4312: LitStr "'"
  loc_BF4315: ConcatStr
  loc_BF4316: FStStrNoPop var_1A0
  loc_BF4319: LitStr " AND NumeAcpa = "
  loc_BF431C: ConcatStr
  loc_BF431D: FStStrNoPop var_1A8
  loc_BF4320: FLdRfVar var_1A4
  loc_BF4323: FLdPr Me
  loc_BF4326: VCallAd Control_ID_NumeAcpaTxt
  loc_BF4329: FStAdFunc var_17C
  loc_BF432C: FLdPr var_17C
  loc_BF432F:  = Me.Text
  loc_BF4334: ILdRf var_1A4
  loc_BF4337: ConcatStr
  loc_BF4338: FStStrNoPop var_1AC
  loc_BF433B: LitStr " AND ActuPago = 'No'"
  loc_BF433E: ConcatStr
  loc_BF433F: FStStrNoPop var_1B0
  loc_BF4342: LitStr " ORDER BY pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole"
  loc_BF4345: ConcatStr
  loc_BF4346: FStStrNoPop var_1B4
  loc_BF4349: FLdPr Me
  loc_BF434C: MemLdRfVar from_stack_1.global_64
  loc_BF434F: NewIfNullPr clspago
  loc_BF4352: Call clspago.RedefineRS(from_stack_1v)
  loc_BF4357: FFreeStr var_170 = "": var_178 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A8 = "": var_1A4 = "": var_1AC = "": var_1B0 = ""
  loc_BF4374: FFreeAd var_174 = ""
  loc_BF437B: FFreeVar var_AC = "": var_CC = ""
  loc_BF4384: LitStr "0"
  loc_BF4387: FLdPr Me
  loc_BF438A: VCallAd Control_ID_NumeBoleTxt
  loc_BF438D: FStAdFunc var_174
  loc_BF4390: FLdPr var_174
  loc_BF4393: Me.Text = from_stack_1
  loc_BF4398: FFree1Ad var_174
  loc_BF439B: FLdPr Me
  loc_BF439E: VCallAd Control_ID_NumeBoleTxt
  loc_BF43A1: CVarAd
  loc_BF43A5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BF43AA: FFree1Var var_AC = ""
  loc_BF43AD: ExitProcHresult
End Sub

Private Sub NumeBoleTxt_GotFocus() '9C3B18
  'Data Table: 4FF4BC
  loc_9C3B04: FLdPr Me
  loc_9C3B07: VCallAd Control_ID_NumeBoleTxt
  loc_9C3B0A: CVarAd
  loc_9C3B0E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3B13: FFree1Var var_94 = ""
  loc_9C3B16: ExitProcHresult
End Sub

Private Sub NumeBoleTxt_KeyPress(KeyAscii As Integer) '9DCA60
  'Data Table: 4FF4BC
  loc_9DCA48: LitStr "0123456789"
  loc_9DCA4B: FStStrCopy var_88
  loc_9DCA4E: FLdRfVar var_88
  loc_9DCA51: ILdRf KeyAscii
  loc_9DCA54: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DCA59: IStI2 KeyAscii
  loc_9DCA5C: FFree1Str var_88
  loc_9DCA5F: ExitProcHresult
End Sub

Private Sub NumeBoleTxt_Validate(Cancel As Boolean) 'A8266C
  'Data Table: 4FF4BC
  loc_A825E4: FLdRfVar var_8A
  loc_A825E7: FLdPr Me
  loc_A825EA: VCallAd Control_ID_NumeBoleTxt
  loc_A825ED: FStAdFunc var_88
  loc_A825F0: FLdPr var_88
  loc_A825F3:  = Me.Enabled
  loc_A825F8: FLdI2 var_8A
  loc_A825FB: FFree1Ad var_88
  loc_A825FE: BranchF loc_A82668
  loc_A82601: FLdRfVar var_90
  loc_A82604: FLdPr Me
  loc_A82607: VCallAd Control_ID_NumeBoleTxt
  loc_A8260A: FStAdFunc var_88
  loc_A8260D: FLdPr var_88
  loc_A82610:  = Me.Text
  loc_A82615: LitI2_Byte &HFF
  loc_A82617: LitI2_Byte 0
  loc_A82619: ILdRf var_90
  loc_A8261C: LitStr "Numero de Boleto"
  loc_A8261F: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A82624: FStStrNoPop var_94
  loc_A82627: FLdPr Me
  loc_A8262A: MemStStrCopy
  loc_A8262E: FFreeStr var_90 = ""
  loc_A82635: FFree1Ad var_88
  loc_A82638: FLdPr Me
  loc_A8263B: MemLdStr global_96
  loc_A8263E: LitStr vbNullString
  loc_A82641: NeStr
  loc_A82643: BranchF loc_A82668
  loc_A82646: FLdPr Me
  loc_A82649: MemLdStr global_96
  loc_A8264C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82651: FLdPr Me
  loc_A82654: VCallAd Control_ID_NumeBoleTxt
  loc_A82657: CVarAd
  loc_A8265B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82660: FFree1Var var_A4 = ""
  loc_A82663: LitI2_Byte &HFF
  loc_A82665: IStI2 Cancel
  loc_A82668: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'C1B680
  'Data Table: 4FF4BC
  loc_C1AC8C: ILdRf Button
  loc_C1AC8F: FStAd var_88 
  loc_C1AC93: FLdRfVar var_8C
  loc_C1AC96: FLdPr var_88
  loc_C1AC99:  = Me.Key
  loc_C1AC9E: FLdZeroAd var_8C
  loc_C1ACA1: FStStr var_90
  loc_C1ACA4: ILdRf var_90
  loc_C1ACA7: LitStr "btnCrear"
  loc_C1ACAA: EqStr
  loc_C1ACAC: BranchF loc_C1B025
  loc_C1ACAF: LitStr "Municipalidad de Guaymallén"
  loc_C1ACB2: LitStr "Municipalidad de Lavalle"
  loc_C1ACB5: EqStr
  loc_C1ACB7: BranchF loc_C1ACE6
  loc_C1ACBA: ImpAdCallI2 Proc_18_122_A7C448()
  loc_C1ACBF: FStStrNoPop var_8C
  loc_C1ACC2: FLdPr Me
  loc_C1ACC5: MemStStrCopy
  loc_C1ACC9: FFree1Str var_8C
  loc_C1ACCC: FLdPr Me
  loc_C1ACCF: MemLdStr global_96
  loc_C1ACD2: LitStr vbNullString
  loc_C1ACD5: NeStr
  loc_C1ACD7: BranchF loc_C1ACE6
  loc_C1ACDA: FLdPr Me
  loc_C1ACDD: MemLdStr global_96
  loc_C1ACE0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1ACE5: ExitProcHresult
  loc_C1ACE6: LitI2_Byte 1
  loc_C1ACE8: FLdPr Me
  loc_C1ACEB: MemStI2 global_76
  loc_C1ACEE: ILdRf Me
  loc_C1ACF1: CastAd
  loc_C1ACF4: FStAdFunc var_94
  loc_C1ACF7: FLdRfVar var_94
  loc_C1ACFA: ImpAdCallFPR4  = Proc_272_4_B2D678()
  loc_C1ACFF: FFree1Ad var_94
  loc_C1AD02: LitI4 0
  loc_C1AD07: LitI4 0
  loc_C1AD0C: FLdRfVar var_98
  loc_C1AD0F: Redim
  loc_C1AD19: FLdPr Me
  loc_C1AD1C: VCallAd Control_ID_dgdABMS
  loc_C1AD1F: CVarAd
  loc_C1AD23: ParmAry1St
  loc_C1AD29: FLdRfVar var_98
  loc_C1AD2C: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C1AD31: FLdRfVar var_98
  loc_C1AD34: Erase
  loc_C1AD35: ILdRf Me
  loc_C1AD38: CastAd
  loc_C1AD3B: FStAdFunc var_94
  loc_C1AD3E: FLdRfVar var_94
  loc_C1AD41: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_C1AD46: FFree1Ad var_94
  loc_C1AD49: ILdRf Me
  loc_C1AD4C: CastAd
  loc_C1AD4F: FStAdFunc var_94
  loc_C1AD52: FLdRfVar var_94
  loc_C1AD55: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_C1AD5A: FFree1Ad var_94
  loc_C1AD5D: LitI2_Byte 0
  loc_C1AD5F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1AD64: CStrDate
  loc_C1AD66: CVarStr var_A8
  loc_C1AD69: PopAdLdVar
  loc_C1AD6A: FLdPr Me
  loc_C1AD6D: VCallAd Control_ID_FeenAcpaMsk
  loc_C1AD70: FStAdFunc var_94
  loc_C1AD73: FLdPr var_94
  loc_C1AD76: LateIdSt
  loc_C1AD7B: FFree1Ad var_94
  loc_C1AD7E: FFree1Var var_A8 = ""
  loc_C1AD81: LitI2_Byte 0
  loc_C1AD83: CStrUI1
  loc_C1AD85: FStStrNoPop var_8C
  loc_C1AD88: FLdPr Me
  loc_C1AD8B: VCallAd Control_ID_NumeAcpaTxt
  loc_C1AD8E: FStAdFunc var_94
  loc_C1AD91: FLdPr var_94
  loc_C1AD94: Me.Text = from_stack_1
  loc_C1AD99: FFree1Str var_8C
  loc_C1AD9C: FFree1Ad var_94
  loc_C1AD9F: LitI2_Byte 0
  loc_C1ADA1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1ADA6: CStrDate
  loc_C1ADA8: CVarStr var_A8
  loc_C1ADAB: PopAdLdVar
  loc_C1ADAC: FLdPr Me
  loc_C1ADAF: VCallAd Control_ID_FepaAcpaMsk
  loc_C1ADB2: FStAdFunc var_94
  loc_C1ADB5: FLdPr var_94
  loc_C1ADB8: LateIdSt
  loc_C1ADBD: FFree1Ad var_94
  loc_C1ADC0: FFree1Var var_A8 = ""
  loc_C1ADC3: LitI2_Byte 0
  loc_C1ADC5: CStrUI1
  loc_C1ADC7: FStStrNoPop var_8C
  loc_C1ADCA: FLdPr Me
  loc_C1ADCD: VCallAd Control_ID_CodiEnreTxt
  loc_C1ADD0: FStAdFunc var_94
  loc_C1ADD3: FLdPr var_94
  loc_C1ADD6: Me.Text = from_stack_1
  loc_C1ADDB: FFree1Str var_8C
  loc_C1ADDE: FFree1Ad var_94
  loc_C1ADE1: LitI2_Byte 0
  loc_C1ADE3: CStrUI1
  loc_C1ADE5: FStStrNoPop var_8C
  loc_C1ADE8: FLdPr Me
  loc_C1ADEB: VCallAd Control_ID_TocoAcpaTxt
  loc_C1ADEE: FStAdFunc var_94
  loc_C1ADF1: FLdPr var_94
  loc_C1ADF4: Me.Text = from_stack_1
  loc_C1ADF9: FFree1Str var_8C
  loc_C1ADFC: FFree1Ad var_94
  loc_C1ADFF: LitI4 1
  loc_C1AE04: LitI4 1
  loc_C1AE09: LitVarStr var_C8, "0.00"
  loc_C1AE0E: FStVarCopyObj var_D8
  loc_C1AE11: FLdRfVar var_D8
  loc_C1AE14: LitVarI2 var_A8, 0
  loc_C1AE19: FLdRfVar var_E8
  loc_C1AE1C: ImpAdCallFPR4  = Format(, )
  loc_C1AE21: FLdRfVar var_E8
  loc_C1AE24: CStrVarVal var_8C
  loc_C1AE28: FLdPr Me
  loc_C1AE2B: VCallAd Control_ID_ImpoAcpaTxt
  loc_C1AE2E: FStAdFunc var_94
  loc_C1AE31: FLdPr var_94
  loc_C1AE34: Me.Text = from_stack_1
  loc_C1AE39: FFree1Str var_8C
  loc_C1AE3C: FFree1Ad var_94
  loc_C1AE3F: FFreeVar var_A8 = "": var_D8 = ""
  loc_C1AE48: LitI2_Byte 0
  loc_C1AE4A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1AE4F: CVarDate var_A8
  loc_C1AE53: FLdRfVar var_D8
  loc_C1AE56: ImpAdCallFPR4  = Year()
  loc_C1AE5B: FLdRfVar var_D8
  loc_C1AE5E: CStrVarVal var_8C
  loc_C1AE62: FLdPr Me
  loc_C1AE65: VCallAd Control_ID_PeriBoleTxt
  loc_C1AE68: FStAdFunc var_94
  loc_C1AE6B: FLdPr var_94
  loc_C1AE6E: Me.Text = from_stack_1
  loc_C1AE73: FFree1Str var_8C
  loc_C1AE76: FFree1Ad var_94
  loc_C1AE79: FFreeVar var_A8 = ""
  loc_C1AE80: LitI2_Byte 0
  loc_C1AE82: CStrUI1
  loc_C1AE84: FStStrNoPop var_8C
  loc_C1AE87: FLdPr Me
  loc_C1AE8A: VCallAd Control_ID_NumeBoleTxt
  loc_C1AE8D: FStAdFunc var_94
  loc_C1AE90: FLdPr var_94
  loc_C1AE93: Me.Text = from_stack_1
  loc_C1AE98: FFree1Str var_8C
  loc_C1AE9B: FFree1Ad var_94
  loc_C1AE9E: LitStr "0"
  loc_C1AEA1: FLdPr Me
  loc_C1AEA4: VCallAd Control_ID_CantBoleTxt
  loc_C1AEA7: FStAdFunc var_94
  loc_C1AEAA: FLdPr var_94
  loc_C1AEAD: Me.Text = from_stack_1
  loc_C1AEB2: FFree1Ad var_94
  loc_C1AEB5: LitStr "0"
  loc_C1AEB8: FLdPr Me
  loc_C1AEBB: VCallAd Control_ID_TotaBoleTxt
  loc_C1AEBE: FStAdFunc var_94
  loc_C1AEC1: FLdPr var_94
  loc_C1AEC4: Me.Text = from_stack_1
  loc_C1AEC9: FFree1Ad var_94
  loc_C1AECC: LitStr "SELECT pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.CodiOfic, pago.CuenCtct, infogov.persona.DetaPers, boleto.TipoBole, "
  loc_C1AECF: LitStr " pago.CapiPago, pago.RecaPago, pago.DecaPago, pago.DerePago, pago.IntePago, pago.ExenPago, pago.AprePago, pago.TotaPago FROM pago "
  loc_C1AED2: ConcatStr
  loc_C1AED3: FStStrNoPop var_8C
  loc_C1AED6: LitStr " LEFT JOIN boleto ON pago.PeriBole = boleto.PeriBole"
  loc_C1AED9: ConcatStr
  loc_C1AEDA: FStStrNoPop var_EC
  loc_C1AEDD: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_C1AEE0: ConcatStr
  loc_C1AEE1: FStStrNoPop var_F0
  loc_C1AEE4: LitStr " LEFT JOIN infogov.persona ON pago.CucuPers = infogov.persona.CucuPers"
  loc_C1AEE7: ConcatStr
  loc_C1AEE8: FStStrNoPop var_F4
  loc_C1AEEB: LitStr " WHERE FeenAcpa = '0000-00-00'"
  loc_C1AEEE: ConcatStr
  loc_C1AEEF: FStStrNoPop var_F8
  loc_C1AEF2: LitStr " AND NumeAcpa = 0"
  loc_C1AEF5: ConcatStr
  loc_C1AEF6: FStStrNoPop var_FC
  loc_C1AEF9: LitStr "  ORDER BY pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole"
  loc_C1AEFC: ConcatStr
  loc_C1AEFD: FStStrNoPop var_100
  loc_C1AF00: FLdPr Me
  loc_C1AF03: MemLdRfVar from_stack_1.global_64
  loc_C1AF06: NewIfNullPr clspago
  loc_C1AF09: Call clspago.RedefineRS(from_stack_1v)
  loc_C1AF0E: FFreeStr var_8C = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C1AF1F: LitI4 0
  loc_C1AF24: LitI4 &HD
  loc_C1AF29: FLdRfVar var_98
  loc_C1AF2C: Redim
  loc_C1AF36: FLdPr Me
  loc_C1AF39: VCallAd Control_ID_FeenAcpaMsk
  loc_C1AF3C: CVarAd
  loc_C1AF40: ParmAry1St
  loc_C1AF46: FLdPr Me
  loc_C1AF49: VCallAd Control_ID_FeenAcpaCmd
  loc_C1AF4C: CVarAd
  loc_C1AF50: ParmAry1St
  loc_C1AF56: FLdPr Me
  loc_C1AF59: VCallAd Control_ID_NumeAcpaTxt
  loc_C1AF5C: CVarAd
  loc_C1AF60: ParmAry1St
  loc_C1AF66: FLdPr Me
  loc_C1AF69: VCallAd Control_ID_FepaAcpaMsk
  loc_C1AF6C: CVarAd
  loc_C1AF70: ParmAry1St
  loc_C1AF76: FLdPr Me
  loc_C1AF79: VCallAd Control_ID_FepaAcpaCmd
  loc_C1AF7C: CVarAd
  loc_C1AF80: ParmAry1St
  loc_C1AF86: FLdPr Me
  loc_C1AF89: VCallAd Control_ID_CodiEnreTxt
  loc_C1AF8C: CVarAd
  loc_C1AF90: ParmAry1St
  loc_C1AF96: FLdPr Me
  loc_C1AF99: VCallAd Control_ID_CodiEnreCmd
  loc_C1AF9C: CVarAd
  loc_C1AFA0: ParmAry1St
  loc_C1AFA6: FLdPr Me
  loc_C1AFA9: VCallAd Control_ID_DetaEnreLbl
  loc_C1AFAC: CVarAd
  loc_C1AFB0: ParmAry1St
  loc_C1AFB6: FLdPr Me
  loc_C1AFB9: VCallAd Control_ID_TocoAcpaTxt
  loc_C1AFBC: CVarAd
  loc_C1AFC0: ParmAry1St
  loc_C1AFC6: FLdPr Me
  loc_C1AFC9: VCallAd Control_ID_ImpoAcpaTxt
  loc_C1AFCC: CVarAd
  loc_C1AFD0: ParmAry1St
  loc_C1AFD6: FLdPr Me
  loc_C1AFD9: VCallAd Control_ID_BoletoTxt
  loc_C1AFDC: CVarAd
  loc_C1AFE0: ParmAry1St
  loc_C1AFE6: FLdPr Me
  loc_C1AFE9: VCallAd Control_ID_PeriBoleTxt
  loc_C1AFEC: CVarAd
  loc_C1AFF0: ParmAry1St
  loc_C1AFF6: FLdPr Me
  loc_C1AFF9: VCallAd Control_ID_NumeBoleTxt
  loc_C1AFFC: CVarAd
  loc_C1B000: ParmAry1St
  loc_C1B006: FLdPr Me
  loc_C1B009: VCallAd Control_ID_AgregarBoletoCmd
  loc_C1B00C: CVarAd
  loc_C1B010: ParmAry1St
  loc_C1B016: FLdRfVar var_98
  loc_C1B019: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C1B01E: FLdRfVar var_98
  loc_C1B021: Erase
  loc_C1B022: Branch loc_C1B67C
  loc_C1B025: ILdRf var_90
  loc_C1B028: LitStr "btnModificar"
  loc_C1B02B: EqStr
  loc_C1B02D: BranchF loc_C1B236
  loc_C1B030: FLdRfVar var_1B4
  loc_C1B033: FLdPr Me
  loc_C1B036: MemLdRfVar from_stack_1.global_52
  loc_C1B039: NewIfNullPr clsacrepago
  loc_C1B03C: from_stack_1 = clsacrepago.RecordCount
  loc_C1B041: ILdRf var_1B4
  loc_C1B044: LitI4 0
  loc_C1B049: GtI4
  loc_C1B04A: BranchF loc_C1B233
  loc_C1B04D: LitStr "Municipalidad de Guaymallén"
  loc_C1B050: LitStr "Municipalidad de Lavalle"
  loc_C1B053: EqStr
  loc_C1B055: BranchF loc_C1B084
  loc_C1B058: ImpAdCallI2 Proc_18_122_A7C448()
  loc_C1B05D: FStStrNoPop var_8C
  loc_C1B060: FLdPr Me
  loc_C1B063: MemStStrCopy
  loc_C1B067: FFree1Str var_8C
  loc_C1B06A: FLdPr Me
  loc_C1B06D: MemLdStr global_96
  loc_C1B070: LitStr vbNullString
  loc_C1B073: NeStr
  loc_C1B075: BranchF loc_C1B084
  loc_C1B078: FLdPr Me
  loc_C1B07B: MemLdStr global_96
  loc_C1B07E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1B083: ExitProcHresult
  loc_C1B084: FLdRfVar var_8C
  loc_C1B087: FLdPr Me
  loc_C1B08A: MemLdRfVar from_stack_1.global_52
  loc_C1B08D: NewIfNullPr clsacrepago
  loc_C1B090: from_stack_1 = clsacrepago.ActuAcpa
  loc_C1B095: ILdRf var_8C
  loc_C1B098: LitStr "No"
  loc_C1B09B: EqStr
  loc_C1B09D: FFree1Str var_8C
  loc_C1B0A0: BranchF loc_C1B22B
  loc_C1B0A3: LitI2_Byte 2
  loc_C1B0A5: FLdPr Me
  loc_C1B0A8: MemStI2 global_76
  loc_C1B0AB: ILdRf Me
  loc_C1B0AE: CastAd
  loc_C1B0B1: FStAdFunc var_94
  loc_C1B0B4: FLdRfVar var_94
  loc_C1B0B7: ImpAdCallFPR4  = Proc_272_4_B2D678()
  loc_C1B0BC: FFree1Ad var_94
  loc_C1B0BF: LitI4 0
  loc_C1B0C4: LitI4 0
  loc_C1B0C9: FLdRfVar var_98
  loc_C1B0CC: Redim
  loc_C1B0D6: FLdPr Me
  loc_C1B0D9: VCallAd Control_ID_dgdABMS
  loc_C1B0DC: CVarAd
  loc_C1B0E0: ParmAry1St
  loc_C1B0E6: FLdRfVar var_98
  loc_C1B0E9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C1B0EE: FLdRfVar var_98
  loc_C1B0F1: Erase
  loc_C1B0F2: ILdRf Me
  loc_C1B0F5: CastAd
  loc_C1B0F8: FStAdFunc var_94
  loc_C1B0FB: FLdRfVar var_94
  loc_C1B0FE: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_C1B103: FFree1Ad var_94
  loc_C1B106: LitI2_Byte 0
  loc_C1B108: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1B10D: CVarDate var_A8
  loc_C1B111: FLdRfVar var_D8
  loc_C1B114: ImpAdCallFPR4  = Year()
  loc_C1B119: FLdRfVar var_D8
  loc_C1B11C: CStrVarVal var_8C
  loc_C1B120: FLdPr Me
  loc_C1B123: VCallAd Control_ID_PeriBoleTxt
  loc_C1B126: FStAdFunc var_94
  loc_C1B129: FLdPr var_94
  loc_C1B12C: Me.Text = from_stack_1
  loc_C1B131: FFree1Str var_8C
  loc_C1B134: FFree1Ad var_94
  loc_C1B137: FFreeVar var_A8 = ""
  loc_C1B13E: LitStr vbNullString
  loc_C1B141: FLdPr Me
  loc_C1B144: VCallAd Control_ID_NumeBoleTxt
  loc_C1B147: FStAdFunc var_94
  loc_C1B14A: FLdPr var_94
  loc_C1B14D: Me.Text = from_stack_1
  loc_C1B152: FFree1Ad var_94
  loc_C1B155: LitI4 0
  loc_C1B15A: LitI4 &HA
  loc_C1B15F: FLdRfVar var_98
  loc_C1B162: Redim
  loc_C1B16C: FLdPr Me
  loc_C1B16F: VCallAd Control_ID_FepaAcpaMsk
  loc_C1B172: CVarAd
  loc_C1B176: ParmAry1St
  loc_C1B17C: FLdPr Me
  loc_C1B17F: VCallAd Control_ID_FepaAcpaCmd
  loc_C1B182: CVarAd
  loc_C1B186: ParmAry1St
  loc_C1B18C: FLdPr Me
  loc_C1B18F: VCallAd Control_ID_CodiEnreTxt
  loc_C1B192: CVarAd
  loc_C1B196: ParmAry1St
  loc_C1B19C: FLdPr Me
  loc_C1B19F: VCallAd Control_ID_CodiEnreCmd
  loc_C1B1A2: CVarAd
  loc_C1B1A6: ParmAry1St
  loc_C1B1AC: FLdPr Me
  loc_C1B1AF: VCallAd Control_ID_DetaEnreLbl
  loc_C1B1B2: CVarAd
  loc_C1B1B6: ParmAry1St
  loc_C1B1BC: FLdPr Me
  loc_C1B1BF: VCallAd Control_ID_TocoAcpaTxt
  loc_C1B1C2: CVarAd
  loc_C1B1C6: ParmAry1St
  loc_C1B1CC: FLdPr Me
  loc_C1B1CF: VCallAd Control_ID_ImpoAcpaTxt
  loc_C1B1D2: CVarAd
  loc_C1B1D6: ParmAry1St
  loc_C1B1DC: FLdPr Me
  loc_C1B1DF: VCallAd Control_ID_BoletoTxt
  loc_C1B1E2: CVarAd
  loc_C1B1E6: ParmAry1St
  loc_C1B1EC: FLdPr Me
  loc_C1B1EF: VCallAd Control_ID_PeriBoleTxt
  loc_C1B1F2: CVarAd
  loc_C1B1F6: ParmAry1St
  loc_C1B1FC: FLdPr Me
  loc_C1B1FF: VCallAd Control_ID_NumeBoleTxt
  loc_C1B202: CVarAd
  loc_C1B206: ParmAry1St
  loc_C1B20C: FLdPr Me
  loc_C1B20F: VCallAd Control_ID_AgregarBoletoCmd
  loc_C1B212: CVarAd
  loc_C1B216: ParmAry1St
  loc_C1B21C: FLdRfVar var_98
  loc_C1B21F: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C1B224: FLdRfVar var_98
  loc_C1B227: Erase
  loc_C1B228: Branch loc_C1B233
  loc_C1B22B: LitStr "La caja se encuentra actualizada. No se puede modificar. Verifique..."
  loc_C1B22E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1B233: Branch loc_C1B67C
  loc_C1B236: ILdRf var_90
  loc_C1B239: LitStr "btnEliminar"
  loc_C1B23C: EqStr
  loc_C1B23E: BranchF loc_C1B341
  loc_C1B241: FLdRfVar var_1B4
  loc_C1B244: FLdPr Me
  loc_C1B247: MemLdRfVar from_stack_1.global_52
  loc_C1B24A: NewIfNullPr clsacrepago
  loc_C1B24D: from_stack_1 = clsacrepago.RecordCount
  loc_C1B252: ILdRf var_1B4
  loc_C1B255: LitI4 0
  loc_C1B25A: GtI4
  loc_C1B25B: BranchF loc_C1B33E
  loc_C1B25E: LitStr "Municipalidad de Guaymallén"
  loc_C1B261: LitStr "Municipalidad de Lavalle"
  loc_C1B264: EqStr
  loc_C1B266: BranchF loc_C1B295
  loc_C1B269: ImpAdCallI2 Proc_18_122_A7C448()
  loc_C1B26E: FStStrNoPop var_8C
  loc_C1B271: FLdPr Me
  loc_C1B274: MemStStrCopy
  loc_C1B278: FFree1Str var_8C
  loc_C1B27B: FLdPr Me
  loc_C1B27E: MemLdStr global_96
  loc_C1B281: LitStr vbNullString
  loc_C1B284: NeStr
  loc_C1B286: BranchF loc_C1B295
  loc_C1B289: FLdPr Me
  loc_C1B28C: MemLdStr global_96
  loc_C1B28F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1B294: ExitProcHresult
  loc_C1B295: LitVar_Missing var_110
  loc_C1B298: LitVar_Missing var_E8
  loc_C1B29B: LitVarStr var_C8, "InfoGov"
  loc_C1B2A0: FStVarCopyObj var_D8
  loc_C1B2A3: FLdRfVar var_D8
  loc_C1B2A6: LitI4 4
  loc_C1B2AB: LitVarStr var_B8, "¿Desea borrar el grupo seleccionado?"
  loc_C1B2B0: FStVarCopyObj var_A8
  loc_C1B2B3: FLdRfVar var_A8
  loc_C1B2B6: ImpAdCallI2 MsgBox(, , , , )
  loc_C1B2BB: LitI4 6
  loc_C1B2C0: EqI4
  loc_C1B2C1: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_C1B2CC: BranchF loc_C1B339
  loc_C1B2CF: FLdRfVar var_A8
  loc_C1B2D2: FLdPr Me
  loc_C1B2D5: MemLdRfVar from_stack_1.global_52
  loc_C1B2D8: NewIfNullPr clsacrepago
  loc_C1B2DB: from_stack_1 = clsacrepago.FeenAcpa
  loc_C1B2E0: FLdRfVar var_1D6
  loc_C1B2E3: FLdPr Me
  loc_C1B2E6: MemLdRfVar from_stack_1.global_52
  loc_C1B2E9: NewIfNullPr clsacrepago
  loc_C1B2EC: from_stack_1 = clsacrepago.NumeAcpa
  loc_C1B2F1: FLdRfVar var_EC
  loc_C1B2F4: FLdI2 var_1D6
  loc_C1B2F7: FLdRfVar var_A8
  loc_C1B2FA: CStrVarVal var_8C
  loc_C1B2FE: FLdPr Me
  loc_C1B301: MemLdRfVar from_stack_1.global_60
  loc_C1B304: NewIfNullPr clspago
  loc_C1B307: from_stack_3v = clspago.EliminarAcrepago(from_stack_1v, from_stack_2v)
  loc_C1B30C: ILdRf var_EC
  loc_C1B30F: FLdPr Me
  loc_C1B312: MemStStrCopy
  loc_C1B316: FFreeStr var_8C = ""
  loc_C1B31D: FFree1Var var_A8 = ""
  loc_C1B320: FLdPr Me
  loc_C1B323: MemLdStr global_96
  loc_C1B326: LitStr vbNullString
  loc_C1B329: NeStr
  loc_C1B32B: BranchF loc_C1B339
  loc_C1B32E: FLdPr Me
  loc_C1B331: MemLdStr global_96
  loc_C1B334: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1B339: Call cmdCancelar_Click()
  loc_C1B33E: Branch loc_C1B67C
  loc_C1B341: ILdRf var_90
  loc_C1B344: LitStr "btnGuardar"
  loc_C1B347: EqStr
  loc_C1B349: BranchF loc_C1B578
  loc_C1B34C: LitI2_Byte 0
  loc_C1B34E: PopTmpLdAd2 var_1D6
  loc_C1B351: Call FeenAcpaMsk_UnknownEvent_8()
  loc_C1B356: FLdPr Me
  loc_C1B359: MemLdStr global_96
  loc_C1B35C: LitStr vbNullString
  loc_C1B35F: NeStr
  loc_C1B361: BranchF loc_C1B365
  loc_C1B364: ExitProcHresult
  loc_C1B365: LitI2_Byte 0
  loc_C1B367: PopTmpLdAd2 var_1D6
  loc_C1B36A: Call NumeAcpaTxt_Validate(from_stack_1v)
  loc_C1B36F: FLdPr Me
  loc_C1B372: MemLdStr global_96
  loc_C1B375: LitStr vbNullString
  loc_C1B378: NeStr
  loc_C1B37A: BranchF loc_C1B37E
  loc_C1B37D: ExitProcHresult
  loc_C1B37E: LitI2_Byte 0
  loc_C1B380: PopTmpLdAd2 var_1D6
  loc_C1B383: Call FepaAcpaMsk_UnknownEvent_8()
  loc_C1B388: FLdPr Me
  loc_C1B38B: MemLdStr global_96
  loc_C1B38E: LitStr vbNullString
  loc_C1B391: NeStr
  loc_C1B393: BranchF loc_C1B397
  loc_C1B396: ExitProcHresult
  loc_C1B397: LitI2_Byte 0
  loc_C1B399: PopTmpLdAd2 var_1D6
  loc_C1B39C: Call CodiEnreTxt_Validate(from_stack_1v)
  loc_C1B3A1: FLdPr Me
  loc_C1B3A4: MemLdStr global_96
  loc_C1B3A7: LitStr vbNullString
  loc_C1B3AA: NeStr
  loc_C1B3AC: BranchF loc_C1B3B0
  loc_C1B3AF: ExitProcHresult
  loc_C1B3B0: FLdPr Me
  loc_C1B3B3: MemLdI2 global_76
  loc_C1B3B6: FStI2 var_1D8
  loc_C1B3B9: FLdI2 var_1D8
  loc_C1B3BC: LitI2_Byte 1
  loc_C1B3BE: EqI2
  loc_C1B3BF: BranchF loc_C1B496
  loc_C1B3C2: FLdPr Me
  loc_C1B3C5: VCallAd Control_ID_FeenAcpaMsk
  loc_C1B3C8: FStAdFunc var_94
  loc_C1B3CB: FLdPr var_94
  loc_C1B3CE: LateIdLdVar var_A8 DispID_15 0
  loc_C1B3D5: PopAd
  loc_C1B3D7: FLdRfVar var_8C
  loc_C1B3DA: FLdPr Me
  loc_C1B3DD: VCallAd Control_ID_NumeAcpaTxt
  loc_C1B3E0: FStAdFunc var_1DC
  loc_C1B3E3: FLdPr var_1DC
  loc_C1B3E6:  = Me.Text
  loc_C1B3EB: FLdRfVar var_EC
  loc_C1B3EE: FLdPr Me
  loc_C1B3F1: VCallAd Control_ID_CodiEnreTxt
  loc_C1B3F4: FStAdFunc var_1E0
  loc_C1B3F7: FLdPr var_1E0
  loc_C1B3FA:  = Me.Text
  loc_C1B3FF: FLdPr Me
  loc_C1B402: VCallAd Control_ID_FepaAcpaMsk
  loc_C1B405: FStAdFunc var_1E4
  loc_C1B408: FLdPr var_1E4
  loc_C1B40B: LateIdLdVar var_D8 DispID_15 0
  loc_C1B412: PopAd
  loc_C1B414: FLdRfVar var_F0
  loc_C1B417: FLdPr Me
  loc_C1B41A: VCallAd Control_ID_TocoAcpaTxt
  loc_C1B41D: FStAdFunc var_1E8
  loc_C1B420: FLdPr var_1E8
  loc_C1B423:  = Me.Text
  loc_C1B428: FLdRfVar var_F4
  loc_C1B42B: FLdPr Me
  loc_C1B42E: VCallAd Control_ID_ImpoAcpaTxt
  loc_C1B431: FStAdFunc var_1EC
  loc_C1B434: FLdPr var_1EC
  loc_C1B437:  = Me.Text
  loc_C1B43C: ILdRf var_F4
  loc_C1B43F: CR8Str
  loc_C1B441: PopFPR8
  loc_C1B442: ILdRf var_F0
  loc_C1B445: CI4Str
  loc_C1B446: FLdRfVar var_D8
  loc_C1B449: CStrVarTmp
  loc_C1B44A: CVarStr var_110
  loc_C1B44D: PopAdLdVar
  loc_C1B44E: ILdRf var_EC
  loc_C1B451: CI2Str
  loc_C1B453: ILdRf var_8C
  loc_C1B456: CI2Str
  loc_C1B458: FLdRfVar var_A8
  loc_C1B45B: CStrVarTmp
  loc_C1B45C: CVarStr var_E8
  loc_C1B45F: PopAdLdVar
  loc_C1B460: FLdPr Me
  loc_C1B463: MemLdRfVar from_stack_1.global_52
  loc_C1B466: NewIfNullPr clsacrepago
  loc_C1B469: Call clsacrepago.ModificarGlobal(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C1B46E: FFreeStr var_8C = "": var_EC = "": var_F0 = ""
  loc_C1B479: FFreeAd var_94 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_C1B488: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_C1B493: Branch loc_C1B570
  loc_C1B496: FLdI2 var_1D8
  loc_C1B499: LitI2_Byte 2
  loc_C1B49B: EqI2
  loc_C1B49C: BranchF loc_C1B570
  loc_C1B49F: FLdPr Me
  loc_C1B4A2: VCallAd Control_ID_FeenAcpaMsk
  loc_C1B4A5: FStAdFunc var_94
  loc_C1B4A8: FLdPr var_94
  loc_C1B4AB: LateIdLdVar var_A8 DispID_15 0
  loc_C1B4B2: PopAd
  loc_C1B4B4: FLdRfVar var_8C
  loc_C1B4B7: FLdPr Me
  loc_C1B4BA: VCallAd Control_ID_NumeAcpaTxt
  loc_C1B4BD: FStAdFunc var_1DC
  loc_C1B4C0: FLdPr var_1DC
  loc_C1B4C3:  = Me.Text
  loc_C1B4C8: FLdRfVar var_EC
  loc_C1B4CB: FLdPr Me
  loc_C1B4CE: VCallAd Control_ID_CodiEnreTxt
  loc_C1B4D1: FStAdFunc var_1E0
  loc_C1B4D4: FLdPr var_1E0
  loc_C1B4D7:  = Me.Text
  loc_C1B4DC: FLdPr Me
  loc_C1B4DF: VCallAd Control_ID_FepaAcpaMsk
  loc_C1B4E2: FStAdFunc var_1E4
  loc_C1B4E5: FLdPr var_1E4
  loc_C1B4E8: LateIdLdVar var_D8 DispID_15 0
  loc_C1B4EF: PopAd
  loc_C1B4F1: FLdRfVar var_F0
  loc_C1B4F4: FLdPr Me
  loc_C1B4F7: VCallAd Control_ID_TocoAcpaTxt
  loc_C1B4FA: FStAdFunc var_1E8
  loc_C1B4FD: FLdPr var_1E8
  loc_C1B500:  = Me.Text
  loc_C1B505: FLdRfVar var_F4
  loc_C1B508: FLdPr Me
  loc_C1B50B: VCallAd Control_ID_ImpoAcpaTxt
  loc_C1B50E: FStAdFunc var_1EC
  loc_C1B511: FLdPr var_1EC
  loc_C1B514:  = Me.Text
  loc_C1B519: ILdRf var_F4
  loc_C1B51C: CR8Str
  loc_C1B51E: PopFPR8
  loc_C1B51F: ILdRf var_F0
  loc_C1B522: CI4Str
  loc_C1B523: FLdRfVar var_D8
  loc_C1B526: CStrVarTmp
  loc_C1B527: CVarStr var_110
  loc_C1B52A: PopAdLdVar
  loc_C1B52B: ILdRf var_EC
  loc_C1B52E: CI2Str
  loc_C1B530: ILdRf var_8C
  loc_C1B533: CI2Str
  loc_C1B535: FLdRfVar var_A8
  loc_C1B538: CStrVarTmp
  loc_C1B539: CVarStr var_E8
  loc_C1B53C: PopAdLdVar
  loc_C1B53D: FLdPr Me
  loc_C1B540: MemLdRfVar from_stack_1.global_52
  loc_C1B543: NewIfNullPr clsacrepago
  loc_C1B546: Call clsacrepago.ModificarGlobal(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C1B54B: FFreeStr var_8C = "": var_EC = "": var_F0 = ""
  loc_C1B556: FFreeAd var_94 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_C1B565: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_C1B570: Call cmdCancelar_Click()
  loc_C1B575: Branch loc_C1B67C
  loc_C1B578: ILdRf var_90
  loc_C1B57B: LitStr "btnCancelar"
  loc_C1B57E: EqStr
  loc_C1B580: BranchF loc_C1B58B
  loc_C1B583: Call cmdCancelar_Click()
  loc_C1B588: Branch loc_C1B67C
  loc_C1B58B: ILdRf var_90
  loc_C1B58E: LitStr "btnPrimero"
  loc_C1B591: EqStr
  loc_C1B593: BranchF loc_C1B5A7
  loc_C1B596: FLdPr Me
  loc_C1B599: MemLdRfVar from_stack_1.global_52
  loc_C1B59C: NewIfNullPr clsacrepago
  loc_C1B59F: Call clsacrepago.MoveFirst()
  loc_C1B5A4: Branch loc_C1B67C
  loc_C1B5A7: ILdRf var_90
  loc_C1B5AA: LitStr "btnAnterior"
  loc_C1B5AD: EqStr
  loc_C1B5AF: BranchF loc_C1B5C3
  loc_C1B5B2: FLdPr Me
  loc_C1B5B5: MemLdRfVar from_stack_1.global_52
  loc_C1B5B8: NewIfNullPr clsacrepago
  loc_C1B5BB: Call clsacrepago.MovePrevious()
  loc_C1B5C0: Branch loc_C1B67C
  loc_C1B5C3: ILdRf var_90
  loc_C1B5C6: LitStr "btnSiguiente"
  loc_C1B5C9: EqStr
  loc_C1B5CB: BranchF loc_C1B5DF
  loc_C1B5CE: FLdPr Me
  loc_C1B5D1: MemLdRfVar from_stack_1.global_52
  loc_C1B5D4: NewIfNullPr clsacrepago
  loc_C1B5D7: Call clsacrepago.MoveNext()
  loc_C1B5DC: Branch loc_C1B67C
  loc_C1B5DF: ILdRf var_90
  loc_C1B5E2: LitStr "btnUltimo"
  loc_C1B5E5: EqStr
  loc_C1B5E7: BranchF loc_C1B5FB
  loc_C1B5EA: FLdPr Me
  loc_C1B5ED: MemLdRfVar from_stack_1.global_52
  loc_C1B5F0: NewIfNullPr clsacrepago
  loc_C1B5F3: Call clsacrepago.MoveLast()
  loc_C1B5F8: Branch loc_C1B67C
  loc_C1B5FB: ILdRf var_90
  loc_C1B5FE: LitStr "btnFiltrar"
  loc_C1B601: EqStr
  loc_C1B603: BranchF loc_C1B609
  loc_C1B606: Branch loc_C1B67C
  loc_C1B609: ILdRf var_90
  loc_C1B60C: LitStr "btnBuscar"
  loc_C1B60F: EqStr
  loc_C1B611: BranchF loc_C1B617
  loc_C1B614: Branch loc_C1B67C
  loc_C1B617: ILdRf var_90
  loc_C1B61A: LitStr "btnImprimir"
  loc_C1B61D: EqStr
  loc_C1B61F: BranchF loc_C1B625
  loc_C1B622: Branch loc_C1B67C
  loc_C1B625: ILdRf var_90
  loc_C1B628: LitStr "btnAyuda"
  loc_C1B62B: EqStr
  loc_C1B62D: BranchF loc_C1B65C
  loc_C1B630: LitVar_Missing var_110
  loc_C1B633: LitVar_Missing var_E8
  loc_C1B636: LitVar_Missing var_D8
  loc_C1B639: LitI4 0
  loc_C1B63E: LitVarStr var_B8, "Opcion no disponible en esta version."
  loc_C1B643: FStVarCopyObj var_A8
  loc_C1B646: FLdRfVar var_A8
  loc_C1B649: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C1B64E: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_C1B659: Branch loc_C1B67C
  loc_C1B65C: ILdRf var_90
  loc_C1B65F: LitStr "btnSalir"
  loc_C1B662: EqStr
  loc_C1B664: BranchF loc_C1B67C
  loc_C1B667: ILdRf Me
  loc_C1B66A: FStAdNoPop
  loc_C1B66E: ImpAdLdRf MemVar_D9C5D8
  loc_C1B671: NewIfNullPr Global
  loc_C1B674: Global.Unload from_stack_1
  loc_C1B679: FFree1Ad var_94
  loc_C1B67C: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_0 '9C3C38
  'Data Table: 4FF4BC
  loc_9C3C24: FLdPr Me
  loc_9C3C27: VCallAd Control_ID_FeenAcpaMsk
  loc_9C3C2A: CVarAd
  loc_9C3C2E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3C33: FFree1Var var_94 = ""
  loc_9C3C36: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_8 'ABD14C
  'Data Table: 4FF4BC
  loc_ABD054: FLdPr Me
  loc_ABD057: VCallAd Control_ID_FeenAcpaMsk
  loc_ABD05A: FStAdFunc var_88
  loc_ABD05D: FLdPr var_88
  loc_ABD060: LateIdLdVar var_98 DispID_13 -32767
  loc_ABD067: CBoolVar
  loc_ABD069: LitI2_Byte &HFF
  loc_ABD06B: EqI2
  loc_ABD06C: FFree1Ad var_88
  loc_ABD06F: FFree1Var var_98 = ""
  loc_ABD072: BranchF loc_ABD14A
  loc_ABD075: LitVarStr var_A8, vbNullString
  loc_ABD07A: PopAdLdVar
  loc_ABD07B: FLdPr Me
  loc_ABD07E: VCallAd Control_ID_FeenAcpaMsk
  loc_ABD081: FStAdFunc var_88
  loc_ABD084: FLdPr var_88
  loc_ABD087: LateIdSt
  loc_ABD08C: FFree1Ad var_88
  loc_ABD08F: FLdPr Me
  loc_ABD092: VCallAd Control_ID_FeenAcpaMsk
  loc_ABD095: FStAdFunc var_88
  loc_ABD098: FLdPr var_88
  loc_ABD09B: LateIdLdVar var_98 DispID_22 0
  loc_ABD0A2: CStrVarTmp
  loc_ABD0A3: FStStrNoPop var_BC
  loc_ABD0A6: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_ABD0AB: FStStrNoPop var_C0
  loc_ABD0AE: FLdPr Me
  loc_ABD0B1: MemStStrCopy
  loc_ABD0B5: FFreeStr var_BC = ""
  loc_ABD0BC: FFree1Ad var_88
  loc_ABD0BF: FFree1Var var_98 = ""
  loc_ABD0C2: LitVarStr var_A8, "##/##/####"
  loc_ABD0C7: PopAdLdVar
  loc_ABD0C8: FLdPr Me
  loc_ABD0CB: VCallAd Control_ID_FeenAcpaMsk
  loc_ABD0CE: FStAdFunc var_88
  loc_ABD0D1: FLdPr var_88
  loc_ABD0D4: LateIdSt
  loc_ABD0D9: FFree1Ad var_88
  loc_ABD0DC: LitVarI2 var_A8, 10
  loc_ABD0E1: PopAdLdVar
  loc_ABD0E2: FLdPr Me
  loc_ABD0E5: VCallAd Control_ID_FeenAcpaMsk
  loc_ABD0E8: FStAdFunc var_88
  loc_ABD0EB: FLdPr var_88
  loc_ABD0EE: LateIdSt
  loc_ABD0F3: FFree1Ad var_88
  loc_ABD0F6: FLdPr Me
  loc_ABD0F9: MemLdStr global_96
  loc_ABD0FC: LitStr vbNullString
  loc_ABD0FF: NeStr
  loc_ABD101: BranchF loc_ABD14A
  loc_ABD104: FLdPr Me
  loc_ABD107: MemLdStr global_96
  loc_ABD10A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABD10F: LitI2_Byte 0
  loc_ABD111: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABD116: CStrDate
  loc_ABD118: CVarStr var_98
  loc_ABD11B: PopAdLdVar
  loc_ABD11C: FLdPr Me
  loc_ABD11F: VCallAd Control_ID_FeenAcpaMsk
  loc_ABD122: FStAdFunc var_88
  loc_ABD125: FLdPr var_88
  loc_ABD128: LateIdSt
  loc_ABD12D: FFree1Ad var_88
  loc_ABD130: FFree1Var var_98 = ""
  loc_ABD133: FLdPr Me
  loc_ABD136: VCallAd Control_ID_FeenAcpaMsk
  loc_ABD139: CVarAd
  loc_ABD13D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABD142: FFree1Var var_98 = ""
  loc_ABD145: LitI2_Byte &HFF
  loc_ABD147: IStI2 Button
  loc_ABD14A: ExitProcHresult
End Sub

Private Sub BoletoTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'CCEBD0
  'Data Table: 4FF4BC
  loc_CCC5C0: LitI2_Byte 0
  loc_CCC5C2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CCC5C7: FStFPR8 var_A0
  loc_CCC5CA: FLdRfVar var_A8
  loc_CCC5CD: FLdPr Me
  loc_CCC5D0: VCallAd Control_ID_BoletoTxt
  loc_CCC5D3: FStAdFunc var_A4
  loc_CCC5D6: FLdPr var_A4
  loc_CCC5D9:  = Me.Text
  loc_CCC5DE: ILdRf var_A8
  loc_CCC5E1: FnLenStr
  loc_CCC5E2: LitI4 &H36
  loc_CCC5E7: EqI4
  loc_CCC5E8: FFree1Str var_A8
  loc_CCC5EB: FFree1Ad var_A4
  loc_CCC5EE: BranchF loc_CCEBCC
  loc_CCC5F1: FLdPr Me
  loc_CCC5F4: VCallAd Control_ID_FeenAcpaMsk
  loc_CCC5F7: FStAdFunc var_A4
  loc_CCC5FA: FLdPr var_A4
  loc_CCC5FD: LateIdLdVar var_B8 DispID_15 0
  loc_CCC604: PopAd
  loc_CCC606: FLdRfVar var_A8
  loc_CCC609: FLdPr Me
  loc_CCC60C: VCallAd Control_ID_NumeAcpaTxt
  loc_CCC60F: FStAdFunc var_BC
  loc_CCC612: FLdPr var_BC
  loc_CCC615:  = Me.Text
  loc_CCC61A: ILdRf var_A8
  loc_CCC61D: CI4Str
  loc_CCC61E: FLdRfVar var_B8
  loc_CCC621: CStrVarTmp
  loc_CCC622: FStStrNoPop var_C0
  loc_CCC625: ImpAdCallI2 Proc_18_91_AC1E90(, )
  loc_CCC62A: FStStrNoPop var_C4
  loc_CCC62D: FLdPr Me
  loc_CCC630: MemStStrCopy
  loc_CCC634: FFreeStr var_C0 = "": var_A8 = ""
  loc_CCC63D: FFreeAd var_A4 = ""
  loc_CCC644: FFree1Var var_B8 = ""
  loc_CCC647: FLdPr Me
  loc_CCC64A: MemLdStr global_96
  loc_CCC64D: LitStr vbNullString
  loc_CCC650: NeStr
  loc_CCC652: BranchF loc_CCC673
  loc_CCC655: FLdPr Me
  loc_CCC658: MemLdStr global_96
  loc_CCC65B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCC660: FLdPr Me
  loc_CCC663: VCallAd Control_ID_BoletoTxt
  loc_CCC666: CVarAd
  loc_CCC66A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CCC66F: FFree1Var var_B8 = ""
  loc_CCC672: ExitProcHresult
  loc_CCC673: LitI2_Byte 0
  loc_CCC675: PopTmpLdAd2 var_C6
  loc_CCC678: Call FeenAcpaMsk_UnknownEvent_8()
  loc_CCC67D: FLdPr Me
  loc_CCC680: MemLdStr global_96
  loc_CCC683: LitStr vbNullString
  loc_CCC686: NeStr
  loc_CCC688: BranchF loc_CCC6A3
  loc_CCC68B: LitStr vbNullString
  loc_CCC68E: FLdPr Me
  loc_CCC691: VCallAd Control_ID_BoletoTxt
  loc_CCC694: FStAdFunc var_A4
  loc_CCC697: FLdPr var_A4
  loc_CCC69A: Me.Text = from_stack_1
  loc_CCC69F: FFree1Ad var_A4
  loc_CCC6A2: ExitProcHresult
  loc_CCC6A3: LitI2_Byte 0
  loc_CCC6A5: PopTmpLdAd2 var_C6
  loc_CCC6A8: Call NumeAcpaTxt_Validate(from_stack_1v)
  loc_CCC6AD: FLdPr Me
  loc_CCC6B0: MemLdStr global_96
  loc_CCC6B3: LitStr vbNullString
  loc_CCC6B6: NeStr
  loc_CCC6B8: BranchF loc_CCC6D3
  loc_CCC6BB: LitStr vbNullString
  loc_CCC6BE: FLdPr Me
  loc_CCC6C1: VCallAd Control_ID_BoletoTxt
  loc_CCC6C4: FStAdFunc var_A4
  loc_CCC6C7: FLdPr var_A4
  loc_CCC6CA: Me.Text = from_stack_1
  loc_CCC6CF: FFree1Ad var_A4
  loc_CCC6D2: ExitProcHresult
  loc_CCC6D3: LitI2_Byte 0
  loc_CCC6D5: PopTmpLdAd2 var_C6
  loc_CCC6D8: Call FepaAcpaMsk_UnknownEvent_8()
  loc_CCC6DD: FLdPr Me
  loc_CCC6E0: MemLdStr global_96
  loc_CCC6E3: LitStr vbNullString
  loc_CCC6E6: NeStr
  loc_CCC6E8: BranchF loc_CCC703
  loc_CCC6EB: LitStr vbNullString
  loc_CCC6EE: FLdPr Me
  loc_CCC6F1: VCallAd Control_ID_BoletoTxt
  loc_CCC6F4: FStAdFunc var_A4
  loc_CCC6F7: FLdPr var_A4
  loc_CCC6FA: Me.Text = from_stack_1
  loc_CCC6FF: FFree1Ad var_A4
  loc_CCC702: ExitProcHresult
  loc_CCC703: LitI2_Byte 0
  loc_CCC705: PopTmpLdAd2 var_C6
  loc_CCC708: Call CodiEnreTxt_Validate(from_stack_1v)
  loc_CCC70D: FLdPr Me
  loc_CCC710: MemLdStr global_96
  loc_CCC713: LitStr vbNullString
  loc_CCC716: NeStr
  loc_CCC718: BranchF loc_CCC733
  loc_CCC71B: LitStr vbNullString
  loc_CCC71E: FLdPr Me
  loc_CCC721: VCallAd Control_ID_BoletoTxt
  loc_CCC724: FStAdFunc var_A4
  loc_CCC727: FLdPr var_A4
  loc_CCC72A: Me.Text = from_stack_1
  loc_CCC72F: FFree1Ad var_A4
  loc_CCC732: ExitProcHresult
  loc_CCC733: FLdRfVar var_A8
  loc_CCC736: FLdPr Me
  loc_CCC739: VCallAd Control_ID_BoletoTxt
  loc_CCC73C: FStAdFunc var_A4
  loc_CCC73F: FLdPr var_A4
  loc_CCC742:  = Me.Text
  loc_CCC747: LitVarI2 var_E8, 4
  loc_CCC74C: LitI4 4
  loc_CCC751: FLdZeroAd var_A8
  loc_CCC754: CVarStr var_B8
  loc_CCC757: FLdRfVar var_F8
  loc_CCC75A: ImpAdCallFPR4  = Mid(, , )
  loc_CCC75F: LitI2_Byte 0
  loc_CCC761: LitI2_Byte 0
  loc_CCC763: FLdRfVar var_F8
  loc_CCC766: FnCIntVar
  loc_CCC768: CStrUI1
  loc_CCC76A: FStStrNoPop var_C0
  loc_CCC76D: LitStr "el boleto"
  loc_CCC770: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_CCC775: FStStrNoPop var_C4
  loc_CCC778: FLdPr Me
  loc_CCC77B: MemStStrCopy
  loc_CCC77F: FFreeStr var_C0 = ""
  loc_CCC786: FFree1Ad var_A4
  loc_CCC789: FFreeVar var_B8 = "": var_E8 = "": var_F8 = ""
  loc_CCC794: FLdPr Me
  loc_CCC797: MemLdStr global_96
  loc_CCC79A: LitStr vbNullString
  loc_CCC79D: NeStr
  loc_CCC79F: BranchF loc_CCC7B8
  loc_CCC7A2: FLdPr Me
  loc_CCC7A5: MemLdStr global_96
  loc_CCC7A8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCC7AD: LitStr vbNullString
  loc_CCC7B0: FLdPr Me
  loc_CCC7B3: MemStStrCopy
  loc_CCC7B7: ExitProcHresult
  loc_CCC7B8: FLdRfVar var_A8
  loc_CCC7BB: FLdPr Me
  loc_CCC7BE: VCallAd Control_ID_BoletoTxt
  loc_CCC7C1: FStAdFunc var_A4
  loc_CCC7C4: FLdPr var_A4
  loc_CCC7C7:  = Me.Text
  loc_CCC7CC: LitVarI2 var_E8, 9
  loc_CCC7D1: LitI4 8
  loc_CCC7D6: FLdZeroAd var_A8
  loc_CCC7D9: CVarStr var_B8
  loc_CCC7DC: FLdRfVar var_F8
  loc_CCC7DF: ImpAdCallFPR4  = Mid(, , )
  loc_CCC7E4: LitI2_Byte 0
  loc_CCC7E6: LitI2_Byte 0
  loc_CCC7E8: FLdRfVar var_F8
  loc_CCC7EB: FnCLngVar
  loc_CCC7ED: CStrI4
  loc_CCC7EF: FStStrNoPop var_C0
  loc_CCC7F2: LitStr "el boleto"
  loc_CCC7F5: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_CCC7FA: FStStrNoPop var_C4
  loc_CCC7FD: FLdPr Me
  loc_CCC800: MemStStrCopy
  loc_CCC804: FFreeStr var_C0 = ""
  loc_CCC80B: FFree1Ad var_A4
  loc_CCC80E: FFreeVar var_B8 = "": var_E8 = "": var_F8 = ""
  loc_CCC819: FLdPr Me
  loc_CCC81C: MemLdStr global_96
  loc_CCC81F: LitStr vbNullString
  loc_CCC822: NeStr
  loc_CCC824: BranchF loc_CCC83D
  loc_CCC827: FLdPr Me
  loc_CCC82A: MemLdStr global_96
  loc_CCC82D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCC832: LitStr vbNullString
  loc_CCC835: FLdPr Me
  loc_CCC838: MemStStrCopy
  loc_CCC83C: ExitProcHresult
  loc_CCC83D: FLdRfVar var_A8
  loc_CCC840: FLdPr Me
  loc_CCC843: VCallAd Control_ID_BoletoTxt
  loc_CCC846: FStAdFunc var_A4
  loc_CCC849: FLdPr var_A4
  loc_CCC84C:  = Me.Text
  loc_CCC851: LitVarI2 var_E8, 4
  loc_CCC856: LitI4 4
  loc_CCC85B: FLdZeroAd var_A8
  loc_CCC85E: CVarStr var_B8
  loc_CCC861: FLdRfVar var_F8
  loc_CCC864: ImpAdCallFPR4  = Mid(, , )
  loc_CCC869: FLdRfVar var_C0
  loc_CCC86C: FLdPr Me
  loc_CCC86F: VCallAd Control_ID_BoletoTxt
  loc_CCC872: FStAdFunc var_BC
  loc_CCC875: FLdPr var_BC
  loc_CCC878:  = Me.Text
  loc_CCC87D: LitVarI2 var_128, 9
  loc_CCC882: LitI4 8
  loc_CCC887: FLdZeroAd var_C0
  loc_CCC88A: CVarStr var_108
  loc_CCC88D: FLdRfVar var_138
  loc_CCC890: ImpAdCallFPR4  = Mid(, , )
  loc_CCC895: FLdRfVar var_138
  loc_CCC898: FnCLngVar
  loc_CCC89A: FLdRfVar var_F8
  loc_CCC89D: FnCIntVar
  loc_CCC89F: ImpAdCallI2 Proc_18_98_AF2C9C(, )
  loc_CCC8A4: FStStrNoPop var_C4
  loc_CCC8A7: FLdPr Me
  loc_CCC8AA: MemStStrCopy
  loc_CCC8AE: FFree1Str var_C4
  loc_CCC8B1: FFreeAd var_A4 = ""
  loc_CCC8B8: FFreeVar var_B8 = "": var_E8 = "": var_F8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = ""
  loc_CCC8CB: FLdPr Me
  loc_CCC8CE: MemLdStr global_96
  loc_CCC8D1: LitStr vbNullString
  loc_CCC8D4: NeStr
  loc_CCC8D6: BranchF loc_CCC8E5
  loc_CCC8D9: FLdPr Me
  loc_CCC8DC: MemLdStr global_96
  loc_CCC8DF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCC8E4: ExitProcHresult
  loc_CCC8E5: FLdRfVar var_A8
  loc_CCC8E8: FLdPr Me
  loc_CCC8EB: VCallAd Control_ID_BoletoTxt
  loc_CCC8EE: FStAdFunc var_A4
  loc_CCC8F1: FLdPr var_A4
  loc_CCC8F4:  = Me.Text
  loc_CCC8F9: FLdRfVar var_C0
  loc_CCC8FC: FLdPr Me
  loc_CCC8FF: VCallAd Control_ID_BoletoTxt
  loc_CCC902: FStAdFunc var_BC
  loc_CCC905: FLdPr var_BC
  loc_CCC908:  = Me.Text
  loc_CCC90D: LitVarI2 var_E8, 8
  loc_CCC912: LitI4 &H25
  loc_CCC917: FLdZeroAd var_A8
  loc_CCC91A: CVarStr var_B8
  loc_CCC91D: FLdRfVar var_F8
  loc_CCC920: ImpAdCallFPR4  = Mid(, , )
  loc_CCC925: FLdRfVar var_F8
  loc_CCC928: LitVarStr var_118, ","
  loc_CCC92D: ConcatVar var_108
  loc_CCC931: LitVarI2 var_138, 2
  loc_CCC936: LitI4 &H2D
  loc_CCC93B: FLdZeroAd var_C0
  loc_CCC93E: CVarStr var_128
  loc_CCC941: FLdRfVar var_158
  loc_CCC944: ImpAdCallFPR4  = Mid(, , )
  loc_CCC949: FLdRfVar var_158
  loc_CCC94C: ConcatVar var_168
  loc_CCC950: FnCDblVar
  loc_CCC952: FStFPR8 var_98
  loc_CCC955: FFreeAd var_A4 = ""
  loc_CCC95C: FFreeVar var_B8 = "": var_E8 = "": var_F8 = "": var_128 = "": var_138 = "": var_108 = "": var_158 = "": var_168 = ""
  loc_CCC971: FLdRfVar var_A8
  loc_CCC974: FLdPr Me
  loc_CCC977: VCallAd Control_ID_BoletoTxt
  loc_CCC97A: FStAdFunc var_A4
  loc_CCC97D: FLdPr var_A4
  loc_CCC980:  = Me.Text
  loc_CCC985: FLdRfVar var_170
  loc_CCC988: FLdPr Me
  loc_CCC98B: VCallAd Control_ID_BoletoTxt
  loc_CCC98E: FStAdFunc var_BC
  loc_CCC991: FLdPr var_BC
  loc_CCC994:  = Me.Text
  loc_CCC999: LitStr "SELECT * FROM boleto "
  loc_CCC99C: LitStr " WHERE PeriBole = "
  loc_CCC99F: ConcatStr
  loc_CCC9A0: FStStrNoPop var_C0
  loc_CCC9A3: LitVarI2 var_E8, 4
  loc_CCC9A8: LitI4 4
  loc_CCC9AD: FLdZeroAd var_A8
  loc_CCC9B0: CVarStr var_B8
  loc_CCC9B3: FLdRfVar var_F8
  loc_CCC9B6: ImpAdCallFPR4  = Mid(, , )
  loc_CCC9BB: FLdRfVar var_F8
  loc_CCC9BE: FnCIntVar
  loc_CCC9C0: CStrUI1
  loc_CCC9C2: FStStrNoPop var_C4
  loc_CCC9C5: ConcatStr
  loc_CCC9C6: FStStrNoPop var_16C
  loc_CCC9C9: LitStr " AND NumeBole = "
  loc_CCC9CC: ConcatStr
  loc_CCC9CD: FStStrNoPop var_174
  loc_CCC9D0: LitVarI2 var_128, 9
  loc_CCC9D5: LitI4 8
  loc_CCC9DA: FLdZeroAd var_170
  loc_CCC9DD: CVarStr var_108
  loc_CCC9E0: FLdRfVar var_138
  loc_CCC9E3: ImpAdCallFPR4  = Mid(, , )
  loc_CCC9E8: FLdRfVar var_138
  loc_CCC9EB: FnCLngVar
  loc_CCC9ED: CStrI4
  loc_CCC9EF: FStStrNoPop var_178
  loc_CCC9F2: ConcatStr
  loc_CCC9F3: FStStrNoPop var_17C
  loc_CCC9F6: LitStr " AND TotaBole = "
  loc_CCC9F9: ConcatStr
  loc_CCC9FA: FStStrNoPop var_184
  loc_CCC9FD: LitI4 0
  loc_CCCA02: LitI4 -1
  loc_CCCA07: LitI4 1
  loc_CCCA0C: LitStr "."
  loc_CCCA0F: LitStr ","
  loc_CCCA12: FLdFPR8 var_98
  loc_CCCA15: CStrR8
  loc_CCCA17: FStStrNoPop var_180
  loc_CCCA1A: ImpAdCallI2 Replace(, , , , , )
  loc_CCCA1F: FStStrNoPop var_188
  loc_CCCA22: ConcatStr
  loc_CCCA23: FStStrNoPop var_18C
  loc_CCCA26: LitStr " ORDER BY PeriBole, NumeBole"
  loc_CCCA29: ConcatStr
  loc_CCCA2A: FStStrNoPop var_190
  loc_CCCA2D: FLdPr Me
  loc_CCCA30: MemLdRfVar from_stack_1.global_56
  loc_CCCA33: NewIfNullPr clsboleto
  loc_CCCA36: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CCCA3B: FFreeStr var_C0 = "": var_C4 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_CCCA54: FFreeAd var_A4 = ""
  loc_CCCA5B: FFreeVar var_B8 = "": var_E8 = "": var_F8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = ""
  loc_CCCA6E: FLdRfVar var_194
  loc_CCCA71: FLdPr Me
  loc_CCCA74: MemLdRfVar from_stack_1.global_56
  loc_CCCA77: NewIfNullPr clsboleto
  loc_CCCA7A: from_stack_1 = clsboleto.RecordCount
  loc_CCCA7F: ILdRf var_194
  loc_CCCA82: LitI4 1
  loc_CCCA87: EqI4
  loc_CCCA88: BranchF loc_CCCABD
  loc_CCCA8B: FLdRfVar var_C6
  loc_CCCA8E: FLdPr Me
  loc_CCCA91: MemLdRfVar from_stack_1.global_56
  loc_CCCA94: NewIfNullPr clsboleto
  loc_CCCA97: from_stack_1 = clsboleto.PeriBole
  loc_CCCA9C: FLdI2 var_C6
  loc_CCCA9F: CI4UI1
  loc_CCCAA0: FStR4 var_8C
  loc_CCCAA3: FLdRfVar var_194
  loc_CCCAA6: FLdPr Me
  loc_CCCAA9: MemLdRfVar from_stack_1.global_56
  loc_CCCAAC: NewIfNullPr clsboleto
  loc_CCCAAF: from_stack_1 = clsboleto.NumeBole
  loc_CCCAB4: ILdRf var_194
  loc_CCCAB7: FStR4 var_90
  loc_CCCABA: Branch loc_CCCB94
  loc_CCCABD: FLdRfVar var_A0
  loc_CCCAC0: CVarRef
  loc_CCCAC5: FLdRfVar var_B8
  loc_CCCAC8: ImpAdCallFPR4  = Year()
  loc_CCCACD: FLdRfVar var_B8
  loc_CCCAD0: CI4Var
  loc_CCCAD2: FStR4 var_8C
  loc_CCCAD5: FFree1Var var_B8 = ""
  loc_CCCAD8: FLdRfVar var_A8
  loc_CCCADB: FLdPr Me
  loc_CCCADE: VCallAd Control_ID_CodiEnreTxt
  loc_CCCAE1: FStAdFunc var_A4
  loc_CCCAE4: FLdPr var_A4
  loc_CCCAE7:  = Me.Text
  loc_CCCAEC: FLdRfVar var_C0
  loc_CCCAEF: FLdPr Me
  loc_CCCAF2: VCallAd Control_ID_BoletoTxt
  loc_CCCAF5: FStAdFunc var_BC
  loc_CCCAF8: FLdPr var_BC
  loc_CCCAFB:  = Me.Text
  loc_CCCB00: FLdPr Me
  loc_CCCB03: VCallAd Control_ID_FeenAcpaMsk
  loc_CCCB06: FStAdFunc var_198
  loc_CCCB09: FLdPr var_198
  loc_CCCB0C: LateIdLdVar var_B8 DispID_15 0
  loc_CCCB13: PopAd
  loc_CCCB15: FLdRfVar var_C4
  loc_CCCB18: FLdPr Me
  loc_CCCB1B: VCallAd Control_ID_NumeAcpaTxt
  loc_CCCB1E: FStAdFunc var_19C
  loc_CCCB21: FLdPr var_19C
  loc_CCCB24:  = Me.Text
  loc_CCCB29: FLdPr Me
  loc_CCCB2C: VCallAd Control_ID_FepaAcpaMsk
  loc_CCCB2F: FStAdFunc var_1A0
  loc_CCCB32: FLdPr var_1A0
  loc_CCCB35: LateIdLdVar var_E8 DispID_15 0
  loc_CCCB3C: PopAd
  loc_CCCB3E: FLdRfVar var_194
  loc_CCCB41: FLdRfVar var_E8
  loc_CCCB44: CStrVarTmp
  loc_CCCB45: FStStrNoPop var_170
  loc_CCCB48: ILdRf var_C4
  loc_CCCB4B: CI2Str
  loc_CCCB4D: FLdRfVar var_B8
  loc_CCCB50: CStrVarTmp
  loc_CCCB51: FStStrNoPop var_16C
  loc_CCCB54: FLdR8 var_A0
  loc_CCCB57: ILdRf var_C0
  loc_CCCB5A: ILdRf var_A8
  loc_CCCB5D: CI2Str
  loc_CCCB5F: FLdPr Me
  loc_CCCB62: MemLdRfVar from_stack_1.global_60
  loc_CCCB65: NewIfNullPr clspago
  loc_CCCB68: from_stack_7v = clspago.BoletodeTesoreria(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_CCCB6D: ILdRf var_194
  loc_CCCB70: FStR4 var_90
  loc_CCCB73: FFreeStr var_A8 = "": var_C0 = "": var_16C = "": var_C4 = ""
  loc_CCCB80: FFreeAd var_A4 = "": var_BC = "": var_198 = "": var_19C = ""
  loc_CCCB8D: FFreeVar var_B8 = ""
  loc_CCCB94: LitStr "SELECT * FROM boleto "
  loc_CCCB97: LitStr " WHERE PeriBole = "
  loc_CCCB9A: ConcatStr
  loc_CCCB9B: FStStrNoPop var_A8
  loc_CCCB9E: ILdRf var_8C
  loc_CCCBA1: CStrI4
  loc_CCCBA3: FStStrNoPop var_C0
  loc_CCCBA6: ConcatStr
  loc_CCCBA7: FStStrNoPop var_C4
  loc_CCCBAA: LitStr " AND NumeBole = "
  loc_CCCBAD: ConcatStr
  loc_CCCBAE: FStStrNoPop var_16C
  loc_CCCBB1: ILdRf var_90
  loc_CCCBB4: CStrI4
  loc_CCCBB6: FStStrNoPop var_170
  loc_CCCBB9: ConcatStr
  loc_CCCBBA: FStStrNoPop var_174
  loc_CCCBBD: LitStr " ORDER BY PeriBole, NumeBole"
  loc_CCCBC0: ConcatStr
  loc_CCCBC1: FStStrNoPop var_178
  loc_CCCBC4: FLdPr Me
  loc_CCCBC7: MemLdRfVar from_stack_1.global_56
  loc_CCCBCA: NewIfNullPr clsboleto
  loc_CCCBCD: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CCCBD2: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_CCCBE3: FLdRfVar var_194
  loc_CCCBE6: FLdPr Me
  loc_CCCBE9: MemLdRfVar from_stack_1.global_56
  loc_CCCBEC: NewIfNullPr clsboleto
  loc_CCCBEF: from_stack_1 = clsboleto.RecordCount
  loc_CCCBF4: ILdRf var_194
  loc_CCCBF7: LitI4 1
  loc_CCCBFC: EqI4
  loc_CCCBFD: BranchF loc_CCEBA3
  loc_CCCC00: LitStr "SELECT * FROM pago "
  loc_CCCC03: LitStr " WHERE PeriBole = "
  loc_CCCC06: ConcatStr
  loc_CCCC07: FStStrNoPop var_A8
  loc_CCCC0A: FLdRfVar var_C6
  loc_CCCC0D: FLdPr Me
  loc_CCCC10: MemLdRfVar from_stack_1.global_56
  loc_CCCC13: NewIfNullPr clsboleto
  loc_CCCC16: from_stack_1 = clsboleto.PeriBole
  loc_CCCC1B: FLdI2 var_C6
  loc_CCCC1E: CStrUI1
  loc_CCCC20: FStStrNoPop var_C0
  loc_CCCC23: ConcatStr
  loc_CCCC24: FStStrNoPop var_C4
  loc_CCCC27: LitStr " AND NumeBole = "
  loc_CCCC2A: ConcatStr
  loc_CCCC2B: FStStrNoPop var_16C
  loc_CCCC2E: FLdRfVar var_194
  loc_CCCC31: FLdPr Me
  loc_CCCC34: MemLdRfVar from_stack_1.global_56
  loc_CCCC37: NewIfNullPr clsboleto
  loc_CCCC3A: from_stack_1 = clsboleto.NumeBole
  loc_CCCC3F: ILdRf var_194
  loc_CCCC42: CStrI4
  loc_CCCC44: FStStrNoPop var_170
  loc_CCCC47: ConcatStr
  loc_CCCC48: FStStrNoPop var_174
  loc_CCCC4B: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole"
  loc_CCCC4E: ConcatStr
  loc_CCCC4F: FStStrNoPop var_178
  loc_CCCC52: FLdPr Me
  loc_CCCC55: MemLdRfVar from_stack_1.global_60
  loc_CCCC58: NewIfNullPr clspago
  loc_CCCC5B: Call clspago.RedefineRS(from_stack_1v)
  loc_CCCC60: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_CCCC71: FLdRfVar var_194
  loc_CCCC74: FLdPr Me
  loc_CCCC77: MemLdRfVar from_stack_1.global_60
  loc_CCCC7A: NewIfNullPr clspago
  loc_CCCC7D: from_stack_1 = clspago.RecordCount
  loc_CCCC82: ILdRf var_194
  loc_CCCC85: LitI4 1
  loc_CCCC8A: GeI4
  loc_CCCC8B: BranchF loc_CCCD00
  loc_CCCC8E: LitStr "El boleto se encuenta ingresado y pagado, verifique..."
  loc_CCCC91: FLdPr Me
  loc_CCCC94: MemStStrCopy
  loc_CCCC98: FLdPr Me
  loc_CCCC9B: MemLdStr global_96
  loc_CCCC9E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCCCA3: FLdPr Me
  loc_CCCCA6: VCallAd Control_ID_NumeBoleTxt
  loc_CCCCA9: CVarAd
  loc_CCCCAD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CCCCB2: FFree1Var var_B8 = ""
  loc_CCCCB5: ExitProcHresult
  loc_CCCCB6: FLdRfVar var_A8
  loc_CCCCB9: FLdPr Me
  loc_CCCCBC: MemLdRfVar from_stack_1.global_60
  loc_CCCCBF: NewIfNullPr clspago
  loc_CCCCC2: from_stack_1 = clspago.ActuPago
  loc_CCCCC7: ILdRf var_A8
  loc_CCCCCA: LitStr "Si"
  loc_CCCCCD: EqStr
  loc_CCCCCF: FFree1Str var_A8
  loc_CCCCD2: BranchF loc_CCCCFD
  loc_CCCCD5: LitStr "El boleto se encuenta ingresado, pagado y actualizado en la cuenta corriente, verifique..."
  loc_CCCCD8: FLdPr Me
  loc_CCCCDB: MemStStrCopy
  loc_CCCCDF: FLdPr Me
  loc_CCCCE2: MemLdStr global_96
  loc_CCCCE5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCCCEA: FLdPr Me
  loc_CCCCED: VCallAd Control_ID_NumeBoleTxt
  loc_CCCCF0: CVarAd
  loc_CCCCF4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CCCCF9: FFree1Var var_B8 = ""
  loc_CCCCFC: ExitProcHresult
  loc_CCCCFD: Branch loc_CCEA70
  loc_CCCD00: FLdRfVar var_194
  loc_CCCD03: FLdPr Me
  loc_CCCD06: MemLdRfVar from_stack_1.global_60
  loc_CCCD09: NewIfNullPr clspago
  loc_CCCD0C: from_stack_1 = clspago.RecordCount
  loc_CCCD11: ILdRf var_194
  loc_CCCD14: LitI4 0
  loc_CCCD19: EqI4
  loc_CCCD1A: BranchF loc_CCEA70
  loc_CCCD1D: LitVarStr var_D8, vbNullString
  loc_CCCD22: PopAdLdVar
  loc_CCCD23: FLdPr Me
  loc_CCCD26: VCallAd Control_ID_FeenAcpaMsk
  loc_CCCD29: FStAdFunc var_A4
  loc_CCCD2C: FLdPr var_A4
  loc_CCCD2F: LateIdSt
  loc_CCCD34: FFree1Ad var_A4
  loc_CCCD37: LitVarStr var_D8, vbNullString
  loc_CCCD3C: PopAdLdVar
  loc_CCCD3D: FLdPr Me
  loc_CCCD40: VCallAd Control_ID_FepaAcpaMsk
  loc_CCCD43: FStAdFunc var_A4
  loc_CCCD46: FLdPr var_A4
  loc_CCCD49: LateIdSt
  loc_CCCD4E: FFree1Ad var_A4
  loc_CCCD51: LitStr "START TRANSACTION;"
  loc_CCCD54: FLdPr Me
  loc_CCCD57: MemStStrCopy
  loc_CCCD5B: FLdPr Me
  loc_CCCD5E: VCallAd Control_ID_FeenAcpaMsk
  loc_CCCD61: FStAdFunc var_A4
  loc_CCCD64: FLdPr var_A4
  loc_CCCD67: LateIdLdVar var_B8 DispID_15 0
  loc_CCCD6E: PopAd
  loc_CCCD70: FLdRfVar var_A8
  loc_CCCD73: FLdPr Me
  loc_CCCD76: VCallAd Control_ID_NumeAcpaTxt
  loc_CCCD79: FStAdFunc var_BC
  loc_CCCD7C: FLdPr var_BC
  loc_CCCD7F:  = Me.Text
  loc_CCCD84: FLdRfVar var_C4
  loc_CCCD87: ILdRf var_A8
  loc_CCCD8A: CI2Str
  loc_CCCD8C: FLdRfVar var_B8
  loc_CCCD8F: CStrVarTmp
  loc_CCCD90: FStStrNoPop var_C0
  loc_CCCD93: FLdPr Me
  loc_CCCD96: MemLdRfVar from_stack_1.global_52
  loc_CCCD99: NewIfNullPr clsacrepago
  loc_CCCD9C: from_stack_3v = clsacrepago.ValidaClave(from_stack_1v, from_stack_2v)
  loc_CCCDA1: ILdRf var_C4
  loc_CCCDA4: LitStr vbNullString
  loc_CCCDA7: EqStr
  loc_CCCDA9: FFreeStr var_C0 = "": var_A8 = ""
  loc_CCCDB2: FFreeAd var_A4 = ""
  loc_CCCDB9: FFree1Var var_B8 = ""
  loc_CCCDBC: BranchF loc_CCCF89
  loc_CCCDBF: FLdPr Me
  loc_CCCDC2: VCallAd Control_ID_FeenAcpaMsk
  loc_CCCDC5: FStAdFunc var_A4
  loc_CCCDC8: FLdPr var_A4
  loc_CCCDCB: LateIdLdVar var_B8 DispID_15 0
  loc_CCCDD2: PopAd
  loc_CCCDD4: LitI2_Byte 0
  loc_CCCDD6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CCCDDB: FStFPR8 var_1EC
  loc_CCCDDE: FLdPr Me
  loc_CCCDE1: VCallAd Control_ID_FepaAcpaMsk
  loc_CCCDE4: FStAdFunc var_19C
  loc_CCCDE7: FLdPr var_19C
  loc_CCCDEA: LateIdLdVar var_138 DispID_15 0
  loc_CCCDF1: PopAd
  loc_CCCDF3: FLdRfVar var_1C0
  loc_CCCDF6: FLdPr Me
  loc_CCCDF9: MemLdRfVar from_stack_1.global_56
  loc_CCCDFC: NewIfNullPr clsboleto
  loc_CCCDFF: from_stack_1 = clsboleto.TotaBole
  loc_CCCE04: FLdPr Me
  loc_CCCE07: MemLdStr global_100
  loc_CCCE0A: LitStr " INSERT INTO acrepago (FeenAcpa,NumeAcpa,ActuAcpa,CodiEnre,FealAcpa,FepaAcpa,TocoAcpa,ImpoAcpa,ObseAcpa,CodiUsua,ALtaUsua,AltaFeho) VALUES ('"
  loc_CCCE0D: ConcatStr
  loc_CCCE0E: FStStrNoPop var_A8
  loc_CCCE11: LitI4 1
  loc_CCCE16: LitI4 1
  loc_CCCE1B: LitVarStr var_D8, "yyyy-mm-dd"
  loc_CCCE20: FStVarCopyObj var_F8
  loc_CCCE23: FLdRfVar var_F8
  loc_CCCE26: FLdRfVar var_B8
  loc_CCCE29: CStrVarTmp
  loc_CCCE2A: CVarStr var_E8
  loc_CCCE2D: ImpAdCallI2 Format$(, )
  loc_CCCE32: FStStrNoPop var_C0
  loc_CCCE35: ConcatStr
  loc_CCCE36: FStStrNoPop var_C4
  loc_CCCE39: LitStr "',"
  loc_CCCE3C: ConcatStr
  loc_CCCE3D: FStStrNoPop var_170
  loc_CCCE40: FLdRfVar var_16C
  loc_CCCE43: FLdPr Me
  loc_CCCE46: VCallAd Control_ID_NumeAcpaTxt
  loc_CCCE49: FStAdFunc var_BC
  loc_CCCE4C: FLdPr var_BC
  loc_CCCE4F:  = Me.Text
  loc_CCCE54: ILdRf var_16C
  loc_CCCE57: ConcatStr
  loc_CCCE58: FStStrNoPop var_174
  loc_CCCE5B: LitStr ",'No',"
  loc_CCCE5E: ConcatStr
  loc_CCCE5F: FStStrNoPop var_17C
  loc_CCCE62: FLdRfVar var_178
  loc_CCCE65: FLdPr Me
  loc_CCCE68: VCallAd Control_ID_CodiEnreTxt
  loc_CCCE6B: FStAdFunc var_198
  loc_CCCE6E: FLdPr var_198
  loc_CCCE71:  = Me.Text
  loc_CCCE76: ILdRf var_178
  loc_CCCE79: ConcatStr
  loc_CCCE7A: FStStrNoPop var_180
  loc_CCCE7D: LitStr ",'"
  loc_CCCE80: ConcatStr
  loc_CCCE81: FStStrNoPop var_184
  loc_CCCE84: LitI4 1
  loc_CCCE89: LitI4 1
  loc_CCCE8E: LitVarStr var_148, "yyyy-mm-dd"
  loc_CCCE93: FStVarCopyObj var_128
  loc_CCCE96: FLdRfVar var_128
  loc_CCCE99: FLdFPR8 var_1EC
  loc_CCCE9C: CVarDate var_108
  loc_CCCEA0: ImpAdCallI2 Format$(, )
  loc_CCCEA5: FStStrNoPop var_188
  loc_CCCEA8: ConcatStr
  loc_CCCEA9: FStStrNoPop var_18C
  loc_CCCEAC: LitStr "','"
  loc_CCCEAF: ConcatStr
  loc_CCCEB0: FStStrNoPop var_190
  loc_CCCEB3: LitI4 1
  loc_CCCEB8: LitI4 1
  loc_CCCEBD: LitVarStr var_1B0, "yyyy-mm-dd"
  loc_CCCEC2: FStVarCopyObj var_168
  loc_CCCEC5: FLdRfVar var_168
  loc_CCCEC8: FLdRfVar var_138
  loc_CCCECB: CStrVarTmp
  loc_CCCECC: CVarStr var_158
  loc_CCCECF: ImpAdCallI2 Format$(, )
  loc_CCCED4: FStStrNoPop var_1B4
  loc_CCCED7: ConcatStr
  loc_CCCED8: FStStrNoPop var_1B8
  loc_CCCEDB: LitStr "',1,"
  loc_CCCEDE: ConcatStr
  loc_CCCEDF: FStStrNoPop var_1C8
  loc_CCCEE2: LitI4 0
  loc_CCCEE7: LitI4 -1
  loc_CCCEEC: LitI4 1
  loc_CCCEF1: LitStr "."
  loc_CCCEF4: LitStr ","
  loc_CCCEF7: FLdFPR8 var_1C0
  loc_CCCEFA: CStrR8
  loc_CCCEFC: FStStrNoPop var_1C4
  loc_CCCEFF: ImpAdCallI2 Replace(, , , , , )
  loc_CCCF04: FStStrNoPop var_1CC
  loc_CCCF07: ConcatStr
  loc_CCCF08: FStStrNoPop var_1D0
  loc_CCCF0B: LitStr ",'','"
  loc_CCCF0E: ConcatStr
  loc_CCCF0F: FStStrNoPop var_1D4
  loc_CCCF12: ImpAdLdI4 MemVar_D9302C
  loc_CCCF15: ConcatStr
  loc_CCCF16: FStStrNoPop var_1D8
  loc_CCCF19: LitStr "','"
  loc_CCCF1C: ConcatStr
  loc_CCCF1D: FStStrNoPop var_1DC
  loc_CCCF20: ImpAdLdI4 MemVar_D9302C
  loc_CCCF23: ConcatStr
  loc_CCCF24: FStStrNoPop var_1E0
  loc_CCCF27: LitStr "',NOW());"
  loc_CCCF2A: ConcatStr
  loc_CCCF2B: FStStrNoPop var_1E4
  loc_CCCF2E: FLdPr Me
  loc_CCCF31: MemStStrCopy
  loc_CCCF35: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_170 = "": var_16C = "": var_174 = "": var_17C = "": var_178 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_CCCF68: FFreeAd var_A4 = "": var_BC = "": var_198 = ""
  loc_CCCF73: FFreeVar var_B8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_CCCF86: Branch loc_CCD085
  loc_CCCF89: FLdRfVar var_1C0
  loc_CCCF8C: FLdPr Me
  loc_CCCF8F: MemLdRfVar from_stack_1.global_56
  loc_CCCF92: NewIfNullPr clsboleto
  loc_CCCF95: from_stack_1 = clsboleto.TotaBole
  loc_CCCF9A: FLdPr Me
  loc_CCCF9D: VCallAd Control_ID_FeenAcpaMsk
  loc_CCCFA0: FStAdFunc var_A4
  loc_CCCFA3: FLdPr var_A4
  loc_CCCFA6: LateIdLdVar var_B8 DispID_15 0
  loc_CCCFAD: PopAd
  loc_CCCFAF: FLdPr Me
  loc_CCCFB2: MemLdStr global_100
  loc_CCCFB5: LitStr " UPDATE acrepago SET TocoAcpa = TocoAcpa + "
  loc_CCCFB8: ConcatStr
  loc_CCCFB9: FStStrNoPop var_A8
  loc_CCCFBC: LitI2_Byte 1
  loc_CCCFBE: CStrUI1
  loc_CCCFC0: FStStrNoPop var_C0
  loc_CCCFC3: ConcatStr
  loc_CCCFC4: FStStrNoPop var_C4
  loc_CCCFC7: LitStr ", ImpoAcpa = ImpoAcpa + "
  loc_CCCFCA: ConcatStr
  loc_CCCFCB: FStStrNoPop var_170
  loc_CCCFCE: LitI4 0
  loc_CCCFD3: LitI4 -1
  loc_CCCFD8: LitI4 1
  loc_CCCFDD: LitStr "."
  loc_CCCFE0: LitStr ","
  loc_CCCFE3: FLdFPR8 var_1C0
  loc_CCCFE6: CStrR8
  loc_CCCFE8: FStStrNoPop var_16C
  loc_CCCFEB: ImpAdCallI2 Replace(, , , , , )
  loc_CCCFF0: FStStrNoPop var_174
  loc_CCCFF3: ConcatStr
  loc_CCCFF4: FStStrNoPop var_178
  loc_CCCFF7: LitStr " WHERE FeenAcpa = '"
  loc_CCCFFA: ConcatStr
  loc_CCCFFB: FStStrNoPop var_17C
  loc_CCCFFE: LitI4 1
  loc_CCD003: LitI4 1
  loc_CCD008: LitVarStr var_D8, "yyyy-mm-dd"
  loc_CCD00D: FStVarCopyObj var_F8
  loc_CCD010: FLdRfVar var_F8
  loc_CCD013: FLdRfVar var_B8
  loc_CCD016: CStrVarTmp
  loc_CCD017: CVarStr var_E8
  loc_CCD01A: ImpAdCallI2 Format$(, )
  loc_CCD01F: FStStrNoPop var_180
  loc_CCD022: ConcatStr
  loc_CCD023: FStStrNoPop var_184
  loc_CCD026: LitStr "' AND NumeAcpa = "
  loc_CCD029: ConcatStr
  loc_CCD02A: FStStrNoPop var_18C
  loc_CCD02D: FLdRfVar var_188
  loc_CCD030: FLdPr Me
  loc_CCD033: VCallAd Control_ID_NumeAcpaTxt
  loc_CCD036: FStAdFunc var_BC
  loc_CCD039: FLdPr var_BC
  loc_CCD03C:  = Me.Text
  loc_CCD041: ILdRf var_188
  loc_CCD044: ConcatStr
  loc_CCD045: FStStrNoPop var_190
  loc_CCD048: LitStr ";"
  loc_CCD04B: ConcatStr
  loc_CCD04C: FStStrNoPop var_1B4
  loc_CCD04F: FLdPr Me
  loc_CCD052: MemStStrCopy
  loc_CCD056: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_18C = "": var_188 = "": var_190 = ""
  loc_CCD075: FFreeAd var_A4 = ""
  loc_CCD07C: FFreeVar var_B8 = "": var_E8 = ""
  loc_CCD085: FLdPr Me
  loc_CCD088: VCallAd Control_ID_FeenAcpaMsk
  loc_CCD08B: FStAdFunc var_A4
  loc_CCD08E: FLdPr var_A4
  loc_CCD091: LateIdLdVar var_B8 DispID_15 0
  loc_CCD098: PopAd
  loc_CCD09A: LitI2_Byte 0
  loc_CCD09C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CCD0A1: FStFPR8 var_304
  loc_CCD0A4: FLdPr Me
  loc_CCD0A7: VCallAd Control_ID_FepaAcpaMsk
  loc_CCD0AA: FStAdFunc var_198
  loc_CCD0AD: FLdPr var_198
  loc_CCD0B0: LateIdLdVar var_138 DispID_15 0
  loc_CCD0B7: PopAd
  loc_CCD0B9: FLdRfVar var_1C0
  loc_CCD0BC: FLdPr Me
  loc_CCD0BF: MemLdRfVar from_stack_1.global_56
  loc_CCD0C2: NewIfNullPr clsboleto
  loc_CCD0C5: from_stack_1 = clsboleto.CapiBole
  loc_CCD0CA: FLdRfVar var_1EC
  loc_CCD0CD: FLdPr Me
  loc_CCD0D0: MemLdRfVar from_stack_1.global_56
  loc_CCD0D3: NewIfNullPr clsboleto
  loc_CCD0D6: from_stack_1 = clsboleto.DecaBole
  loc_CCD0DB: FLdRfVar var_250
  loc_CCD0DE: FLdPr Me
  loc_CCD0E1: MemLdRfVar from_stack_1.global_56
  loc_CCD0E4: NewIfNullPr clsboleto
  loc_CCD0E7: from_stack_1 = clsboleto.RecaBole
  loc_CCD0EC: FLdRfVar var_268
  loc_CCD0EF: FLdPr Me
  loc_CCD0F2: MemLdRfVar from_stack_1.global_56
  loc_CCD0F5: NewIfNullPr clsboleto
  loc_CCD0F8: from_stack_1 = clsboleto.DereBole
  loc_CCD0FD: FLdRfVar var_280
  loc_CCD100: FLdPr Me
  loc_CCD103: MemLdRfVar from_stack_1.global_56
  loc_CCD106: NewIfNullPr clsboleto
  loc_CCD109: from_stack_1 = clsboleto.InteBole
  loc_CCD10E: FLdRfVar var_298
  loc_CCD111: FLdPr Me
  loc_CCD114: MemLdRfVar from_stack_1.global_56
  loc_CCD117: NewIfNullPr clsboleto
  loc_CCD11A: from_stack_1 = clsboleto.ExenBole
  loc_CCD11F: FLdRfVar var_2B0
  loc_CCD122: FLdPr Me
  loc_CCD125: MemLdRfVar from_stack_1.global_56
  loc_CCD128: NewIfNullPr clsboleto
  loc_CCD12B: from_stack_1 = clsboleto.CrafBole
  loc_CCD130: FLdRfVar var_2C8
  loc_CCD133: FLdPr Me
  loc_CCD136: MemLdRfVar from_stack_1.global_56
  loc_CCD139: NewIfNullPr clsboleto
  loc_CCD13C: from_stack_1 = clsboleto.ApreBole
  loc_CCD141: FLdRfVar var_2E0
  loc_CCD144: FLdPr Me
  loc_CCD147: MemLdRfVar from_stack_1.global_56
  loc_CCD14A: NewIfNullPr clsboleto
  loc_CCD14D: from_stack_1 = clsboleto.TotaBole
  loc_CCD152: FLdPr Me
  loc_CCD155: MemLdStr global_100
  loc_CCD158: LitStr " INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua) VALUES ('"
  loc_CCD15B: ConcatStr
  loc_CCD15C: FStStrNoPop var_A8
  loc_CCD15F: LitI4 1
  loc_CCD164: LitI4 1
  loc_CCD169: LitVarStr var_D8, "yyyy-mm-dd"
  loc_CCD16E: FStVarCopyObj var_F8
  loc_CCD171: FLdRfVar var_F8
  loc_CCD174: FLdRfVar var_B8
  loc_CCD177: CStrVarTmp
  loc_CCD178: CVarStr var_E8
  loc_CCD17B: ImpAdCallI2 Format$(, )
  loc_CCD180: FStStrNoPop var_C0
  loc_CCD183: ConcatStr
  loc_CCD184: FStStrNoPop var_C4
  loc_CCD187: LitStr "',"
  loc_CCD18A: ConcatStr
  loc_CCD18B: FStStrNoPop var_170
  loc_CCD18E: FLdRfVar var_16C
  loc_CCD191: FLdPr Me
  loc_CCD194: VCallAd Control_ID_NumeAcpaTxt
  loc_CCD197: FStAdFunc var_BC
  loc_CCD19A: FLdPr var_BC
  loc_CCD19D:  = Me.Text
  loc_CCD1A2: ILdRf var_16C
  loc_CCD1A5: ConcatStr
  loc_CCD1A6: FStStrNoPop var_174
  loc_CCD1A9: LitStr ","
  loc_CCD1AC: ConcatStr
  loc_CCD1AD: FStStrNoPop var_178
  loc_CCD1B0: FLdRfVar var_C6
  loc_CCD1B3: FLdPr Me
  loc_CCD1B6: MemLdRfVar from_stack_1.global_56
  loc_CCD1B9: NewIfNullPr clsboleto
  loc_CCD1BC: from_stack_1 = clsboleto.PeriBole
  loc_CCD1C1: FLdI2 var_C6
  loc_CCD1C4: CStrUI1
  loc_CCD1C6: FStStrNoPop var_17C
  loc_CCD1C9: ConcatStr
  loc_CCD1CA: FStStrNoPop var_180
  loc_CCD1CD: LitStr ","
  loc_CCD1D0: ConcatStr
  loc_CCD1D1: FStStrNoPop var_184
  loc_CCD1D4: FLdRfVar var_194
  loc_CCD1D7: FLdPr Me
  loc_CCD1DA: MemLdRfVar from_stack_1.global_56
  loc_CCD1DD: NewIfNullPr clsboleto
  loc_CCD1E0: from_stack_1 = clsboleto.NumeBole
  loc_CCD1E5: ILdRf var_194
  loc_CCD1E8: CStrI4
  loc_CCD1EA: FStStrNoPop var_188
  loc_CCD1ED: ConcatStr
  loc_CCD1EE: FStStrNoPop var_18C
  loc_CCD1F1: LitStr ","
  loc_CCD1F4: ConcatStr
  loc_CCD1F5: FStStrNoPop var_190
  loc_CCD1F8: FLdRfVar var_1EE
  loc_CCD1FB: FLdPr Me
  loc_CCD1FE: MemLdRfVar from_stack_1.global_56
  loc_CCD201: NewIfNullPr clsboleto
  loc_CCD204: from_stack_1 = clsboleto.CodiOfic
  loc_CCD209: FLdI2 var_1EE
  loc_CCD20C: CStrUI1
  loc_CCD20E: FStStrNoPop var_1B4
  loc_CCD211: ConcatStr
  loc_CCD212: FStStrNoPop var_1B8
  loc_CCD215: LitStr ",'"
  loc_CCD218: ConcatStr
  loc_CCD219: FStStrNoPop var_1C8
  loc_CCD21C: FLdRfVar var_1C4
  loc_CCD21F: FLdPr Me
  loc_CCD222: MemLdRfVar from_stack_1.global_56
  loc_CCD225: NewIfNullPr clsboleto
  loc_CCD228: from_stack_1 = clsboleto.CuenCtct
  loc_CCD22D: ILdRf var_1C4
  loc_CCD230: ConcatStr
  loc_CCD231: FStStrNoPop var_1CC
  loc_CCD234: LitStr "','"
  loc_CCD237: ConcatStr
  loc_CCD238: FStStrNoPop var_1D4
  loc_CCD23B: FLdRfVar var_1D0
  loc_CCD23E: FLdPr Me
  loc_CCD241: MemLdRfVar from_stack_1.global_56
  loc_CCD244: NewIfNullPr clsboleto
  loc_CCD247: from_stack_1 = clsboleto.CucuPers
  loc_CCD24C: ILdRf var_1D0
  loc_CCD24F: ConcatStr
  loc_CCD250: FStStrNoPop var_1D8
  loc_CCD253: LitStr "','No','"
  loc_CCD256: ConcatStr
  loc_CCD257: FStStrNoPop var_1E0
  loc_CCD25A: FLdRfVar var_1DC
  loc_CCD25D: FLdPr Me
  loc_CCD260: MemLdRfVar from_stack_1.global_56
  loc_CCD263: NewIfNullPr clsboleto
  loc_CCD266: from_stack_1 = clsboleto.TipoBole
  loc_CCD26B: ILdRf var_1DC
  loc_CCD26E: ConcatStr
  loc_CCD26F: FStStrNoPop var_1E4
  loc_CCD272: LitStr "','"
  loc_CCD275: ConcatStr
  loc_CCD276: FStStrNoPop var_1F4
  loc_CCD279: LitI4 1
  loc_CCD27E: LitI4 1
  loc_CCD283: LitVarStr var_148, "yyyy-mm-dd"
  loc_CCD288: FStVarCopyObj var_128
  loc_CCD28B: FLdRfVar var_128
  loc_CCD28E: FLdFPR8 var_304
  loc_CCD291: CVarDate var_108
  loc_CCD295: ImpAdCallI2 Format$(, )
  loc_CCD29A: FStStrNoPop var_1F8
  loc_CCD29D: ConcatStr
  loc_CCD29E: FStStrNoPop var_1FC
  loc_CCD2A1: LitStr "','"
  loc_CCD2A4: ConcatStr
  loc_CCD2A5: FStStrNoPop var_200
  loc_CCD2A8: LitI4 1
  loc_CCD2AD: LitI4 1
  loc_CCD2B2: LitVarStr var_1B0, "yyyy-mm-dd"
  loc_CCD2B7: FStVarCopyObj var_168
  loc_CCD2BA: FLdRfVar var_168
  loc_CCD2BD: FLdRfVar var_138
  loc_CCD2C0: CStrVarTmp
  loc_CCD2C1: CVarStr var_158
  loc_CCD2C4: ImpAdCallI2 Format$(, )
  loc_CCD2C9: FStStrNoPop var_204
  loc_CCD2CC: ConcatStr
  loc_CCD2CD: FStStrNoPop var_208
  loc_CCD2D0: LitStr "',"
  loc_CCD2D3: ConcatStr
  loc_CCD2D4: FStStrNoPop var_210
  loc_CCD2D7: FLdRfVar var_20C
  loc_CCD2DA: FLdPr Me
  loc_CCD2DD: MemLdRfVar from_stack_1.global_56
  loc_CCD2E0: NewIfNullPr clsboleto
  loc_CCD2E3: from_stack_1 = clsboleto.CodiFapa
  loc_CCD2E8: ILdRf var_20C
  loc_CCD2EB: CStrI4
  loc_CCD2ED: FStStrNoPop var_214
  loc_CCD2F0: ConcatStr
  loc_CCD2F1: FStStrNoPop var_218
  loc_CCD2F4: LitStr ","
  loc_CCD2F7: ConcatStr
  loc_CCD2F8: FStStrNoPop var_220
  loc_CCD2FB: FLdRfVar var_21A
  loc_CCD2FE: FLdPr Me
  loc_CCD301: MemLdRfVar from_stack_1.global_56
  loc_CCD304: NewIfNullPr clsboleto
  loc_CCD307: from_stack_1 = clsboleto.CuotDefa
  loc_CCD30C: FLdI2 var_21A
  loc_CCD30F: CStrUI1
  loc_CCD311: FStStrNoPop var_224
  loc_CCD314: ConcatStr
  loc_CCD315: FStStrNoPop var_228
  loc_CCD318: LitStr ","
  loc_CCD31B: ConcatStr
  loc_CCD31C: FStStrNoPop var_230
  loc_CCD31F: LitI4 0
  loc_CCD324: LitI4 -1
  loc_CCD329: LitI4 1
  loc_CCD32E: LitStr "."
  loc_CCD331: LitStr ","
  loc_CCD334: FLdFPR8 var_1C0
  loc_CCD337: CStrR8
  loc_CCD339: FStStrNoPop var_22C
  loc_CCD33C: ImpAdCallI2 Replace(, , , , , )
  loc_CCD341: FStStrNoPop var_234
  loc_CCD344: ConcatStr
  loc_CCD345: FStStrNoPop var_238
  loc_CCD348: LitStr ","
  loc_CCD34B: ConcatStr
  loc_CCD34C: FStStrNoPop var_240
  loc_CCD34F: LitI4 0
  loc_CCD354: LitI4 -1
  loc_CCD359: LitI4 1
  loc_CCD35E: LitStr "."
  loc_CCD361: LitStr ","
  loc_CCD364: FLdFPR8 var_1EC
  loc_CCD367: CStrR8
  loc_CCD369: FStStrNoPop var_23C
  loc_CCD36C: ImpAdCallI2 Replace(, , , , , )
  loc_CCD371: FStStrNoPop var_244
  loc_CCD374: ConcatStr
  loc_CCD375: FStStrNoPop var_248
  loc_CCD378: LitStr ","
  loc_CCD37B: ConcatStr
  loc_CCD37C: FStStrNoPop var_258
  loc_CCD37F: LitI4 0
  loc_CCD384: LitI4 -1
  loc_CCD389: LitI4 1
  loc_CCD38E: LitStr "."
  loc_CCD391: LitStr ","
  loc_CCD394: FLdFPR8 var_250
  loc_CCD397: CStrR8
  loc_CCD399: FStStrNoPop var_254
  loc_CCD39C: ImpAdCallI2 Replace(, , , , , )
  loc_CCD3A1: FStStrNoPop var_25C
  loc_CCD3A4: ConcatStr
  loc_CCD3A5: FStStrNoPop var_260
  loc_CCD3A8: LitStr ","
  loc_CCD3AB: ConcatStr
  loc_CCD3AC: FStStrNoPop var_270
  loc_CCD3AF: LitI4 0
  loc_CCD3B4: LitI4 -1
  loc_CCD3B9: LitI4 1
  loc_CCD3BE: LitStr "."
  loc_CCD3C1: LitStr ","
  loc_CCD3C4: FLdFPR8 var_268
  loc_CCD3C7: CStrR8
  loc_CCD3C9: FStStrNoPop var_26C
  loc_CCD3CC: ImpAdCallI2 Replace(, , , , , )
  loc_CCD3D1: FStStrNoPop var_274
  loc_CCD3D4: ConcatStr
  loc_CCD3D5: FStStrNoPop var_278
  loc_CCD3D8: LitStr ","
  loc_CCD3DB: ConcatStr
  loc_CCD3DC: FStStrNoPop var_288
  loc_CCD3DF: LitI4 0
  loc_CCD3E4: LitI4 -1
  loc_CCD3E9: LitI4 1
  loc_CCD3EE: LitStr "."
  loc_CCD3F1: LitStr ","
  loc_CCD3F4: FLdFPR8 var_280
  loc_CCD3F7: CStrR8
  loc_CCD3F9: FStStrNoPop var_284
  loc_CCD3FC: ImpAdCallI2 Replace(, , , , , )
  loc_CCD401: FStStrNoPop var_28C
  loc_CCD404: ConcatStr
  loc_CCD405: FStStrNoPop var_290
  loc_CCD408: LitStr ","
  loc_CCD40B: ConcatStr
  loc_CCD40C: FStStrNoPop var_2A0
  loc_CCD40F: LitI4 0
  loc_CCD414: LitI4 -1
  loc_CCD419: LitI4 1
  loc_CCD41E: LitStr "."
  loc_CCD421: LitStr ","
  loc_CCD424: FLdFPR8 var_298
  loc_CCD427: CStrR8
  loc_CCD429: FStStrNoPop var_29C
  loc_CCD42C: ImpAdCallI2 Replace(, , , , , )
  loc_CCD431: FStStrNoPop var_2A4
  loc_CCD434: ConcatStr
  loc_CCD435: FStStrNoPop var_2A8
  loc_CCD438: LitStr ","
  loc_CCD43B: ConcatStr
  loc_CCD43C: FStStrNoPop var_2B8
  loc_CCD43F: LitI4 0
  loc_CCD444: LitI4 -1
  loc_CCD449: LitI4 1
  loc_CCD44E: LitStr "."
  loc_CCD451: LitStr ","
  loc_CCD454: FLdFPR8 var_2B0
  loc_CCD457: CStrR8
  loc_CCD459: FStStrNoPop var_2B4
  loc_CCD45C: ImpAdCallI2 Replace(, , , , , )
  loc_CCD461: FStStrNoPop var_2BC
  loc_CCD464: ConcatStr
  loc_CCD465: FStStrNoPop var_2C0
  loc_CCD468: LitStr ","
  loc_CCD46B: ConcatStr
  loc_CCD46C: FStStrNoPop var_2D0
  loc_CCD46F: LitI4 0
  loc_CCD474: LitI4 -1
  loc_CCD479: LitI4 1
  loc_CCD47E: LitStr "."
  loc_CCD481: LitStr ","
  loc_CCD484: FLdFPR8 var_2C8
  loc_CCD487: CStrR8
  loc_CCD489: FStStrNoPop var_2CC
  loc_CCD48C: ImpAdCallI2 Replace(, , , , , )
  loc_CCD491: FStStrNoPop var_2D4
  loc_CCD494: ConcatStr
  loc_CCD495: FStStrNoPop var_2D8
  loc_CCD498: LitStr ","
  loc_CCD49B: ConcatStr
  loc_CCD49C: FStStrNoPop var_2E8
  loc_CCD49F: LitI4 0
  loc_CCD4A4: LitI4 -1
  loc_CCD4A9: LitI4 1
  loc_CCD4AE: LitStr "."
  loc_CCD4B1: LitStr ","
  loc_CCD4B4: FLdFPR8 var_2E0
  loc_CCD4B7: CStrR8
  loc_CCD4B9: FStStrNoPop var_2E4
  loc_CCD4BC: ImpAdCallI2 Replace(, , , , , )
  loc_CCD4C1: FStStrNoPop var_2EC
  loc_CCD4C4: ConcatStr
  loc_CCD4C5: FStStrNoPop var_2F0
  loc_CCD4C8: LitStr ",'"
  loc_CCD4CB: ConcatStr
  loc_CCD4CC: FStStrNoPop var_2F4
  loc_CCD4CF: ImpAdLdI4 MemVar_D9302C
  loc_CCD4D2: ConcatStr
  loc_CCD4D3: FStStrNoPop var_2F8
  loc_CCD4D6: LitStr "');"
  loc_CCD4D9: ConcatStr
  loc_CCD4DA: FStStrNoPop var_2FC
  loc_CCD4DD: FLdPr Me
  loc_CCD4E0: MemStStrCopy
  loc_CCD4E4: FFreeStr var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2E4 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_210 = "": var_214 = "": var_218 = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_26C = "": var_270 = "": var_274 = "": var_278 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_A8 = "": var_C0 = "": var_C4 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1B4 = "": var_1B8 = "": var_1C8 = "": var_1C4 = "": var_1CC = "": var_1D4 = "": var_1D0 = "": var_1D8 = "": var_1E0 = "": var_1DC = "": var_1E4 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = ""
  loc_CCD57D: FFreeAd var_A4 = "": var_BC = ""
  loc_CCD586: FFreeVar var_B8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_CCD599: FLdRfVar var_E8
  loc_CCD59C: FLdPr Me
  loc_CCD59F: MemLdRfVar from_stack_1.global_56
  loc_CCD5A2: NewIfNullPr clsboleto
  loc_CCD5A5: from_stack_1 = clsboleto.FeveBole
  loc_CCD5AA: FLdPr Me
  loc_CCD5AD: VCallAd Control_ID_FepaAcpaMsk
  loc_CCD5B0: FStAdFunc var_A4
  loc_CCD5B3: FLdPr var_A4
  loc_CCD5B6: LateIdLdVar var_B8 DispID_15 0
  loc_CCD5BD: CStrVarTmp
  loc_CCD5BE: FStStrNoPop var_A8
  loc_CCD5C1: CDateStr
  loc_CCD5C3: FLdRfVar var_E8
  loc_CCD5C6: FnCDateVar
  loc_CCD5C8: GtR4
  loc_CCD5C9: FFree1Str var_A8
  loc_CCD5CC: FFree1Ad var_A4
  loc_CCD5CF: FFreeVar var_B8 = "": var_E8 = ""
  loc_CCD5D8: BranchF loc_CCD7D7
  loc_CCD5DB: FLdPr Me
  loc_CCD5DE: VCallAd Control_ID_FepaAcpaMsk
  loc_CCD5E1: FStAdFunc var_A4
  loc_CCD5E4: FLdPr var_A4
  loc_CCD5E7: LateIdLdVar var_B8 DispID_15 0
  loc_CCD5EE: PopAd
  loc_CCD5F0: FLdRfVar var_108
  loc_CCD5F3: FLdPr Me
  loc_CCD5F6: MemLdRfVar from_stack_1.global_56
  loc_CCD5F9: NewIfNullPr clsboleto
  loc_CCD5FC: from_stack_1 = clsboleto.FeveBole
  loc_CCD601: FLdRfVar var_1C0
  loc_CCD604: FLdPr Me
  loc_CCD607: MemLdRfVar from_stack_1.global_56
  loc_CCD60A: NewIfNullPr clsboleto
  loc_CCD60D: from_stack_1 = clsboleto.TotaBole
  loc_CCD612: FLdRfVar var_158
  loc_CCD615: FLdPr Me
  loc_CCD618: MemLdRfVar from_stack_1.global_56
  loc_CCD61B: NewIfNullPr clsboleto
  loc_CCD61E: from_stack_1 = clsboleto.FeveBole
  loc_CCD623: FLdPr Me
  loc_CCD626: MemLdStr global_100
  loc_CCD629: LitStr " INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo, DiasRebo) "
  loc_CCD62C: ConcatStr
  loc_CCD62D: FStStrNoPop var_A8
  loc_CCD630: LitStr " VALUES ("
  loc_CCD633: ConcatStr
  loc_CCD634: FStStrNoPop var_C0
  loc_CCD637: FLdRfVar var_C6
  loc_CCD63A: FLdPr Me
  loc_CCD63D: MemLdRfVar from_stack_1.global_56
  loc_CCD640: NewIfNullPr clsboleto
  loc_CCD643: from_stack_1 = clsboleto.CodiOfic
  loc_CCD648: FLdI2 var_C6
  loc_CCD64B: CStrUI1
  loc_CCD64D: FStStrNoPop var_C4
  loc_CCD650: ConcatStr
  loc_CCD651: FStStrNoPop var_16C
  loc_CCD654: LitStr ",'"
  loc_CCD657: ConcatStr
  loc_CCD658: FStStrNoPop var_174
  loc_CCD65B: FLdRfVar var_170
  loc_CCD65E: FLdPr Me
  loc_CCD661: MemLdRfVar from_stack_1.global_56
  loc_CCD664: NewIfNullPr clsboleto
  loc_CCD667: from_stack_1 = clsboleto.CuenCtct
  loc_CCD66C: ILdRf var_170
  loc_CCD66F: ConcatStr
  loc_CCD670: FStStrNoPop var_178
  loc_CCD673: LitStr "',"
  loc_CCD676: ConcatStr
  loc_CCD677: FStStrNoPop var_17C
  loc_CCD67A: FLdRfVar var_1EE
  loc_CCD67D: FLdPr Me
  loc_CCD680: MemLdRfVar from_stack_1.global_56
  loc_CCD683: NewIfNullPr clsboleto
  loc_CCD686: from_stack_1 = clsboleto.PeriBole
  loc_CCD68B: FLdI2 var_1EE
  loc_CCD68E: CStrUI1
  loc_CCD690: FStStrNoPop var_180
  loc_CCD693: ConcatStr
  loc_CCD694: FStStrNoPop var_184
  loc_CCD697: LitStr ","
  loc_CCD69A: ConcatStr
  loc_CCD69B: FStStrNoPop var_188
  loc_CCD69E: FLdRfVar var_194
  loc_CCD6A1: FLdPr Me
  loc_CCD6A4: MemLdRfVar from_stack_1.global_56
  loc_CCD6A7: NewIfNullPr clsboleto
  loc_CCD6AA: from_stack_1 = clsboleto.NumeBole
  loc_CCD6AF: ILdRf var_194
  loc_CCD6B2: CStrI4
  loc_CCD6B4: FStStrNoPop var_18C
  loc_CCD6B7: ConcatStr
  loc_CCD6B8: FStStrNoPop var_190
  loc_CCD6BB: LitStr ",'No','"
  loc_CCD6BE: ConcatStr
  loc_CCD6BF: FStStrNoPop var_1B4
  loc_CCD6C2: LitI4 1
  loc_CCD6C7: LitI4 1
  loc_CCD6CC: LitVarStr var_D8, "yyyy-mm-dd"
  loc_CCD6D1: FStVarCopyObj var_F8
  loc_CCD6D4: FLdRfVar var_F8
  loc_CCD6D7: FLdRfVar var_B8
  loc_CCD6DA: CStrVarTmp
  loc_CCD6DB: CVarStr var_E8
  loc_CCD6DE: ImpAdCallI2 Format$(, )
  loc_CCD6E3: FStStrNoPop var_1B8
  loc_CCD6E6: ConcatStr
  loc_CCD6E7: FStStrNoPop var_1C4
  loc_CCD6EA: LitStr "','"
  loc_CCD6ED: ConcatStr
  loc_CCD6EE: FStStrNoPop var_1C8
  loc_CCD6F1: LitI4 1
  loc_CCD6F6: LitI4 1
  loc_CCD6FB: LitVarStr var_118, "yyyy-mm-dd"
  loc_CCD700: FStVarCopyObj var_128
  loc_CCD703: FLdRfVar var_128
  loc_CCD706: FLdRfVar var_108
  loc_CCD709: ImpAdCallI2 Format$(, )
  loc_CCD70E: FStStrNoPop var_1CC
  loc_CCD711: ConcatStr
  loc_CCD712: FStStrNoPop var_1D0
  loc_CCD715: LitStr "',"
  loc_CCD718: ConcatStr
  loc_CCD719: FStStrNoPop var_1D8
  loc_CCD71C: LitI4 0
  loc_CCD721: LitI4 -1
  loc_CCD726: LitI4 1
  loc_CCD72B: LitStr "."
  loc_CCD72E: LitStr ","
  loc_CCD731: FLdFPR8 var_1C0
  loc_CCD734: CStrR8
  loc_CCD736: FStStrNoPop var_1D4
  loc_CCD739: ImpAdCallI2 Replace(, , , , , )
  loc_CCD73E: FStStrNoPop var_1DC
  loc_CCD741: ConcatStr
  loc_CCD742: FStStrNoPop var_1E0
  loc_CCD745: LitStr ","
  loc_CCD748: ConcatStr
  loc_CCD749: FStStrNoPop var_1F4
  loc_CCD74C: FLdPr Me
  loc_CCD74F: VCallAd Control_ID_FepaAcpaMsk
  loc_CCD752: FStAdFunc var_BC
  loc_CCD755: FLdPr var_BC
  loc_CCD758: LateIdLdVar var_138 DispID_15 0
  loc_CCD75F: CStrVarTmp
  loc_CCD760: FStStrNoPop var_1E4
  loc_CCD763: CDateStr
  loc_CCD765: FLdRfVar var_158
  loc_CCD768: FnCDateVar
  loc_CCD76A: SubR4
  loc_CCD76B: CStrR8
  loc_CCD76D: FStStrNoPop var_1F8
  loc_CCD770: ConcatStr
  loc_CCD771: FStStrNoPop var_1FC
  loc_CCD774: LitStr ");"
  loc_CCD777: ConcatStr
  loc_CCD778: FStStrNoPop var_200
  loc_CCD77B: FLdPr Me
  loc_CCD77E: MemStStrCopy
  loc_CCD782: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_174 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1F4 = "": var_1F8 = "": var_1FC = ""
  loc_CCD7BD: FFreeAd var_A4 = ""
  loc_CCD7C4: FFreeVar var_B8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_CCD7D7: FLdPr Me
  loc_CCD7DA: VCallAd Control_ID_FeenAcpaMsk
  loc_CCD7DD: FStAdFunc var_A4
  loc_CCD7E0: FLdPr var_A4
  loc_CCD7E3: LateIdLdVar var_B8 DispID_15 0
  loc_CCD7EA: PopAd
  loc_CCD7EC: FLdPr Me
  loc_CCD7EF: MemLdStr global_100
  loc_CCD7F2: LitStr " UPDATE boleapre SET EstaBoap = 'Pagado', FeenAcpa = "
  loc_CCD7F5: ConcatStr
  loc_CCD7F6: FStStrNoPop var_A8
  loc_CCD7F9: LitI4 1
  loc_CCD7FE: LitI4 1
  loc_CCD803: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_CCD808: FStVarCopyObj var_F8
  loc_CCD80B: FLdRfVar var_F8
  loc_CCD80E: FLdRfVar var_B8
  loc_CCD811: CStrVarTmp
  loc_CCD812: CVarStr var_E8
  loc_CCD815: ImpAdCallI2 Format$(, )
  loc_CCD81A: FStStrNoPop var_C0
  loc_CCD81D: ConcatStr
  loc_CCD81E: FStStrNoPop var_C4
  loc_CCD821: LitStr ", FeacBoap = Null WHERE PeriBole = "
  loc_CCD824: ConcatStr
  loc_CCD825: FStStrNoPop var_16C
  loc_CCD828: FLdRfVar var_C6
  loc_CCD82B: FLdPr Me
  loc_CCD82E: MemLdRfVar from_stack_1.global_56
  loc_CCD831: NewIfNullPr clsboleto
  loc_CCD834: from_stack_1 = clsboleto.PeriBole
  loc_CCD839: FLdI2 var_C6
  loc_CCD83C: CStrUI1
  loc_CCD83E: FStStrNoPop var_170
  loc_CCD841: ConcatStr
  loc_CCD842: FStStrNoPop var_174
  loc_CCD845: LitStr " AND NumeBole = "
  loc_CCD848: ConcatStr
  loc_CCD849: FStStrNoPop var_178
  loc_CCD84C: FLdRfVar var_194
  loc_CCD84F: FLdPr Me
  loc_CCD852: MemLdRfVar from_stack_1.global_56
  loc_CCD855: NewIfNullPr clsboleto
  loc_CCD858: from_stack_1 = clsboleto.NumeBole
  loc_CCD85D: ILdRf var_194
  loc_CCD860: CStrI4
  loc_CCD862: FStStrNoPop var_17C
  loc_CCD865: ConcatStr
  loc_CCD866: FStStrNoPop var_180
  loc_CCD869: LitStr ";"
  loc_CCD86C: ConcatStr
  loc_CCD86D: FStStrNoPop var_184
  loc_CCD870: FLdPr Me
  loc_CCD873: MemStStrCopy
  loc_CCD877: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_CCD88E: FFree1Ad var_A4
  loc_CCD891: FFreeVar var_B8 = "": var_E8 = ""
  loc_CCD89A: FLdPr Me
  loc_CCD89D: MemLdStr global_100
  loc_CCD8A0: LitStr " UPDATE boleto SET EstaBole = 'Pagado' WHERE PeriBole = "
  loc_CCD8A3: ConcatStr
  loc_CCD8A4: FStStrNoPop var_A8
  loc_CCD8A7: FLdRfVar var_C6
  loc_CCD8AA: FLdPr Me
  loc_CCD8AD: MemLdRfVar from_stack_1.global_56
  loc_CCD8B0: NewIfNullPr clsboleto
  loc_CCD8B3: from_stack_1 = clsboleto.PeriBole
  loc_CCD8B8: FLdI2 var_C6
  loc_CCD8BB: CStrUI1
  loc_CCD8BD: FStStrNoPop var_C0
  loc_CCD8C0: ConcatStr
  loc_CCD8C1: FStStrNoPop var_C4
  loc_CCD8C4: LitStr " AND NumeBole = "
  loc_CCD8C7: ConcatStr
  loc_CCD8C8: FStStrNoPop var_16C
  loc_CCD8CB: FLdRfVar var_194
  loc_CCD8CE: FLdPr Me
  loc_CCD8D1: MemLdRfVar from_stack_1.global_56
  loc_CCD8D4: NewIfNullPr clsboleto
  loc_CCD8D7: from_stack_1 = clsboleto.NumeBole
  loc_CCD8DC: ILdRf var_194
  loc_CCD8DF: CStrI4
  loc_CCD8E1: FStStrNoPop var_170
  loc_CCD8E4: ConcatStr
  loc_CCD8E5: FStStrNoPop var_174
  loc_CCD8E8: LitStr ";"
  loc_CCD8EB: ConcatStr
  loc_CCD8EC: FStStrNoPop var_178
  loc_CCD8EF: FLdPr Me
  loc_CCD8F2: MemStStrCopy
  loc_CCD8F6: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_CCD907: LitStr "SELECT detabole.*, concepto.TipaConc FROM detabole "
  loc_CCD90A: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CCD90D: ConcatStr
  loc_CCD90E: FStStrNoPop var_A8
  loc_CCD911: ImpAdLdI2 MemVar_D93034
  loc_CCD914: CStrUI1
  loc_CCD916: FStStrNoPop var_C0
  loc_CCD919: ConcatStr
  loc_CCD91A: FStStrNoPop var_C4
  loc_CCD91D: LitStr " AND concepto.CodiConc = detabole.CodiConc"
  loc_CCD920: ConcatStr
  loc_CCD921: FStStrNoPop var_16C
  loc_CCD924: LitStr " WHERE PeriBole = "
  loc_CCD927: ConcatStr
  loc_CCD928: FStStrNoPop var_170
  loc_CCD92B: FLdRfVar var_C6
  loc_CCD92E: FLdPr Me
  loc_CCD931: MemLdRfVar from_stack_1.global_56
  loc_CCD934: NewIfNullPr clsboleto
  loc_CCD937: from_stack_1 = clsboleto.PeriBole
  loc_CCD93C: FLdI2 var_C6
  loc_CCD93F: CStrUI1
  loc_CCD941: FStStrNoPop var_174
  loc_CCD944: ConcatStr
  loc_CCD945: FStStrNoPop var_178
  loc_CCD948: LitStr " AND NumeBole = "
  loc_CCD94B: ConcatStr
  loc_CCD94C: FStStrNoPop var_17C
  loc_CCD94F: FLdRfVar var_194
  loc_CCD952: FLdPr Me
  loc_CCD955: MemLdRfVar from_stack_1.global_56
  loc_CCD958: NewIfNullPr clsboleto
  loc_CCD95B: from_stack_1 = clsboleto.NumeBole
  loc_CCD960: ILdRf var_194
  loc_CCD963: CStrI4
  loc_CCD965: FStStrNoPop var_180
  loc_CCD968: ConcatStr
  loc_CCD969: FStStrNoPop var_184
  loc_CCD96C: LitStr " ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_CCD96F: ConcatStr
  loc_CCD970: FStStrNoPop var_188
  loc_CCD973: FLdPr Me
  loc_CCD976: MemLdRfVar from_stack_1.global_68
  loc_CCD979: NewIfNullPr clsdetabole
  loc_CCD97C: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CCD981: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_CCD99A: FLdRfVar var_194
  loc_CCD99D: FLdPr Me
  loc_CCD9A0: MemLdRfVar from_stack_1.global_68
  loc_CCD9A3: NewIfNullPr clsdetabole
  loc_CCD9A6: from_stack_1 = clsdetabole.RecordCount
  loc_CCD9AB: ILdRf var_194
  loc_CCD9AE: LitI4 0
  loc_CCD9B3: GtI4
  loc_CCD9B4: BranchF loc_CCE80A
  loc_CCD9B7: FLdPr Me
  loc_CCD9BA: MemLdRfVar from_stack_1.global_68
  loc_CCD9BD: NewIfNullPr clsdetabole
  loc_CCD9C0: Call clsdetabole.MoveFirst()
  loc_CCD9C5: FLdRfVar var_C6
  loc_CCD9C8: FLdPr Me
  loc_CCD9CB: MemLdRfVar from_stack_1.global_68
  loc_CCD9CE: NewIfNullPr clsdetabole
  loc_CCD9D1: from_stack_1 = clsdetabole.EOF
  loc_CCD9D6: FLdI2 var_C6
  loc_CCD9D9: NotI4
  loc_CCD9DA: BranchF loc_CCE807
  loc_CCD9DD: LitI2_Byte 0
  loc_CCD9DF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CCD9E4: CVarDate var_B8
  loc_CCD9E8: FLdRfVar var_E8
  loc_CCD9EB: ImpAdCallFPR4  = Year()
  loc_CCD9F0: FLdRfVar var_A8
  loc_CCD9F3: FLdPr Me
  loc_CCD9F6: MemLdRfVar from_stack_1.global_68
  loc_CCD9F9: NewIfNullPr clsdetabole
  loc_CCD9FC: from_stack_1 = clsdetabole.CodiConc
  loc_CCDA01: ILdRf var_A8
  loc_CCDA04: FLdRfVar var_E8
  loc_CCDA07: CI2Var
  loc_CCDA08: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CCDA0D: FStStrNoPop var_C0
  loc_CCDA10: LitStr vbNullString
  loc_CCDA13: EqStr
  loc_CCDA15: FFreeStr var_A8 = ""
  loc_CCDA1C: FFreeVar var_B8 = ""
  loc_CCDA23: BranchF loc_CCDA60
  loc_CCDA26: LitStr "El recurso: "
  loc_CCDA29: FLdRfVar var_A8
  loc_CCDA2C: FLdPr Me
  loc_CCDA2F: MemLdRfVar from_stack_1.global_68
  loc_CCDA32: NewIfNullPr clsdetabole
  loc_CCDA35: from_stack_1 = clsdetabole.CodiConc
  loc_CCDA3A: ILdRf var_A8
  loc_CCDA3D: ConcatStr
  loc_CCDA3E: FStStrNoPop var_C0
  loc_CCDA41: LitStr " No tiene asociado ninguna cuenta contable de ingresos. No se ingresa el boleto."
  loc_CCDA44: ConcatStr
  loc_CCDA45: FStStrNoPop var_C4
  loc_CCDA48: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCDA4D: FFreeStr var_A8 = "": var_C0 = ""
  loc_CCDA56: LitStr "ERRRROR"
  loc_CCDA59: FLdPr Me
  loc_CCDA5C: MemStStrCopy
  loc_CCDA60: FLdRfVar var_A8
  loc_CCDA63: FLdPr Me
  loc_CCDA66: MemLdRfVar from_stack_1.global_68
  loc_CCDA69: NewIfNullPr clsdetabole
  loc_CCDA6C: from_stack_1 = clsdetabole.CuenCtct
  loc_CCDA71: ILdRf var_A8
  loc_CCDA74: LitStr vbNullString
  loc_CCDA77: NeStr
  loc_CCDA79: FFree1Str var_A8
  loc_CCDA7C: BranchF loc_CCDB2A
  loc_CCDA7F: FLdRfVar var_C6
  loc_CCDA82: FLdPr Me
  loc_CCDA85: MemLdRfVar from_stack_1.global_68
  loc_CCDA88: NewIfNullPr clsdetabole
  loc_CCDA8B: from_stack_1 = clsdetabole.CodiTimo
  loc_CCDA90: FLdI2 var_C6
  loc_CCDA93: LitI2_Byte 0
  loc_CCDA95: EqI2
  loc_CCDA96: BranchF loc_CCDAD3
  loc_CCDA99: LitStr "El concepto: "
  loc_CCDA9C: FLdRfVar var_A8
  loc_CCDA9F: FLdPr Me
  loc_CCDAA2: MemLdRfVar from_stack_1.global_68
  loc_CCDAA5: NewIfNullPr clsdetabole
  loc_CCDAA8: from_stack_1 = clsdetabole.CodiConc
  loc_CCDAAD: ILdRf var_A8
  loc_CCDAB0: ConcatStr
  loc_CCDAB1: FStStrNoPop var_C0
  loc_CCDAB4: LitStr " No tiene asociado ningún tipo de movimiento de aforo. No se ingresa el boleto."
  loc_CCDAB7: ConcatStr
  loc_CCDAB8: FStStrNoPop var_C4
  loc_CCDABB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCDAC0: FFreeStr var_A8 = "": var_C0 = ""
  loc_CCDAC9: LitStr "ERRRROR"
  loc_CCDACC: FLdPr Me
  loc_CCDACF: MemStStrCopy
  loc_CCDAD3: FLdRfVar var_C6
  loc_CCDAD6: FLdPr Me
  loc_CCDAD9: MemLdRfVar from_stack_1.global_68
  loc_CCDADC: NewIfNullPr clsdetabole
  loc_CCDADF: from_stack_1 = clsdetabole.TipaConc
  loc_CCDAE4: FLdUI1
  loc_CCDAE8: CI2UI1
  loc_CCDAEA: LitI2_Byte 0
  loc_CCDAEC: EqI2
  loc_CCDAED: BranchF loc_CCDB2A
  loc_CCDAF0: LitStr "El concepto: "
  loc_CCDAF3: FLdRfVar var_A8
  loc_CCDAF6: FLdPr Me
  loc_CCDAF9: MemLdRfVar from_stack_1.global_68
  loc_CCDAFC: NewIfNullPr clsdetabole
  loc_CCDAFF: from_stack_1 = clsdetabole.CodiConc
  loc_CCDB04: ILdRf var_A8
  loc_CCDB07: ConcatStr
  loc_CCDB08: FStStrNoPop var_C0
  loc_CCDB0B: LitStr " No tiene asociado ningún tipo de movimiento de pago. No se ingresa el boleto."
  loc_CCDB0E: ConcatStr
  loc_CCDB0F: FStStrNoPop var_C4
  loc_CCDB12: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCDB17: FFreeStr var_A8 = "": var_C0 = ""
  loc_CCDB20: LitStr "ERRRROR"
  loc_CCDB23: FLdPr Me
  loc_CCDB26: MemStStrCopy
  loc_CCDB2A: FLdRfVar var_A8
  loc_CCDB2D: FLdPr Me
  loc_CCDB30: MemLdRfVar from_stack_1.global_56
  loc_CCDB33: NewIfNullPr clsboleto
  loc_CCDB36: from_stack_1 = clsboleto.TipoBole
  loc_CCDB3B: ILdRf var_A8
  loc_CCDB3E: LitStr "Anual"
  loc_CCDB41: EqStr
  loc_CCDB43: FFree1Str var_A8
  loc_CCDB46: BranchF loc_CCDB54
  loc_CCDB49: LitI2_Byte &H15
  loc_CCDB4B: FLdPr Me
  loc_CCDB4E: MemStI2 global_104
  loc_CCDB51: Branch loc_CCDB9B
  loc_CCDB54: FLdRfVar var_A8
  loc_CCDB57: FLdPr Me
  loc_CCDB5A: MemLdRfVar from_stack_1.global_56
  loc_CCDB5D: NewIfNullPr clsboleto
  loc_CCDB60: from_stack_1 = clsboleto.TipoBole
  loc_CCDB65: ILdRf var_A8
  loc_CCDB68: LitStr "Pago Anticipado"
  loc_CCDB6B: EqStr
  loc_CCDB6D: FFree1Str var_A8
  loc_CCDB70: BranchF loc_CCDB7E
  loc_CCDB73: LitI2_Byte 5
  loc_CCDB75: FLdPr Me
  loc_CCDB78: MemStI2 global_104
  loc_CCDB7B: Branch loc_CCDB9B
  loc_CCDB7E: FLdRfVar var_C6
  loc_CCDB81: FLdPr Me
  loc_CCDB84: MemLdRfVar from_stack_1.global_68
  loc_CCDB87: NewIfNullPr clsdetabole
  loc_CCDB8A: from_stack_1 = clsdetabole.TipaConc
  loc_CCDB8F: FLdUI1
  loc_CCDB93: CI2UI1
  loc_CCDB95: FLdPr Me
  loc_CCDB98: MemStI2 global_104
  loc_CCDB9B: FLdPr Me
  loc_CCDB9E: VCallAd Control_ID_FeenAcpaMsk
  loc_CCDBA1: FStAdFunc var_A4
  loc_CCDBA4: FLdPr var_A4
  loc_CCDBA7: LateIdLdVar var_B8 DispID_15 0
  loc_CCDBAE: PopAd
  loc_CCDBB0: FLdRfVar var_1C0
  loc_CCDBB3: FLdPr Me
  loc_CCDBB6: MemLdRfVar from_stack_1.global_68
  loc_CCDBB9: NewIfNullPr clsdetabole
  loc_CCDBBC: from_stack_1 = clsdetabole.CapiDebo
  loc_CCDBC1: FLdRfVar var_1EC
  loc_CCDBC4: FLdPr Me
  loc_CCDBC7: MemLdRfVar from_stack_1.global_68
  loc_CCDBCA: NewIfNullPr clsdetabole
  loc_CCDBCD: from_stack_1 = clsdetabole.DecaDebo
  loc_CCDBD2: FLdRfVar var_250
  loc_CCDBD5: FLdPr Me
  loc_CCDBD8: MemLdRfVar from_stack_1.global_68
  loc_CCDBDB: NewIfNullPr clsdetabole
  loc_CCDBDE: from_stack_1 = clsdetabole.RecaDebo
  loc_CCDBE3: FLdRfVar var_268
  loc_CCDBE6: FLdPr Me
  loc_CCDBE9: MemLdRfVar from_stack_1.global_68
  loc_CCDBEC: NewIfNullPr clsdetabole
  loc_CCDBEF: from_stack_1 = clsdetabole.DereDebo
  loc_CCDBF4: FLdRfVar var_280
  loc_CCDBF7: FLdPr Me
  loc_CCDBFA: MemLdRfVar from_stack_1.global_68
  loc_CCDBFD: NewIfNullPr clsdetabole
  loc_CCDC00: from_stack_1 = clsdetabole.InteDebo
  loc_CCDC05: FLdRfVar var_298
  loc_CCDC08: FLdPr Me
  loc_CCDC0B: MemLdRfVar from_stack_1.global_68
  loc_CCDC0E: NewIfNullPr clsdetabole
  loc_CCDC11: from_stack_1 = clsdetabole.ExenDebo
  loc_CCDC16: FLdRfVar var_2B0
  loc_CCDC19: FLdPr Me
  loc_CCDC1C: MemLdRfVar from_stack_1.global_68
  loc_CCDC1F: NewIfNullPr clsdetabole
  loc_CCDC22: from_stack_1 = clsdetabole.CrafDebo
  loc_CCDC27: FLdRfVar var_2C8
  loc_CCDC2A: FLdPr Me
  loc_CCDC2D: MemLdRfVar from_stack_1.global_68
  loc_CCDC30: NewIfNullPr clsdetabole
  loc_CCDC33: from_stack_1 = clsdetabole.ApreDebo
  loc_CCDC38: FLdRfVar var_2E0
  loc_CCDC3B: FLdPr Me
  loc_CCDC3E: MemLdRfVar from_stack_1.global_68
  loc_CCDC41: NewIfNullPr clsdetabole
  loc_CCDC44: from_stack_1 = clsdetabole.TotaDebo
  loc_CCDC49: FLdPr Me
  loc_CCDC4C: MemLdStr global_100
  loc_CCDC4F: LitStr " INSERT INTO detapago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,CodiTili,NumeLiqu,ActuDepa,CodiOfic,CuenCtct,TipoCtct,CodiFapa,CuotDefa,NumeApre,CodiTimo,PeriInfo,CodiConc,CapiDepa,DecaDepa,RecaDepa,DereDepa,InteDepa,ExenDepa,CrafDepa,ApreDepa,TotaDepa) VALUES ('"
  loc_CCDC52: ConcatStr
  loc_CCDC53: FStStrNoPop var_A8
  loc_CCDC56: LitI4 1
  loc_CCDC5B: LitI4 1
  loc_CCDC60: LitVarStr var_D8, "yyyy-mm-dd"
  loc_CCDC65: FStVarCopyObj var_F8
  loc_CCDC68: FLdRfVar var_F8
  loc_CCDC6B: FLdRfVar var_B8
  loc_CCDC6E: CStrVarTmp
  loc_CCDC6F: CVarStr var_E8
  loc_CCDC72: ImpAdCallI2 Format$(, )
  loc_CCDC77: FStStrNoPop var_C0
  loc_CCDC7A: ConcatStr
  loc_CCDC7B: FStStrNoPop var_C4
  loc_CCDC7E: LitStr "',"
  loc_CCDC81: ConcatStr
  loc_CCDC82: FStStrNoPop var_170
  loc_CCDC85: FLdRfVar var_16C
  loc_CCDC88: FLdPr Me
  loc_CCDC8B: VCallAd Control_ID_NumeAcpaTxt
  loc_CCDC8E: FStAdFunc var_BC
  loc_CCDC91: FLdPr var_BC
  loc_CCDC94:  = Me.Text
  loc_CCDC99: ILdRf var_16C
  loc_CCDC9C: ConcatStr
  loc_CCDC9D: FStStrNoPop var_174
  loc_CCDCA0: LitStr ","
  loc_CCDCA3: ConcatStr
  loc_CCDCA4: FStStrNoPop var_178
  loc_CCDCA7: FLdRfVar var_C6
  loc_CCDCAA: FLdPr Me
  loc_CCDCAD: MemLdRfVar from_stack_1.global_68
  loc_CCDCB0: NewIfNullPr clsdetabole
  loc_CCDCB3: from_stack_1 = clsdetabole.PeriBole
  loc_CCDCB8: FLdI2 var_C6
  loc_CCDCBB: CStrUI1
  loc_CCDCBD: FStStrNoPop var_17C
  loc_CCDCC0: ConcatStr
  loc_CCDCC1: FStStrNoPop var_180
  loc_CCDCC4: LitStr ","
  loc_CCDCC7: ConcatStr
  loc_CCDCC8: FStStrNoPop var_184
  loc_CCDCCB: FLdRfVar var_194
  loc_CCDCCE: FLdPr Me
  loc_CCDCD1: MemLdRfVar from_stack_1.global_68
  loc_CCDCD4: NewIfNullPr clsdetabole
  loc_CCDCD7: from_stack_1 = clsdetabole.NumeBole
  loc_CCDCDC: ILdRf var_194
  loc_CCDCDF: CStrI4
  loc_CCDCE1: FStStrNoPop var_188
  loc_CCDCE4: ConcatStr
  loc_CCDCE5: FStStrNoPop var_18C
  loc_CCDCE8: LitStr ","
  loc_CCDCEB: ConcatStr
  loc_CCDCEC: FStStrNoPop var_190
  loc_CCDCEF: FLdRfVar var_20C
  loc_CCDCF2: FLdPr Me
  loc_CCDCF5: MemLdRfVar from_stack_1.global_68
  loc_CCDCF8: NewIfNullPr clsdetabole
  loc_CCDCFB: from_stack_1 = clsdetabole.PeriCtct
  loc_CCDD00: ILdRf var_20C
  loc_CCDD03: CStrI4
  loc_CCDD05: FStStrNoPop var_1B4
  loc_CCDD08: ConcatStr
  loc_CCDD09: FStStrNoPop var_1B8
  loc_CCDD0C: LitStr ","
  loc_CCDD0F: ConcatStr
  loc_CCDD10: FStStrNoPop var_1C4
  loc_CCDD13: FLdRfVar var_1EE
  loc_CCDD16: FLdPr Me
  loc_CCDD19: MemLdRfVar from_stack_1.global_68
  loc_CCDD1C: NewIfNullPr clsdetabole
  loc_CCDD1F: from_stack_1 = clsdetabole.BimeCtct
  loc_CCDD24: FLdI2 var_1EE
  loc_CCDD27: CStrUI1
  loc_CCDD29: FStStrNoPop var_1C8
  loc_CCDD2C: ConcatStr
  loc_CCDD2D: FStStrNoPop var_1CC
  loc_CCDD30: LitStr ","
  loc_CCDD33: ConcatStr
  loc_CCDD34: FStStrNoPop var_1D0
  loc_CCDD37: FLdRfVar var_308
  loc_CCDD3A: FLdPr Me
  loc_CCDD3D: MemLdRfVar from_stack_1.global_68
  loc_CCDD40: NewIfNullPr clsdetabole
  loc_CCDD43: from_stack_1 = clsdetabole.NumeCtct
  loc_CCDD48: ILdRf var_308
  loc_CCDD4B: CStrI4
  loc_CCDD4D: FStStrNoPop var_1D4
  loc_CCDD50: ConcatStr
  loc_CCDD51: FStStrNoPop var_1D8
  loc_CCDD54: LitStr ","
  loc_CCDD57: ConcatStr
  loc_CCDD58: FStStrNoPop var_1DC
  loc_CCDD5B: FLdRfVar var_21A
  loc_CCDD5E: FLdPr Me
  loc_CCDD61: MemLdRfVar from_stack_1.global_68
  loc_CCDD64: NewIfNullPr clsdetabole
  loc_CCDD67: from_stack_1 = clsdetabole.MoviCtct
  loc_CCDD6C: FLdI2 var_21A
  loc_CCDD6F: CStrUI1
  loc_CCDD71: FStStrNoPop var_1E0
  loc_CCDD74: ConcatStr
  loc_CCDD75: FStStrNoPop var_1E4
  loc_CCDD78: LitStr ","
  loc_CCDD7B: ConcatStr
  loc_CCDD7C: FStStrNoPop var_1F4
  loc_CCDD7F: FLdRfVar var_30A
  loc_CCDD82: FLdPr Me
  loc_CCDD85: MemLdRfVar from_stack_1.global_68
  loc_CCDD88: NewIfNullPr clsdetabole
  loc_CCDD8B: from_stack_1 = clsdetabole.MoviDebo
  loc_CCDD90: FLdI2 var_30A
  loc_CCDD93: CStrUI1
  loc_CCDD95: FStStrNoPop var_1F8
  loc_CCDD98: ConcatStr
  loc_CCDD99: FStStrNoPop var_1FC
  loc_CCDD9C: LitStr ","
  loc_CCDD9F: ConcatStr
  loc_CCDDA0: FStStrNoPop var_200
  loc_CCDDA3: FLdRfVar var_30C
  loc_CCDDA6: FLdPr Me
  loc_CCDDA9: MemLdRfVar from_stack_1.global_68
  loc_CCDDAC: NewIfNullPr clsdetabole
  loc_CCDDAF: from_stack_1 = clsdetabole.CodiTili
  loc_CCDDB4: FLdUI1
  loc_CCDDB8: CStrI2
  loc_CCDDBA: FStStrNoPop var_204
  loc_CCDDBD: ConcatStr
  loc_CCDDBE: FStStrNoPop var_208
  loc_CCDDC1: LitStr ","
  loc_CCDDC4: ConcatStr
  loc_CCDDC5: FStStrNoPop var_210
  loc_CCDDC8: FLdRfVar var_30E
  loc_CCDDCB: FLdPr Me
  loc_CCDDCE: MemLdRfVar from_stack_1.global_68
  loc_CCDDD1: NewIfNullPr clsdetabole
  loc_CCDDD4: from_stack_1 = clsdetabole.NumeLiqu
  loc_CCDDD9: FLdI2 var_30E
  loc_CCDDDC: CStrUI1
  loc_CCDDDE: FStStrNoPop var_214
  loc_CCDDE1: ConcatStr
  loc_CCDDE2: FStStrNoPop var_218
  loc_CCDDE5: LitStr ",'No',"
  loc_CCDDE8: ConcatStr
  loc_CCDDE9: FStStrNoPop var_220
  loc_CCDDEC: FLdRfVar var_310
  loc_CCDDEF: FLdPr Me
  loc_CCDDF2: MemLdRfVar from_stack_1.global_68
  loc_CCDDF5: NewIfNullPr clsdetabole
  loc_CCDDF8: from_stack_1 = clsdetabole.CodiOfic
  loc_CCDDFD: FLdUI1
  loc_CCDE01: CStrI2
  loc_CCDE03: FStStrNoPop var_224
  loc_CCDE06: ConcatStr
  loc_CCDE07: FStStrNoPop var_228
  loc_CCDE0A: LitStr ",'"
  loc_CCDE0D: ConcatStr
  loc_CCDE0E: FStStrNoPop var_230
  loc_CCDE11: FLdRfVar var_22C
  loc_CCDE14: FLdPr Me
  loc_CCDE17: MemLdRfVar from_stack_1.global_68
  loc_CCDE1A: NewIfNullPr clsdetabole
  loc_CCDE1D: from_stack_1 = clsdetabole.CuenCtct
  loc_CCDE22: ILdRf var_22C
  loc_CCDE25: ConcatStr
  loc_CCDE26: FStStrNoPop var_234
  loc_CCDE29: LitStr "','"
  loc_CCDE2C: ConcatStr
  loc_CCDE2D: FStStrNoPop var_23C
  loc_CCDE30: FLdRfVar var_238
  loc_CCDE33: FLdPr Me
  loc_CCDE36: MemLdRfVar from_stack_1.global_68
  loc_CCDE39: NewIfNullPr clsdetabole
  loc_CCDE3C: from_stack_1 = clsdetabole.TipoCtct
  loc_CCDE41: ILdRf var_238
  loc_CCDE44: ConcatStr
  loc_CCDE45: FStStrNoPop var_240
  loc_CCDE48: LitStr "',"
  loc_CCDE4B: ConcatStr
  loc_CCDE4C: FStStrNoPop var_244
  loc_CCDE4F: FLdRfVar var_314
  loc_CCDE52: FLdPr Me
  loc_CCDE55: MemLdRfVar from_stack_1.global_68
  loc_CCDE58: NewIfNullPr clsdetabole
  loc_CCDE5B: from_stack_1 = clsdetabole.CodiFapa
  loc_CCDE60: ILdRf var_314
  loc_CCDE63: CStrI4
  loc_CCDE65: FStStrNoPop var_248
  loc_CCDE68: ConcatStr
  loc_CCDE69: FStStrNoPop var_254
  loc_CCDE6C: LitStr ","
  loc_CCDE6F: ConcatStr
  loc_CCDE70: FStStrNoPop var_258
  loc_CCDE73: FLdRfVar var_316
  loc_CCDE76: FLdPr Me
  loc_CCDE79: MemLdRfVar from_stack_1.global_68
  loc_CCDE7C: NewIfNullPr clsdetabole
  loc_CCDE7F: from_stack_1 = clsdetabole.CuotDefa
  loc_CCDE84: FLdI2 var_316
  loc_CCDE87: CStrUI1
  loc_CCDE89: FStStrNoPop var_25C
  loc_CCDE8C: ConcatStr
  loc_CCDE8D: FStStrNoPop var_260
  loc_CCDE90: LitStr ","
  loc_CCDE93: ConcatStr
  loc_CCDE94: FStStrNoPop var_26C
  loc_CCDE97: FLdRfVar var_31C
  loc_CCDE9A: FLdPr Me
  loc_CCDE9D: MemLdRfVar from_stack_1.global_68
  loc_CCDEA0: NewIfNullPr clsdetabole
  loc_CCDEA3: from_stack_1 = clsdetabole.NumeApre
  loc_CCDEA8: ILdRf var_31C
  loc_CCDEAB: CStrI4
  loc_CCDEAD: FStStrNoPop var_270
  loc_CCDEB0: ConcatStr
  loc_CCDEB1: FStStrNoPop var_274
  loc_CCDEB4: LitStr ","
  loc_CCDEB7: ConcatStr
  loc_CCDEB8: FStStrNoPop var_278
  loc_CCDEBB: FLdPr Me
  loc_CCDEBE: MemLdI2 global_104
  loc_CCDEC1: CStrUI1
  loc_CCDEC3: FStStrNoPop var_284
  loc_CCDEC6: ConcatStr
  loc_CCDEC7: FStStrNoPop var_288
  loc_CCDECA: LitStr ","
  loc_CCDECD: ConcatStr
  loc_CCDECE: FStStrNoPop var_28C
  loc_CCDED1: FLdRfVar var_31E
  loc_CCDED4: FLdPr Me
  loc_CCDED7: MemLdRfVar from_stack_1.global_68
  loc_CCDEDA: NewIfNullPr clsdetabole
  loc_CCDEDD: from_stack_1 = clsdetabole.PeriInfo
  loc_CCDEE2: FLdI2 var_31E
  loc_CCDEE5: CStrUI1
  loc_CCDEE7: FStStrNoPop var_290
  loc_CCDEEA: ConcatStr
  loc_CCDEEB: FStStrNoPop var_29C
  loc_CCDEEE: LitStr ",'"
  loc_CCDEF1: ConcatStr
  loc_CCDEF2: FStStrNoPop var_2A4
  loc_CCDEF5: FLdRfVar var_2A0
  loc_CCDEF8: FLdPr Me
  loc_CCDEFB: MemLdRfVar from_stack_1.global_68
  loc_CCDEFE: NewIfNullPr clsdetabole
  loc_CCDF01: from_stack_1 = clsdetabole.CodiConc
  loc_CCDF06: ILdRf var_2A0
  loc_CCDF09: ConcatStr
  loc_CCDF0A: FStStrNoPop var_2A8
  loc_CCDF0D: LitStr "',"
  loc_CCDF10: ConcatStr
  loc_CCDF11: FStStrNoPop var_2B8
  loc_CCDF14: LitI4 0
  loc_CCDF19: LitI4 -1
  loc_CCDF1E: LitI4 1
  loc_CCDF23: LitStr "."
  loc_CCDF26: LitStr ","
  loc_CCDF29: FLdFPR8 var_1C0
  loc_CCDF2C: CStrR8
  loc_CCDF2E: FStStrNoPop var_2B4
  loc_CCDF31: ImpAdCallI2 Replace(, , , , , )
  loc_CCDF36: FStStrNoPop var_2BC
  loc_CCDF39: ConcatStr
  loc_CCDF3A: FStStrNoPop var_2C0
  loc_CCDF3D: LitStr ","
  loc_CCDF40: ConcatStr
  loc_CCDF41: FStStrNoPop var_2D0
  loc_CCDF44: LitI4 0
  loc_CCDF49: LitI4 -1
  loc_CCDF4E: LitI4 1
  loc_CCDF53: LitStr "."
  loc_CCDF56: LitStr ","
  loc_CCDF59: FLdFPR8 var_1EC
  loc_CCDF5C: CStrR8
  loc_CCDF5E: FStStrNoPop var_2CC
  loc_CCDF61: ImpAdCallI2 Replace(, , , , , )
  loc_CCDF66: FStStrNoPop var_2D4
  loc_CCDF69: ConcatStr
  loc_CCDF6A: FStStrNoPop var_2D8
  loc_CCDF6D: LitStr ","
  loc_CCDF70: ConcatStr
  loc_CCDF71: FStStrNoPop var_2E8
  loc_CCDF74: LitI4 0
  loc_CCDF79: LitI4 -1
  loc_CCDF7E: LitI4 1
  loc_CCDF83: LitStr "."
  loc_CCDF86: LitStr ","
  loc_CCDF89: FLdFPR8 var_250
  loc_CCDF8C: CStrR8
  loc_CCDF8E: FStStrNoPop var_2E4
  loc_CCDF91: ImpAdCallI2 Replace(, , , , , )
  loc_CCDF96: FStStrNoPop var_2EC
  loc_CCDF99: ConcatStr
  loc_CCDF9A: FStStrNoPop var_2F0
  loc_CCDF9D: LitStr ","
  loc_CCDFA0: ConcatStr
  loc_CCDFA1: FStStrNoPop var_2F8
  loc_CCDFA4: LitI4 0
  loc_CCDFA9: LitI4 -1
  loc_CCDFAE: LitI4 1
  loc_CCDFB3: LitStr "."
  loc_CCDFB6: LitStr ","
  loc_CCDFB9: FLdFPR8 var_268
  loc_CCDFBC: CStrR8
  loc_CCDFBE: FStStrNoPop var_2F4
  loc_CCDFC1: ImpAdCallI2 Replace(, , , , , )
  loc_CCDFC6: FStStrNoPop var_2FC
  loc_CCDFC9: ConcatStr
  loc_CCDFCA: FStStrNoPop var_324
  loc_CCDFCD: LitStr ","
  loc_CCDFD0: ConcatStr
  loc_CCDFD1: FStStrNoPop var_32C
  loc_CCDFD4: LitI4 0
  loc_CCDFD9: LitI4 -1
  loc_CCDFDE: LitI4 1
  loc_CCDFE3: LitStr "."
  loc_CCDFE6: LitStr ","
  loc_CCDFE9: FLdFPR8 var_280
  loc_CCDFEC: CStrR8
  loc_CCDFEE: FStStrNoPop var_328
  loc_CCDFF1: ImpAdCallI2 Replace(, , , , , )
  loc_CCDFF6: FStStrNoPop var_330
  loc_CCDFF9: ConcatStr
  loc_CCDFFA: FStStrNoPop var_334
  loc_CCDFFD: LitStr ","
  loc_CCE000: ConcatStr
  loc_CCE001: FStStrNoPop var_33C
  loc_CCE004: LitI4 0
  loc_CCE009: LitI4 -1
  loc_CCE00E: LitI4 1
  loc_CCE013: LitStr "."
  loc_CCE016: LitStr ","
  loc_CCE019: FLdFPR8 var_298
  loc_CCE01C: CStrR8
  loc_CCE01E: FStStrNoPop var_338
  loc_CCE021: ImpAdCallI2 Replace(, , , , , )
  loc_CCE026: FStStrNoPop var_340
  loc_CCE029: ConcatStr
  loc_CCE02A: FStStrNoPop var_344
  loc_CCE02D: LitStr ","
  loc_CCE030: ConcatStr
  loc_CCE031: FStStrNoPop var_34C
  loc_CCE034: LitI4 0
  loc_CCE039: LitI4 -1
  loc_CCE03E: LitI4 1
  loc_CCE043: LitStr "."
  loc_CCE046: LitStr ","
  loc_CCE049: FLdFPR8 var_2B0
  loc_CCE04C: CStrR8
  loc_CCE04E: FStStrNoPop var_348
  loc_CCE051: ImpAdCallI2 Replace(, , , , , )
  loc_CCE056: FStStrNoPop var_350
  loc_CCE059: ConcatStr
  loc_CCE05A: FStStrNoPop var_354
  loc_CCE05D: LitStr ","
  loc_CCE060: ConcatStr
  loc_CCE061: FStStrNoPop var_35C
  loc_CCE064: LitI4 0
  loc_CCE069: LitI4 -1
  loc_CCE06E: LitI4 1
  loc_CCE073: LitStr "."
  loc_CCE076: LitStr ","
  loc_CCE079: FLdFPR8 var_2C8
  loc_CCE07C: CStrR8
  loc_CCE07E: FStStrNoPop var_358
  loc_CCE081: ImpAdCallI2 Replace(, , , , , )
  loc_CCE086: FStStrNoPop var_360
  loc_CCE089: ConcatStr
  loc_CCE08A: FStStrNoPop var_364
  loc_CCE08D: LitStr ","
  loc_CCE090: ConcatStr
  loc_CCE091: FStStrNoPop var_36C
  loc_CCE094: LitI4 0
  loc_CCE099: LitI4 -1
  loc_CCE09E: LitI4 1
  loc_CCE0A3: LitStr "."
  loc_CCE0A6: LitStr ","
  loc_CCE0A9: FLdFPR8 var_2E0
  loc_CCE0AC: CStrR8
  loc_CCE0AE: FStStrNoPop var_368
  loc_CCE0B1: ImpAdCallI2 Replace(, , , , , )
  loc_CCE0B6: FStStrNoPop var_370
  loc_CCE0B9: ConcatStr
  loc_CCE0BA: FStStrNoPop var_374
  loc_CCE0BD: LitStr ");"
  loc_CCE0C0: ConcatStr
  loc_CCE0C1: FStStrNoPop var_378
  loc_CCE0C4: FLdPr Me
  loc_CCE0C7: MemStStrCopy
  loc_CCE0CB: FFreeStr var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2E4 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_33C = "": var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_210 = "": var_214 = "": var_218 = "": var_220 = "": var_224 = "": var_228 = "": var_230 = "": var_22C = "": var_234 = "": var_23C = "": var_238 = "": var_240 = "": var_244 = "": var_248 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_26C = "": var_270 = "": var_274 = "": var_278 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_29C = "": var_2A4 = "": var_2A0 = "": var_2A8 = "": var_A8 = "": var_C0 = "": var_C4 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = ""
  loc_CCE190: FFreeAd var_A4 = ""
  loc_CCE197: FFreeVar var_B8 = "": var_E8 = ""
  loc_CCE1A0: FLdRfVar var_A8
  loc_CCE1A3: FLdPr Me
  loc_CCE1A6: MemLdRfVar from_stack_1.global_56
  loc_CCE1A9: NewIfNullPr clsboleto
  loc_CCE1AC: from_stack_1 = clsboleto.TipoBole
  loc_CCE1B1: ILdRf var_A8
  loc_CCE1B4: LitStr "Pago Anticipado"
  loc_CCE1B7: EqStr
  loc_CCE1B9: FFree1Str var_A8
  loc_CCE1BC: BranchF loc_CCE2D0
  loc_CCE1BF: FLdPr Me
  loc_CCE1C2: MemLdStr global_100
  loc_CCE1C5: LitStr " UPDATE pagoanti SET EstaPaan = 'Pagado' WHERE CodiOfic = "
  loc_CCE1C8: ConcatStr
  loc_CCE1C9: FStStrNoPop var_A8
  loc_CCE1CC: FLdRfVar var_C6
  loc_CCE1CF: FLdPr Me
  loc_CCE1D2: MemLdRfVar from_stack_1.global_68
  loc_CCE1D5: NewIfNullPr clsdetabole
  loc_CCE1D8: from_stack_1 = clsdetabole.CodiOfic
  loc_CCE1DD: FLdUI1
  loc_CCE1E1: CStrI2
  loc_CCE1E3: FStStrNoPop var_C0
  loc_CCE1E6: ConcatStr
  loc_CCE1E7: FStStrNoPop var_C4
  loc_CCE1EA: LitStr " AND CuenCtct = '"
  loc_CCE1ED: ConcatStr
  loc_CCE1EE: FStStrNoPop var_170
  loc_CCE1F1: FLdRfVar var_16C
  loc_CCE1F4: FLdPr Me
  loc_CCE1F7: MemLdRfVar from_stack_1.global_68
  loc_CCE1FA: NewIfNullPr clsdetabole
  loc_CCE1FD: from_stack_1 = clsdetabole.CuenCtct
  loc_CCE202: ILdRf var_16C
  loc_CCE205: ConcatStr
  loc_CCE206: FStStrNoPop var_174
  loc_CCE209: LitStr "' AND PeriBole = "
  loc_CCE20C: ConcatStr
  loc_CCE20D: FStStrNoPop var_178
  loc_CCE210: FLdRfVar var_1EE
  loc_CCE213: FLdPr Me
  loc_CCE216: MemLdRfVar from_stack_1.global_68
  loc_CCE219: NewIfNullPr clsdetabole
  loc_CCE21C: from_stack_1 = clsdetabole.PeriBole
  loc_CCE221: FLdI2 var_1EE
  loc_CCE224: CStrUI1
  loc_CCE226: FStStrNoPop var_17C
  loc_CCE229: ConcatStr
  loc_CCE22A: FStStrNoPop var_180
  loc_CCE22D: LitStr " AND NumeBole = "
  loc_CCE230: ConcatStr
  loc_CCE231: FStStrNoPop var_184
  loc_CCE234: FLdRfVar var_194
  loc_CCE237: FLdPr Me
  loc_CCE23A: MemLdRfVar from_stack_1.global_68
  loc_CCE23D: NewIfNullPr clsdetabole
  loc_CCE240: from_stack_1 = clsdetabole.NumeBole
  loc_CCE245: ILdRf var_194
  loc_CCE248: CStrI4
  loc_CCE24A: FStStrNoPop var_188
  loc_CCE24D: ConcatStr
  loc_CCE24E: FStStrNoPop var_18C
  loc_CCE251: LitStr " AND PeriLiqu = "
  loc_CCE254: ConcatStr
  loc_CCE255: FStStrNoPop var_190
  loc_CCE258: FLdRfVar var_20C
  loc_CCE25B: FLdPr Me
  loc_CCE25E: MemLdRfVar from_stack_1.global_68
  loc_CCE261: NewIfNullPr clsdetabole
  loc_CCE264: from_stack_1 = clsdetabole.PeriCtct
  loc_CCE269: ILdRf var_20C
  loc_CCE26C: CStrI4
  loc_CCE26E: FStStrNoPop var_1B4
  loc_CCE271: ConcatStr
  loc_CCE272: FStStrNoPop var_1B8
  loc_CCE275: LitStr " AND BimeLiqu = "
  loc_CCE278: ConcatStr
  loc_CCE279: FStStrNoPop var_1C4
  loc_CCE27C: FLdRfVar var_21A
  loc_CCE27F: FLdPr Me
  loc_CCE282: MemLdRfVar from_stack_1.global_68
  loc_CCE285: NewIfNullPr clsdetabole
  loc_CCE288: from_stack_1 = clsdetabole.BimeCtct
  loc_CCE28D: FLdI2 var_21A
  loc_CCE290: CStrUI1
  loc_CCE292: FStStrNoPop var_1C8
  loc_CCE295: ConcatStr
  loc_CCE296: FStStrNoPop var_1CC
  loc_CCE299: LitStr ";"
  loc_CCE29C: ConcatStr
  loc_CCE29D: FStStrNoPop var_1D0
  loc_CCE2A0: FLdPr Me
  loc_CCE2A3: MemStStrCopy
  loc_CCE2A7: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1C8 = "": var_1CC = ""
  loc_CCE2D0: LitStr "SELECT * FROM boledeta "
  loc_CCE2D3: LitStr " WHERE PeriBole = "
  loc_CCE2D6: ConcatStr
  loc_CCE2D7: FStStrNoPop var_A8
  loc_CCE2DA: FLdRfVar var_C6
  loc_CCE2DD: FLdPr Me
  loc_CCE2E0: MemLdRfVar from_stack_1.global_68
  loc_CCE2E3: NewIfNullPr clsdetabole
  loc_CCE2E6: from_stack_1 = clsdetabole.PeriBole
  loc_CCE2EB: FLdI2 var_C6
  loc_CCE2EE: CStrUI1
  loc_CCE2F0: FStStrNoPop var_C0
  loc_CCE2F3: ConcatStr
  loc_CCE2F4: FStStrNoPop var_C4
  loc_CCE2F7: LitStr " AND NumeBole = "
  loc_CCE2FA: ConcatStr
  loc_CCE2FB: FStStrNoPop var_16C
  loc_CCE2FE: FLdRfVar var_194
  loc_CCE301: FLdPr Me
  loc_CCE304: MemLdRfVar from_stack_1.global_68
  loc_CCE307: NewIfNullPr clsdetabole
  loc_CCE30A: from_stack_1 = clsdetabole.NumeBole
  loc_CCE30F: ILdRf var_194
  loc_CCE312: CStrI4
  loc_CCE314: FStStrNoPop var_170
  loc_CCE317: ConcatStr
  loc_CCE318: FStStrNoPop var_174
  loc_CCE31B: LitStr " AND PeriCtct = "
  loc_CCE31E: ConcatStr
  loc_CCE31F: FStStrNoPop var_178
  loc_CCE322: FLdRfVar var_20C
  loc_CCE325: FLdPr Me
  loc_CCE328: MemLdRfVar from_stack_1.global_68
  loc_CCE32B: NewIfNullPr clsdetabole
  loc_CCE32E: from_stack_1 = clsdetabole.PeriCtct
  loc_CCE333: ILdRf var_20C
  loc_CCE336: CStrI4
  loc_CCE338: FStStrNoPop var_17C
  loc_CCE33B: ConcatStr
  loc_CCE33C: FStStrNoPop var_180
  loc_CCE33F: LitStr " AND BimeCtct = "
  loc_CCE342: ConcatStr
  loc_CCE343: FStStrNoPop var_184
  loc_CCE346: FLdRfVar var_1EE
  loc_CCE349: FLdPr Me
  loc_CCE34C: MemLdRfVar from_stack_1.global_68
  loc_CCE34F: NewIfNullPr clsdetabole
  loc_CCE352: from_stack_1 = clsdetabole.BimeCtct
  loc_CCE357: FLdI2 var_1EE
  loc_CCE35A: CStrUI1
  loc_CCE35C: FStStrNoPop var_188
  loc_CCE35F: ConcatStr
  loc_CCE360: FStStrNoPop var_18C
  loc_CCE363: LitStr " AND NumeCtct = "
  loc_CCE366: ConcatStr
  loc_CCE367: FStStrNoPop var_190
  loc_CCE36A: FLdRfVar var_308
  loc_CCE36D: FLdPr Me
  loc_CCE370: MemLdRfVar from_stack_1.global_68
  loc_CCE373: NewIfNullPr clsdetabole
  loc_CCE376: from_stack_1 = clsdetabole.NumeCtct
  loc_CCE37B: ILdRf var_308
  loc_CCE37E: CStrI4
  loc_CCE380: FStStrNoPop var_1B4
  loc_CCE383: ConcatStr
  loc_CCE384: FStStrNoPop var_1B8
  loc_CCE387: LitStr " AND MoviCtct = "
  loc_CCE38A: ConcatStr
  loc_CCE38B: FStStrNoPop var_1C4
  loc_CCE38E: FLdRfVar var_21A
  loc_CCE391: FLdPr Me
  loc_CCE394: MemLdRfVar from_stack_1.global_68
  loc_CCE397: NewIfNullPr clsdetabole
  loc_CCE39A: from_stack_1 = clsdetabole.MoviCtct
  loc_CCE39F: FLdI2 var_21A
  loc_CCE3A2: CStrUI1
  loc_CCE3A4: FStStrNoPop var_1C8
  loc_CCE3A7: ConcatStr
  loc_CCE3A8: FStStrNoPop var_1CC
  loc_CCE3AB: LitStr " AND MoviDebo = "
  loc_CCE3AE: ConcatStr
  loc_CCE3AF: FStStrNoPop var_1D0
  loc_CCE3B2: FLdRfVar var_30A
  loc_CCE3B5: FLdPr Me
  loc_CCE3B8: MemLdRfVar from_stack_1.global_68
  loc_CCE3BB: NewIfNullPr clsdetabole
  loc_CCE3BE: from_stack_1 = clsdetabole.MoviDebo
  loc_CCE3C3: FLdI2 var_30A
  loc_CCE3C6: CStrUI1
  loc_CCE3C8: FStStrNoPop var_1D4
  loc_CCE3CB: ConcatStr
  loc_CCE3CC: FStStrNoPop var_1D8
  loc_CCE3CF: LitStr " ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde"
  loc_CCE3D2: ConcatStr
  loc_CCE3D3: FStStrNoPop var_1DC
  loc_CCE3D6: FLdPr Me
  loc_CCE3D9: MemLdRfVar from_stack_1.global_72
  loc_CCE3DC: NewIfNullPr clsdetabole
  loc_CCE3DF: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CCE3E4: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = ""
  loc_CCE413: FLdRfVar var_194
  loc_CCE416: FLdPr Me
  loc_CCE419: MemLdRfVar from_stack_1.global_72
  loc_CCE41C: NewIfNullPr clsdetabole
  loc_CCE41F: from_stack_1 = clsdetabole.RecordCount
  loc_CCE424: ILdRf var_194
  loc_CCE427: LitI4 0
  loc_CCE42C: GtI4
  loc_CCE42D: BranchF loc_CCE7F6
  loc_CCE430: FLdPr Me
  loc_CCE433: MemLdRfVar from_stack_1.global_72
  loc_CCE436: NewIfNullPr clsdetabole
  loc_CCE439: Call clsdetabole.MoveFirst()
  loc_CCE43E: FLdRfVar var_C6
  loc_CCE441: FLdPr Me
  loc_CCE444: MemLdRfVar from_stack_1.global_72
  loc_CCE447: NewIfNullPr clsdetabole
  loc_CCE44A: from_stack_1 = clsdetabole.EOF
  loc_CCE44F: FLdI2 var_C6
  loc_CCE452: NotI4
  loc_CCE453: BranchF loc_CCE7F6
  loc_CCE456: FLdPr Me
  loc_CCE459: VCallAd Control_ID_FeenAcpaMsk
  loc_CCE45C: FStAdFunc var_A4
  loc_CCE45F: FLdPr var_A4
  loc_CCE462: LateIdLdVar var_B8 DispID_15 0
  loc_CCE469: PopAd
  loc_CCE46B: FLdRfVar var_1C0
  loc_CCE46E: FLdPr Me
  loc_CCE471: MemLdRfVar from_stack_1.global_72
  loc_CCE474: NewIfNullPr clsdetabole
  loc_CCE477: from_stack_1 = clsdetabole.ImpoBode
  loc_CCE47C: FLdRfVar var_1EC
  loc_CCE47F: FLdPr Me
  loc_CCE482: MemLdRfVar from_stack_1.global_72
  loc_CCE485: NewIfNullPr clsdetabole
  loc_CCE488: from_stack_1 = clsdetabole.DecaBode
  loc_CCE48D: FLdRfVar var_250
  loc_CCE490: FLdPr Me
  loc_CCE493: MemLdRfVar from_stack_1.global_72
  loc_CCE496: NewIfNullPr clsdetabole
  loc_CCE499: from_stack_1 = clsdetabole.TotaBode
  loc_CCE49E: FLdPr Me
  loc_CCE4A1: MemLdStr global_100
  loc_CCE4A4: LitStr " INSERT INTO pagodeta (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,PeriOrde,CodiCtde,NumeCtde,MoviCtde,CodiOfic,CuenCtct,ImpoPade,DecaPade,TotaPade) VALUES ('"
  loc_CCE4A7: ConcatStr
  loc_CCE4A8: FStStrNoPop var_A8
  loc_CCE4AB: LitI4 1
  loc_CCE4B0: LitI4 1
  loc_CCE4B5: LitVarStr var_D8, "yyyy-mm-dd"
  loc_CCE4BA: FStVarCopyObj var_F8
  loc_CCE4BD: FLdRfVar var_F8
  loc_CCE4C0: FLdRfVar var_B8
  loc_CCE4C3: CStrVarTmp
  loc_CCE4C4: CVarStr var_E8
  loc_CCE4C7: ImpAdCallI2 Format$(, )
  loc_CCE4CC: FStStrNoPop var_C0
  loc_CCE4CF: ConcatStr
  loc_CCE4D0: FStStrNoPop var_C4
  loc_CCE4D3: LitStr "',"
  loc_CCE4D6: ConcatStr
  loc_CCE4D7: FStStrNoPop var_170
  loc_CCE4DA: FLdRfVar var_16C
  loc_CCE4DD: FLdPr Me
  loc_CCE4E0: VCallAd Control_ID_NumeAcpaTxt
  loc_CCE4E3: FStAdFunc var_BC
  loc_CCE4E6: FLdPr var_BC
  loc_CCE4E9:  = Me.Text
  loc_CCE4EE: ILdRf var_16C
  loc_CCE4F1: ConcatStr
  loc_CCE4F2: FStStrNoPop var_174
  loc_CCE4F5: LitStr ","
  loc_CCE4F8: ConcatStr
  loc_CCE4F9: FStStrNoPop var_178
  loc_CCE4FC: FLdRfVar var_C6
  loc_CCE4FF: FLdPr Me
  loc_CCE502: MemLdRfVar from_stack_1.global_72
  loc_CCE505: NewIfNullPr clsdetabole
  loc_CCE508: from_stack_1 = clsdetabole.PeriBole
  loc_CCE50D: FLdI2 var_C6
  loc_CCE510: CStrUI1
  loc_CCE512: FStStrNoPop var_17C
  loc_CCE515: ConcatStr
  loc_CCE516: FStStrNoPop var_180
  loc_CCE519: LitStr ","
  loc_CCE51C: ConcatStr
  loc_CCE51D: FStStrNoPop var_184
  loc_CCE520: FLdRfVar var_194
  loc_CCE523: FLdPr Me
  loc_CCE526: MemLdRfVar from_stack_1.global_72
  loc_CCE529: NewIfNullPr clsdetabole
  loc_CCE52C: from_stack_1 = clsdetabole.NumeBole
  loc_CCE531: ILdRf var_194
  loc_CCE534: CStrI4
  loc_CCE536: FStStrNoPop var_188
  loc_CCE539: ConcatStr
  loc_CCE53A: FStStrNoPop var_18C
  loc_CCE53D: LitStr ","
  loc_CCE540: ConcatStr
  loc_CCE541: FStStrNoPop var_190
  loc_CCE544: FLdRfVar var_20C
  loc_CCE547: FLdPr Me
  loc_CCE54A: MemLdRfVar from_stack_1.global_72
  loc_CCE54D: NewIfNullPr clsdetabole
  loc_CCE550: from_stack_1 = clsdetabole.PeriCtct
  loc_CCE555: ILdRf var_20C
  loc_CCE558: CStrI4
  loc_CCE55A: FStStrNoPop var_1B4
  loc_CCE55D: ConcatStr
  loc_CCE55E: FStStrNoPop var_1B8
  loc_CCE561: LitStr ","
  loc_CCE564: ConcatStr
  loc_CCE565: FStStrNoPop var_1C4
  loc_CCE568: FLdRfVar var_1EE
  loc_CCE56B: FLdPr Me
  loc_CCE56E: MemLdRfVar from_stack_1.global_72
  loc_CCE571: NewIfNullPr clsdetabole
  loc_CCE574: from_stack_1 = clsdetabole.BimeCtct
  loc_CCE579: FLdI2 var_1EE
  loc_CCE57C: CStrUI1
  loc_CCE57E: FStStrNoPop var_1C8
  loc_CCE581: ConcatStr
  loc_CCE582: FStStrNoPop var_1CC
  loc_CCE585: LitStr ","
  loc_CCE588: ConcatStr
  loc_CCE589: FStStrNoPop var_1D0
  loc_CCE58C: FLdRfVar var_308
  loc_CCE58F: FLdPr Me
  loc_CCE592: MemLdRfVar from_stack_1.global_72
  loc_CCE595: NewIfNullPr clsdetabole
  loc_CCE598: from_stack_1 = clsdetabole.NumeCtct
  loc_CCE59D: ILdRf var_308
  loc_CCE5A0: CStrI4
  loc_CCE5A2: FStStrNoPop var_1D4
  loc_CCE5A5: ConcatStr
  loc_CCE5A6: FStStrNoPop var_1D8
  loc_CCE5A9: LitStr ","
  loc_CCE5AC: ConcatStr
  loc_CCE5AD: FStStrNoPop var_1DC
  loc_CCE5B0: FLdRfVar var_21A
  loc_CCE5B3: FLdPr Me
  loc_CCE5B6: MemLdRfVar from_stack_1.global_72
  loc_CCE5B9: NewIfNullPr clsdetabole
  loc_CCE5BC: from_stack_1 = clsdetabole.MoviCtct
  loc_CCE5C1: FLdI2 var_21A
  loc_CCE5C4: CStrUI1
  loc_CCE5C6: FStStrNoPop var_1E0
  loc_CCE5C9: ConcatStr
  loc_CCE5CA: FStStrNoPop var_1E4
  loc_CCE5CD: LitStr ","
  loc_CCE5D0: ConcatStr
  loc_CCE5D1: FStStrNoPop var_1F4
  loc_CCE5D4: FLdRfVar var_30A
  loc_CCE5D7: FLdPr Me
  loc_CCE5DA: MemLdRfVar from_stack_1.global_72
  loc_CCE5DD: NewIfNullPr clsdetabole
  loc_CCE5E0: from_stack_1 = clsdetabole.MoviDebo
  loc_CCE5E5: FLdI2 var_30A
  loc_CCE5E8: CStrUI1
  loc_CCE5EA: FStStrNoPop var_1F8
  loc_CCE5ED: ConcatStr
  loc_CCE5EE: FStStrNoPop var_1FC
  loc_CCE5F1: LitStr ","
  loc_CCE5F4: ConcatStr
  loc_CCE5F5: FStStrNoPop var_200
  loc_CCE5F8: FLdRfVar var_30C
  loc_CCE5FB: FLdPr Me
  loc_CCE5FE: MemLdRfVar from_stack_1.global_72
  loc_CCE601: NewIfNullPr clsdetabole
  loc_CCE604: from_stack_1 = clsdetabole.PeriOrde
  loc_CCE609: FLdI2 var_30C
  loc_CCE60C: CStrUI1
  loc_CCE60E: FStStrNoPop var_204
  loc_CCE611: ConcatStr
  loc_CCE612: FStStrNoPop var_208
  loc_CCE615: LitStr ","
  loc_CCE618: ConcatStr
  loc_CCE619: FStStrNoPop var_214
  loc_CCE61C: FLdRfVar var_210
  loc_CCE61F: FLdPr Me
  loc_CCE622: MemLdRfVar from_stack_1.global_72
  loc_CCE625: NewIfNullPr clsdetabole
  loc_CCE628: from_stack_1 = clsdetabole.CodiCtde
  loc_CCE62D: ILdRf var_210
  loc_CCE630: ConcatStr
  loc_CCE631: FStStrNoPop var_218
  loc_CCE634: LitStr ","
  loc_CCE637: ConcatStr
  loc_CCE638: FStStrNoPop var_220
  loc_CCE63B: FLdRfVar var_314
  loc_CCE63E: FLdPr Me
  loc_CCE641: MemLdRfVar from_stack_1.global_72
  loc_CCE644: NewIfNullPr clsdetabole
  loc_CCE647: from_stack_1 = clsdetabole.NumeCtde
  loc_CCE64C: ILdRf var_314
  loc_CCE64F: CStrI4
  loc_CCE651: FStStrNoPop var_224
  loc_CCE654: ConcatStr
  loc_CCE655: FStStrNoPop var_228
  loc_CCE658: LitStr ","
  loc_CCE65B: ConcatStr
  loc_CCE65C: FStStrNoPop var_22C
  loc_CCE65F: FLdRfVar var_30E
  loc_CCE662: FLdPr Me
  loc_CCE665: MemLdRfVar from_stack_1.global_72
  loc_CCE668: NewIfNullPr clsdetabole
  loc_CCE66B: from_stack_1 = clsdetabole.MoviCtde
  loc_CCE670: FLdI2 var_30E
  loc_CCE673: CStrUI1
  loc_CCE675: FStStrNoPop var_230
  loc_CCE678: ConcatStr
  loc_CCE679: FStStrNoPop var_234
  loc_CCE67C: LitStr ","
  loc_CCE67F: ConcatStr
  loc_CCE680: FStStrNoPop var_238
  loc_CCE683: FLdRfVar var_310
  loc_CCE686: FLdPr Me
  loc_CCE689: MemLdRfVar from_stack_1.global_72
  loc_CCE68C: NewIfNullPr clsdetabole
  loc_CCE68F: from_stack_1 = clsdetabole.CodiOfic
  loc_CCE694: FLdUI1
  loc_CCE698: CStrI2
  loc_CCE69A: FStStrNoPop var_23C
  loc_CCE69D: ConcatStr
  loc_CCE69E: FStStrNoPop var_240
  loc_CCE6A1: LitStr ",'"
  loc_CCE6A4: ConcatStr
  loc_CCE6A5: FStStrNoPop var_248
  loc_CCE6A8: FLdRfVar var_244
  loc_CCE6AB: FLdPr Me
  loc_CCE6AE: MemLdRfVar from_stack_1.global_72
  loc_CCE6B1: NewIfNullPr clsdetabole
  loc_CCE6B4: from_stack_1 = clsdetabole.CuenCtct
  loc_CCE6B9: ILdRf var_244
  loc_CCE6BC: ConcatStr
  loc_CCE6BD: FStStrNoPop var_254
  loc_CCE6C0: LitStr "',"
  loc_CCE6C3: ConcatStr
  loc_CCE6C4: FStStrNoPop var_25C
  loc_CCE6C7: LitI4 0
  loc_CCE6CC: LitI4 -1
  loc_CCE6D1: LitI4 1
  loc_CCE6D6: LitStr "."
  loc_CCE6D9: LitStr ","
  loc_CCE6DC: FLdFPR8 var_1C0
  loc_CCE6DF: CStrR8
  loc_CCE6E1: FStStrNoPop var_258
  loc_CCE6E4: ImpAdCallI2 Replace(, , , , , )
  loc_CCE6E9: FStStrNoPop var_260
  loc_CCE6EC: ConcatStr
  loc_CCE6ED: FStStrNoPop var_26C
  loc_CCE6F0: LitStr ","
  loc_CCE6F3: ConcatStr
  loc_CCE6F4: FStStrNoPop var_274
  loc_CCE6F7: LitI4 0
  loc_CCE6FC: LitI4 -1
  loc_CCE701: LitI4 1
  loc_CCE706: LitStr "."
  loc_CCE709: LitStr ","
  loc_CCE70C: FLdFPR8 var_1EC
  loc_CCE70F: CStrR8
  loc_CCE711: FStStrNoPop var_270
  loc_CCE714: ImpAdCallI2 Replace(, , , , , )
  loc_CCE719: FStStrNoPop var_278
  loc_CCE71C: ConcatStr
  loc_CCE71D: FStStrNoPop var_284
  loc_CCE720: LitStr ","
  loc_CCE723: ConcatStr
  loc_CCE724: FStStrNoPop var_28C
  loc_CCE727: LitI4 0
  loc_CCE72C: LitI4 -1
  loc_CCE731: LitI4 1
  loc_CCE736: LitStr "."
  loc_CCE739: LitStr ","
  loc_CCE73C: FLdFPR8 var_250
  loc_CCE73F: CStrR8
  loc_CCE741: FStStrNoPop var_288
  loc_CCE744: ImpAdCallI2 Replace(, , , , , )
  loc_CCE749: FStStrNoPop var_290
  loc_CCE74C: ConcatStr
  loc_CCE74D: FStStrNoPop var_29C
  loc_CCE750: LitStr ");"
  loc_CCE753: ConcatStr
  loc_CCE754: FStStrNoPop var_2A0
  loc_CCE757: FLdPr Me
  loc_CCE75A: MemStStrCopy
  loc_CCE75E: FFreeStr var_214 = "": var_210 = "": var_218 = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_248 = "": var_244 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_26C = "": var_270 = "": var_274 = "": var_278 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_29C = "": var_2A0 = "": var_A8 = "": var_C0 = "": var_C4 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = ""
  loc_CCE7D5: FFreeAd var_A4 = ""
  loc_CCE7DC: FFreeVar var_B8 = "": var_E8 = ""
  loc_CCE7E5: FLdPr Me
  loc_CCE7E8: MemLdRfVar from_stack_1.global_72
  loc_CCE7EB: NewIfNullPr clsdetabole
  loc_CCE7EE: Call clsdetabole.MoveSiguiente()
  loc_CCE7F3: Branch loc_CCE43E
  loc_CCE7F6: FLdPr Me
  loc_CCE7F9: MemLdRfVar from_stack_1.global_68
  loc_CCE7FC: NewIfNullPr clsdetabole
  loc_CCE7FF: Call clsdetabole.MoveSiguiente()
  loc_CCE804: Branch loc_CCD9C5
  loc_CCE807: Branch loc_CCE814
  loc_CCE80A: LitStr vbNullString
  loc_CCE80D: FLdPr Me
  loc_CCE810: MemStStrCopy
  loc_CCE814: FLdPr Me
  loc_CCE817: MemLdStr global_100
  loc_CCE81A: LitStr vbNullString
  loc_CCE81D: EqStr
  loc_CCE81F: BranchF loc_CCE840
  loc_CCE822: LitStr "No existe el detalle del boleto. NO SE CREO EL PAGO. verifique..."
  loc_CCE825: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CCE82A: FLdPr Me
  loc_CCE82D: VCallAd Control_ID_NumeBoleTxt
  loc_CCE830: CVarAd
  loc_CCE834: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CCE839: FFree1Var var_B8 = ""
  loc_CCE83C: ExitProcHresult
  loc_CCE83D: Branch loc_CCEA70
  loc_CCE840: FLdPr Me
  loc_CCE843: MemLdStr global_100
  loc_CCE846: FLdPr Me
  loc_CCE849: MemLdRfVar from_stack_1.global_60
  loc_CCE84C: NewIfNullPr clspago
  loc_CCE84F: Call clspago.AddnewTransaction(from_stack_1v)
  loc_CCE854: FLdRfVar var_A8
  loc_CCE857: FLdPr Me
  loc_CCE85A: VCallAd Control_ID_TocoAcpaTxt
  loc_CCE85D: FStAdFunc var_A4
  loc_CCE860: FLdPr var_A4
  loc_CCE863:  = Me.Text
  loc_CCE868: ILdRf var_A8
  loc_CCE86B: CI2Str
  loc_CCE86D: LitI2_Byte 1
  loc_CCE86F: AddI2
  loc_CCE870: CStrUI1
  loc_CCE872: FStStrNoPop var_C0
  loc_CCE875: FLdPr Me
  loc_CCE878: VCallAd Control_ID_TocoAcpaTxt
  loc_CCE87B: FStAdFunc var_BC
  loc_CCE87E: FLdPr var_BC
  loc_CCE881: Me.Text = from_stack_1
  loc_CCE886: FFreeStr var_A8 = ""
  loc_CCE88D: FFreeAd var_A4 = ""
  loc_CCE894: FLdRfVar var_A8
  loc_CCE897: FLdPr Me
  loc_CCE89A: VCallAd Control_ID_ImpoAcpaTxt
  loc_CCE89D: FStAdFunc var_A4
  loc_CCE8A0: FLdPr var_A4
  loc_CCE8A3:  = Me.Text
  loc_CCE8A8: FLdRfVar var_1C0
  loc_CCE8AB: FLdPr Me
  loc_CCE8AE: MemLdRfVar from_stack_1.global_56
  loc_CCE8B1: NewIfNullPr clsboleto
  loc_CCE8B4: from_stack_1 = clsboleto.TotaBole
  loc_CCE8B9: LitI4 2
  loc_CCE8BE: ILdRf var_A8
  loc_CCE8C1: CR8Str
  loc_CCE8C3: FLdFPR8 var_1C0
  loc_CCE8C6: AddR8
  loc_CCE8C7: CVarR8
  loc_CCE8CB: FLdRfVar var_E8
  loc_CCE8CE: ImpAdCallFPR4  = Round(, )
  loc_CCE8D3: LitI4 1
  loc_CCE8D8: LitI4 1
  loc_CCE8DD: LitVarStr var_118, "###,###,##0.00"
  loc_CCE8E2: FStVarCopyObj var_F8
  loc_CCE8E5: FLdRfVar var_F8
  loc_CCE8E8: FLdRfVar var_E8
  loc_CCE8EB: FLdRfVar var_108
  loc_CCE8EE: ImpAdCallFPR4  = Format(, )
  loc_CCE8F3: FLdRfVar var_108
  loc_CCE8F6: CStrVarVal var_C0
  loc_CCE8FA: FLdPr Me
  loc_CCE8FD: VCallAd Control_ID_ImpoAcpaTxt
  loc_CCE900: FStAdFunc var_BC
  loc_CCE903: FLdPr var_BC
  loc_CCE906: Me.Text = from_stack_1
  loc_CCE90B: FFreeStr var_A8 = ""
  loc_CCE912: FFreeAd var_A4 = ""
  loc_CCE919: FFreeVar var_B8 = "": var_E8 = "": var_F8 = ""
  loc_CCE924: FLdRfVar var_A8
  loc_CCE927: FLdPr Me
  loc_CCE92A: VCallAd Control_ID_CantBoleTxt
  loc_CCE92D: FStAdFunc var_A4
  loc_CCE930: FLdPr var_A4
  loc_CCE933:  = Me.Text
  loc_CCE938: ILdRf var_A8
  loc_CCE93B: CI2Str
  loc_CCE93D: LitI2_Byte 1
  loc_CCE93F: AddI2
  loc_CCE940: CStrUI1
  loc_CCE942: FStStrNoPop var_C0
  loc_CCE945: FLdPr Me
  loc_CCE948: VCallAd Control_ID_CantBoleTxt
  loc_CCE94B: FStAdFunc var_BC
  loc_CCE94E: FLdPr var_BC
  loc_CCE951: Me.Text = from_stack_1
  loc_CCE956: FFreeStr var_A8 = ""
  loc_CCE95D: FFreeAd var_A4 = ""
  loc_CCE964: FLdRfVar var_A8
  loc_CCE967: FLdPr Me
  loc_CCE96A: VCallAd Control_ID_TotaBoleTxt
  loc_CCE96D: FStAdFunc var_A4
  loc_CCE970: FLdPr var_A4
  loc_CCE973:  = Me.Text
  loc_CCE978: FLdRfVar var_1C0
  loc_CCE97B: FLdPr Me
  loc_CCE97E: MemLdRfVar from_stack_1.global_56
  loc_CCE981: NewIfNullPr clsboleto
  loc_CCE984: from_stack_1 = clsboleto.TotaBole
  loc_CCE989: LitI4 2
  loc_CCE98E: ILdRf var_A8
  loc_CCE991: CR8Str
  loc_CCE993: FLdFPR8 var_1C0
  loc_CCE996: AddR8
  loc_CCE997: CVarR8
  loc_CCE99B: FLdRfVar var_E8
  loc_CCE99E: ImpAdCallFPR4  = Round(, )
  loc_CCE9A3: LitI4 1
  loc_CCE9A8: LitI4 1
  loc_CCE9AD: LitVarStr var_118, "###,###,##0.00"
  loc_CCE9B2: FStVarCopyObj var_F8
  loc_CCE9B5: FLdRfVar var_F8
  loc_CCE9B8: FLdRfVar var_E8
  loc_CCE9BB: FLdRfVar var_108
  loc_CCE9BE: ImpAdCallFPR4  = Format(, )
  loc_CCE9C3: FLdRfVar var_108
  loc_CCE9C6: CStrVarVal var_C0
  loc_CCE9CA: FLdPr Me
  loc_CCE9CD: VCallAd Control_ID_TotaBoleTxt
  loc_CCE9D0: FStAdFunc var_BC
  loc_CCE9D3: FLdPr var_BC
  loc_CCE9D6: Me.Text = from_stack_1
  loc_CCE9DB: FFreeStr var_A8 = ""
  loc_CCE9E2: FFreeAd var_A4 = ""
  loc_CCE9E9: FFreeVar var_B8 = "": var_E8 = "": var_F8 = ""
  loc_CCE9F4: LitStr "0"
  loc_CCE9F7: FLdPr Me
  loc_CCE9FA: VCallAd Control_ID_NumeBoleTxt
  loc_CCE9FD: FStAdFunc var_A4
  loc_CCEA00: FLdPr var_A4
  loc_CCEA03: Me.Text = from_stack_1
  loc_CCEA08: FFree1Ad var_A4
  loc_CCEA0B: LitI4 0
  loc_CCEA10: LitI4 2
  loc_CCEA15: FLdRfVar var_37C
  loc_CCEA18: Redim
  loc_CCEA22: FLdPr Me
  loc_CCEA25: VCallAd Control_ID_FeenAcpaMsk
  loc_CCEA28: CVarAd
  loc_CCEA2C: ParmAry1St
  loc_CCEA32: FLdPr Me
  loc_CCEA35: VCallAd Control_ID_FeenAcpaCmd
  loc_CCEA38: CVarAd
  loc_CCEA3C: ParmAry1St
  loc_CCEA42: FLdPr Me
  loc_CCEA45: VCallAd Control_ID_NumeAcpaTxt
  loc_CCEA48: CVarAd
  loc_CCEA4C: ParmAry1St
  loc_CCEA52: FLdRfVar var_37C
  loc_CCEA55: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CCEA5A: FLdRfVar var_37C
  loc_CCEA5D: Erase
  loc_CCEA5E: FLdPr Me
  loc_CCEA61: VCallAd Control_ID_NumeBoleTxt
  loc_CCEA64: CVarAd
  loc_CCEA68: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CCEA6D: FFree1Var var_B8 = ""
  loc_CCEA70: FLdPr Me
  loc_CCEA73: VCallAd Control_ID_FeenAcpaMsk
  loc_CCEA76: FStAdFunc var_A4
  loc_CCEA79: FLdPr var_A4
  loc_CCEA7C: LateIdLdVar var_B8 DispID_15 0
  loc_CCEA83: PopAd
  loc_CCEA85: LitStr "SELECT pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.CodiOfic, pago.CuenCtct, infogov.persona.DetaPers, boleto.TipoBole, "
  loc_CCEA88: LitStr " pago.CapiPago, pago.RecaPago, pago.DecaPago, pago.DerePago, pago.IntePago, pago.ExenPago, pago.AprePago, pago.TotaPago FROM pago "
  loc_CCEA8B: ConcatStr
  loc_CCEA8C: FStStrNoPop var_A8
  loc_CCEA8F: LitStr " LEFT JOIN boleto ON pago.PeriBole = boleto.PeriBole"
  loc_CCEA92: ConcatStr
  loc_CCEA93: FStStrNoPop var_C0
  loc_CCEA96: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_CCEA99: ConcatStr
  loc_CCEA9A: FStStrNoPop var_C4
  loc_CCEA9D: LitStr " LEFT JOIN infogov.persona ON pago.CucuPers = infogov.persona.CucuPers"
  loc_CCEAA0: ConcatStr
  loc_CCEAA1: FStStrNoPop var_16C
  loc_CCEAA4: LitStr " WHERE FeenAcpa = '"
  loc_CCEAA7: ConcatStr
  loc_CCEAA8: FStStrNoPop var_170
  loc_CCEAAB: LitI4 1
  loc_CCEAB0: LitI4 1
  loc_CCEAB5: LitVarStr var_D8, "yyyy-mm-dd"
  loc_CCEABA: FStVarCopyObj var_F8
  loc_CCEABD: FLdRfVar var_F8
  loc_CCEAC0: FLdRfVar var_B8
  loc_CCEAC3: CStrVarTmp
  loc_CCEAC4: CVarStr var_E8
  loc_CCEAC7: ImpAdCallI2 Format$(, )
  loc_CCEACC: FStStrNoPop var_174
  loc_CCEACF: ConcatStr
  loc_CCEAD0: FStStrNoPop var_178
  loc_CCEAD3: LitStr "'"
  loc_CCEAD6: ConcatStr
  loc_CCEAD7: FStStrNoPop var_17C
  loc_CCEADA: LitStr " AND NumeAcpa = "
  loc_CCEADD: ConcatStr
  loc_CCEADE: FStStrNoPop var_184
  loc_CCEAE1: FLdRfVar var_180
  loc_CCEAE4: FLdPr Me
  loc_CCEAE7: VCallAd Control_ID_NumeAcpaTxt
  loc_CCEAEA: FStAdFunc var_BC
  loc_CCEAED: FLdPr var_BC
  loc_CCEAF0:  = Me.Text
  loc_CCEAF5: ILdRf var_180
  loc_CCEAF8: ConcatStr
  loc_CCEAF9: FStStrNoPop var_188
  loc_CCEAFC: LitStr " AND ActuPago = 'No'"
  loc_CCEAFF: ConcatStr
  loc_CCEB00: FStStrNoPop var_18C
  loc_CCEB03: LitStr " ORDER BY pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole"
  loc_CCEB06: ConcatStr
  loc_CCEB07: FStStrNoPop var_190
  loc_CCEB0A: FLdPr Me
  loc_CCEB0D: MemLdRfVar from_stack_1.global_64
  loc_CCEB10: NewIfNullPr clspago
  loc_CCEB13: Call clspago.RedefineRS(from_stack_1v)
  loc_CCEB18: FFreeStr var_A8 = "": var_C0 = "": var_C4 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_184 = "": var_180 = "": var_188 = "": var_18C = ""
  loc_CCEB35: FFreeAd var_A4 = ""
  loc_CCEB3C: FFreeVar var_B8 = "": var_E8 = ""
  loc_CCEB45: LitI4 0
  loc_CCEB4A: LitI4 1
  loc_CCEB4F: FLdRfVar var_37C
  loc_CCEB52: Redim
  loc_CCEB5C: FLdPr Me
  loc_CCEB5F: MemLdRfVar from_stack_1.global_64
  loc_CCEB62: NewIfNullAd
  loc_CCEB65: FStAd var_A4 
  loc_CCEB69: FLdRfVar var_A4
  loc_CCEB6C: CVarRef
  loc_CCEB71: ParmAry1St
  loc_CCEB77: FLdPr Me
  loc_CCEB7A: VCallAd Control_ID_dgdPago
  loc_CCEB7D: CVarAd
  loc_CCEB81: ParmAry1St
  loc_CCEB87: FLdRfVar var_37C
  loc_CCEB8A: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_CCEB8F: ILdRf var_A4
  loc_CCEB92: CastAd
  loc_CCEB95: FLdPr Me
  loc_CCEB98: MemStAdFunc
  loc_CCEB9C: FLdRfVar var_37C
  loc_CCEB9F: Erase
  loc_CCEBA0: FFree1Ad var_A4
  loc_CCEBA3: LitStr vbNullString
  loc_CCEBA6: FLdPr Me
  loc_CCEBA9: VCallAd Control_ID_BoletoTxt
  loc_CCEBAC: FStAdFunc var_A4
  loc_CCEBAF: FLdPr var_A4
  loc_CCEBB2: Me.Text = from_stack_1
  loc_CCEBB7: FFree1Ad var_A4
  loc_CCEBBA: FLdPr Me
  loc_CCEBBD: VCallAd Control_ID_BoletoTxt
  loc_CCEBC0: CVarAd
  loc_CCEBC4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CCEBC9: FFree1Var var_B8 = ""
  loc_CCEBCC: ExitProcHresult
End Sub

Private Sub FepaAcpaMsk_UnknownEvent_0 '9C3BF0
  'Data Table: 4FF4BC
  loc_9C3BDC: FLdPr Me
  loc_9C3BDF: VCallAd Control_ID_FepaAcpaMsk
  loc_9C3BE2: CVarAd
  loc_9C3BE6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3BEB: FFree1Var var_94 = ""
  loc_9C3BEE: ExitProcHresult
End Sub

Private Sub FepaAcpaMsk_UnknownEvent_8 'ABE25C
  'Data Table: 4FF4BC
  loc_ABE164: FLdPr Me
  loc_ABE167: VCallAd Control_ID_FepaAcpaMsk
  loc_ABE16A: FStAdFunc var_88
  loc_ABE16D: FLdPr var_88
  loc_ABE170: LateIdLdVar var_98 DispID_13 -32767
  loc_ABE177: CBoolVar
  loc_ABE179: LitI2_Byte &HFF
  loc_ABE17B: EqI2
  loc_ABE17C: FFree1Ad var_88
  loc_ABE17F: FFree1Var var_98 = ""
  loc_ABE182: BranchF loc_ABE25A
  loc_ABE185: LitVarStr var_A8, vbNullString
  loc_ABE18A: PopAdLdVar
  loc_ABE18B: FLdPr Me
  loc_ABE18E: VCallAd Control_ID_FepaAcpaMsk
  loc_ABE191: FStAdFunc var_88
  loc_ABE194: FLdPr var_88
  loc_ABE197: LateIdSt
  loc_ABE19C: FFree1Ad var_88
  loc_ABE19F: FLdPr Me
  loc_ABE1A2: VCallAd Control_ID_FepaAcpaMsk
  loc_ABE1A5: FStAdFunc var_88
  loc_ABE1A8: FLdPr var_88
  loc_ABE1AB: LateIdLdVar var_98 DispID_22 0
  loc_ABE1B2: CStrVarTmp
  loc_ABE1B3: FStStrNoPop var_BC
  loc_ABE1B6: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_ABE1BB: FStStrNoPop var_C0
  loc_ABE1BE: FLdPr Me
  loc_ABE1C1: MemStStrCopy
  loc_ABE1C5: FFreeStr var_BC = ""
  loc_ABE1CC: FFree1Ad var_88
  loc_ABE1CF: FFree1Var var_98 = ""
  loc_ABE1D2: LitVarStr var_A8, "##/##/####"
  loc_ABE1D7: PopAdLdVar
  loc_ABE1D8: FLdPr Me
  loc_ABE1DB: VCallAd Control_ID_FepaAcpaMsk
  loc_ABE1DE: FStAdFunc var_88
  loc_ABE1E1: FLdPr var_88
  loc_ABE1E4: LateIdSt
  loc_ABE1E9: FFree1Ad var_88
  loc_ABE1EC: LitVarI2 var_A8, 10
  loc_ABE1F1: PopAdLdVar
  loc_ABE1F2: FLdPr Me
  loc_ABE1F5: VCallAd Control_ID_FepaAcpaMsk
  loc_ABE1F8: FStAdFunc var_88
  loc_ABE1FB: FLdPr var_88
  loc_ABE1FE: LateIdSt
  loc_ABE203: FFree1Ad var_88
  loc_ABE206: FLdPr Me
  loc_ABE209: MemLdStr global_96
  loc_ABE20C: LitStr vbNullString
  loc_ABE20F: NeStr
  loc_ABE211: BranchF loc_ABE25A
  loc_ABE214: FLdPr Me
  loc_ABE217: MemLdStr global_96
  loc_ABE21A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE21F: LitI2_Byte 0
  loc_ABE221: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABE226: CStrDate
  loc_ABE228: CVarStr var_98
  loc_ABE22B: PopAdLdVar
  loc_ABE22C: FLdPr Me
  loc_ABE22F: VCallAd Control_ID_FepaAcpaMsk
  loc_ABE232: FStAdFunc var_88
  loc_ABE235: FLdPr var_88
  loc_ABE238: LateIdSt
  loc_ABE23D: FFree1Ad var_88
  loc_ABE240: FFree1Var var_98 = ""
  loc_ABE243: FLdPr Me
  loc_ABE246: VCallAd Control_ID_FepaAcpaMsk
  loc_ABE249: CVarAd
  loc_ABE24D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE252: FFree1Var var_98 = ""
  loc_ABE255: LitI2_Byte &HFF
  loc_ABE257: IStI2 KeyCode
  loc_ABE25A: ExitProcHresult
End Sub

Private Sub FeenAcpaCmd_Click() 'A4C22C
  'Data Table: 4FF4BC
  loc_A4C1D8: LitVar_Missing var_A4
  loc_A4C1DB: PopAdLdVar
  loc_A4C1DC: LitVarI4
  loc_A4C1E4: PopAdLdVar
  loc_A4C1E5: ImpAdLdRf MemVar_D930A4
  loc_A4C1E8: NewIfNullPr frmCalendario
  loc_A4C1EB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4C1F0: ImpAdLdI4 MemVar_D93028
  loc_A4C1F3: LitStr vbNullString
  loc_A4C1F6: NeStr
  loc_A4C1F8: BranchF loc_A4C216
  loc_A4C1FB: ImpAdLdRf MemVar_D93028
  loc_A4C1FE: CDargRef
  loc_A4C202: FLdPr Me
  loc_A4C205: VCallAd Control_ID_FeenAcpaMsk
  loc_A4C208: FStAdFunc var_A8
  loc_A4C20B: FLdPr var_A8
  loc_A4C20E: LateIdSt
  loc_A4C213: FFree1Ad var_A8
  loc_A4C216: FLdPr Me
  loc_A4C219: VCallAd Control_ID_FeenAcpaMsk
  loc_A4C21C: CVarAd
  loc_A4C220: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4C225: FFree1Var var_B8 = ""
  loc_A4C228: ExitProcHresult
  loc_A4C22B: CStr2Ansi
End Sub

Private Sub CodiEnreTxt_GotFocus() '9C3CC8
  'Data Table: 4FF4BC
  loc_9C3CB4: FLdPr Me
  loc_9C3CB7: VCallAd Control_ID_CodiEnreTxt
  loc_9C3CBA: CVarAd
  loc_9C3CBE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3CC3: FFree1Var var_94 = ""
  loc_9C3CC6: ExitProcHresult
End Sub

Private Sub CodiEnreTxt_KeyPress(KeyAscii As Integer) '9D7A84
  'Data Table: 4FF4BC
  loc_9D7A6C: LitStr "0123456789"
  loc_9D7A6F: FStStrCopy var_88
  loc_9D7A72: FLdRfVar var_88
  loc_9D7A75: ILdRf KeyAscii
  loc_9D7A78: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D7A7D: IStI2 KeyAscii
  loc_9D7A80: FFree1Str var_88
  loc_9D7A83: ExitProcHresult
End Sub

Private Sub CodiEnreTxt_Validate(Cancel As Boolean) 'ACC4B0
  'Data Table: 4FF4BC
  loc_ACC394: FLdRfVar var_8A
  loc_ACC397: FLdPr Me
  loc_ACC39A: VCallAd Control_ID_CodiEnreTxt
  loc_ACC39D: FStAdFunc var_88
  loc_ACC3A0: FLdPr var_88
  loc_ACC3A3:  = Me.Enabled
  loc_ACC3A8: FLdI2 var_8A
  loc_ACC3AB: FFree1Ad var_88
  loc_ACC3AE: BranchF loc_ACC4AC
  loc_ACC3B1: FLdRfVar var_90
  loc_ACC3B4: FLdPr Me
  loc_ACC3B7: VCallAd Control_ID_CodiEnreTxt
  loc_ACC3BA: FStAdFunc var_88
  loc_ACC3BD: FLdPr var_88
  loc_ACC3C0:  = Me.Text
  loc_ACC3C5: FLdZeroAd var_90
  loc_ACC3C8: CVarStr var_A0
  loc_ACC3CB: ImpAdCallI2 IsNumeric()
  loc_ACC3D0: NotI4
  loc_ACC3D1: FFree1Ad var_88
  loc_ACC3D4: FFree1Var var_A0 = ""
  loc_ACC3D7: BranchF loc_ACC3F1
  loc_ACC3DA: LitStr "0"
  loc_ACC3DD: FLdPr Me
  loc_ACC3E0: VCallAd Control_ID_CodiEnreTxt
  loc_ACC3E3: FStAdFunc var_88
  loc_ACC3E6: FLdPr var_88
  loc_ACC3E9: Me.Text = from_stack_1
  loc_ACC3EE: FFree1Ad var_88
  loc_ACC3F1: FLdRfVar var_90
  loc_ACC3F4: FLdPr Me
  loc_ACC3F7: VCallAd Control_ID_CodiEnreTxt
  loc_ACC3FA: FStAdFunc var_88
  loc_ACC3FD: FLdPr var_88
  loc_ACC400:  = Me.Text
  loc_ACC405: ILdRf var_90
  loc_ACC408: ImpAdCallI2 Proc_18_39_A5661C()
  loc_ACC40D: FStStrNoPop var_A4
  loc_ACC410: FLdPr Me
  loc_ACC413: MemStStrCopy
  loc_ACC417: FFreeStr var_90 = ""
  loc_ACC41E: FFree1Ad var_88
  loc_ACC421: FLdPr Me
  loc_ACC424: MemLdStr global_96
  loc_ACC427: LitStr vbNullString
  loc_ACC42A: NeStr
  loc_ACC42C: BranchF loc_ACC46C
  loc_ACC42F: FLdPr Me
  loc_ACC432: MemLdStr global_96
  loc_ACC435: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACC43A: LitStr vbNullString
  loc_ACC43D: FLdPr Me
  loc_ACC440: VCallAd Control_ID_DetaEnreLbl
  loc_ACC443: FStAdFunc var_88
  loc_ACC446: FLdPr var_88
  loc_ACC449: Me.Caption = from_stack_1
  loc_ACC44E: FFree1Ad var_88
  loc_ACC451: FLdPr Me
  loc_ACC454: VCallAd Control_ID_CodiEnreTxt
  loc_ACC457: CVarAd
  loc_ACC45B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACC460: FFree1Var var_A0 = ""
  loc_ACC463: LitI2_Byte &HFF
  loc_ACC465: IStI2 Cancel
  loc_ACC468: ExitProcHresult
  loc_ACC469: Branch loc_ACC4AC
  loc_ACC46C: FLdRfVar var_90
  loc_ACC46F: FLdPr Me
  loc_ACC472: VCallAd Control_ID_CodiEnreTxt
  loc_ACC475: FStAdFunc var_88
  loc_ACC478: FLdPr var_88
  loc_ACC47B:  = Me.Text
  loc_ACC480: ILdRf var_90
  loc_ACC483: CI2Str
  loc_ACC485: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_ACC48A: FStStrNoPop var_A4
  loc_ACC48D: FLdPr Me
  loc_ACC490: VCallAd Control_ID_DetaEnreLbl
  loc_ACC493: FStAdFunc var_A8
  loc_ACC496: FLdPr var_A8
  loc_ACC499: Me.Caption = from_stack_1
  loc_ACC49E: FFreeStr var_90 = ""
  loc_ACC4A5: FFreeAd var_88 = ""
  loc_ACC4AC: ExitProcHresult
  loc_ACC4AD: FLdRfVar var_C0
End Sub

Private Sub FepaAcpaCmd_Click() 'A4C9D4
  'Data Table: 4FF4BC
  loc_A4C980: LitVar_Missing var_A4
  loc_A4C983: PopAdLdVar
  loc_A4C984: LitVarI4
  loc_A4C98C: PopAdLdVar
  loc_A4C98D: ImpAdLdRf MemVar_D930A4
  loc_A4C990: NewIfNullPr frmCalendario
  loc_A4C993: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4C998: ImpAdLdI4 MemVar_D93028
  loc_A4C99B: LitStr vbNullString
  loc_A4C99E: NeStr
  loc_A4C9A0: BranchF loc_A4C9BE
  loc_A4C9A3: ImpAdLdRf MemVar_D93028
  loc_A4C9A6: CDargRef
  loc_A4C9AA: FLdPr Me
  loc_A4C9AD: VCallAd Control_ID_FepaAcpaMsk
  loc_A4C9B0: FStAdFunc var_A8
  loc_A4C9B3: FLdPr var_A8
  loc_A4C9B6: LateIdSt
  loc_A4C9BB: FFree1Ad var_A8
  loc_A4C9BE: FLdPr Me
  loc_A4C9C1: VCallAd Control_ID_FepaAcpaMsk
  loc_A4C9C4: CVarAd
  loc_A4C9C8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4C9CD: FFree1Var var_B8 = ""
  loc_A4C9D0: ExitProcHresult
End Sub

Private Sub CodiEnreCmd_Click() 'A821C0
  'Data Table: 4FF4BC
  loc_A82134: LitVar_Missing var_A4
  loc_A82137: PopAdLdVar
  loc_A82138: LitVarI4
  loc_A82140: PopAdLdVar
  loc_A82141: ImpAdLdRf MemVar_D941EC
  loc_A82144: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A82147: dlgBuscarEnteRecaudador.Show from_stack_1, from_stack_2
  loc_A8214C: FLdRfVar var_AA
  loc_A8214F: FLdRfVar var_A8
  loc_A82152: ImpAdLdRf MemVar_D941EC
  loc_A82155: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A82158: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A8215D: FLdPr var_A8
  loc_A82160: from_stack_1 = clsentereca.CodiEnre
  loc_A82165: FLdI2 var_AA
  loc_A82168: CStrUI1
  loc_A8216A: FStStrNoPop var_B0
  loc_A8216D: FLdPr Me
  loc_A82170: VCallAd Control_ID_CodiEnreTxt
  loc_A82173: FStAdFunc var_B4
  loc_A82176: FLdPr var_B4
  loc_A82179: Me.Text = from_stack_1
  loc_A8217E: FFree1Str var_B0
  loc_A82181: FFreeAd var_A8 = ""
  loc_A82188: FLdRfVar var_B0
  loc_A8218B: FLdRfVar var_A8
  loc_A8218E: ImpAdLdRf MemVar_D941EC
  loc_A82191: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A82194: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A82199: FLdPr var_A8
  loc_A8219C: from_stack_1 = clsentereca.DetaEnre
  loc_A821A1: ILdRf var_B0
  loc_A821A4: FLdPr Me
  loc_A821A7: VCallAd Control_ID_DetaEnreLbl
  loc_A821AA: FStAdFunc var_B4
  loc_A821AD: FLdPr var_B4
  loc_A821B0: Me.Caption = from_stack_1
  loc_A821B5: FFree1Str var_B0
  loc_A821B8: FFreeAd var_A8 = ""
  loc_A821BF: ExitProcHresult
End Sub

Private Sub PeriBoleTxt_GotFocus() '9C3AD0
  'Data Table: 4FF4BC
  loc_9C3ABC: FLdPr Me
  loc_9C3ABF: VCallAd Control_ID_PeriBoleTxt
  loc_9C3AC2: CVarAd
  loc_9C3AC6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3ACB: FFree1Var var_94 = ""
  loc_9C3ACE: ExitProcHresult
End Sub

Private Sub PeriBoleTxt_Validate(Cancel As Boolean) 'A827FC
  'Data Table: 4FF4BC
  loc_A82774: FLdRfVar var_8A
  loc_A82777: FLdPr Me
  loc_A8277A: VCallAd Control_ID_PeriBoleTxt
  loc_A8277D: FStAdFunc var_88
  loc_A82780: FLdPr var_88
  loc_A82783:  = Me.Enabled
  loc_A82788: FLdI2 var_8A
  loc_A8278B: FFree1Ad var_88
  loc_A8278E: BranchF loc_A827F8
  loc_A82791: FLdRfVar var_90
  loc_A82794: FLdPr Me
  loc_A82797: VCallAd Control_ID_PeriBoleTxt
  loc_A8279A: FStAdFunc var_88
  loc_A8279D: FLdPr var_88
  loc_A827A0:  = Me.Text
  loc_A827A5: LitI2_Byte &HFF
  loc_A827A7: LitI2_Byte 0
  loc_A827A9: ILdRf var_90
  loc_A827AC: LitStr "Periodo del Boleto"
  loc_A827AF: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A827B4: FStStrNoPop var_94
  loc_A827B7: FLdPr Me
  loc_A827BA: MemStStrCopy
  loc_A827BE: FFreeStr var_90 = ""
  loc_A827C5: FFree1Ad var_88
  loc_A827C8: FLdPr Me
  loc_A827CB: MemLdStr global_96
  loc_A827CE: LitStr vbNullString
  loc_A827D1: NeStr
  loc_A827D3: BranchF loc_A827F8
  loc_A827D6: FLdPr Me
  loc_A827D9: MemLdStr global_96
  loc_A827DC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A827E1: FLdPr Me
  loc_A827E4: VCallAd Control_ID_PeriBoleTxt
  loc_A827E7: CVarAd
  loc_A827EB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A827F0: FFree1Var var_A4 = ""
  loc_A827F3: LitI2_Byte &HFF
  loc_A827F5: IStI2 Cancel
  loc_A827F8: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AEB034
  'Data Table: 4FF4BC
  loc_AEAEC0: LitI2_Byte 0
  loc_AEAEC2: FLdPr Me
  loc_AEAEC5: MemStI2 global_76
  loc_AEAEC8: LitI2_Byte 0
  loc_AEAECA: ILdRf Me
  loc_AEAECD: CastAd
  loc_AEAED0: FStAdFunc var_88
  loc_AEAED3: FLdRfVar var_88
  loc_AEAED6: ImpAdCallFPR4  = Proc_272_3_B44A88()
  loc_AEAEDB: FFree1Ad var_88
  loc_AEAEDE: LitI4 0
  loc_AEAEE3: LitI4 0
  loc_AEAEE8: FLdRfVar var_8C
  loc_AEAEEB: Redim
  loc_AEAEF5: FLdPr Me
  loc_AEAEF8: VCallAd Control_ID_dgdABMS
  loc_AEAEFB: CVarAd
  loc_AEAEFF: ParmAry1St
  loc_AEAF05: FLdRfVar var_8C
  loc_AEAF08: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AEAF0D: FLdRfVar var_8C
  loc_AEAF10: Erase
  loc_AEAF11: Call EnlazaTodo()
  loc_AEAF16: ILdRf Me
  loc_AEAF19: CastAd
  loc_AEAF1C: FStAdFunc var_88
  loc_AEAF1F: FLdRfVar var_88
  loc_AEAF22: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_AEAF27: FFree1Ad var_88
  loc_AEAF2A: LitI2_Byte &HFF
  loc_AEAF2C: FLdPr Me
  loc_AEAF2F: VCallAd Control_ID_CantBoleTxt
  loc_AEAF32: FStAdFunc var_88
  loc_AEAF35: FLdPr var_88
  loc_AEAF38: Me.Enabled = from_stack_1b
  loc_AEAF3D: FFree1Ad var_88
  loc_AEAF40: LitI2_Byte &HFF
  loc_AEAF42: FLdPr Me
  loc_AEAF45: VCallAd Control_ID_CantBoleTxt
  loc_AEAF48: FStAdFunc var_88
  loc_AEAF4B: FLdPr var_88
  loc_AEAF4E: Me.Locked = from_stack_1b
  loc_AEAF53: FFree1Ad var_88
  loc_AEAF56: LitI2_Byte &HFF
  loc_AEAF58: FLdPr Me
  loc_AEAF5B: VCallAd Control_ID_TotaBoleTxt
  loc_AEAF5E: FStAdFunc var_88
  loc_AEAF61: FLdPr var_88
  loc_AEAF64: Me.Enabled = from_stack_1b
  loc_AEAF69: FFree1Ad var_88
  loc_AEAF6C: LitI2_Byte &HFF
  loc_AEAF6E: FLdPr Me
  loc_AEAF71: VCallAd Control_ID_TotaBoleTxt
  loc_AEAF74: FStAdFunc var_88
  loc_AEAF77: FLdPr var_88
  loc_AEAF7A: Me.Locked = from_stack_1b
  loc_AEAF7F: FFree1Ad var_88
  loc_AEAF82: FLdPr Me
  loc_AEAF85: MemLdRfVar from_stack_1.global_52
  loc_AEAF88: NewIfNullPr clsacrepago
  loc_AEAF8B: Call clsacrepago.Requery()
  loc_AEAF90: FLdPr Me
  loc_AEAF93: VCallAd Control_ID_FeenAcpaMsk
  loc_AEAF96: FStAdFunc var_88
  loc_AEAF99: FLdPr var_88
  loc_AEAF9C: LateIdLdVar var_9C DispID_15 0
  loc_AEAFA3: CStrVarTmp
  loc_AEAFA4: CVarStr var_AC
  loc_AEAFA7: ImpAdCallI2 IsDate()
  loc_AEAFAC: FLdRfVar var_B4
  loc_AEAFAF: FLdPr Me
  loc_AEAFB2: VCallAd Control_ID_NumeAcpaTxt
  loc_AEAFB5: FStAdFunc var_B0
  loc_AEAFB8: FLdPr var_B0
  loc_AEAFBB:  = Me.Text
  loc_AEAFC0: FLdZeroAd var_B4
  loc_AEAFC3: CVarStr var_C4
  loc_AEAFC6: ImpAdCallI2 IsNumeric()
  loc_AEAFCB: AndI4
  loc_AEAFCC: FFreeAd var_88 = ""
  loc_AEAFD3: FFreeVar var_9C = "": var_AC = ""
  loc_AEAFDC: BranchF loc_AEB033
  loc_AEAFDF: FLdPr Me
  loc_AEAFE2: VCallAd Control_ID_FeenAcpaMsk
  loc_AEAFE5: FStAdFunc var_88
  loc_AEAFE8: FLdPr var_88
  loc_AEAFEB: LateIdLdVar var_9C DispID_15 0
  loc_AEAFF2: PopAd
  loc_AEAFF4: FLdRfVar var_B4
  loc_AEAFF7: FLdPr Me
  loc_AEAFFA: VCallAd Control_ID_NumeAcpaTxt
  loc_AEAFFD: FStAdFunc var_B0
  loc_AEB000: FLdPr var_B0
  loc_AEB003:  = Me.Text
  loc_AEB008: ILdRf var_B4
  loc_AEB00B: CI2Str
  loc_AEB00D: FLdRfVar var_9C
  loc_AEB010: CStrVarTmp
  loc_AEB011: FStStrNoPop var_C8
  loc_AEB014: FLdPr Me
  loc_AEB017: MemLdRfVar from_stack_1.global_52
  loc_AEB01A: NewIfNullPr clsacrepago
  loc_AEB01D: Call clsacrepago.Encontrar(from_stack_1v, from_stack_2v)
  loc_AEB022: FFreeStr var_C8 = ""
  loc_AEB029: FFreeAd var_88 = ""
  loc_AEB030: FFree1Var var_9C = ""
  loc_AEB033: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A66190
  'Data Table: 4FF4BC
  loc_A66134: FLdRfVar var_B4
  loc_A66137: FLdRfVar var_B0
  loc_A6613A: FLdI2 ColIndex
  loc_A6613D: CVarI2 var_A8
  loc_A66140: PopAdLdVar
  loc_A66141: FLdPr Me
  loc_A66144: VCallAd Control_ID_dgdABMS
  loc_A66147: FStAdFunc var_88
  loc_A6614A: FLdPr var_88
  loc_A6614D: LateIdLdVar var_98 DispID_105 0
  loc_A66154: CastAdVar Me
  loc_A66158: FStAdFunc var_AC
  loc_A6615B: FLdPr var_AC
  loc_A6615E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66163: FLdPr var_B0
  loc_A66166:  = Me.DataField
  loc_A6616B: FLdZeroAd var_B4
  loc_A6616E: PopTmpLdAdStr
  loc_A66172: FLdPr Me
  loc_A66175: MemLdRfVar from_stack_1.global_52
  loc_A66178: NewIfNullPr clsacrepago
  loc_A6617B: Call clsacrepago.Sort(from_stack_1v)
  loc_A66180: FFree1Str var_B8
  loc_A66183: FFreeAd var_88 = "": var_AC = ""
  loc_A6618C: FFree1Var var_98 = ""
  loc_A6618F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B154C0
  'Data Table: 4FF4BC
  loc_B15280: FLdPr Me
  loc_B15283: MemLdI2 global_76
  loc_B15286: LitI2_Byte 0
  loc_B15288: EqI2
  loc_B15289: FLdRfVar var_88
  loc_B1528C: FLdPr Me
  loc_B1528F: MemLdRfVar from_stack_1.global_52
  loc_B15292: NewIfNullPr clsacrepago
  loc_B15295: from_stack_1 = clsacrepago.RecordCount
  loc_B1529A: ILdRf var_88
  loc_B1529D: LitI4 0
  loc_B152A2: GtI4
  loc_B152A3: AndI4
  loc_B152A4: BranchF loc_B154BD
  loc_B152A7: FLdRfVar var_8A
  loc_B152AA: FLdPr Me
  loc_B152AD: MemLdRfVar from_stack_1.global_52
  loc_B152B0: NewIfNullPr clsacrepago
  loc_B152B3: from_stack_1 = clsacrepago.BOF
  loc_B152B8: FLdI2 var_8A
  loc_B152BB: BranchF loc_B152CC
  loc_B152BE: FLdPr Me
  loc_B152C1: MemLdRfVar from_stack_1.global_52
  loc_B152C4: NewIfNullPr clsacrepago
  loc_B152C7: Call clsacrepago.MoveFirst()
  loc_B152CC: FLdRfVar var_8A
  loc_B152CF: FLdPr Me
  loc_B152D2: MemLdRfVar from_stack_1.global_52
  loc_B152D5: NewIfNullPr clsacrepago
  loc_B152D8: from_stack_1 = clsacrepago.EOF
  loc_B152DD: FLdI2 var_8A
  loc_B152E0: BranchF loc_B152F1
  loc_B152E3: FLdPr Me
  loc_B152E6: MemLdRfVar from_stack_1.global_52
  loc_B152E9: NewIfNullPr clsacrepago
  loc_B152EC: Call clsacrepago.MoveLast()
  loc_B152F1: LitI2_Byte 0
  loc_B152F3: CR8I2
  loc_B152F4: FLdPr Me
  loc_B152F7: MemStFPR8 global_80
  loc_B152FA: LitI2_Byte 0
  loc_B152FC: CR8I2
  loc_B152FD: FLdPr Me
  loc_B15300: MemStFPR8 global_88
  loc_B15303: FLdRfVar var_AC
  loc_B15306: FLdPr Me
  loc_B15309: MemLdRfVar from_stack_1.global_52
  loc_B1530C: NewIfNullPr clsacrepago
  loc_B1530F: from_stack_1 = clsacrepago.FeenAcpa
  loc_B15314: LitStr "SELECT pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.CodiOfic, pago.CuenCtct, infogov.persona.DetaPers, boleto.TipoBole, "
  loc_B15317: LitStr " pago.CapiPago, pago.RecaPago, pago.DecaPago, pago.DerePago, pago.IntePago, pago.ExenPago, pago.AprePago, pago.TotaPago FROM pago "
  loc_B1531A: ConcatStr
  loc_B1531B: FStStrNoPop var_90
  loc_B1531E: LitStr " LEFT JOIN boleto ON pago.PeriBole = boleto.PeriBole"
  loc_B15321: ConcatStr
  loc_B15322: FStStrNoPop var_94
  loc_B15325: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_B15328: ConcatStr
  loc_B15329: FStStrNoPop var_98
  loc_B1532C: LitStr " LEFT JOIN infogov.persona ON pago.CucuPers = infogov.persona.CucuPers"
  loc_B1532F: ConcatStr
  loc_B15330: FStStrNoPop var_9C
  loc_B15333: LitStr " WHERE FeenAcpa = '"
  loc_B15336: ConcatStr
  loc_B15337: FStStrNoPop var_D0
  loc_B1533A: LitI4 1
  loc_B1533F: LitI4 1
  loc_B15344: LitVarStr var_BC, "yyyy-mm-dd"
  loc_B15349: FStVarCopyObj var_CC
  loc_B1534C: FLdRfVar var_CC
  loc_B1534F: FLdRfVar var_AC
  loc_B15352: ImpAdCallI2 Format$(, )
  loc_B15357: FStStrNoPop var_D4
  loc_B1535A: ConcatStr
  loc_B1535B: FStStrNoPop var_D8
  loc_B1535E: LitStr "'"
  loc_B15361: ConcatStr
  loc_B15362: FStStrNoPop var_DC
  loc_B15365: LitStr " AND NumeAcpa = "
  loc_B15368: ConcatStr
  loc_B15369: FStStrNoPop var_E0
  loc_B1536C: FLdRfVar var_8A
  loc_B1536F: FLdPr Me
  loc_B15372: MemLdRfVar from_stack_1.global_52
  loc_B15375: NewIfNullPr clsacrepago
  loc_B15378: from_stack_1 = clsacrepago.NumeAcpa
  loc_B1537D: FLdI2 var_8A
  loc_B15380: CStrUI1
  loc_B15382: FStStrNoPop var_E4
  loc_B15385: ConcatStr
  loc_B15386: FStStrNoPop var_E8
  loc_B15389: LitStr " AND ActuPago = 'No'"
  loc_B1538C: ConcatStr
  loc_B1538D: FStStrNoPop var_EC
  loc_B15390: LitStr " ORDER BY pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole"
  loc_B15393: ConcatStr
  loc_B15394: FStStrNoPop var_F0
  loc_B15397: FLdPr Me
  loc_B1539A: MemLdRfVar from_stack_1.global_64
  loc_B1539D: NewIfNullPr clspago
  loc_B153A0: Call clspago.RedefineRS(from_stack_1v)
  loc_B153A5: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_B153C2: FFreeVar var_AC = ""
  loc_B153C9: FLdRfVar var_88
  loc_B153CC: FLdPr Me
  loc_B153CF: MemLdRfVar from_stack_1.global_64
  loc_B153D2: NewIfNullPr clspago
  loc_B153D5: from_stack_1 = clspago.RecordCount
  loc_B153DA: ILdRf var_88
  loc_B153DD: LitI4 0
  loc_B153E2: GtI4
  loc_B153E3: BranchF loc_B1544E
  loc_B153E6: FLdPr Me
  loc_B153E9: MemLdRfVar from_stack_1.global_64
  loc_B153EC: NewIfNullPr clspago
  loc_B153EF: Call clspago.MoveFirst()
  loc_B153F4: FLdRfVar var_8A
  loc_B153F7: FLdPr Me
  loc_B153FA: MemLdRfVar from_stack_1.global_64
  loc_B153FD: NewIfNullPr clspago
  loc_B15400: from_stack_1 = clspago.EOF
  loc_B15405: FLdI2 var_8A
  loc_B15408: NotI4
  loc_B15409: BranchF loc_B1544E
  loc_B1540C: FLdPr Me
  loc_B1540F: MemLdFPR8 global_80
  loc_B15412: LitI2_Byte 1
  loc_B15414: CR8I2
  loc_B15415: AddR8
  loc_B15416: FLdPr Me
  loc_B15419: MemStFPR8 global_80
  loc_B1541C: FLdRfVar var_F8
  loc_B1541F: FLdPr Me
  loc_B15422: MemLdRfVar from_stack_1.global_64
  loc_B15425: NewIfNullPr clspago
  loc_B15428: from_stack_1 = clspago.TotaPago
  loc_B1542D: FLdPr Me
  loc_B15430: MemLdFPR8 global_88
  loc_B15433: FLdFPR8 var_F8
  loc_B15436: AddR8
  loc_B15437: FLdPr Me
  loc_B1543A: MemStFPR8 global_88
  loc_B1543D: FLdPr Me
  loc_B15440: MemLdRfVar from_stack_1.global_64
  loc_B15443: NewIfNullPr clspago
  loc_B15446: Call clspago.MoveSiguiente()
  loc_B1544B: Branch loc_B153F4
  loc_B1544E: FLdPr Me
  loc_B15451: MemLdFPR8 global_80
  loc_B15454: CStrR8
  loc_B15456: FStStrNoPop var_90
  loc_B15459: FLdPr Me
  loc_B1545C: VCallAd Control_ID_CantBoleTxt
  loc_B1545F: FStAdFunc var_FC
  loc_B15462: FLdPr var_FC
  loc_B15465: Me.Text = from_stack_1
  loc_B1546A: FFree1Str var_90
  loc_B1546D: FFree1Ad var_FC
  loc_B15470: LitI4 1
  loc_B15475: LitI4 1
  loc_B1547A: LitVarStr var_10C, "###,###,##0.00"
  loc_B1547F: FStVarCopyObj var_AC
  loc_B15482: FLdRfVar var_AC
  loc_B15485: FLdPr Me
  loc_B15488: MemLdRfVar from_stack_1.global_88
  loc_B1548B: CVarRef
  loc_B15490: FLdRfVar var_CC
  loc_B15493: ImpAdCallFPR4  = Format(, )
  loc_B15498: FLdRfVar var_CC
  loc_B1549B: CStrVarVal var_90
  loc_B1549F: FLdPr Me
  loc_B154A2: VCallAd Control_ID_TotaBoleTxt
  loc_B154A5: FStAdFunc var_FC
  loc_B154A8: FLdPr var_FC
  loc_B154AB: Me.Text = from_stack_1
  loc_B154B0: FFree1Str var_90
  loc_B154B3: FFree1Ad var_FC
  loc_B154B6: FFreeVar var_AC = ""
  loc_B154BD: ExitProcHresult
End Sub

Private Sub Form_Load() 'B6A7F0
  'Data Table: 4FF4BC
  loc_B6A3A8: LitI2_Byte 0
  loc_B6A3AA: CR8I2
  loc_B6A3AB: PopFPR4
  loc_B6A3AC: FLdPr Me
  loc_B6A3AF: Me.Left = from_stack_1s
  loc_B6A3B4: LitI2_Byte 0
  loc_B6A3B6: CR8I2
  loc_B6A3B7: PopFPR4
  loc_B6A3B8: FLdPr Me
  loc_B6A3BB: Me.Top = from_stack_1s
  loc_B6A3C0: LitI2_Byte 0
  loc_B6A3C2: CStrUI1
  loc_B6A3C4: FStStrNoPop var_88
  loc_B6A3C7: FLdPr Me
  loc_B6A3CA: VCallAd Control_ID_CantBoleTxt
  loc_B6A3CD: FStAdFunc var_8C
  loc_B6A3D0: FLdPr var_8C
  loc_B6A3D3: Me.Text = from_stack_1
  loc_B6A3D8: FFree1Str var_88
  loc_B6A3DB: FFree1Ad var_8C
  loc_B6A3DE: LitI2_Byte 0
  loc_B6A3E0: CStrUI1
  loc_B6A3E2: FStStrNoPop var_88
  loc_B6A3E5: FLdPr Me
  loc_B6A3E8: VCallAd Control_ID_TotaBoleTxt
  loc_B6A3EB: FStAdFunc var_8C
  loc_B6A3EE: FLdPr var_8C
  loc_B6A3F1: Me.Text = from_stack_1
  loc_B6A3F6: FFree1Str var_88
  loc_B6A3F9: FFree1Ad var_8C
  loc_B6A3FC: LitStr "SELECT FeenAcpa, acrepago.NumeAcpa, FealAcpa, FeacAcpa, FepaAcpa, acrepago.CodiEnre, DetaEnre, ActuAcpa, TocoAcpa, ImpoAcpa, NoarAcpa, acrepago.CodiUsua FROM acrepago"
  loc_B6A3FF: LitStr " LEFT JOIN infogov.entereca ON acrepago.CodiEnre = infogov.entereca.CodiEnre"
  loc_B6A402: ConcatStr
  loc_B6A403: FStStrNoPop var_88
  loc_B6A406: LitStr " WHERE ActuAcpa = 'No' "
  loc_B6A409: ConcatStr
  loc_B6A40A: FStStrNoPop var_90
  loc_B6A40D: LitStr " ORDER BY FeenAcpa, NumeAcpa"
  loc_B6A410: ConcatStr
  loc_B6A411: FStStrNoPop var_94
  loc_B6A414: FLdPr Me
  loc_B6A417: MemLdRfVar from_stack_1.global_52
  loc_B6A41A: NewIfNullPr clsacrepago
  loc_B6A41D: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_B6A422: FFreeStr var_88 = "": var_90 = ""
  loc_B6A42B: FLdRfVar var_98
  loc_B6A42E: FLdPr Me
  loc_B6A431: MemLdRfVar from_stack_1.global_52
  loc_B6A434: NewIfNullPr clsacrepago
  loc_B6A437: from_stack_1 = clsacrepago.RecordCount
  loc_B6A43C: ILdRf var_98
  loc_B6A43F: LitI4 0
  loc_B6A444: GtI4
  loc_B6A445: BranchF loc_B6A593
  loc_B6A448: FLdRfVar var_AC
  loc_B6A44B: FLdPr Me
  loc_B6A44E: MemLdRfVar from_stack_1.global_52
  loc_B6A451: NewIfNullPr clsacrepago
  loc_B6A454: from_stack_1 = clsacrepago.FeenAcpa
  loc_B6A459: LitStr "SELECT pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.CodiOfic, pago.CuenCtct, infogov.persona.DetaPers, boleto.TipoBole, "
  loc_B6A45C: LitStr " pago.CapiPago, pago.RecaPago, pago.DecaPago, pago.DerePago, pago.IntePago, pago.ExenPago, pago.AprePago, pago.TotaPago FROM pago "
  loc_B6A45F: ConcatStr
  loc_B6A460: FStStrNoPop var_88
  loc_B6A463: LitStr " LEFT JOIN boleto ON pago.PeriBole = boleto.PeriBole"
  loc_B6A466: ConcatStr
  loc_B6A467: FStStrNoPop var_90
  loc_B6A46A: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_B6A46D: ConcatStr
  loc_B6A46E: FStStrNoPop var_94
  loc_B6A471: LitStr " LEFT JOIN infogov.persona ON pago.CucuPers = infogov.persona.CucuPers"
  loc_B6A474: ConcatStr
  loc_B6A475: FStStrNoPop var_9C
  loc_B6A478: LitStr " WHERE FeenAcpa = '"
  loc_B6A47B: ConcatStr
  loc_B6A47C: FStStrNoPop var_D0
  loc_B6A47F: LitI4 1
  loc_B6A484: LitI4 1
  loc_B6A489: LitVarStr var_BC, "yyyy-mm-dd"
  loc_B6A48E: FStVarCopyObj var_CC
  loc_B6A491: FLdRfVar var_CC
  loc_B6A494: FLdRfVar var_AC
  loc_B6A497: ImpAdCallI2 Format$(, )
  loc_B6A49C: FStStrNoPop var_D4
  loc_B6A49F: ConcatStr
  loc_B6A4A0: FStStrNoPop var_D8
  loc_B6A4A3: LitStr "'"
  loc_B6A4A6: ConcatStr
  loc_B6A4A7: FStStrNoPop var_DC
  loc_B6A4AA: LitStr " AND NumeAcpa = "
  loc_B6A4AD: ConcatStr
  loc_B6A4AE: FStStrNoPop var_E4
  loc_B6A4B1: FLdRfVar var_DE
  loc_B6A4B4: FLdPr Me
  loc_B6A4B7: MemLdRfVar from_stack_1.global_52
  loc_B6A4BA: NewIfNullPr clsacrepago
  loc_B6A4BD: from_stack_1 = clsacrepago.NumeAcpa
  loc_B6A4C2: FLdI2 var_DE
  loc_B6A4C5: CStrUI1
  loc_B6A4C7: FStStrNoPop var_E8
  loc_B6A4CA: ConcatStr
  loc_B6A4CB: FStStrNoPop var_EC
  loc_B6A4CE: LitStr " AND ActuPago = 'No'"
  loc_B6A4D1: ConcatStr
  loc_B6A4D2: FStStrNoPop var_F0
  loc_B6A4D5: LitStr " ORDER BY pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole"
  loc_B6A4D8: ConcatStr
  loc_B6A4D9: FStStrNoPop var_F4
  loc_B6A4DC: FLdPr Me
  loc_B6A4DF: MemLdRfVar from_stack_1.global_64
  loc_B6A4E2: NewIfNullPr clspago
  loc_B6A4E5: Call clspago.RedefineRS(from_stack_1v)
  loc_B6A4EA: FFreeStr var_88 = "": var_90 = "": var_94 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B6A507: FFreeVar var_AC = ""
  loc_B6A50E: FLdRfVar var_98
  loc_B6A511: FLdPr Me
  loc_B6A514: MemLdRfVar from_stack_1.global_64
  loc_B6A517: NewIfNullPr clspago
  loc_B6A51A: from_stack_1 = clspago.RecordCount
  loc_B6A51F: ILdRf var_98
  loc_B6A522: LitI4 0
  loc_B6A527: GtI4
  loc_B6A528: BranchF loc_B6A593
  loc_B6A52B: FLdPr Me
  loc_B6A52E: MemLdRfVar from_stack_1.global_64
  loc_B6A531: NewIfNullPr clspago
  loc_B6A534: Call clspago.MoveFirst()
  loc_B6A539: FLdRfVar var_DE
  loc_B6A53C: FLdPr Me
  loc_B6A53F: MemLdRfVar from_stack_1.global_64
  loc_B6A542: NewIfNullPr clspago
  loc_B6A545: from_stack_1 = clspago.EOF
  loc_B6A54A: FLdI2 var_DE
  loc_B6A54D: NotI4
  loc_B6A54E: BranchF loc_B6A593
  loc_B6A551: FLdPr Me
  loc_B6A554: MemLdFPR8 global_80
  loc_B6A557: LitI2_Byte 1
  loc_B6A559: CR8I2
  loc_B6A55A: AddR8
  loc_B6A55B: FLdPr Me
  loc_B6A55E: MemStFPR8 global_80
  loc_B6A561: FLdRfVar var_FC
  loc_B6A564: FLdPr Me
  loc_B6A567: MemLdRfVar from_stack_1.global_64
  loc_B6A56A: NewIfNullPr clspago
  loc_B6A56D: from_stack_1 = clspago.TotaPago
  loc_B6A572: FLdPr Me
  loc_B6A575: MemLdFPR8 global_88
  loc_B6A578: FLdFPR8 var_FC
  loc_B6A57B: AddR8
  loc_B6A57C: FLdPr Me
  loc_B6A57F: MemStFPR8 global_88
  loc_B6A582: FLdPr Me
  loc_B6A585: MemLdRfVar from_stack_1.global_64
  loc_B6A588: NewIfNullPr clspago
  loc_B6A58B: Call clspago.MoveSiguiente()
  loc_B6A590: Branch loc_B6A539
  loc_B6A593: FLdPr Me
  loc_B6A596: MemLdFPR8 global_80
  loc_B6A599: CStrR8
  loc_B6A59B: FStStrNoPop var_88
  loc_B6A59E: FLdPr Me
  loc_B6A5A1: VCallAd Control_ID_CantBoleTxt
  loc_B6A5A4: FStAdFunc var_8C
  loc_B6A5A7: FLdPr var_8C
  loc_B6A5AA: Me.Text = from_stack_1
  loc_B6A5AF: FFree1Str var_88
  loc_B6A5B2: FFree1Ad var_8C
  loc_B6A5B5: LitI4 1
  loc_B6A5BA: LitI4 1
  loc_B6A5BF: LitVarStr var_10C, "###,###,##0.00"
  loc_B6A5C4: FStVarCopyObj var_AC
  loc_B6A5C7: FLdRfVar var_AC
  loc_B6A5CA: FLdPr Me
  loc_B6A5CD: MemLdRfVar from_stack_1.global_88
  loc_B6A5D0: CVarRef
  loc_B6A5D5: FLdRfVar var_CC
  loc_B6A5D8: ImpAdCallFPR4  = Format(, )
  loc_B6A5DD: FLdRfVar var_CC
  loc_B6A5E0: CStrVarVal var_88
  loc_B6A5E4: FLdPr Me
  loc_B6A5E7: VCallAd Control_ID_TotaBoleTxt
  loc_B6A5EA: FStAdFunc var_8C
  loc_B6A5ED: FLdPr var_8C
  loc_B6A5F0: Me.Text = from_stack_1
  loc_B6A5F5: FFree1Str var_88
  loc_B6A5F8: FFree1Ad var_8C
  loc_B6A5FB: FFreeVar var_AC = ""
  loc_B6A602: LitVarStr var_BC, "FeenAcpa"
  loc_B6A607: PopAdLdVar
  loc_B6A608: FLdPr Me
  loc_B6A60B: VCallAd Control_ID_FeenAcpaMsk
  loc_B6A60E: FStAdFunc var_8C
  loc_B6A611: FLdPr var_8C
  loc_B6A614: LateIdSt
  loc_B6A619: FFree1Ad var_8C
  loc_B6A61C: LitStr "NumeAcpa"
  loc_B6A61F: FLdPr Me
  loc_B6A622: VCallAd Control_ID_NumeAcpaTxt
  loc_B6A625: FStAdFunc var_8C
  loc_B6A628: FLdPr var_8C
  loc_B6A62B: Me.DataField = from_stack_1
  loc_B6A630: FFree1Ad var_8C
  loc_B6A633: LitVarStr var_BC, "FepaAcpa"
  loc_B6A638: PopAdLdVar
  loc_B6A639: FLdPr Me
  loc_B6A63C: VCallAd Control_ID_FepaAcpaMsk
  loc_B6A63F: FStAdFunc var_8C
  loc_B6A642: FLdPr var_8C
  loc_B6A645: LateIdSt
  loc_B6A64A: FFree1Ad var_8C
  loc_B6A64D: LitStr "CodiEnre"
  loc_B6A650: FLdPr Me
  loc_B6A653: VCallAd Control_ID_CodiEnreTxt
  loc_B6A656: FStAdFunc var_8C
  loc_B6A659: FLdPr var_8C
  loc_B6A65C: Me.DataField = from_stack_1
  loc_B6A661: FFree1Ad var_8C
  loc_B6A664: LitStr "DetaEnre"
  loc_B6A667: FLdPr Me
  loc_B6A66A: VCallAd Control_ID_DetaEnreLbl
  loc_B6A66D: FStAdFunc var_8C
  loc_B6A670: FLdPr var_8C
  loc_B6A673: Me.DataField = from_stack_1
  loc_B6A678: FFree1Ad var_8C
  loc_B6A67B: LitStr "TocoAcpa"
  loc_B6A67E: FLdPr Me
  loc_B6A681: VCallAd Control_ID_TocoAcpaTxt
  loc_B6A684: FStAdFunc var_8C
  loc_B6A687: FLdPr var_8C
  loc_B6A68A: Me.DataField = from_stack_1
  loc_B6A68F: FFree1Ad var_8C
  loc_B6A692: LitStr "ImpoAcpa"
  loc_B6A695: FLdPr Me
  loc_B6A698: VCallAd Control_ID_ImpoAcpaTxt
  loc_B6A69B: FStAdFunc var_8C
  loc_B6A69E: FLdPr var_8C
  loc_B6A6A1: Me.DataField = from_stack_1
  loc_B6A6A6: FFree1Ad var_8C
  loc_B6A6A9: LitI4 0
  loc_B6A6AE: LitI4 1
  loc_B6A6B3: FLdRfVar var_110
  loc_B6A6B6: Redim
  loc_B6A6C0: FLdPr Me
  loc_B6A6C3: MemLdRfVar from_stack_1.global_52
  loc_B6A6C6: NewIfNullAd
  loc_B6A6C9: FStAd var_8C 
  loc_B6A6CD: FLdRfVar var_8C
  loc_B6A6D0: CVarRef
  loc_B6A6D5: ParmAry1St
  loc_B6A6DB: FLdPr Me
  loc_B6A6DE: VCallAd Control_ID_dgdABMS
  loc_B6A6E1: CVarAd
  loc_B6A6E5: ParmAry1St
  loc_B6A6EB: FLdRfVar var_110
  loc_B6A6EE: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B6A6F3: ILdRf var_8C
  loc_B6A6F6: CastAd
  loc_B6A6F9: FLdPr Me
  loc_B6A6FC: MemStAdFunc
  loc_B6A700: FLdRfVar var_110
  loc_B6A703: Erase
  loc_B6A704: FFree1Ad var_8C
  loc_B6A707: LitI4 0
  loc_B6A70C: LitI4 1
  loc_B6A711: FLdRfVar var_110
  loc_B6A714: Redim
  loc_B6A71E: FLdPr Me
  loc_B6A721: MemLdRfVar from_stack_1.global_64
  loc_B6A724: NewIfNullAd
  loc_B6A727: FStAd var_8C 
  loc_B6A72B: FLdRfVar var_8C
  loc_B6A72E: CVarRef
  loc_B6A733: ParmAry1St
  loc_B6A739: FLdPr Me
  loc_B6A73C: VCallAd Control_ID_dgdPago
  loc_B6A73F: CVarAd
  loc_B6A743: ParmAry1St
  loc_B6A749: FLdRfVar var_110
  loc_B6A74C: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B6A751: ILdRf var_8C
  loc_B6A754: CastAd
  loc_B6A757: FLdPr Me
  loc_B6A75A: MemStAdFunc
  loc_B6A75E: FLdRfVar var_110
  loc_B6A761: Erase
  loc_B6A762: FFree1Ad var_8C
  loc_B6A765: Call EnlazaTodo()
  loc_B6A76A: ILdRf Me
  loc_B6A76D: CastAd
  loc_B6A770: FStAdFunc var_8C
  loc_B6A773: FLdRfVar var_8C
  loc_B6A776: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B6A77B: FFree1Ad var_8C
  loc_B6A77E: LitI2_Byte &HFF
  loc_B6A780: FLdPr Me
  loc_B6A783: VCallAd Control_ID_CantBoleTxt
  loc_B6A786: FStAdFunc var_8C
  loc_B6A789: FLdPr var_8C
  loc_B6A78C: Me.Enabled = from_stack_1b
  loc_B6A791: FFree1Ad var_8C
  loc_B6A794: LitI2_Byte &HFF
  loc_B6A796: FLdPr Me
  loc_B6A799: VCallAd Control_ID_CantBoleTxt
  loc_B6A79C: FStAdFunc var_8C
  loc_B6A79F: FLdPr var_8C
  loc_B6A7A2: Me.Locked = from_stack_1b
  loc_B6A7A7: FFree1Ad var_8C
  loc_B6A7AA: LitI2_Byte &HFF
  loc_B6A7AC: FLdPr Me
  loc_B6A7AF: VCallAd Control_ID_TotaBoleTxt
  loc_B6A7B2: FStAdFunc var_8C
  loc_B6A7B5: FLdPr var_8C
  loc_B6A7B8: Me.Enabled = from_stack_1b
  loc_B6A7BD: FFree1Ad var_8C
  loc_B6A7C0: LitI2_Byte &HFF
  loc_B6A7C2: FLdPr Me
  loc_B6A7C5: VCallAd Control_ID_TotaBoleTxt
  loc_B6A7C8: FStAdFunc var_8C
  loc_B6A7CB: FLdPr var_8C
  loc_B6A7CE: Me.Locked = from_stack_1b
  loc_B6A7D3: FFree1Ad var_8C
  loc_B6A7D6: LitI2_Byte 0
  loc_B6A7D8: ILdRf Me
  loc_B6A7DB: CastAd
  loc_B6A7DE: FStAdFunc var_8C
  loc_B6A7E1: FLdRfVar var_8C
  loc_B6A7E4: ImpAdCallFPR4  = Proc_272_3_B44A88()
  loc_B6A7E9: FFree1Ad var_8C
  loc_B6A7EC: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A64240
  'Data Table: 4FF4BC
  loc_A641E4: FLdRfVar var_C2
  loc_A641E7: FLdRfVar var_C0
  loc_A641EA: LitVarI2 var_B8, 1
  loc_A641EF: FLdPr Me
  loc_A641F2: VCallAd Control_ID_tlbABMS
  loc_A641F5: FStAdFunc var_88
  loc_A641F8: FLdPr var_88
  loc_A641FB: LateIdLdVar var_98 DispID_3 0
  loc_A64202: CastAdVar Me
  loc_A64206: FStAdFunc var_BC
  loc_A64209: FLdPr var_BC
  loc_A6420C:  = Me.Buttons.ControlDefault
  loc_A64211: FLdPr var_C0
  loc_A64214:  = Me.Enabled
  loc_A64219: FLdI2 var_C2
  loc_A6421C: FFreeAd var_88 = "": var_BC = ""
  loc_A64225: FFreeVar var_98 = ""
  loc_A6422C: BranchF loc_A6423D
  loc_A6422F: FLdPr Me
  loc_A64232: MemLdRfVar from_stack_1.global_52
  loc_A64235: NewIfNullPr clsacrepago
  loc_A64238: Call clsacrepago.Requery()
  loc_A6423D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D8BBC
  'Data Table: 4FF4BC
  loc_9D8BA4: ILdI2 KeyCode
  loc_9D8BA7: ILdRf Me
  loc_9D8BAA: CastAd
  loc_9D8BAD: FStAdFunc var_88
  loc_9D8BB0: FLdRfVar var_88
  loc_9D8BB3: ImpAdCallFPR4  = Proc_272_5_B525D4()
  loc_9D8BB8: FFree1Ad var_88
  loc_9D8BBB: ExitProcHresult
End Sub

Private Sub AgregarBoletoCmd_Click() 'CB9820
  'Data Table: 4FF4BC
  loc_CB7704: LitI2_Byte 0
  loc_CB7706: PopTmpLdAd2 var_8A
  loc_CB7709: Call FeenAcpaMsk_UnknownEvent_8()
  loc_CB770E: FLdPr Me
  loc_CB7711: MemLdStr global_96
  loc_CB7714: LitStr vbNullString
  loc_CB7717: NeStr
  loc_CB7719: BranchF loc_CB771D
  loc_CB771C: ExitProcHresult
  loc_CB771D: LitI2_Byte 0
  loc_CB771F: PopTmpLdAd2 var_8A
  loc_CB7722: Call NumeAcpaTxt_Validate(from_stack_1v)
  loc_CB7727: FLdPr Me
  loc_CB772A: MemLdStr global_96
  loc_CB772D: LitStr vbNullString
  loc_CB7730: NeStr
  loc_CB7732: BranchF loc_CB7736
  loc_CB7735: ExitProcHresult
  loc_CB7736: LitI2_Byte 0
  loc_CB7738: PopTmpLdAd2 var_8A
  loc_CB773B: Call FepaAcpaMsk_UnknownEvent_8()
  loc_CB7740: FLdPr Me
  loc_CB7743: MemLdStr global_96
  loc_CB7746: LitStr vbNullString
  loc_CB7749: NeStr
  loc_CB774B: BranchF loc_CB774F
  loc_CB774E: ExitProcHresult
  loc_CB774F: LitI2_Byte 0
  loc_CB7751: PopTmpLdAd2 var_8A
  loc_CB7754: Call CodiEnreTxt_Validate(from_stack_1v)
  loc_CB7759: FLdPr Me
  loc_CB775C: MemLdStr global_96
  loc_CB775F: LitStr vbNullString
  loc_CB7762: NeStr
  loc_CB7764: BranchF loc_CB7768
  loc_CB7767: ExitProcHresult
  loc_CB7768: FLdPr Me
  loc_CB776B: VCallAd Control_ID_FeenAcpaMsk
  loc_CB776E: FStAdFunc var_90
  loc_CB7771: FLdPr var_90
  loc_CB7774: LateIdLdVar var_A0 DispID_15 0
  loc_CB777B: PopAd
  loc_CB777D: FLdRfVar var_A8
  loc_CB7780: FLdPr Me
  loc_CB7783: VCallAd Control_ID_NumeAcpaTxt
  loc_CB7786: FStAdFunc var_A4
  loc_CB7789: FLdPr var_A4
  loc_CB778C:  = Me.Text
  loc_CB7791: ILdRf var_A8
  loc_CB7794: CI4Str
  loc_CB7795: FLdRfVar var_A0
  loc_CB7798: CStrVarTmp
  loc_CB7799: FStStrNoPop var_AC
  loc_CB779C: ImpAdCallI2 Proc_18_91_AC1E90(, )
  loc_CB77A1: FStStrNoPop var_B0
  loc_CB77A4: FLdPr Me
  loc_CB77A7: MemStStrCopy
  loc_CB77AB: FFreeStr var_AC = "": var_A8 = ""
  loc_CB77B4: FFreeAd var_90 = ""
  loc_CB77BB: FFree1Var var_A0 = ""
  loc_CB77BE: FLdPr Me
  loc_CB77C1: MemLdStr global_96
  loc_CB77C4: LitStr vbNullString
  loc_CB77C7: NeStr
  loc_CB77C9: BranchF loc_CB77EA
  loc_CB77CC: FLdPr Me
  loc_CB77CF: MemLdStr global_96
  loc_CB77D2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB77D7: FLdPr Me
  loc_CB77DA: VCallAd Control_ID_NumeBoleTxt
  loc_CB77DD: CVarAd
  loc_CB77E1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CB77E6: FFree1Var var_A0 = ""
  loc_CB77E9: ExitProcHresult
  loc_CB77EA: FLdRfVar var_A8
  loc_CB77ED: FLdPr Me
  loc_CB77F0: VCallAd Control_ID_PeriBoleTxt
  loc_CB77F3: FStAdFunc var_90
  loc_CB77F6: FLdPr var_90
  loc_CB77F9:  = Me.Text
  loc_CB77FE: FLdRfVar var_AC
  loc_CB7801: FLdPr Me
  loc_CB7804: VCallAd Control_ID_NumeBoleTxt
  loc_CB7807: FStAdFunc var_A4
  loc_CB780A: FLdPr var_A4
  loc_CB780D:  = Me.Text
  loc_CB7812: ILdRf var_AC
  loc_CB7815: CI4Str
  loc_CB7816: ILdRf var_A8
  loc_CB7819: CI2Str
  loc_CB781B: ImpAdCallI2 Proc_18_98_AF2C9C(, )
  loc_CB7820: FStStrNoPop var_B0
  loc_CB7823: FLdPr Me
  loc_CB7826: MemStStrCopy
  loc_CB782A: FFreeStr var_A8 = "": var_AC = ""
  loc_CB7833: FFreeAd var_90 = ""
  loc_CB783A: FLdPr Me
  loc_CB783D: MemLdStr global_96
  loc_CB7840: LitStr vbNullString
  loc_CB7843: NeStr
  loc_CB7845: BranchF loc_CB7854
  loc_CB7848: FLdPr Me
  loc_CB784B: MemLdStr global_96
  loc_CB784E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB7853: ExitProcHresult
  loc_CB7854: LitStr "SELECT * FROM boleto "
  loc_CB7857: LitStr " WHERE PeriBole = "
  loc_CB785A: ConcatStr
  loc_CB785B: FStStrNoPop var_AC
  loc_CB785E: FLdRfVar var_A8
  loc_CB7861: FLdPr Me
  loc_CB7864: VCallAd Control_ID_PeriBoleTxt
  loc_CB7867: FStAdFunc var_90
  loc_CB786A: FLdPr var_90
  loc_CB786D:  = Me.Text
  loc_CB7872: ILdRf var_A8
  loc_CB7875: ConcatStr
  loc_CB7876: FStStrNoPop var_B0
  loc_CB7879: LitStr " AND NumeBole = "
  loc_CB787C: ConcatStr
  loc_CB787D: FStStrNoPop var_B8
  loc_CB7880: FLdRfVar var_B4
  loc_CB7883: FLdPr Me
  loc_CB7886: VCallAd Control_ID_NumeBoleTxt
  loc_CB7889: FStAdFunc var_A4
  loc_CB788C: FLdPr var_A4
  loc_CB788F:  = Me.Text
  loc_CB7894: ILdRf var_B4
  loc_CB7897: ConcatStr
  loc_CB7898: FStStrNoPop var_BC
  loc_CB789B: LitStr " ORDER BY PeriBole, NumeBole"
  loc_CB789E: ConcatStr
  loc_CB789F: FStStrNoPop var_C0
  loc_CB78A2: FLdPr Me
  loc_CB78A5: MemLdRfVar from_stack_1.global_56
  loc_CB78A8: NewIfNullPr clsboleto
  loc_CB78AB: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CB78B0: FFreeStr var_AC = "": var_A8 = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = ""
  loc_CB78C1: FFreeAd var_90 = ""
  loc_CB78C8: FLdRfVar var_C4
  loc_CB78CB: FLdPr Me
  loc_CB78CE: MemLdRfVar from_stack_1.global_56
  loc_CB78D1: NewIfNullPr clsboleto
  loc_CB78D4: from_stack_1 = clsboleto.RecordCount
  loc_CB78D9: ILdRf var_C4
  loc_CB78DC: LitI4 1
  loc_CB78E1: EqI4
  loc_CB78E2: BranchF loc_CB981E
  loc_CB78E5: LitVarStr var_D4, vbNullString
  loc_CB78EA: PopAdLdVar
  loc_CB78EB: FLdPr Me
  loc_CB78EE: VCallAd Control_ID_FeenAcpaMsk
  loc_CB78F1: FStAdFunc var_90
  loc_CB78F4: FLdPr var_90
  loc_CB78F7: LateIdSt
  loc_CB78FC: FFree1Ad var_90
  loc_CB78FF: LitVarStr var_D4, vbNullString
  loc_CB7904: PopAdLdVar
  loc_CB7905: FLdPr Me
  loc_CB7908: VCallAd Control_ID_FepaAcpaMsk
  loc_CB790B: FStAdFunc var_90
  loc_CB790E: FLdPr var_90
  loc_CB7911: LateIdSt
  loc_CB7916: FFree1Ad var_90
  loc_CB7919: LitStr "START TRANSACTION;"
  loc_CB791C: FLdPr Me
  loc_CB791F: MemStStrCopy
  loc_CB7923: FLdPr Me
  loc_CB7926: VCallAd Control_ID_FeenAcpaMsk
  loc_CB7929: FStAdFunc var_90
  loc_CB792C: FLdPr var_90
  loc_CB792F: LateIdLdVar var_A0 DispID_15 0
  loc_CB7936: PopAd
  loc_CB7938: FLdRfVar var_A8
  loc_CB793B: FLdPr Me
  loc_CB793E: VCallAd Control_ID_NumeAcpaTxt
  loc_CB7941: FStAdFunc var_A4
  loc_CB7944: FLdPr var_A4
  loc_CB7947:  = Me.Text
  loc_CB794C: FLdRfVar var_B0
  loc_CB794F: ILdRf var_A8
  loc_CB7952: CI2Str
  loc_CB7954: FLdRfVar var_A0
  loc_CB7957: CStrVarTmp
  loc_CB7958: FStStrNoPop var_AC
  loc_CB795B: FLdPr Me
  loc_CB795E: MemLdRfVar from_stack_1.global_52
  loc_CB7961: NewIfNullPr clsacrepago
  loc_CB7964: from_stack_3v = clsacrepago.ValidaClave(from_stack_1v, from_stack_2v)
  loc_CB7969: ILdRf var_B0
  loc_CB796C: LitStr vbNullString
  loc_CB796F: EqStr
  loc_CB7971: FFreeStr var_AC = "": var_A8 = ""
  loc_CB797A: FFreeAd var_90 = ""
  loc_CB7981: FFree1Var var_A0 = ""
  loc_CB7984: BranchF loc_CB7B51
  loc_CB7987: FLdPr Me
  loc_CB798A: VCallAd Control_ID_FeenAcpaMsk
  loc_CB798D: FStAdFunc var_90
  loc_CB7990: FLdPr var_90
  loc_CB7993: LateIdLdVar var_A0 DispID_15 0
  loc_CB799A: PopAd
  loc_CB799C: LitI2_Byte 0
  loc_CB799E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB79A3: FStFPR8 var_1D0
  loc_CB79A6: FLdPr Me
  loc_CB79A9: VCallAd Control_ID_FepaAcpaMsk
  loc_CB79AC: FStAdFunc var_150
  loc_CB79AF: FLdPr var_150
  loc_CB79B2: LateIdLdVar var_160 DispID_15 0
  loc_CB79B9: PopAd
  loc_CB79BB: FLdRfVar var_1A4
  loc_CB79BE: FLdPr Me
  loc_CB79C1: MemLdRfVar from_stack_1.global_56
  loc_CB79C4: NewIfNullPr clsboleto
  loc_CB79C7: from_stack_1 = clsboleto.TotaBole
  loc_CB79CC: FLdPr Me
  loc_CB79CF: MemLdStr global_100
  loc_CB79D2: LitStr " INSERT INTO acrepago (FeenAcpa,NumeAcpa,ActuAcpa,CodiEnre,FealAcpa,FepaAcpa,TocoAcpa,ImpoAcpa,ObseAcpa,CodiUsua,ALtaUsua,AltaFeho) VALUES ('"
  loc_CB79D5: ConcatStr
  loc_CB79D6: FStStrNoPop var_A8
  loc_CB79D9: LitI4 1
  loc_CB79DE: LitI4 1
  loc_CB79E3: LitVarStr var_D4, "yyyy-mm-dd"
  loc_CB79E8: FStVarCopyObj var_104
  loc_CB79EB: FLdRfVar var_104
  loc_CB79EE: FLdRfVar var_A0
  loc_CB79F1: CStrVarTmp
  loc_CB79F2: CVarStr var_F4
  loc_CB79F5: ImpAdCallI2 Format$(, )
  loc_CB79FA: FStStrNoPop var_AC
  loc_CB79FD: ConcatStr
  loc_CB79FE: FStStrNoPop var_B0
  loc_CB7A01: LitStr "',"
  loc_CB7A04: ConcatStr
  loc_CB7A05: FStStrNoPop var_B8
  loc_CB7A08: FLdRfVar var_B4
  loc_CB7A0B: FLdPr Me
  loc_CB7A0E: VCallAd Control_ID_NumeAcpaTxt
  loc_CB7A11: FStAdFunc var_A4
  loc_CB7A14: FLdPr var_A4
  loc_CB7A17:  = Me.Text
  loc_CB7A1C: ILdRf var_B4
  loc_CB7A1F: ConcatStr
  loc_CB7A20: FStStrNoPop var_BC
  loc_CB7A23: LitStr ",'No',"
  loc_CB7A26: ConcatStr
  loc_CB7A27: FStStrNoPop var_10C
  loc_CB7A2A: FLdRfVar var_C0
  loc_CB7A2D: FLdPr Me
  loc_CB7A30: VCallAd Control_ID_CodiEnreTxt
  loc_CB7A33: FStAdFunc var_108
  loc_CB7A36: FLdPr var_108
  loc_CB7A39:  = Me.Text
  loc_CB7A3E: ILdRf var_C0
  loc_CB7A41: ConcatStr
  loc_CB7A42: FStStrNoPop var_110
  loc_CB7A45: LitStr ",'"
  loc_CB7A48: ConcatStr
  loc_CB7A49: FStStrNoPop var_144
  loc_CB7A4C: LitI4 1
  loc_CB7A51: LitI4 1
  loc_CB7A56: LitVarStr var_130, "yyyy-mm-dd"
  loc_CB7A5B: FStVarCopyObj var_140
  loc_CB7A5E: FLdRfVar var_140
  loc_CB7A61: FLdFPR8 var_1D0
  loc_CB7A64: CVarDate var_120
  loc_CB7A68: ImpAdCallI2 Format$(, )
  loc_CB7A6D: FStStrNoPop var_148
  loc_CB7A70: ConcatStr
  loc_CB7A71: FStStrNoPop var_14C
  loc_CB7A74: LitStr "','"
  loc_CB7A77: ConcatStr
  loc_CB7A78: FStStrNoPop var_194
  loc_CB7A7B: LitI4 1
  loc_CB7A80: LitI4 1
  loc_CB7A85: LitVarStr var_180, "yyyy-mm-dd"
  loc_CB7A8A: FStVarCopyObj var_190
  loc_CB7A8D: FLdRfVar var_190
  loc_CB7A90: FLdRfVar var_160
  loc_CB7A93: CStrVarTmp
  loc_CB7A94: CVarStr var_170
  loc_CB7A97: ImpAdCallI2 Format$(, )
  loc_CB7A9C: FStStrNoPop var_198
  loc_CB7A9F: ConcatStr
  loc_CB7AA0: FStStrNoPop var_19C
  loc_CB7AA3: LitStr "',1,"
  loc_CB7AA6: ConcatStr
  loc_CB7AA7: FStStrNoPop var_1AC
  loc_CB7AAA: LitI4 0
  loc_CB7AAF: LitI4 -1
  loc_CB7AB4: LitI4 1
  loc_CB7AB9: LitStr "."
  loc_CB7ABC: LitStr ","
  loc_CB7ABF: FLdFPR8 var_1A4
  loc_CB7AC2: CStrR8
  loc_CB7AC4: FStStrNoPop var_1A8
  loc_CB7AC7: ImpAdCallI2 Replace(, , , , , )
  loc_CB7ACC: FStStrNoPop var_1B0
  loc_CB7ACF: ConcatStr
  loc_CB7AD0: FStStrNoPop var_1B4
  loc_CB7AD3: LitStr ",'','"
  loc_CB7AD6: ConcatStr
  loc_CB7AD7: FStStrNoPop var_1B8
  loc_CB7ADA: ImpAdLdI4 MemVar_D9302C
  loc_CB7ADD: ConcatStr
  loc_CB7ADE: FStStrNoPop var_1BC
  loc_CB7AE1: LitStr "','"
  loc_CB7AE4: ConcatStr
  loc_CB7AE5: FStStrNoPop var_1C0
  loc_CB7AE8: ImpAdLdI4 MemVar_D9302C
  loc_CB7AEB: ConcatStr
  loc_CB7AEC: FStStrNoPop var_1C4
  loc_CB7AEF: LitStr "',NOW());"
  loc_CB7AF2: ConcatStr
  loc_CB7AF3: FStStrNoPop var_1C8
  loc_CB7AF6: FLdPr Me
  loc_CB7AF9: MemStStrCopy
  loc_CB7AFD: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_10C = "": var_C0 = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_194 = "": var_198 = "": var_19C = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = ""
  loc_CB7B30: FFreeAd var_90 = "": var_A4 = "": var_108 = ""
  loc_CB7B3B: FFreeVar var_A0 = "": var_F4 = "": var_104 = "": var_120 = "": var_140 = "": var_160 = "": var_170 = ""
  loc_CB7B4E: Branch loc_CB7C4D
  loc_CB7B51: FLdRfVar var_1A4
  loc_CB7B54: FLdPr Me
  loc_CB7B57: MemLdRfVar from_stack_1.global_56
  loc_CB7B5A: NewIfNullPr clsboleto
  loc_CB7B5D: from_stack_1 = clsboleto.TotaBole
  loc_CB7B62: FLdPr Me
  loc_CB7B65: VCallAd Control_ID_FeenAcpaMsk
  loc_CB7B68: FStAdFunc var_90
  loc_CB7B6B: FLdPr var_90
  loc_CB7B6E: LateIdLdVar var_A0 DispID_15 0
  loc_CB7B75: PopAd
  loc_CB7B77: FLdPr Me
  loc_CB7B7A: MemLdStr global_100
  loc_CB7B7D: LitStr " UPDATE acrepago SET TocoAcpa = TocoAcpa + "
  loc_CB7B80: ConcatStr
  loc_CB7B81: FStStrNoPop var_A8
  loc_CB7B84: LitI2_Byte 1
  loc_CB7B86: CStrUI1
  loc_CB7B88: FStStrNoPop var_AC
  loc_CB7B8B: ConcatStr
  loc_CB7B8C: FStStrNoPop var_B0
  loc_CB7B8F: LitStr ", ImpoAcpa = ImpoAcpa + "
  loc_CB7B92: ConcatStr
  loc_CB7B93: FStStrNoPop var_B8
  loc_CB7B96: LitI4 0
  loc_CB7B9B: LitI4 -1
  loc_CB7BA0: LitI4 1
  loc_CB7BA5: LitStr "."
  loc_CB7BA8: LitStr ","
  loc_CB7BAB: FLdFPR8 var_1A4
  loc_CB7BAE: CStrR8
  loc_CB7BB0: FStStrNoPop var_B4
  loc_CB7BB3: ImpAdCallI2 Replace(, , , , , )
  loc_CB7BB8: FStStrNoPop var_BC
  loc_CB7BBB: ConcatStr
  loc_CB7BBC: FStStrNoPop var_C0
  loc_CB7BBF: LitStr " WHERE FeenAcpa = '"
  loc_CB7BC2: ConcatStr
  loc_CB7BC3: FStStrNoPop var_10C
  loc_CB7BC6: LitI4 1
  loc_CB7BCB: LitI4 1
  loc_CB7BD0: LitVarStr var_D4, "yyyy-mm-dd"
  loc_CB7BD5: FStVarCopyObj var_104
  loc_CB7BD8: FLdRfVar var_104
  loc_CB7BDB: FLdRfVar var_A0
  loc_CB7BDE: CStrVarTmp
  loc_CB7BDF: CVarStr var_F4
  loc_CB7BE2: ImpAdCallI2 Format$(, )
  loc_CB7BE7: FStStrNoPop var_110
  loc_CB7BEA: ConcatStr
  loc_CB7BEB: FStStrNoPop var_144
  loc_CB7BEE: LitStr "' AND NumeAcpa = "
  loc_CB7BF1: ConcatStr
  loc_CB7BF2: FStStrNoPop var_14C
  loc_CB7BF5: FLdRfVar var_148
  loc_CB7BF8: FLdPr Me
  loc_CB7BFB: VCallAd Control_ID_NumeAcpaTxt
  loc_CB7BFE: FStAdFunc var_A4
  loc_CB7C01: FLdPr var_A4
  loc_CB7C04:  = Me.Text
  loc_CB7C09: ILdRf var_148
  loc_CB7C0C: ConcatStr
  loc_CB7C0D: FStStrNoPop var_194
  loc_CB7C10: LitStr ";"
  loc_CB7C13: ConcatStr
  loc_CB7C14: FStStrNoPop var_198
  loc_CB7C17: FLdPr Me
  loc_CB7C1A: MemStStrCopy
  loc_CB7C1E: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = "": var_14C = "": var_148 = "": var_194 = ""
  loc_CB7C3D: FFreeAd var_90 = ""
  loc_CB7C44: FFreeVar var_A0 = "": var_F4 = ""
  loc_CB7C4D: FLdPr Me
  loc_CB7C50: VCallAd Control_ID_FeenAcpaMsk
  loc_CB7C53: FStAdFunc var_90
  loc_CB7C56: FLdPr var_90
  loc_CB7C59: LateIdLdVar var_A0 DispID_15 0
  loc_CB7C60: PopAd
  loc_CB7C62: LitI2_Byte 0
  loc_CB7C64: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB7C69: FStFPR8 var_2E8
  loc_CB7C6C: FLdPr Me
  loc_CB7C6F: VCallAd Control_ID_FepaAcpaMsk
  loc_CB7C72: FStAdFunc var_108
  loc_CB7C75: FLdPr var_108
  loc_CB7C78: LateIdLdVar var_160 DispID_15 0
  loc_CB7C7F: PopAd
  loc_CB7C81: FLdRfVar var_1A4
  loc_CB7C84: FLdPr Me
  loc_CB7C87: MemLdRfVar from_stack_1.global_56
  loc_CB7C8A: NewIfNullPr clsboleto
  loc_CB7C8D: from_stack_1 = clsboleto.CapiBole
  loc_CB7C92: FLdRfVar var_1D0
  loc_CB7C95: FLdPr Me
  loc_CB7C98: MemLdRfVar from_stack_1.global_56
  loc_CB7C9B: NewIfNullPr clsboleto
  loc_CB7C9E: from_stack_1 = clsboleto.DecaBole
  loc_CB7CA3: FLdRfVar var_234
  loc_CB7CA6: FLdPr Me
  loc_CB7CA9: MemLdRfVar from_stack_1.global_56
  loc_CB7CAC: NewIfNullPr clsboleto
  loc_CB7CAF: from_stack_1 = clsboleto.RecaBole
  loc_CB7CB4: FLdRfVar var_24C
  loc_CB7CB7: FLdPr Me
  loc_CB7CBA: MemLdRfVar from_stack_1.global_56
  loc_CB7CBD: NewIfNullPr clsboleto
  loc_CB7CC0: from_stack_1 = clsboleto.DereBole
  loc_CB7CC5: FLdRfVar var_264
  loc_CB7CC8: FLdPr Me
  loc_CB7CCB: MemLdRfVar from_stack_1.global_56
  loc_CB7CCE: NewIfNullPr clsboleto
  loc_CB7CD1: from_stack_1 = clsboleto.InteBole
  loc_CB7CD6: FLdRfVar var_27C
  loc_CB7CD9: FLdPr Me
  loc_CB7CDC: MemLdRfVar from_stack_1.global_56
  loc_CB7CDF: NewIfNullPr clsboleto
  loc_CB7CE2: from_stack_1 = clsboleto.ExenBole
  loc_CB7CE7: FLdRfVar var_294
  loc_CB7CEA: FLdPr Me
  loc_CB7CED: MemLdRfVar from_stack_1.global_56
  loc_CB7CF0: NewIfNullPr clsboleto
  loc_CB7CF3: from_stack_1 = clsboleto.CrafBole
  loc_CB7CF8: FLdRfVar var_2AC
  loc_CB7CFB: FLdPr Me
  loc_CB7CFE: MemLdRfVar from_stack_1.global_56
  loc_CB7D01: NewIfNullPr clsboleto
  loc_CB7D04: from_stack_1 = clsboleto.ApreBole
  loc_CB7D09: FLdRfVar var_2C4
  loc_CB7D0C: FLdPr Me
  loc_CB7D0F: MemLdRfVar from_stack_1.global_56
  loc_CB7D12: NewIfNullPr clsboleto
  loc_CB7D15: from_stack_1 = clsboleto.TotaBole
  loc_CB7D1A: FLdPr Me
  loc_CB7D1D: MemLdStr global_100
  loc_CB7D20: LitStr " INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua) VALUES ('"
  loc_CB7D23: ConcatStr
  loc_CB7D24: FStStrNoPop var_A8
  loc_CB7D27: LitI4 1
  loc_CB7D2C: LitI4 1
  loc_CB7D31: LitVarStr var_D4, "yyyy-mm-dd"
  loc_CB7D36: FStVarCopyObj var_104
  loc_CB7D39: FLdRfVar var_104
  loc_CB7D3C: FLdRfVar var_A0
  loc_CB7D3F: CStrVarTmp
  loc_CB7D40: CVarStr var_F4
  loc_CB7D43: ImpAdCallI2 Format$(, )
  loc_CB7D48: FStStrNoPop var_AC
  loc_CB7D4B: ConcatStr
  loc_CB7D4C: FStStrNoPop var_B0
  loc_CB7D4F: LitStr "',"
  loc_CB7D52: ConcatStr
  loc_CB7D53: FStStrNoPop var_B8
  loc_CB7D56: FLdRfVar var_B4
  loc_CB7D59: FLdPr Me
  loc_CB7D5C: VCallAd Control_ID_NumeAcpaTxt
  loc_CB7D5F: FStAdFunc var_A4
  loc_CB7D62: FLdPr var_A4
  loc_CB7D65:  = Me.Text
  loc_CB7D6A: ILdRf var_B4
  loc_CB7D6D: ConcatStr
  loc_CB7D6E: FStStrNoPop var_BC
  loc_CB7D71: LitStr ","
  loc_CB7D74: ConcatStr
  loc_CB7D75: FStStrNoPop var_C0
  loc_CB7D78: FLdRfVar var_8A
  loc_CB7D7B: FLdPr Me
  loc_CB7D7E: MemLdRfVar from_stack_1.global_56
  loc_CB7D81: NewIfNullPr clsboleto
  loc_CB7D84: from_stack_1 = clsboleto.PeriBole
  loc_CB7D89: FLdI2 var_8A
  loc_CB7D8C: CStrUI1
  loc_CB7D8E: FStStrNoPop var_10C
  loc_CB7D91: ConcatStr
  loc_CB7D92: FStStrNoPop var_110
  loc_CB7D95: LitStr ","
  loc_CB7D98: ConcatStr
  loc_CB7D99: FStStrNoPop var_144
  loc_CB7D9C: FLdRfVar var_C4
  loc_CB7D9F: FLdPr Me
  loc_CB7DA2: MemLdRfVar from_stack_1.global_56
  loc_CB7DA5: NewIfNullPr clsboleto
  loc_CB7DA8: from_stack_1 = clsboleto.NumeBole
  loc_CB7DAD: ILdRf var_C4
  loc_CB7DB0: CStrI4
  loc_CB7DB2: FStStrNoPop var_148
  loc_CB7DB5: ConcatStr
  loc_CB7DB6: FStStrNoPop var_14C
  loc_CB7DB9: LitStr ","
  loc_CB7DBC: ConcatStr
  loc_CB7DBD: FStStrNoPop var_194
  loc_CB7DC0: FLdRfVar var_1D2
  loc_CB7DC3: FLdPr Me
  loc_CB7DC6: MemLdRfVar from_stack_1.global_56
  loc_CB7DC9: NewIfNullPr clsboleto
  loc_CB7DCC: from_stack_1 = clsboleto.CodiOfic
  loc_CB7DD1: FLdI2 var_1D2
  loc_CB7DD4: CStrUI1
  loc_CB7DD6: FStStrNoPop var_198
  loc_CB7DD9: ConcatStr
  loc_CB7DDA: FStStrNoPop var_19C
  loc_CB7DDD: LitStr ",'"
  loc_CB7DE0: ConcatStr
  loc_CB7DE1: FStStrNoPop var_1AC
  loc_CB7DE4: FLdRfVar var_1A8
  loc_CB7DE7: FLdPr Me
  loc_CB7DEA: MemLdRfVar from_stack_1.global_56
  loc_CB7DED: NewIfNullPr clsboleto
  loc_CB7DF0: from_stack_1 = clsboleto.CuenCtct
  loc_CB7DF5: ILdRf var_1A8
  loc_CB7DF8: ConcatStr
  loc_CB7DF9: FStStrNoPop var_1B0
  loc_CB7DFC: LitStr "','"
  loc_CB7DFF: ConcatStr
  loc_CB7E00: FStStrNoPop var_1B8
  loc_CB7E03: FLdRfVar var_1B4
  loc_CB7E06: FLdPr Me
  loc_CB7E09: MemLdRfVar from_stack_1.global_56
  loc_CB7E0C: NewIfNullPr clsboleto
  loc_CB7E0F: from_stack_1 = clsboleto.CucuPers
  loc_CB7E14: ILdRf var_1B4
  loc_CB7E17: ConcatStr
  loc_CB7E18: FStStrNoPop var_1BC
  loc_CB7E1B: LitStr "','No','"
  loc_CB7E1E: ConcatStr
  loc_CB7E1F: FStStrNoPop var_1C4
  loc_CB7E22: FLdRfVar var_1C0
  loc_CB7E25: FLdPr Me
  loc_CB7E28: MemLdRfVar from_stack_1.global_56
  loc_CB7E2B: NewIfNullPr clsboleto
  loc_CB7E2E: from_stack_1 = clsboleto.TipoBole
  loc_CB7E33: ILdRf var_1C0
  loc_CB7E36: ConcatStr
  loc_CB7E37: FStStrNoPop var_1C8
  loc_CB7E3A: LitStr "','"
  loc_CB7E3D: ConcatStr
  loc_CB7E3E: FStStrNoPop var_1D8
  loc_CB7E41: LitI4 1
  loc_CB7E46: LitI4 1
  loc_CB7E4B: LitVarStr var_130, "yyyy-mm-dd"
  loc_CB7E50: FStVarCopyObj var_140
  loc_CB7E53: FLdRfVar var_140
  loc_CB7E56: FLdFPR8 var_2E8
  loc_CB7E59: CVarDate var_120
  loc_CB7E5D: ImpAdCallI2 Format$(, )
  loc_CB7E62: FStStrNoPop var_1DC
  loc_CB7E65: ConcatStr
  loc_CB7E66: FStStrNoPop var_1E0
  loc_CB7E69: LitStr "','"
  loc_CB7E6C: ConcatStr
  loc_CB7E6D: FStStrNoPop var_1E4
  loc_CB7E70: LitI4 1
  loc_CB7E75: LitI4 1
  loc_CB7E7A: LitVarStr var_180, "yyyy-mm-dd"
  loc_CB7E7F: FStVarCopyObj var_190
  loc_CB7E82: FLdRfVar var_190
  loc_CB7E85: FLdRfVar var_160
  loc_CB7E88: CStrVarTmp
  loc_CB7E89: CVarStr var_170
  loc_CB7E8C: ImpAdCallI2 Format$(, )
  loc_CB7E91: FStStrNoPop var_1E8
  loc_CB7E94: ConcatStr
  loc_CB7E95: FStStrNoPop var_1EC
  loc_CB7E98: LitStr "',"
  loc_CB7E9B: ConcatStr
  loc_CB7E9C: FStStrNoPop var_1F4
  loc_CB7E9F: FLdRfVar var_1F0
  loc_CB7EA2: FLdPr Me
  loc_CB7EA5: MemLdRfVar from_stack_1.global_56
  loc_CB7EA8: NewIfNullPr clsboleto
  loc_CB7EAB: from_stack_1 = clsboleto.CodiFapa
  loc_CB7EB0: ILdRf var_1F0
  loc_CB7EB3: CStrI4
  loc_CB7EB5: FStStrNoPop var_1F8
  loc_CB7EB8: ConcatStr
  loc_CB7EB9: FStStrNoPop var_1FC
  loc_CB7EBC: LitStr ","
  loc_CB7EBF: ConcatStr
  loc_CB7EC0: FStStrNoPop var_204
  loc_CB7EC3: FLdRfVar var_1FE
  loc_CB7EC6: FLdPr Me
  loc_CB7EC9: MemLdRfVar from_stack_1.global_56
  loc_CB7ECC: NewIfNullPr clsboleto
  loc_CB7ECF: from_stack_1 = clsboleto.CuotDefa
  loc_CB7ED4: FLdI2 var_1FE
  loc_CB7ED7: CStrUI1
  loc_CB7ED9: FStStrNoPop var_208
  loc_CB7EDC: ConcatStr
  loc_CB7EDD: FStStrNoPop var_20C
  loc_CB7EE0: LitStr ","
  loc_CB7EE3: ConcatStr
  loc_CB7EE4: FStStrNoPop var_214
  loc_CB7EE7: LitI4 0
  loc_CB7EEC: LitI4 -1
  loc_CB7EF1: LitI4 1
  loc_CB7EF6: LitStr "."
  loc_CB7EF9: LitStr ","
  loc_CB7EFC: FLdFPR8 var_1A4
  loc_CB7EFF: CStrR8
  loc_CB7F01: FStStrNoPop var_210
  loc_CB7F04: ImpAdCallI2 Replace(, , , , , )
  loc_CB7F09: FStStrNoPop var_218
  loc_CB7F0C: ConcatStr
  loc_CB7F0D: FStStrNoPop var_21C
  loc_CB7F10: LitStr ","
  loc_CB7F13: ConcatStr
  loc_CB7F14: FStStrNoPop var_224
  loc_CB7F17: LitI4 0
  loc_CB7F1C: LitI4 -1
  loc_CB7F21: LitI4 1
  loc_CB7F26: LitStr "."
  loc_CB7F29: LitStr ","
  loc_CB7F2C: FLdFPR8 var_1D0
  loc_CB7F2F: CStrR8
  loc_CB7F31: FStStrNoPop var_220
  loc_CB7F34: ImpAdCallI2 Replace(, , , , , )
  loc_CB7F39: FStStrNoPop var_228
  loc_CB7F3C: ConcatStr
  loc_CB7F3D: FStStrNoPop var_22C
  loc_CB7F40: LitStr ","
  loc_CB7F43: ConcatStr
  loc_CB7F44: FStStrNoPop var_23C
  loc_CB7F47: LitI4 0
  loc_CB7F4C: LitI4 -1
  loc_CB7F51: LitI4 1
  loc_CB7F56: LitStr "."
  loc_CB7F59: LitStr ","
  loc_CB7F5C: FLdFPR8 var_234
  loc_CB7F5F: CStrR8
  loc_CB7F61: FStStrNoPop var_238
  loc_CB7F64: ImpAdCallI2 Replace(, , , , , )
  loc_CB7F69: FStStrNoPop var_240
  loc_CB7F6C: ConcatStr
  loc_CB7F6D: FStStrNoPop var_244
  loc_CB7F70: LitStr ","
  loc_CB7F73: ConcatStr
  loc_CB7F74: FStStrNoPop var_254
  loc_CB7F77: LitI4 0
  loc_CB7F7C: LitI4 -1
  loc_CB7F81: LitI4 1
  loc_CB7F86: LitStr "."
  loc_CB7F89: LitStr ","
  loc_CB7F8C: FLdFPR8 var_24C
  loc_CB7F8F: CStrR8
  loc_CB7F91: FStStrNoPop var_250
  loc_CB7F94: ImpAdCallI2 Replace(, , , , , )
  loc_CB7F99: FStStrNoPop var_258
  loc_CB7F9C: ConcatStr
  loc_CB7F9D: FStStrNoPop var_25C
  loc_CB7FA0: LitStr ","
  loc_CB7FA3: ConcatStr
  loc_CB7FA4: FStStrNoPop var_26C
  loc_CB7FA7: LitI4 0
  loc_CB7FAC: LitI4 -1
  loc_CB7FB1: LitI4 1
  loc_CB7FB6: LitStr "."
  loc_CB7FB9: LitStr ","
  loc_CB7FBC: FLdFPR8 var_264
  loc_CB7FBF: CStrR8
  loc_CB7FC1: FStStrNoPop var_268
  loc_CB7FC4: ImpAdCallI2 Replace(, , , , , )
  loc_CB7FC9: FStStrNoPop var_270
  loc_CB7FCC: ConcatStr
  loc_CB7FCD: FStStrNoPop var_274
  loc_CB7FD0: LitStr ","
  loc_CB7FD3: ConcatStr
  loc_CB7FD4: FStStrNoPop var_284
  loc_CB7FD7: LitI4 0
  loc_CB7FDC: LitI4 -1
  loc_CB7FE1: LitI4 1
  loc_CB7FE6: LitStr "."
  loc_CB7FE9: LitStr ","
  loc_CB7FEC: FLdFPR8 var_27C
  loc_CB7FEF: CStrR8
  loc_CB7FF1: FStStrNoPop var_280
  loc_CB7FF4: ImpAdCallI2 Replace(, , , , , )
  loc_CB7FF9: FStStrNoPop var_288
  loc_CB7FFC: ConcatStr
  loc_CB7FFD: FStStrNoPop var_28C
  loc_CB8000: LitStr ","
  loc_CB8003: ConcatStr
  loc_CB8004: FStStrNoPop var_29C
  loc_CB8007: LitI4 0
  loc_CB800C: LitI4 -1
  loc_CB8011: LitI4 1
  loc_CB8016: LitStr "."
  loc_CB8019: LitStr ","
  loc_CB801C: FLdFPR8 var_294
  loc_CB801F: CStrR8
  loc_CB8021: FStStrNoPop var_298
  loc_CB8024: ImpAdCallI2 Replace(, , , , , )
  loc_CB8029: FStStrNoPop var_2A0
  loc_CB802C: ConcatStr
  loc_CB802D: FStStrNoPop var_2A4
  loc_CB8030: LitStr ","
  loc_CB8033: ConcatStr
  loc_CB8034: FStStrNoPop var_2B4
  loc_CB8037: LitI4 0
  loc_CB803C: LitI4 -1
  loc_CB8041: LitI4 1
  loc_CB8046: LitStr "."
  loc_CB8049: LitStr ","
  loc_CB804C: FLdFPR8 var_2AC
  loc_CB804F: CStrR8
  loc_CB8051: FStStrNoPop var_2B0
  loc_CB8054: ImpAdCallI2 Replace(, , , , , )
  loc_CB8059: FStStrNoPop var_2B8
  loc_CB805C: ConcatStr
  loc_CB805D: FStStrNoPop var_2BC
  loc_CB8060: LitStr ","
  loc_CB8063: ConcatStr
  loc_CB8064: FStStrNoPop var_2CC
  loc_CB8067: LitI4 0
  loc_CB806C: LitI4 -1
  loc_CB8071: LitI4 1
  loc_CB8076: LitStr "."
  loc_CB8079: LitStr ","
  loc_CB807C: FLdFPR8 var_2C4
  loc_CB807F: CStrR8
  loc_CB8081: FStStrNoPop var_2C8
  loc_CB8084: ImpAdCallI2 Replace(, , , , , )
  loc_CB8089: FStStrNoPop var_2D0
  loc_CB808C: ConcatStr
  loc_CB808D: FStStrNoPop var_2D4
  loc_CB8090: LitStr ",'"
  loc_CB8093: ConcatStr
  loc_CB8094: FStStrNoPop var_2D8
  loc_CB8097: ImpAdLdI4 MemVar_D9302C
  loc_CB809A: ConcatStr
  loc_CB809B: FStStrNoPop var_2DC
  loc_CB809E: LitStr "');"
  loc_CB80A1: ConcatStr
  loc_CB80A2: FStStrNoPop var_2E0
  loc_CB80A5: FLdPr Me
  loc_CB80A8: MemStStrCopy
  loc_CB80AC: FFreeStr var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_268 = "": var_26C = "": var_270 = "": var_274 = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_194 = "": var_198 = "": var_19C = "": var_1AC = "": var_1A8 = "": var_1B0 = "": var_1B8 = "": var_1B4 = "": var_1BC = "": var_1C4 = "": var_1C0 = "": var_1C8 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_CB8145: FFreeAd var_90 = "": var_A4 = ""
  loc_CB814E: FFreeVar var_A0 = "": var_F4 = "": var_104 = "": var_120 = "": var_140 = "": var_160 = "": var_170 = ""
  loc_CB8161: FLdRfVar var_F4
  loc_CB8164: FLdPr Me
  loc_CB8167: MemLdRfVar from_stack_1.global_56
  loc_CB816A: NewIfNullPr clsboleto
  loc_CB816D: from_stack_1 = clsboleto.FeveBole
  loc_CB8172: FLdPr Me
  loc_CB8175: VCallAd Control_ID_FepaAcpaMsk
  loc_CB8178: FStAdFunc var_90
  loc_CB817B: FLdPr var_90
  loc_CB817E: LateIdLdVar var_A0 DispID_15 0
  loc_CB8185: CStrVarTmp
  loc_CB8186: FStStrNoPop var_A8
  loc_CB8189: CDateStr
  loc_CB818B: FLdRfVar var_F4
  loc_CB818E: FnCDateVar
  loc_CB8190: GtR4
  loc_CB8191: FFree1Str var_A8
  loc_CB8194: FFree1Ad var_90
  loc_CB8197: FFreeVar var_A0 = "": var_F4 = ""
  loc_CB81A0: BranchF loc_CB839F
  loc_CB81A3: FLdPr Me
  loc_CB81A6: VCallAd Control_ID_FepaAcpaMsk
  loc_CB81A9: FStAdFunc var_90
  loc_CB81AC: FLdPr var_90
  loc_CB81AF: LateIdLdVar var_A0 DispID_15 0
  loc_CB81B6: PopAd
  loc_CB81B8: FLdRfVar var_120
  loc_CB81BB: FLdPr Me
  loc_CB81BE: MemLdRfVar from_stack_1.global_56
  loc_CB81C1: NewIfNullPr clsboleto
  loc_CB81C4: from_stack_1 = clsboleto.FeveBole
  loc_CB81C9: FLdRfVar var_1A4
  loc_CB81CC: FLdPr Me
  loc_CB81CF: MemLdRfVar from_stack_1.global_56
  loc_CB81D2: NewIfNullPr clsboleto
  loc_CB81D5: from_stack_1 = clsboleto.TotaBole
  loc_CB81DA: FLdRfVar var_170
  loc_CB81DD: FLdPr Me
  loc_CB81E0: MemLdRfVar from_stack_1.global_56
  loc_CB81E3: NewIfNullPr clsboleto
  loc_CB81E6: from_stack_1 = clsboleto.FeveBole
  loc_CB81EB: FLdPr Me
  loc_CB81EE: MemLdStr global_100
  loc_CB81F1: LitStr " INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo, DiasRebo) "
  loc_CB81F4: ConcatStr
  loc_CB81F5: FStStrNoPop var_A8
  loc_CB81F8: LitStr " VALUES ("
  loc_CB81FB: ConcatStr
  loc_CB81FC: FStStrNoPop var_AC
  loc_CB81FF: FLdRfVar var_8A
  loc_CB8202: FLdPr Me
  loc_CB8205: MemLdRfVar from_stack_1.global_56
  loc_CB8208: NewIfNullPr clsboleto
  loc_CB820B: from_stack_1 = clsboleto.CodiOfic
  loc_CB8210: FLdI2 var_8A
  loc_CB8213: CStrUI1
  loc_CB8215: FStStrNoPop var_B0
  loc_CB8218: ConcatStr
  loc_CB8219: FStStrNoPop var_B4
  loc_CB821C: LitStr ",'"
  loc_CB821F: ConcatStr
  loc_CB8220: FStStrNoPop var_BC
  loc_CB8223: FLdRfVar var_B8
  loc_CB8226: FLdPr Me
  loc_CB8229: MemLdRfVar from_stack_1.global_56
  loc_CB822C: NewIfNullPr clsboleto
  loc_CB822F: from_stack_1 = clsboleto.CuenCtct
  loc_CB8234: ILdRf var_B8
  loc_CB8237: ConcatStr
  loc_CB8238: FStStrNoPop var_C0
  loc_CB823B: LitStr "',"
  loc_CB823E: ConcatStr
  loc_CB823F: FStStrNoPop var_10C
  loc_CB8242: FLdRfVar var_1D2
  loc_CB8245: FLdPr Me
  loc_CB8248: MemLdRfVar from_stack_1.global_56
  loc_CB824B: NewIfNullPr clsboleto
  loc_CB824E: from_stack_1 = clsboleto.PeriBole
  loc_CB8253: FLdI2 var_1D2
  loc_CB8256: CStrUI1
  loc_CB8258: FStStrNoPop var_110
  loc_CB825B: ConcatStr
  loc_CB825C: FStStrNoPop var_144
  loc_CB825F: LitStr ","
  loc_CB8262: ConcatStr
  loc_CB8263: FStStrNoPop var_148
  loc_CB8266: FLdRfVar var_C4
  loc_CB8269: FLdPr Me
  loc_CB826C: MemLdRfVar from_stack_1.global_56
  loc_CB826F: NewIfNullPr clsboleto
  loc_CB8272: from_stack_1 = clsboleto.NumeBole
  loc_CB8277: ILdRf var_C4
  loc_CB827A: CStrI4
  loc_CB827C: FStStrNoPop var_14C
  loc_CB827F: ConcatStr
  loc_CB8280: FStStrNoPop var_194
  loc_CB8283: LitStr ",'No','"
  loc_CB8286: ConcatStr
  loc_CB8287: FStStrNoPop var_198
  loc_CB828A: LitI4 1
  loc_CB828F: LitI4 1
  loc_CB8294: LitVarStr var_D4, "yyyy-mm-dd"
  loc_CB8299: FStVarCopyObj var_104
  loc_CB829C: FLdRfVar var_104
  loc_CB829F: FLdRfVar var_A0
  loc_CB82A2: CStrVarTmp
  loc_CB82A3: CVarStr var_F4
  loc_CB82A6: ImpAdCallI2 Format$(, )
  loc_CB82AB: FStStrNoPop var_19C
  loc_CB82AE: ConcatStr
  loc_CB82AF: FStStrNoPop var_1A8
  loc_CB82B2: LitStr "','"
  loc_CB82B5: ConcatStr
  loc_CB82B6: FStStrNoPop var_1AC
  loc_CB82B9: LitI4 1
  loc_CB82BE: LitI4 1
  loc_CB82C3: LitVarStr var_E4, "yyyy-mm-dd"
  loc_CB82C8: FStVarCopyObj var_140
  loc_CB82CB: FLdRfVar var_140
  loc_CB82CE: FLdRfVar var_120
  loc_CB82D1: ImpAdCallI2 Format$(, )
  loc_CB82D6: FStStrNoPop var_1B0
  loc_CB82D9: ConcatStr
  loc_CB82DA: FStStrNoPop var_1B4
  loc_CB82DD: LitStr "',"
  loc_CB82E0: ConcatStr
  loc_CB82E1: FStStrNoPop var_1BC
  loc_CB82E4: LitI4 0
  loc_CB82E9: LitI4 -1
  loc_CB82EE: LitI4 1
  loc_CB82F3: LitStr "."
  loc_CB82F6: LitStr ","
  loc_CB82F9: FLdFPR8 var_1A4
  loc_CB82FC: CStrR8
  loc_CB82FE: FStStrNoPop var_1B8
  loc_CB8301: ImpAdCallI2 Replace(, , , , , )
  loc_CB8306: FStStrNoPop var_1C0
  loc_CB8309: ConcatStr
  loc_CB830A: FStStrNoPop var_1C4
  loc_CB830D: LitStr ","
  loc_CB8310: ConcatStr
  loc_CB8311: FStStrNoPop var_1D8
  loc_CB8314: FLdPr Me
  loc_CB8317: VCallAd Control_ID_FepaAcpaMsk
  loc_CB831A: FStAdFunc var_A4
  loc_CB831D: FLdPr var_A4
  loc_CB8320: LateIdLdVar var_160 DispID_15 0
  loc_CB8327: CStrVarTmp
  loc_CB8328: FStStrNoPop var_1C8
  loc_CB832B: CDateStr
  loc_CB832D: FLdRfVar var_170
  loc_CB8330: FnCDateVar
  loc_CB8332: SubR4
  loc_CB8333: CStrR8
  loc_CB8335: FStStrNoPop var_1DC
  loc_CB8338: ConcatStr
  loc_CB8339: FStStrNoPop var_1E0
  loc_CB833C: LitStr ");"
  loc_CB833F: ConcatStr
  loc_CB8340: FStStrNoPop var_1E4
  loc_CB8343: FLdPr Me
  loc_CB8346: MemStStrCopy
  loc_CB834A: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_BC = "": var_B8 = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_194 = "": var_198 = "": var_19C = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_CB8385: FFreeAd var_90 = ""
  loc_CB838C: FFreeVar var_A0 = "": var_F4 = "": var_104 = "": var_120 = "": var_140 = "": var_160 = "": var_170 = ""
  loc_CB839F: FLdPr Me
  loc_CB83A2: VCallAd Control_ID_FeenAcpaMsk
  loc_CB83A5: FStAdFunc var_90
  loc_CB83A8: FLdPr var_90
  loc_CB83AB: LateIdLdVar var_A0 DispID_15 0
  loc_CB83B2: PopAd
  loc_CB83B4: FLdPr Me
  loc_CB83B7: MemLdStr global_100
  loc_CB83BA: LitStr " UPDATE boleapre SET EstaBoap = 'Pagado', FeenAcpa = "
  loc_CB83BD: ConcatStr
  loc_CB83BE: FStStrNoPop var_A8
  loc_CB83C1: LitI4 1
  loc_CB83C6: LitI4 1
  loc_CB83CB: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_CB83D0: FStVarCopyObj var_104
  loc_CB83D3: FLdRfVar var_104
  loc_CB83D6: FLdRfVar var_A0
  loc_CB83D9: CStrVarTmp
  loc_CB83DA: CVarStr var_F4
  loc_CB83DD: ImpAdCallI2 Format$(, )
  loc_CB83E2: FStStrNoPop var_AC
  loc_CB83E5: ConcatStr
  loc_CB83E6: FStStrNoPop var_B0
  loc_CB83E9: LitStr ", FeacBoap = Null WHERE PeriBole = "
  loc_CB83EC: ConcatStr
  loc_CB83ED: FStStrNoPop var_B4
  loc_CB83F0: FLdRfVar var_8A
  loc_CB83F3: FLdPr Me
  loc_CB83F6: MemLdRfVar from_stack_1.global_56
  loc_CB83F9: NewIfNullPr clsboleto
  loc_CB83FC: from_stack_1 = clsboleto.PeriBole
  loc_CB8401: FLdI2 var_8A
  loc_CB8404: CStrUI1
  loc_CB8406: FStStrNoPop var_B8
  loc_CB8409: ConcatStr
  loc_CB840A: FStStrNoPop var_BC
  loc_CB840D: LitStr " AND NumeBole = "
  loc_CB8410: ConcatStr
  loc_CB8411: FStStrNoPop var_C0
  loc_CB8414: FLdRfVar var_C4
  loc_CB8417: FLdPr Me
  loc_CB841A: MemLdRfVar from_stack_1.global_56
  loc_CB841D: NewIfNullPr clsboleto
  loc_CB8420: from_stack_1 = clsboleto.NumeBole
  loc_CB8425: ILdRf var_C4
  loc_CB8428: CStrI4
  loc_CB842A: FStStrNoPop var_10C
  loc_CB842D: ConcatStr
  loc_CB842E: FStStrNoPop var_110
  loc_CB8431: LitStr ";"
  loc_CB8434: ConcatStr
  loc_CB8435: FStStrNoPop var_144
  loc_CB8438: FLdPr Me
  loc_CB843B: MemStStrCopy
  loc_CB843F: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = ""
  loc_CB8456: FFree1Ad var_90
  loc_CB8459: FFreeVar var_A0 = "": var_F4 = ""
  loc_CB8462: FLdPr Me
  loc_CB8465: MemLdStr global_100
  loc_CB8468: LitStr " UPDATE boleto SET EstaBole = 'Pagado' WHERE PeriBole = "
  loc_CB846B: ConcatStr
  loc_CB846C: FStStrNoPop var_A8
  loc_CB846F: FLdRfVar var_8A
  loc_CB8472: FLdPr Me
  loc_CB8475: MemLdRfVar from_stack_1.global_56
  loc_CB8478: NewIfNullPr clsboleto
  loc_CB847B: from_stack_1 = clsboleto.PeriBole
  loc_CB8480: FLdI2 var_8A
  loc_CB8483: CStrUI1
  loc_CB8485: FStStrNoPop var_AC
  loc_CB8488: ConcatStr
  loc_CB8489: FStStrNoPop var_B0
  loc_CB848C: LitStr " AND NumeBole = "
  loc_CB848F: ConcatStr
  loc_CB8490: FStStrNoPop var_B4
  loc_CB8493: FLdRfVar var_C4
  loc_CB8496: FLdPr Me
  loc_CB8499: MemLdRfVar from_stack_1.global_56
  loc_CB849C: NewIfNullPr clsboleto
  loc_CB849F: from_stack_1 = clsboleto.NumeBole
  loc_CB84A4: ILdRf var_C4
  loc_CB84A7: CStrI4
  loc_CB84A9: FStStrNoPop var_B8
  loc_CB84AC: ConcatStr
  loc_CB84AD: FStStrNoPop var_BC
  loc_CB84B0: LitStr ";"
  loc_CB84B3: ConcatStr
  loc_CB84B4: FStStrNoPop var_C0
  loc_CB84B7: FLdPr Me
  loc_CB84BA: MemStStrCopy
  loc_CB84BE: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_CB84CF: LitStr "SELECT detabole.*, concepto.TipaConc FROM detabole "
  loc_CB84D2: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CB84D5: ConcatStr
  loc_CB84D6: FStStrNoPop var_A8
  loc_CB84D9: ImpAdLdI2 MemVar_D93034
  loc_CB84DC: CStrUI1
  loc_CB84DE: FStStrNoPop var_AC
  loc_CB84E1: ConcatStr
  loc_CB84E2: FStStrNoPop var_B0
  loc_CB84E5: LitStr " AND concepto.CodiConc = detabole.CodiConc"
  loc_CB84E8: ConcatStr
  loc_CB84E9: FStStrNoPop var_B4
  loc_CB84EC: LitStr " WHERE PeriBole = "
  loc_CB84EF: ConcatStr
  loc_CB84F0: FStStrNoPop var_B8
  loc_CB84F3: FLdRfVar var_8A
  loc_CB84F6: FLdPr Me
  loc_CB84F9: MemLdRfVar from_stack_1.global_56
  loc_CB84FC: NewIfNullPr clsboleto
  loc_CB84FF: from_stack_1 = clsboleto.PeriBole
  loc_CB8504: FLdI2 var_8A
  loc_CB8507: CStrUI1
  loc_CB8509: FStStrNoPop var_BC
  loc_CB850C: ConcatStr
  loc_CB850D: FStStrNoPop var_C0
  loc_CB8510: LitStr " AND NumeBole = "
  loc_CB8513: ConcatStr
  loc_CB8514: FStStrNoPop var_10C
  loc_CB8517: FLdRfVar var_C4
  loc_CB851A: FLdPr Me
  loc_CB851D: MemLdRfVar from_stack_1.global_56
  loc_CB8520: NewIfNullPr clsboleto
  loc_CB8523: from_stack_1 = clsboleto.NumeBole
  loc_CB8528: ILdRf var_C4
  loc_CB852B: CStrI4
  loc_CB852D: FStStrNoPop var_110
  loc_CB8530: ConcatStr
  loc_CB8531: FStStrNoPop var_144
  loc_CB8534: LitStr " ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_CB8537: ConcatStr
  loc_CB8538: FStStrNoPop var_148
  loc_CB853B: FLdPr Me
  loc_CB853E: MemLdRfVar from_stack_1.global_68
  loc_CB8541: NewIfNullPr clsdetabole
  loc_CB8544: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CB8549: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = ""
  loc_CB8562: FLdRfVar var_C4
  loc_CB8565: FLdPr Me
  loc_CB8568: MemLdRfVar from_stack_1.global_68
  loc_CB856B: NewIfNullPr clsdetabole
  loc_CB856E: from_stack_1 = clsdetabole.RecordCount
  loc_CB8573: ILdRf var_C4
  loc_CB8576: LitI4 0
  loc_CB857B: GtI4
  loc_CB857C: BranchF loc_CB9485
  loc_CB857F: FLdPr Me
  loc_CB8582: MemLdRfVar from_stack_1.global_68
  loc_CB8585: NewIfNullPr clsdetabole
  loc_CB8588: Call clsdetabole.MoveFirst()
  loc_CB858D: FLdRfVar var_A8
  loc_CB8590: FLdPr Me
  loc_CB8593: MemLdRfVar from_stack_1.global_56
  loc_CB8596: NewIfNullPr clsboleto
  loc_CB8599: from_stack_1 = clsboleto.TipoBole
  loc_CB859E: ILdRf var_A8
  loc_CB85A1: LitStr "Anual"
  loc_CB85A4: EqStr
  loc_CB85A6: FFree1Str var_A8
  loc_CB85A9: BranchF loc_CB85D2
  loc_CB85AC: LitStr "Anual del "
  loc_CB85AF: FLdRfVar var_C4
  loc_CB85B2: FLdPr Me
  loc_CB85B5: MemLdRfVar from_stack_1.global_68
  loc_CB85B8: NewIfNullPr clsdetabole
  loc_CB85BB: from_stack_1 = clsdetabole.PeriCtct
  loc_CB85C0: ILdRf var_C4
  loc_CB85C3: CStrI4
  loc_CB85C5: FStStrNoPop var_A8
  loc_CB85C8: ConcatStr
  loc_CB85C9: FStStr var_88
  loc_CB85CC: FFree1Str var_A8
  loc_CB85CF: Branch loc_CB8640
  loc_CB85D2: FLdRfVar var_A8
  loc_CB85D5: FLdPr Me
  loc_CB85D8: MemLdRfVar from_stack_1.global_56
  loc_CB85DB: NewIfNullPr clsboleto
  loc_CB85DE: from_stack_1 = clsboleto.TipoBole
  loc_CB85E3: ILdRf var_A8
  loc_CB85E6: LitStr "Bimestral"
  loc_CB85E9: EqStr
  loc_CB85EB: FFree1Str var_A8
  loc_CB85EE: BranchF loc_CB863A
  loc_CB85F1: FLdRfVar var_8A
  loc_CB85F4: FLdPr Me
  loc_CB85F7: MemLdRfVar from_stack_1.global_68
  loc_CB85FA: NewIfNullPr clsdetabole
  loc_CB85FD: from_stack_1 = clsdetabole.BimeCtct
  loc_CB8602: FLdI2 var_8A
  loc_CB8605: CStrUI1
  loc_CB8607: FStStrNoPop var_A8
  loc_CB860A: LitStr "/"
  loc_CB860D: ConcatStr
  loc_CB860E: FStStrNoPop var_AC
  loc_CB8611: FLdRfVar var_C4
  loc_CB8614: FLdPr Me
  loc_CB8617: MemLdRfVar from_stack_1.global_68
  loc_CB861A: NewIfNullPr clsdetabole
  loc_CB861D: from_stack_1 = clsdetabole.PeriCtct
  loc_CB8622: ILdRf var_C4
  loc_CB8625: CStrI4
  loc_CB8627: FStStrNoPop var_B0
  loc_CB862A: ConcatStr
  loc_CB862B: FStStr var_88
  loc_CB862E: FFreeStr var_A8 = "": var_AC = ""
  loc_CB8637: Branch loc_CB8640
  loc_CB863A: LitStr vbNullString
  loc_CB863D: FStStrCopy var_88
  loc_CB8640: FLdRfVar var_8A
  loc_CB8643: FLdPr Me
  loc_CB8646: MemLdRfVar from_stack_1.global_68
  loc_CB8649: NewIfNullPr clsdetabole
  loc_CB864C: from_stack_1 = clsdetabole.EOF
  loc_CB8651: FLdI2 var_8A
  loc_CB8654: NotI4
  loc_CB8655: BranchF loc_CB9482
  loc_CB8658: LitI2_Byte 0
  loc_CB865A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB865F: CVarDate var_A0
  loc_CB8663: FLdRfVar var_F4
  loc_CB8666: ImpAdCallFPR4  = Year()
  loc_CB866B: FLdRfVar var_A8
  loc_CB866E: FLdPr Me
  loc_CB8671: MemLdRfVar from_stack_1.global_68
  loc_CB8674: NewIfNullPr clsdetabole
  loc_CB8677: from_stack_1 = clsdetabole.CodiConc
  loc_CB867C: ILdRf var_A8
  loc_CB867F: FLdRfVar var_F4
  loc_CB8682: CI2Var
  loc_CB8683: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CB8688: FStStrNoPop var_AC
  loc_CB868B: LitStr vbNullString
  loc_CB868E: EqStr
  loc_CB8690: FFreeStr var_A8 = ""
  loc_CB8697: FFreeVar var_A0 = ""
  loc_CB869E: BranchF loc_CB86DB
  loc_CB86A1: LitStr "El recurso: "
  loc_CB86A4: FLdRfVar var_A8
  loc_CB86A7: FLdPr Me
  loc_CB86AA: MemLdRfVar from_stack_1.global_68
  loc_CB86AD: NewIfNullPr clsdetabole
  loc_CB86B0: from_stack_1 = clsdetabole.CodiConc
  loc_CB86B5: ILdRf var_A8
  loc_CB86B8: ConcatStr
  loc_CB86B9: FStStrNoPop var_AC
  loc_CB86BC: LitStr " No tiene asociado ninguna cuenta contable de ingresos. No se ingresa el boleto."
  loc_CB86BF: ConcatStr
  loc_CB86C0: FStStrNoPop var_B0
  loc_CB86C3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB86C8: FFreeStr var_A8 = "": var_AC = ""
  loc_CB86D1: LitStr "ERRRROR"
  loc_CB86D4: FLdPr Me
  loc_CB86D7: MemStStrCopy
  loc_CB86DB: FLdRfVar var_A8
  loc_CB86DE: FLdPr Me
  loc_CB86E1: MemLdRfVar from_stack_1.global_68
  loc_CB86E4: NewIfNullPr clsdetabole
  loc_CB86E7: from_stack_1 = clsdetabole.CuenCtct
  loc_CB86EC: ILdRf var_A8
  loc_CB86EF: LitStr vbNullString
  loc_CB86F2: NeStr
  loc_CB86F4: FFree1Str var_A8
  loc_CB86F7: BranchF loc_CB87A5
  loc_CB86FA: FLdRfVar var_8A
  loc_CB86FD: FLdPr Me
  loc_CB8700: MemLdRfVar from_stack_1.global_68
  loc_CB8703: NewIfNullPr clsdetabole
  loc_CB8706: from_stack_1 = clsdetabole.CodiTimo
  loc_CB870B: FLdI2 var_8A
  loc_CB870E: LitI2_Byte 0
  loc_CB8710: EqI2
  loc_CB8711: BranchF loc_CB874E
  loc_CB8714: LitStr "El concepto: "
  loc_CB8717: FLdRfVar var_A8
  loc_CB871A: FLdPr Me
  loc_CB871D: MemLdRfVar from_stack_1.global_68
  loc_CB8720: NewIfNullPr clsdetabole
  loc_CB8723: from_stack_1 = clsdetabole.CodiConc
  loc_CB8728: ILdRf var_A8
  loc_CB872B: ConcatStr
  loc_CB872C: FStStrNoPop var_AC
  loc_CB872F: LitStr " No tiene asociado ningún tipo de movimiento de aforo. No se ingresa el boleto."
  loc_CB8732: ConcatStr
  loc_CB8733: FStStrNoPop var_B0
  loc_CB8736: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB873B: FFreeStr var_A8 = "": var_AC = ""
  loc_CB8744: LitStr "ERRRROR"
  loc_CB8747: FLdPr Me
  loc_CB874A: MemStStrCopy
  loc_CB874E: FLdRfVar var_8A
  loc_CB8751: FLdPr Me
  loc_CB8754: MemLdRfVar from_stack_1.global_68
  loc_CB8757: NewIfNullPr clsdetabole
  loc_CB875A: from_stack_1 = clsdetabole.TipaConc
  loc_CB875F: FLdUI1
  loc_CB8763: CI2UI1
  loc_CB8765: LitI2_Byte 0
  loc_CB8767: EqI2
  loc_CB8768: BranchF loc_CB87A5
  loc_CB876B: LitStr "El concepto: "
  loc_CB876E: FLdRfVar var_A8
  loc_CB8771: FLdPr Me
  loc_CB8774: MemLdRfVar from_stack_1.global_68
  loc_CB8777: NewIfNullPr clsdetabole
  loc_CB877A: from_stack_1 = clsdetabole.CodiConc
  loc_CB877F: ILdRf var_A8
  loc_CB8782: ConcatStr
  loc_CB8783: FStStrNoPop var_AC
  loc_CB8786: LitStr " No tiene asociado ningún tipo de movimiento de pago. No se ingresa el boleto."
  loc_CB8789: ConcatStr
  loc_CB878A: FStStrNoPop var_B0
  loc_CB878D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB8792: FFreeStr var_A8 = "": var_AC = ""
  loc_CB879B: LitStr "ERRRROR"
  loc_CB879E: FLdPr Me
  loc_CB87A1: MemStStrCopy
  loc_CB87A5: FLdRfVar var_A8
  loc_CB87A8: FLdPr Me
  loc_CB87AB: MemLdRfVar from_stack_1.global_56
  loc_CB87AE: NewIfNullPr clsboleto
  loc_CB87B1: from_stack_1 = clsboleto.TipoBole
  loc_CB87B6: ILdRf var_A8
  loc_CB87B9: LitStr "Anual"
  loc_CB87BC: EqStr
  loc_CB87BE: FFree1Str var_A8
  loc_CB87C1: BranchF loc_CB87CF
  loc_CB87C4: LitI2_Byte &H15
  loc_CB87C6: FLdPr Me
  loc_CB87C9: MemStI2 global_104
  loc_CB87CC: Branch loc_CB8816
  loc_CB87CF: FLdRfVar var_A8
  loc_CB87D2: FLdPr Me
  loc_CB87D5: MemLdRfVar from_stack_1.global_56
  loc_CB87D8: NewIfNullPr clsboleto
  loc_CB87DB: from_stack_1 = clsboleto.TipoBole
  loc_CB87E0: ILdRf var_A8
  loc_CB87E3: LitStr "Pago Anticipado"
  loc_CB87E6: EqStr
  loc_CB87E8: FFree1Str var_A8
  loc_CB87EB: BranchF loc_CB87F9
  loc_CB87EE: LitI2_Byte 5
  loc_CB87F0: FLdPr Me
  loc_CB87F3: MemStI2 global_104
  loc_CB87F6: Branch loc_CB8816
  loc_CB87F9: FLdRfVar var_8A
  loc_CB87FC: FLdPr Me
  loc_CB87FF: MemLdRfVar from_stack_1.global_68
  loc_CB8802: NewIfNullPr clsdetabole
  loc_CB8805: from_stack_1 = clsdetabole.TipaConc
  loc_CB880A: FLdUI1
  loc_CB880E: CI2UI1
  loc_CB8810: FLdPr Me
  loc_CB8813: MemStI2 global_104
  loc_CB8816: FLdPr Me
  loc_CB8819: VCallAd Control_ID_FeenAcpaMsk
  loc_CB881C: FStAdFunc var_90
  loc_CB881F: FLdPr var_90
  loc_CB8822: LateIdLdVar var_A0 DispID_15 0
  loc_CB8829: PopAd
  loc_CB882B: FLdRfVar var_1A4
  loc_CB882E: FLdPr Me
  loc_CB8831: MemLdRfVar from_stack_1.global_68
  loc_CB8834: NewIfNullPr clsdetabole
  loc_CB8837: from_stack_1 = clsdetabole.CapiDebo
  loc_CB883C: FLdRfVar var_1D0
  loc_CB883F: FLdPr Me
  loc_CB8842: MemLdRfVar from_stack_1.global_68
  loc_CB8845: NewIfNullPr clsdetabole
  loc_CB8848: from_stack_1 = clsdetabole.DecaDebo
  loc_CB884D: FLdRfVar var_234
  loc_CB8850: FLdPr Me
  loc_CB8853: MemLdRfVar from_stack_1.global_68
  loc_CB8856: NewIfNullPr clsdetabole
  loc_CB8859: from_stack_1 = clsdetabole.RecaDebo
  loc_CB885E: FLdRfVar var_24C
  loc_CB8861: FLdPr Me
  loc_CB8864: MemLdRfVar from_stack_1.global_68
  loc_CB8867: NewIfNullPr clsdetabole
  loc_CB886A: from_stack_1 = clsdetabole.DereDebo
  loc_CB886F: FLdRfVar var_264
  loc_CB8872: FLdPr Me
  loc_CB8875: MemLdRfVar from_stack_1.global_68
  loc_CB8878: NewIfNullPr clsdetabole
  loc_CB887B: from_stack_1 = clsdetabole.InteDebo
  loc_CB8880: FLdRfVar var_27C
  loc_CB8883: FLdPr Me
  loc_CB8886: MemLdRfVar from_stack_1.global_68
  loc_CB8889: NewIfNullPr clsdetabole
  loc_CB888C: from_stack_1 = clsdetabole.ExenDebo
  loc_CB8891: FLdRfVar var_294
  loc_CB8894: FLdPr Me
  loc_CB8897: MemLdRfVar from_stack_1.global_68
  loc_CB889A: NewIfNullPr clsdetabole
  loc_CB889D: from_stack_1 = clsdetabole.CrafDebo
  loc_CB88A2: FLdRfVar var_2AC
  loc_CB88A5: FLdPr Me
  loc_CB88A8: MemLdRfVar from_stack_1.global_68
  loc_CB88AB: NewIfNullPr clsdetabole
  loc_CB88AE: from_stack_1 = clsdetabole.ApreDebo
  loc_CB88B3: FLdRfVar var_2C4
  loc_CB88B6: FLdPr Me
  loc_CB88B9: MemLdRfVar from_stack_1.global_68
  loc_CB88BC: NewIfNullPr clsdetabole
  loc_CB88BF: from_stack_1 = clsdetabole.TotaDebo
  loc_CB88C4: FLdPr Me
  loc_CB88C7: MemLdStr global_100
  loc_CB88CA: LitStr " INSERT INTO detapago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,CodiTili,NumeLiqu,ActuDepa,CodiOfic,CuenCtct,TipoCtct,CodiFapa,CuotDefa,NumeApre,CodiTimo,PeriInfo,CodiConc,CapiDepa,DecaDepa,RecaDepa,DereDepa,InteDepa,ExenDepa,CrafDepa,ApreDepa,TotaDepa) VALUES ('"
  loc_CB88CD: ConcatStr
  loc_CB88CE: FStStrNoPop var_A8
  loc_CB88D1: LitI4 1
  loc_CB88D6: LitI4 1
  loc_CB88DB: LitVarStr var_D4, "yyyy-mm-dd"
  loc_CB88E0: FStVarCopyObj var_104
  loc_CB88E3: FLdRfVar var_104
  loc_CB88E6: FLdRfVar var_A0
  loc_CB88E9: CStrVarTmp
  loc_CB88EA: CVarStr var_F4
  loc_CB88ED: ImpAdCallI2 Format$(, )
  loc_CB88F2: FStStrNoPop var_AC
  loc_CB88F5: ConcatStr
  loc_CB88F6: FStStrNoPop var_B0
  loc_CB88F9: LitStr "',"
  loc_CB88FC: ConcatStr
  loc_CB88FD: FStStrNoPop var_B8
  loc_CB8900: FLdRfVar var_B4
  loc_CB8903: FLdPr Me
  loc_CB8906: VCallAd Control_ID_NumeAcpaTxt
  loc_CB8909: FStAdFunc var_A4
  loc_CB890C: FLdPr var_A4
  loc_CB890F:  = Me.Text
  loc_CB8914: ILdRf var_B4
  loc_CB8917: ConcatStr
  loc_CB8918: FStStrNoPop var_BC
  loc_CB891B: LitStr ","
  loc_CB891E: ConcatStr
  loc_CB891F: FStStrNoPop var_C0
  loc_CB8922: FLdRfVar var_8A
  loc_CB8925: FLdPr Me
  loc_CB8928: MemLdRfVar from_stack_1.global_68
  loc_CB892B: NewIfNullPr clsdetabole
  loc_CB892E: from_stack_1 = clsdetabole.PeriBole
  loc_CB8933: FLdI2 var_8A
  loc_CB8936: CStrUI1
  loc_CB8938: FStStrNoPop var_10C
  loc_CB893B: ConcatStr
  loc_CB893C: FStStrNoPop var_110
  loc_CB893F: LitStr ","
  loc_CB8942: ConcatStr
  loc_CB8943: FStStrNoPop var_144
  loc_CB8946: FLdRfVar var_C4
  loc_CB8949: FLdPr Me
  loc_CB894C: MemLdRfVar from_stack_1.global_68
  loc_CB894F: NewIfNullPr clsdetabole
  loc_CB8952: from_stack_1 = clsdetabole.NumeBole
  loc_CB8957: ILdRf var_C4
  loc_CB895A: CStrI4
  loc_CB895C: FStStrNoPop var_148
  loc_CB895F: ConcatStr
  loc_CB8960: FStStrNoPop var_14C
  loc_CB8963: LitStr ","
  loc_CB8966: ConcatStr
  loc_CB8967: FStStrNoPop var_194
  loc_CB896A: FLdRfVar var_1F0
  loc_CB896D: FLdPr Me
  loc_CB8970: MemLdRfVar from_stack_1.global_68
  loc_CB8973: NewIfNullPr clsdetabole
  loc_CB8976: from_stack_1 = clsdetabole.PeriCtct
  loc_CB897B: ILdRf var_1F0
  loc_CB897E: CStrI4
  loc_CB8980: FStStrNoPop var_198
  loc_CB8983: ConcatStr
  loc_CB8984: FStStrNoPop var_19C
  loc_CB8987: LitStr ","
  loc_CB898A: ConcatStr
  loc_CB898B: FStStrNoPop var_1A8
  loc_CB898E: FLdRfVar var_1D2
  loc_CB8991: FLdPr Me
  loc_CB8994: MemLdRfVar from_stack_1.global_68
  loc_CB8997: NewIfNullPr clsdetabole
  loc_CB899A: from_stack_1 = clsdetabole.BimeCtct
  loc_CB899F: FLdI2 var_1D2
  loc_CB89A2: CStrUI1
  loc_CB89A4: FStStrNoPop var_1AC
  loc_CB89A7: ConcatStr
  loc_CB89A8: FStStrNoPop var_1B0
  loc_CB89AB: LitStr ","
  loc_CB89AE: ConcatStr
  loc_CB89AF: FStStrNoPop var_1B4
  loc_CB89B2: FLdRfVar var_2EC
  loc_CB89B5: FLdPr Me
  loc_CB89B8: MemLdRfVar from_stack_1.global_68
  loc_CB89BB: NewIfNullPr clsdetabole
  loc_CB89BE: from_stack_1 = clsdetabole.NumeCtct
  loc_CB89C3: ILdRf var_2EC
  loc_CB89C6: CStrI4
  loc_CB89C8: FStStrNoPop var_1B8
  loc_CB89CB: ConcatStr
  loc_CB89CC: FStStrNoPop var_1BC
  loc_CB89CF: LitStr ","
  loc_CB89D2: ConcatStr
  loc_CB89D3: FStStrNoPop var_1C0
  loc_CB89D6: FLdRfVar var_1FE
  loc_CB89D9: FLdPr Me
  loc_CB89DC: MemLdRfVar from_stack_1.global_68
  loc_CB89DF: NewIfNullPr clsdetabole
  loc_CB89E2: from_stack_1 = clsdetabole.MoviCtct
  loc_CB89E7: FLdI2 var_1FE
  loc_CB89EA: CStrUI1
  loc_CB89EC: FStStrNoPop var_1C4
  loc_CB89EF: ConcatStr
  loc_CB89F0: FStStrNoPop var_1C8
  loc_CB89F3: LitStr ","
  loc_CB89F6: ConcatStr
  loc_CB89F7: FStStrNoPop var_1D8
  loc_CB89FA: FLdRfVar var_2EE
  loc_CB89FD: FLdPr Me
  loc_CB8A00: MemLdRfVar from_stack_1.global_68
  loc_CB8A03: NewIfNullPr clsdetabole
  loc_CB8A06: from_stack_1 = clsdetabole.MoviDebo
  loc_CB8A0B: FLdI2 var_2EE
  loc_CB8A0E: CStrUI1
  loc_CB8A10: FStStrNoPop var_1DC
  loc_CB8A13: ConcatStr
  loc_CB8A14: FStStrNoPop var_1E0
  loc_CB8A17: LitStr ","
  loc_CB8A1A: ConcatStr
  loc_CB8A1B: FStStrNoPop var_1E4
  loc_CB8A1E: FLdRfVar var_2F0
  loc_CB8A21: FLdPr Me
  loc_CB8A24: MemLdRfVar from_stack_1.global_68
  loc_CB8A27: NewIfNullPr clsdetabole
  loc_CB8A2A: from_stack_1 = clsdetabole.CodiTili
  loc_CB8A2F: FLdUI1
  loc_CB8A33: CStrI2
  loc_CB8A35: FStStrNoPop var_1E8
  loc_CB8A38: ConcatStr
  loc_CB8A39: FStStrNoPop var_1EC
  loc_CB8A3C: LitStr ","
  loc_CB8A3F: ConcatStr
  loc_CB8A40: FStStrNoPop var_1F4
  loc_CB8A43: FLdRfVar var_2F2
  loc_CB8A46: FLdPr Me
  loc_CB8A49: MemLdRfVar from_stack_1.global_68
  loc_CB8A4C: NewIfNullPr clsdetabole
  loc_CB8A4F: from_stack_1 = clsdetabole.NumeLiqu
  loc_CB8A54: FLdI2 var_2F2
  loc_CB8A57: CStrUI1
  loc_CB8A59: FStStrNoPop var_1F8
  loc_CB8A5C: ConcatStr
  loc_CB8A5D: FStStrNoPop var_1FC
  loc_CB8A60: LitStr ",'No',"
  loc_CB8A63: ConcatStr
  loc_CB8A64: FStStrNoPop var_204
  loc_CB8A67: FLdRfVar var_2F4
  loc_CB8A6A: FLdPr Me
  loc_CB8A6D: MemLdRfVar from_stack_1.global_68
  loc_CB8A70: NewIfNullPr clsdetabole
  loc_CB8A73: from_stack_1 = clsdetabole.CodiOfic
  loc_CB8A78: FLdUI1
  loc_CB8A7C: CStrI2
  loc_CB8A7E: FStStrNoPop var_208
  loc_CB8A81: ConcatStr
  loc_CB8A82: FStStrNoPop var_20C
  loc_CB8A85: LitStr ",'"
  loc_CB8A88: ConcatStr
  loc_CB8A89: FStStrNoPop var_214
  loc_CB8A8C: FLdRfVar var_210
  loc_CB8A8F: FLdPr Me
  loc_CB8A92: MemLdRfVar from_stack_1.global_68
  loc_CB8A95: NewIfNullPr clsdetabole
  loc_CB8A98: from_stack_1 = clsdetabole.CuenCtct
  loc_CB8A9D: ILdRf var_210
  loc_CB8AA0: ConcatStr
  loc_CB8AA1: FStStrNoPop var_218
  loc_CB8AA4: LitStr "','"
  loc_CB8AA7: ConcatStr
  loc_CB8AA8: FStStrNoPop var_220
  loc_CB8AAB: FLdRfVar var_21C
  loc_CB8AAE: FLdPr Me
  loc_CB8AB1: MemLdRfVar from_stack_1.global_68
  loc_CB8AB4: NewIfNullPr clsdetabole
  loc_CB8AB7: from_stack_1 = clsdetabole.TipoCtct
  loc_CB8ABC: ILdRf var_21C
  loc_CB8ABF: ConcatStr
  loc_CB8AC0: FStStrNoPop var_224
  loc_CB8AC3: LitStr "',"
  loc_CB8AC6: ConcatStr
  loc_CB8AC7: FStStrNoPop var_228
  loc_CB8ACA: FLdRfVar var_2F8
  loc_CB8ACD: FLdPr Me
  loc_CB8AD0: MemLdRfVar from_stack_1.global_68
  loc_CB8AD3: NewIfNullPr clsdetabole
  loc_CB8AD6: from_stack_1 = clsdetabole.CodiFapa
  loc_CB8ADB: ILdRf var_2F8
  loc_CB8ADE: CStrI4
  loc_CB8AE0: FStStrNoPop var_22C
  loc_CB8AE3: ConcatStr
  loc_CB8AE4: FStStrNoPop var_238
  loc_CB8AE7: LitStr ","
  loc_CB8AEA: ConcatStr
  loc_CB8AEB: FStStrNoPop var_23C
  loc_CB8AEE: FLdRfVar var_2FA
  loc_CB8AF1: FLdPr Me
  loc_CB8AF4: MemLdRfVar from_stack_1.global_68
  loc_CB8AF7: NewIfNullPr clsdetabole
  loc_CB8AFA: from_stack_1 = clsdetabole.CuotDefa
  loc_CB8AFF: FLdI2 var_2FA
  loc_CB8B02: CStrUI1
  loc_CB8B04: FStStrNoPop var_240
  loc_CB8B07: ConcatStr
  loc_CB8B08: FStStrNoPop var_244
  loc_CB8B0B: LitStr ","
  loc_CB8B0E: ConcatStr
  loc_CB8B0F: FStStrNoPop var_250
  loc_CB8B12: FLdRfVar var_300
  loc_CB8B15: FLdPr Me
  loc_CB8B18: MemLdRfVar from_stack_1.global_68
  loc_CB8B1B: NewIfNullPr clsdetabole
  loc_CB8B1E: from_stack_1 = clsdetabole.NumeApre
  loc_CB8B23: ILdRf var_300
  loc_CB8B26: CStrI4
  loc_CB8B28: FStStrNoPop var_254
  loc_CB8B2B: ConcatStr
  loc_CB8B2C: FStStrNoPop var_258
  loc_CB8B2F: LitStr ","
  loc_CB8B32: ConcatStr
  loc_CB8B33: FStStrNoPop var_25C
  loc_CB8B36: FLdPr Me
  loc_CB8B39: MemLdI2 global_104
  loc_CB8B3C: CStrUI1
  loc_CB8B3E: FStStrNoPop var_268
  loc_CB8B41: ConcatStr
  loc_CB8B42: FStStrNoPop var_26C
  loc_CB8B45: LitStr ","
  loc_CB8B48: ConcatStr
  loc_CB8B49: FStStrNoPop var_270
  loc_CB8B4C: FLdRfVar var_302
  loc_CB8B4F: FLdPr Me
  loc_CB8B52: MemLdRfVar from_stack_1.global_68
  loc_CB8B55: NewIfNullPr clsdetabole
  loc_CB8B58: from_stack_1 = clsdetabole.PeriInfo
  loc_CB8B5D: FLdI2 var_302
  loc_CB8B60: CStrUI1
  loc_CB8B62: FStStrNoPop var_274
  loc_CB8B65: ConcatStr
  loc_CB8B66: FStStrNoPop var_280
  loc_CB8B69: LitStr ",'"
  loc_CB8B6C: ConcatStr
  loc_CB8B6D: FStStrNoPop var_288
  loc_CB8B70: FLdRfVar var_284
  loc_CB8B73: FLdPr Me
  loc_CB8B76: MemLdRfVar from_stack_1.global_68
  loc_CB8B79: NewIfNullPr clsdetabole
  loc_CB8B7C: from_stack_1 = clsdetabole.CodiConc
  loc_CB8B81: ILdRf var_284
  loc_CB8B84: ConcatStr
  loc_CB8B85: FStStrNoPop var_28C
  loc_CB8B88: LitStr "',"
  loc_CB8B8B: ConcatStr
  loc_CB8B8C: FStStrNoPop var_29C
  loc_CB8B8F: LitI4 0
  loc_CB8B94: LitI4 -1
  loc_CB8B99: LitI4 1
  loc_CB8B9E: LitStr "."
  loc_CB8BA1: LitStr ","
  loc_CB8BA4: FLdFPR8 var_1A4
  loc_CB8BA7: CStrR8
  loc_CB8BA9: FStStrNoPop var_298
  loc_CB8BAC: ImpAdCallI2 Replace(, , , , , )
  loc_CB8BB1: FStStrNoPop var_2A0
  loc_CB8BB4: ConcatStr
  loc_CB8BB5: FStStrNoPop var_2A4
  loc_CB8BB8: LitStr ","
  loc_CB8BBB: ConcatStr
  loc_CB8BBC: FStStrNoPop var_2B4
  loc_CB8BBF: LitI4 0
  loc_CB8BC4: LitI4 -1
  loc_CB8BC9: LitI4 1
  loc_CB8BCE: LitStr "."
  loc_CB8BD1: LitStr ","
  loc_CB8BD4: FLdFPR8 var_1D0
  loc_CB8BD7: CStrR8
  loc_CB8BD9: FStStrNoPop var_2B0
  loc_CB8BDC: ImpAdCallI2 Replace(, , , , , )
  loc_CB8BE1: FStStrNoPop var_2B8
  loc_CB8BE4: ConcatStr
  loc_CB8BE5: FStStrNoPop var_2BC
  loc_CB8BE8: LitStr ","
  loc_CB8BEB: ConcatStr
  loc_CB8BEC: FStStrNoPop var_2CC
  loc_CB8BEF: LitI4 0
  loc_CB8BF4: LitI4 -1
  loc_CB8BF9: LitI4 1
  loc_CB8BFE: LitStr "."
  loc_CB8C01: LitStr ","
  loc_CB8C04: FLdFPR8 var_234
  loc_CB8C07: CStrR8
  loc_CB8C09: FStStrNoPop var_2C8
  loc_CB8C0C: ImpAdCallI2 Replace(, , , , , )
  loc_CB8C11: FStStrNoPop var_2D0
  loc_CB8C14: ConcatStr
  loc_CB8C15: FStStrNoPop var_2D4
  loc_CB8C18: LitStr ","
  loc_CB8C1B: ConcatStr
  loc_CB8C1C: FStStrNoPop var_2DC
  loc_CB8C1F: LitI4 0
  loc_CB8C24: LitI4 -1
  loc_CB8C29: LitI4 1
  loc_CB8C2E: LitStr "."
  loc_CB8C31: LitStr ","
  loc_CB8C34: FLdFPR8 var_24C
  loc_CB8C37: CStrR8
  loc_CB8C39: FStStrNoPop var_2D8
  loc_CB8C3C: ImpAdCallI2 Replace(, , , , , )
  loc_CB8C41: FStStrNoPop var_2E0
  loc_CB8C44: ConcatStr
  loc_CB8C45: FStStrNoPop var_308
  loc_CB8C48: LitStr ","
  loc_CB8C4B: ConcatStr
  loc_CB8C4C: FStStrNoPop var_310
  loc_CB8C4F: LitI4 0
  loc_CB8C54: LitI4 -1
  loc_CB8C59: LitI4 1
  loc_CB8C5E: LitStr "."
  loc_CB8C61: LitStr ","
  loc_CB8C64: FLdFPR8 var_264
  loc_CB8C67: CStrR8
  loc_CB8C69: FStStrNoPop var_30C
  loc_CB8C6C: ImpAdCallI2 Replace(, , , , , )
  loc_CB8C71: FStStrNoPop var_314
  loc_CB8C74: ConcatStr
  loc_CB8C75: FStStrNoPop var_318
  loc_CB8C78: LitStr ","
  loc_CB8C7B: ConcatStr
  loc_CB8C7C: FStStrNoPop var_320
  loc_CB8C7F: LitI4 0
  loc_CB8C84: LitI4 -1
  loc_CB8C89: LitI4 1
  loc_CB8C8E: LitStr "."
  loc_CB8C91: LitStr ","
  loc_CB8C94: FLdFPR8 var_27C
  loc_CB8C97: CStrR8
  loc_CB8C99: FStStrNoPop var_31C
  loc_CB8C9C: ImpAdCallI2 Replace(, , , , , )
  loc_CB8CA1: FStStrNoPop var_324
  loc_CB8CA4: ConcatStr
  loc_CB8CA5: FStStrNoPop var_328
  loc_CB8CA8: LitStr ","
  loc_CB8CAB: ConcatStr
  loc_CB8CAC: FStStrNoPop var_330
  loc_CB8CAF: LitI4 0
  loc_CB8CB4: LitI4 -1
  loc_CB8CB9: LitI4 1
  loc_CB8CBE: LitStr "."
  loc_CB8CC1: LitStr ","
  loc_CB8CC4: FLdFPR8 var_294
  loc_CB8CC7: CStrR8
  loc_CB8CC9: FStStrNoPop var_32C
  loc_CB8CCC: ImpAdCallI2 Replace(, , , , , )
  loc_CB8CD1: FStStrNoPop var_334
  loc_CB8CD4: ConcatStr
  loc_CB8CD5: FStStrNoPop var_338
  loc_CB8CD8: LitStr ","
  loc_CB8CDB: ConcatStr
  loc_CB8CDC: FStStrNoPop var_340
  loc_CB8CDF: LitI4 0
  loc_CB8CE4: LitI4 -1
  loc_CB8CE9: LitI4 1
  loc_CB8CEE: LitStr "."
  loc_CB8CF1: LitStr ","
  loc_CB8CF4: FLdFPR8 var_2AC
  loc_CB8CF7: CStrR8
  loc_CB8CF9: FStStrNoPop var_33C
  loc_CB8CFC: ImpAdCallI2 Replace(, , , , , )
  loc_CB8D01: FStStrNoPop var_344
  loc_CB8D04: ConcatStr
  loc_CB8D05: FStStrNoPop var_348
  loc_CB8D08: LitStr ","
  loc_CB8D0B: ConcatStr
  loc_CB8D0C: FStStrNoPop var_350
  loc_CB8D0F: LitI4 0
  loc_CB8D14: LitI4 -1
  loc_CB8D19: LitI4 1
  loc_CB8D1E: LitStr "."
  loc_CB8D21: LitStr ","
  loc_CB8D24: FLdFPR8 var_2C4
  loc_CB8D27: CStrR8
  loc_CB8D29: FStStrNoPop var_34C
  loc_CB8D2C: ImpAdCallI2 Replace(, , , , , )
  loc_CB8D31: FStStrNoPop var_354
  loc_CB8D34: ConcatStr
  loc_CB8D35: FStStrNoPop var_358
  loc_CB8D38: LitStr ");"
  loc_CB8D3B: ConcatStr
  loc_CB8D3C: FStStrNoPop var_35C
  loc_CB8D3F: FLdPr Me
  loc_CB8D42: MemStStrCopy
  loc_CB8D46: FFreeStr var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_33C = "": var_340 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_204 = "": var_208 = "": var_20C = "": var_214 = "": var_210 = "": var_218 = "": var_220 = "": var_21C = "": var_224 = "": var_228 = "": var_22C = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_268 = "": var_26C = "": var_270 = "": var_274 = "": var_280 = "": var_288 = "": var_284 = "": var_28C = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_194 = "": var_198 = "": var_19C = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_CB8E0B: FFreeAd var_90 = ""
  loc_CB8E12: FFreeVar var_A0 = "": var_F4 = ""
  loc_CB8E1B: FLdRfVar var_A8
  loc_CB8E1E: FLdPr Me
  loc_CB8E21: MemLdRfVar from_stack_1.global_56
  loc_CB8E24: NewIfNullPr clsboleto
  loc_CB8E27: from_stack_1 = clsboleto.TipoBole
  loc_CB8E2C: ILdRf var_A8
  loc_CB8E2F: LitStr "Pago Anticipado"
  loc_CB8E32: EqStr
  loc_CB8E34: FFree1Str var_A8
  loc_CB8E37: BranchF loc_CB8F4B
  loc_CB8E3A: FLdPr Me
  loc_CB8E3D: MemLdStr global_100
  loc_CB8E40: LitStr " UPDATE pagoanti SET EstaPaan = 'Pagado' WHERE CodiOfic = "
  loc_CB8E43: ConcatStr
  loc_CB8E44: FStStrNoPop var_A8
  loc_CB8E47: FLdRfVar var_8A
  loc_CB8E4A: FLdPr Me
  loc_CB8E4D: MemLdRfVar from_stack_1.global_68
  loc_CB8E50: NewIfNullPr clsdetabole
  loc_CB8E53: from_stack_1 = clsdetabole.CodiOfic
  loc_CB8E58: FLdUI1
  loc_CB8E5C: CStrI2
  loc_CB8E5E: FStStrNoPop var_AC
  loc_CB8E61: ConcatStr
  loc_CB8E62: FStStrNoPop var_B0
  loc_CB8E65: LitStr " AND CuenCtct = '"
  loc_CB8E68: ConcatStr
  loc_CB8E69: FStStrNoPop var_B8
  loc_CB8E6C: FLdRfVar var_B4
  loc_CB8E6F: FLdPr Me
  loc_CB8E72: MemLdRfVar from_stack_1.global_68
  loc_CB8E75: NewIfNullPr clsdetabole
  loc_CB8E78: from_stack_1 = clsdetabole.CuenCtct
  loc_CB8E7D: ILdRf var_B4
  loc_CB8E80: ConcatStr
  loc_CB8E81: FStStrNoPop var_BC
  loc_CB8E84: LitStr "' AND PeriBole = "
  loc_CB8E87: ConcatStr
  loc_CB8E88: FStStrNoPop var_C0
  loc_CB8E8B: FLdRfVar var_1D2
  loc_CB8E8E: FLdPr Me
  loc_CB8E91: MemLdRfVar from_stack_1.global_68
  loc_CB8E94: NewIfNullPr clsdetabole
  loc_CB8E97: from_stack_1 = clsdetabole.PeriBole
  loc_CB8E9C: FLdI2 var_1D2
  loc_CB8E9F: CStrUI1
  loc_CB8EA1: FStStrNoPop var_10C
  loc_CB8EA4: ConcatStr
  loc_CB8EA5: FStStrNoPop var_110
  loc_CB8EA8: LitStr " AND NumeBole = "
  loc_CB8EAB: ConcatStr
  loc_CB8EAC: FStStrNoPop var_144
  loc_CB8EAF: FLdRfVar var_C4
  loc_CB8EB2: FLdPr Me
  loc_CB8EB5: MemLdRfVar from_stack_1.global_68
  loc_CB8EB8: NewIfNullPr clsdetabole
  loc_CB8EBB: from_stack_1 = clsdetabole.NumeBole
  loc_CB8EC0: ILdRf var_C4
  loc_CB8EC3: CStrI4
  loc_CB8EC5: FStStrNoPop var_148
  loc_CB8EC8: ConcatStr
  loc_CB8EC9: FStStrNoPop var_14C
  loc_CB8ECC: LitStr " AND PeriLiqu = "
  loc_CB8ECF: ConcatStr
  loc_CB8ED0: FStStrNoPop var_194
  loc_CB8ED3: FLdRfVar var_1F0
  loc_CB8ED6: FLdPr Me
  loc_CB8ED9: MemLdRfVar from_stack_1.global_68
  loc_CB8EDC: NewIfNullPr clsdetabole
  loc_CB8EDF: from_stack_1 = clsdetabole.PeriCtct
  loc_CB8EE4: ILdRf var_1F0
  loc_CB8EE7: CStrI4
  loc_CB8EE9: FStStrNoPop var_198
  loc_CB8EEC: ConcatStr
  loc_CB8EED: FStStrNoPop var_19C
  loc_CB8EF0: LitStr " AND BimeLiqu = "
  loc_CB8EF3: ConcatStr
  loc_CB8EF4: FStStrNoPop var_1A8
  loc_CB8EF7: FLdRfVar var_1FE
  loc_CB8EFA: FLdPr Me
  loc_CB8EFD: MemLdRfVar from_stack_1.global_68
  loc_CB8F00: NewIfNullPr clsdetabole
  loc_CB8F03: from_stack_1 = clsdetabole.BimeCtct
  loc_CB8F08: FLdI2 var_1FE
  loc_CB8F0B: CStrUI1
  loc_CB8F0D: FStStrNoPop var_1AC
  loc_CB8F10: ConcatStr
  loc_CB8F11: FStStrNoPop var_1B0
  loc_CB8F14: LitStr ";"
  loc_CB8F17: ConcatStr
  loc_CB8F18: FStStrNoPop var_1B4
  loc_CB8F1B: FLdPr Me
  loc_CB8F1E: MemStStrCopy
  loc_CB8F22: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_194 = "": var_198 = "": var_19C = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_CB8F4B: LitStr "SELECT * FROM boledeta "
  loc_CB8F4E: LitStr " WHERE PeriBole = "
  loc_CB8F51: ConcatStr
  loc_CB8F52: FStStrNoPop var_A8
  loc_CB8F55: FLdRfVar var_8A
  loc_CB8F58: FLdPr Me
  loc_CB8F5B: MemLdRfVar from_stack_1.global_68
  loc_CB8F5E: NewIfNullPr clsdetabole
  loc_CB8F61: from_stack_1 = clsdetabole.PeriBole
  loc_CB8F66: FLdI2 var_8A
  loc_CB8F69: CStrUI1
  loc_CB8F6B: FStStrNoPop var_AC
  loc_CB8F6E: ConcatStr
  loc_CB8F6F: FStStrNoPop var_B0
  loc_CB8F72: LitStr " AND NumeBole = "
  loc_CB8F75: ConcatStr
  loc_CB8F76: FStStrNoPop var_B4
  loc_CB8F79: FLdRfVar var_C4
  loc_CB8F7C: FLdPr Me
  loc_CB8F7F: MemLdRfVar from_stack_1.global_68
  loc_CB8F82: NewIfNullPr clsdetabole
  loc_CB8F85: from_stack_1 = clsdetabole.NumeBole
  loc_CB8F8A: ILdRf var_C4
  loc_CB8F8D: CStrI4
  loc_CB8F8F: FStStrNoPop var_B8
  loc_CB8F92: ConcatStr
  loc_CB8F93: FStStrNoPop var_BC
  loc_CB8F96: LitStr " AND PeriCtct = "
  loc_CB8F99: ConcatStr
  loc_CB8F9A: FStStrNoPop var_C0
  loc_CB8F9D: FLdRfVar var_1F0
  loc_CB8FA0: FLdPr Me
  loc_CB8FA3: MemLdRfVar from_stack_1.global_68
  loc_CB8FA6: NewIfNullPr clsdetabole
  loc_CB8FA9: from_stack_1 = clsdetabole.PeriCtct
  loc_CB8FAE: ILdRf var_1F0
  loc_CB8FB1: CStrI4
  loc_CB8FB3: FStStrNoPop var_10C
  loc_CB8FB6: ConcatStr
  loc_CB8FB7: FStStrNoPop var_110
  loc_CB8FBA: LitStr " AND BimeCtct = "
  loc_CB8FBD: ConcatStr
  loc_CB8FBE: FStStrNoPop var_144
  loc_CB8FC1: FLdRfVar var_1D2
  loc_CB8FC4: FLdPr Me
  loc_CB8FC7: MemLdRfVar from_stack_1.global_68
  loc_CB8FCA: NewIfNullPr clsdetabole
  loc_CB8FCD: from_stack_1 = clsdetabole.BimeCtct
  loc_CB8FD2: FLdI2 var_1D2
  loc_CB8FD5: CStrUI1
  loc_CB8FD7: FStStrNoPop var_148
  loc_CB8FDA: ConcatStr
  loc_CB8FDB: FStStrNoPop var_14C
  loc_CB8FDE: LitStr " AND NumeCtct = "
  loc_CB8FE1: ConcatStr
  loc_CB8FE2: FStStrNoPop var_194
  loc_CB8FE5: FLdRfVar var_2EC
  loc_CB8FE8: FLdPr Me
  loc_CB8FEB: MemLdRfVar from_stack_1.global_68
  loc_CB8FEE: NewIfNullPr clsdetabole
  loc_CB8FF1: from_stack_1 = clsdetabole.NumeCtct
  loc_CB8FF6: ILdRf var_2EC
  loc_CB8FF9: CStrI4
  loc_CB8FFB: FStStrNoPop var_198
  loc_CB8FFE: ConcatStr
  loc_CB8FFF: FStStrNoPop var_19C
  loc_CB9002: LitStr " AND MoviCtct = "
  loc_CB9005: ConcatStr
  loc_CB9006: FStStrNoPop var_1A8
  loc_CB9009: FLdRfVar var_1FE
  loc_CB900C: FLdPr Me
  loc_CB900F: MemLdRfVar from_stack_1.global_68
  loc_CB9012: NewIfNullPr clsdetabole
  loc_CB9015: from_stack_1 = clsdetabole.MoviCtct
  loc_CB901A: FLdI2 var_1FE
  loc_CB901D: CStrUI1
  loc_CB901F: FStStrNoPop var_1AC
  loc_CB9022: ConcatStr
  loc_CB9023: FStStrNoPop var_1B0
  loc_CB9026: LitStr " AND MoviDebo = "
  loc_CB9029: ConcatStr
  loc_CB902A: FStStrNoPop var_1B4
  loc_CB902D: FLdRfVar var_2EE
  loc_CB9030: FLdPr Me
  loc_CB9033: MemLdRfVar from_stack_1.global_68
  loc_CB9036: NewIfNullPr clsdetabole
  loc_CB9039: from_stack_1 = clsdetabole.MoviDebo
  loc_CB903E: FLdI2 var_2EE
  loc_CB9041: CStrUI1
  loc_CB9043: FStStrNoPop var_1B8
  loc_CB9046: ConcatStr
  loc_CB9047: FStStrNoPop var_1BC
  loc_CB904A: LitStr " ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde"
  loc_CB904D: ConcatStr
  loc_CB904E: FStStrNoPop var_1C0
  loc_CB9051: FLdPr Me
  loc_CB9054: MemLdRfVar from_stack_1.global_72
  loc_CB9057: NewIfNullPr clsdetabole
  loc_CB905A: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CB905F: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_194 = "": var_198 = "": var_19C = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_CB908E: FLdRfVar var_C4
  loc_CB9091: FLdPr Me
  loc_CB9094: MemLdRfVar from_stack_1.global_72
  loc_CB9097: NewIfNullPr clsdetabole
  loc_CB909A: from_stack_1 = clsdetabole.RecordCount
  loc_CB909F: ILdRf var_C4
  loc_CB90A2: LitI4 0
  loc_CB90A7: GtI4
  loc_CB90A8: BranchF loc_CB9471
  loc_CB90AB: FLdPr Me
  loc_CB90AE: MemLdRfVar from_stack_1.global_72
  loc_CB90B1: NewIfNullPr clsdetabole
  loc_CB90B4: Call clsdetabole.MoveFirst()
  loc_CB90B9: FLdRfVar var_8A
  loc_CB90BC: FLdPr Me
  loc_CB90BF: MemLdRfVar from_stack_1.global_72
  loc_CB90C2: NewIfNullPr clsdetabole
  loc_CB90C5: from_stack_1 = clsdetabole.EOF
  loc_CB90CA: FLdI2 var_8A
  loc_CB90CD: NotI4
  loc_CB90CE: BranchF loc_CB9471
  loc_CB90D1: FLdPr Me
  loc_CB90D4: VCallAd Control_ID_FeenAcpaMsk
  loc_CB90D7: FStAdFunc var_90
  loc_CB90DA: FLdPr var_90
  loc_CB90DD: LateIdLdVar var_A0 DispID_15 0
  loc_CB90E4: PopAd
  loc_CB90E6: FLdRfVar var_1A4
  loc_CB90E9: FLdPr Me
  loc_CB90EC: MemLdRfVar from_stack_1.global_72
  loc_CB90EF: NewIfNullPr clsdetabole
  loc_CB90F2: from_stack_1 = clsdetabole.ImpoBode
  loc_CB90F7: FLdRfVar var_1D0
  loc_CB90FA: FLdPr Me
  loc_CB90FD: MemLdRfVar from_stack_1.global_72
  loc_CB9100: NewIfNullPr clsdetabole
  loc_CB9103: from_stack_1 = clsdetabole.DecaBode
  loc_CB9108: FLdRfVar var_234
  loc_CB910B: FLdPr Me
  loc_CB910E: MemLdRfVar from_stack_1.global_72
  loc_CB9111: NewIfNullPr clsdetabole
  loc_CB9114: from_stack_1 = clsdetabole.TotaBode
  loc_CB9119: FLdPr Me
  loc_CB911C: MemLdStr global_100
  loc_CB911F: LitStr " INSERT INTO pagodeta (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,PeriOrde,CodiCtde,NumeCtde,MoviCtde,CodiOfic,CuenCtct,ImpoPade,DecaPade,TotaPade) VALUES ('"
  loc_CB9122: ConcatStr
  loc_CB9123: FStStrNoPop var_A8
  loc_CB9126: LitI4 1
  loc_CB912B: LitI4 1
  loc_CB9130: LitVarStr var_D4, "yyyy-mm-dd"
  loc_CB9135: FStVarCopyObj var_104
  loc_CB9138: FLdRfVar var_104
  loc_CB913B: FLdRfVar var_A0
  loc_CB913E: CStrVarTmp
  loc_CB913F: CVarStr var_F4
  loc_CB9142: ImpAdCallI2 Format$(, )
  loc_CB9147: FStStrNoPop var_AC
  loc_CB914A: ConcatStr
  loc_CB914B: FStStrNoPop var_B0
  loc_CB914E: LitStr "',"
  loc_CB9151: ConcatStr
  loc_CB9152: FStStrNoPop var_B8
  loc_CB9155: FLdRfVar var_B4
  loc_CB9158: FLdPr Me
  loc_CB915B: VCallAd Control_ID_NumeAcpaTxt
  loc_CB915E: FStAdFunc var_A4
  loc_CB9161: FLdPr var_A4
  loc_CB9164:  = Me.Text
  loc_CB9169: ILdRf var_B4
  loc_CB916C: ConcatStr
  loc_CB916D: FStStrNoPop var_BC
  loc_CB9170: LitStr ","
  loc_CB9173: ConcatStr
  loc_CB9174: FStStrNoPop var_C0
  loc_CB9177: FLdRfVar var_8A
  loc_CB917A: FLdPr Me
  loc_CB917D: MemLdRfVar from_stack_1.global_72
  loc_CB9180: NewIfNullPr clsdetabole
  loc_CB9183: from_stack_1 = clsdetabole.PeriBole
  loc_CB9188: FLdI2 var_8A
  loc_CB918B: CStrUI1
  loc_CB918D: FStStrNoPop var_10C
  loc_CB9190: ConcatStr
  loc_CB9191: FStStrNoPop var_110
  loc_CB9194: LitStr ","
  loc_CB9197: ConcatStr
  loc_CB9198: FStStrNoPop var_144
  loc_CB919B: FLdRfVar var_C4
  loc_CB919E: FLdPr Me
  loc_CB91A1: MemLdRfVar from_stack_1.global_72
  loc_CB91A4: NewIfNullPr clsdetabole
  loc_CB91A7: from_stack_1 = clsdetabole.NumeBole
  loc_CB91AC: ILdRf var_C4
  loc_CB91AF: CStrI4
  loc_CB91B1: FStStrNoPop var_148
  loc_CB91B4: ConcatStr
  loc_CB91B5: FStStrNoPop var_14C
  loc_CB91B8: LitStr ","
  loc_CB91BB: ConcatStr
  loc_CB91BC: FStStrNoPop var_194
  loc_CB91BF: FLdRfVar var_1F0
  loc_CB91C2: FLdPr Me
  loc_CB91C5: MemLdRfVar from_stack_1.global_72
  loc_CB91C8: NewIfNullPr clsdetabole
  loc_CB91CB: from_stack_1 = clsdetabole.PeriCtct
  loc_CB91D0: ILdRf var_1F0
  loc_CB91D3: CStrI4
  loc_CB91D5: FStStrNoPop var_198
  loc_CB91D8: ConcatStr
  loc_CB91D9: FStStrNoPop var_19C
  loc_CB91DC: LitStr ","
  loc_CB91DF: ConcatStr
  loc_CB91E0: FStStrNoPop var_1A8
  loc_CB91E3: FLdRfVar var_1D2
  loc_CB91E6: FLdPr Me
  loc_CB91E9: MemLdRfVar from_stack_1.global_72
  loc_CB91EC: NewIfNullPr clsdetabole
  loc_CB91EF: from_stack_1 = clsdetabole.BimeCtct
  loc_CB91F4: FLdI2 var_1D2
  loc_CB91F7: CStrUI1
  loc_CB91F9: FStStrNoPop var_1AC
  loc_CB91FC: ConcatStr
  loc_CB91FD: FStStrNoPop var_1B0
  loc_CB9200: LitStr ","
  loc_CB9203: ConcatStr
  loc_CB9204: FStStrNoPop var_1B4
  loc_CB9207: FLdRfVar var_2EC
  loc_CB920A: FLdPr Me
  loc_CB920D: MemLdRfVar from_stack_1.global_72
  loc_CB9210: NewIfNullPr clsdetabole
  loc_CB9213: from_stack_1 = clsdetabole.NumeCtct
  loc_CB9218: ILdRf var_2EC
  loc_CB921B: CStrI4
  loc_CB921D: FStStrNoPop var_1B8
  loc_CB9220: ConcatStr
  loc_CB9221: FStStrNoPop var_1BC
  loc_CB9224: LitStr ","
  loc_CB9227: ConcatStr
  loc_CB9228: FStStrNoPop var_1C0
  loc_CB922B: FLdRfVar var_1FE
  loc_CB922E: FLdPr Me
  loc_CB9231: MemLdRfVar from_stack_1.global_72
  loc_CB9234: NewIfNullPr clsdetabole
  loc_CB9237: from_stack_1 = clsdetabole.MoviCtct
  loc_CB923C: FLdI2 var_1FE
  loc_CB923F: CStrUI1
  loc_CB9241: FStStrNoPop var_1C4
  loc_CB9244: ConcatStr
  loc_CB9245: FStStrNoPop var_1C8
  loc_CB9248: LitStr ","
  loc_CB924B: ConcatStr
  loc_CB924C: FStStrNoPop var_1D8
  loc_CB924F: FLdRfVar var_2EE
  loc_CB9252: FLdPr Me
  loc_CB9255: MemLdRfVar from_stack_1.global_72
  loc_CB9258: NewIfNullPr clsdetabole
  loc_CB925B: from_stack_1 = clsdetabole.MoviDebo
  loc_CB9260: FLdI2 var_2EE
  loc_CB9263: CStrUI1
  loc_CB9265: FStStrNoPop var_1DC
  loc_CB9268: ConcatStr
  loc_CB9269: FStStrNoPop var_1E0
  loc_CB926C: LitStr ","
  loc_CB926F: ConcatStr
  loc_CB9270: FStStrNoPop var_1E4
  loc_CB9273: FLdRfVar var_2F0
  loc_CB9276: FLdPr Me
  loc_CB9279: MemLdRfVar from_stack_1.global_72
  loc_CB927C: NewIfNullPr clsdetabole
  loc_CB927F: from_stack_1 = clsdetabole.PeriOrde
  loc_CB9284: FLdI2 var_2F0
  loc_CB9287: CStrUI1
  loc_CB9289: FStStrNoPop var_1E8
  loc_CB928C: ConcatStr
  loc_CB928D: FStStrNoPop var_1EC
  loc_CB9290: LitStr ","
  loc_CB9293: ConcatStr
  loc_CB9294: FStStrNoPop var_1F8
  loc_CB9297: FLdRfVar var_1F4
  loc_CB929A: FLdPr Me
  loc_CB929D: MemLdRfVar from_stack_1.global_72
  loc_CB92A0: NewIfNullPr clsdetabole
  loc_CB92A3: from_stack_1 = clsdetabole.CodiCtde
  loc_CB92A8: ILdRf var_1F4
  loc_CB92AB: ConcatStr
  loc_CB92AC: FStStrNoPop var_1FC
  loc_CB92AF: LitStr ","
  loc_CB92B2: ConcatStr
  loc_CB92B3: FStStrNoPop var_204
  loc_CB92B6: FLdRfVar var_2F8
  loc_CB92B9: FLdPr Me
  loc_CB92BC: MemLdRfVar from_stack_1.global_72
  loc_CB92BF: NewIfNullPr clsdetabole
  loc_CB92C2: from_stack_1 = clsdetabole.NumeCtde
  loc_CB92C7: ILdRf var_2F8
  loc_CB92CA: CStrI4
  loc_CB92CC: FStStrNoPop var_208
  loc_CB92CF: ConcatStr
  loc_CB92D0: FStStrNoPop var_20C
  loc_CB92D3: LitStr ","
  loc_CB92D6: ConcatStr
  loc_CB92D7: FStStrNoPop var_210
  loc_CB92DA: FLdRfVar var_2F2
  loc_CB92DD: FLdPr Me
  loc_CB92E0: MemLdRfVar from_stack_1.global_72
  loc_CB92E3: NewIfNullPr clsdetabole
  loc_CB92E6: from_stack_1 = clsdetabole.MoviCtde
  loc_CB92EB: FLdI2 var_2F2
  loc_CB92EE: CStrUI1
  loc_CB92F0: FStStrNoPop var_214
  loc_CB92F3: ConcatStr
  loc_CB92F4: FStStrNoPop var_218
  loc_CB92F7: LitStr ","
  loc_CB92FA: ConcatStr
  loc_CB92FB: FStStrNoPop var_21C
  loc_CB92FE: FLdRfVar var_2F4
  loc_CB9301: FLdPr Me
  loc_CB9304: MemLdRfVar from_stack_1.global_72
  loc_CB9307: NewIfNullPr clsdetabole
  loc_CB930A: from_stack_1 = clsdetabole.CodiOfic
  loc_CB930F: FLdUI1
  loc_CB9313: CStrI2
  loc_CB9315: FStStrNoPop var_220
  loc_CB9318: ConcatStr
  loc_CB9319: FStStrNoPop var_224
  loc_CB931C: LitStr ",'"
  loc_CB931F: ConcatStr
  loc_CB9320: FStStrNoPop var_22C
  loc_CB9323: FLdRfVar var_228
  loc_CB9326: FLdPr Me
  loc_CB9329: MemLdRfVar from_stack_1.global_72
  loc_CB932C: NewIfNullPr clsdetabole
  loc_CB932F: from_stack_1 = clsdetabole.CuenCtct
  loc_CB9334: ILdRf var_228
  loc_CB9337: ConcatStr
  loc_CB9338: FStStrNoPop var_238
  loc_CB933B: LitStr "',"
  loc_CB933E: ConcatStr
  loc_CB933F: FStStrNoPop var_240
  loc_CB9342: LitI4 0
  loc_CB9347: LitI4 -1
  loc_CB934C: LitI4 1
  loc_CB9351: LitStr "."
  loc_CB9354: LitStr ","
  loc_CB9357: FLdFPR8 var_1A4
  loc_CB935A: CStrR8
  loc_CB935C: FStStrNoPop var_23C
  loc_CB935F: ImpAdCallI2 Replace(, , , , , )
  loc_CB9364: FStStrNoPop var_244
  loc_CB9367: ConcatStr
  loc_CB9368: FStStrNoPop var_250
  loc_CB936B: LitStr ","
  loc_CB936E: ConcatStr
  loc_CB936F: FStStrNoPop var_258
  loc_CB9372: LitI4 0
  loc_CB9377: LitI4 -1
  loc_CB937C: LitI4 1
  loc_CB9381: LitStr "."
  loc_CB9384: LitStr ","
  loc_CB9387: FLdFPR8 var_1D0
  loc_CB938A: CStrR8
  loc_CB938C: FStStrNoPop var_254
  loc_CB938F: ImpAdCallI2 Replace(, , , , , )
  loc_CB9394: FStStrNoPop var_25C
  loc_CB9397: ConcatStr
  loc_CB9398: FStStrNoPop var_268
  loc_CB939B: LitStr ","
  loc_CB939E: ConcatStr
  loc_CB939F: FStStrNoPop var_270
  loc_CB93A2: LitI4 0
  loc_CB93A7: LitI4 -1
  loc_CB93AC: LitI4 1
  loc_CB93B1: LitStr "."
  loc_CB93B4: LitStr ","
  loc_CB93B7: FLdFPR8 var_234
  loc_CB93BA: CStrR8
  loc_CB93BC: FStStrNoPop var_26C
  loc_CB93BF: ImpAdCallI2 Replace(, , , , , )
  loc_CB93C4: FStStrNoPop var_274
  loc_CB93C7: ConcatStr
  loc_CB93C8: FStStrNoPop var_280
  loc_CB93CB: LitStr ");"
  loc_CB93CE: ConcatStr
  loc_CB93CF: FStStrNoPop var_284
  loc_CB93D2: FLdPr Me
  loc_CB93D5: MemStStrCopy
  loc_CB93D9: FFreeStr var_1F8 = "": var_1F4 = "": var_1FC = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = "": var_224 = "": var_22C = "": var_228 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_268 = "": var_26C = "": var_270 = "": var_274 = "": var_280 = "": var_284 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C0 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_194 = "": var_198 = "": var_19C = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_CB9450: FFreeAd var_90 = ""
  loc_CB9457: FFreeVar var_A0 = "": var_F4 = ""
  loc_CB9460: FLdPr Me
  loc_CB9463: MemLdRfVar from_stack_1.global_72
  loc_CB9466: NewIfNullPr clsdetabole
  loc_CB9469: Call clsdetabole.MoveSiguiente()
  loc_CB946E: Branch loc_CB90B9
  loc_CB9471: FLdPr Me
  loc_CB9474: MemLdRfVar from_stack_1.global_68
  loc_CB9477: NewIfNullPr clsdetabole
  loc_CB947A: Call clsdetabole.MoveSiguiente()
  loc_CB947F: Branch loc_CB8640
  loc_CB9482: Branch loc_CB948F
  loc_CB9485: LitStr vbNullString
  loc_CB9488: FLdPr Me
  loc_CB948B: MemStStrCopy
  loc_CB948F: FLdPr Me
  loc_CB9492: MemLdStr global_100
  loc_CB9495: LitStr vbNullString
  loc_CB9498: EqStr
  loc_CB949A: BranchF loc_CB94BB
  loc_CB949D: LitStr "No existe el detalle del boleto. NO SE CREO EL PAGO. verifique..."
  loc_CB94A0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB94A5: FLdPr Me
  loc_CB94A8: VCallAd Control_ID_NumeBoleTxt
  loc_CB94AB: CVarAd
  loc_CB94AF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CB94B4: FFree1Var var_A0 = ""
  loc_CB94B7: ExitProcHresult
  loc_CB94B8: Branch loc_CB96EB
  loc_CB94BB: FLdPr Me
  loc_CB94BE: MemLdStr global_100
  loc_CB94C1: FLdPr Me
  loc_CB94C4: MemLdRfVar from_stack_1.global_60
  loc_CB94C7: NewIfNullPr clspago
  loc_CB94CA: Call clspago.AddnewTransaction(from_stack_1v)
  loc_CB94CF: FLdRfVar var_A8
  loc_CB94D2: FLdPr Me
  loc_CB94D5: VCallAd Control_ID_TocoAcpaTxt
  loc_CB94D8: FStAdFunc var_90
  loc_CB94DB: FLdPr var_90
  loc_CB94DE:  = Me.Text
  loc_CB94E3: ILdRf var_A8
  loc_CB94E6: CI2Str
  loc_CB94E8: LitI2_Byte 1
  loc_CB94EA: AddI2
  loc_CB94EB: CStrUI1
  loc_CB94ED: FStStrNoPop var_AC
  loc_CB94F0: FLdPr Me
  loc_CB94F3: VCallAd Control_ID_TocoAcpaTxt
  loc_CB94F6: FStAdFunc var_A4
  loc_CB94F9: FLdPr var_A4
  loc_CB94FC: Me.Text = from_stack_1
  loc_CB9501: FFreeStr var_A8 = ""
  loc_CB9508: FFreeAd var_90 = ""
  loc_CB950F: FLdRfVar var_A8
  loc_CB9512: FLdPr Me
  loc_CB9515: VCallAd Control_ID_ImpoAcpaTxt
  loc_CB9518: FStAdFunc var_90
  loc_CB951B: FLdPr var_90
  loc_CB951E:  = Me.Text
  loc_CB9523: FLdRfVar var_1A4
  loc_CB9526: FLdPr Me
  loc_CB9529: MemLdRfVar from_stack_1.global_56
  loc_CB952C: NewIfNullPr clsboleto
  loc_CB952F: from_stack_1 = clsboleto.TotaBole
  loc_CB9534: LitI4 2
  loc_CB9539: ILdRf var_A8
  loc_CB953C: CR8Str
  loc_CB953E: FLdFPR8 var_1A4
  loc_CB9541: AddR8
  loc_CB9542: CVarR8
  loc_CB9546: FLdRfVar var_F4
  loc_CB9549: ImpAdCallFPR4  = Round(, )
  loc_CB954E: LitI4 1
  loc_CB9553: LitI4 1
  loc_CB9558: LitVarStr var_E4, "###,###,##0.00"
  loc_CB955D: FStVarCopyObj var_104
  loc_CB9560: FLdRfVar var_104
  loc_CB9563: FLdRfVar var_F4
  loc_CB9566: FLdRfVar var_120
  loc_CB9569: ImpAdCallFPR4  = Format(, )
  loc_CB956E: FLdRfVar var_120
  loc_CB9571: CStrVarVal var_AC
  loc_CB9575: FLdPr Me
  loc_CB9578: VCallAd Control_ID_ImpoAcpaTxt
  loc_CB957B: FStAdFunc var_A4
  loc_CB957E: FLdPr var_A4
  loc_CB9581: Me.Text = from_stack_1
  loc_CB9586: FFreeStr var_A8 = ""
  loc_CB958D: FFreeAd var_90 = ""
  loc_CB9594: FFreeVar var_A0 = "": var_F4 = "": var_104 = ""
  loc_CB959F: FLdRfVar var_A8
  loc_CB95A2: FLdPr Me
  loc_CB95A5: VCallAd Control_ID_CantBoleTxt
  loc_CB95A8: FStAdFunc var_90
  loc_CB95AB: FLdPr var_90
  loc_CB95AE:  = Me.Text
  loc_CB95B3: ILdRf var_A8
  loc_CB95B6: CI2Str
  loc_CB95B8: LitI2_Byte 1
  loc_CB95BA: AddI2
  loc_CB95BB: CStrUI1
  loc_CB95BD: FStStrNoPop var_AC
  loc_CB95C0: FLdPr Me
  loc_CB95C3: VCallAd Control_ID_CantBoleTxt
  loc_CB95C6: FStAdFunc var_A4
  loc_CB95C9: FLdPr var_A4
  loc_CB95CC: Me.Text = from_stack_1
  loc_CB95D1: FFreeStr var_A8 = ""
  loc_CB95D8: FFreeAd var_90 = ""
  loc_CB95DF: FLdRfVar var_A8
  loc_CB95E2: FLdPr Me
  loc_CB95E5: VCallAd Control_ID_TotaBoleTxt
  loc_CB95E8: FStAdFunc var_90
  loc_CB95EB: FLdPr var_90
  loc_CB95EE:  = Me.Text
  loc_CB95F3: FLdRfVar var_1A4
  loc_CB95F6: FLdPr Me
  loc_CB95F9: MemLdRfVar from_stack_1.global_56
  loc_CB95FC: NewIfNullPr clsboleto
  loc_CB95FF: from_stack_1 = clsboleto.TotaBole
  loc_CB9604: LitI4 2
  loc_CB9609: ILdRf var_A8
  loc_CB960C: CR8Str
  loc_CB960E: FLdFPR8 var_1A4
  loc_CB9611: AddR8
  loc_CB9612: CVarR8
  loc_CB9616: FLdRfVar var_F4
  loc_CB9619: ImpAdCallFPR4  = Round(, )
  loc_CB961E: LitI4 1
  loc_CB9623: LitI4 1
  loc_CB9628: LitVarStr var_E4, "###,###,##0.00"
  loc_CB962D: FStVarCopyObj var_104
  loc_CB9630: FLdRfVar var_104
  loc_CB9633: FLdRfVar var_F4
  loc_CB9636: FLdRfVar var_120
  loc_CB9639: ImpAdCallFPR4  = Format(, )
  loc_CB963E: FLdRfVar var_120
  loc_CB9641: CStrVarVal var_AC
  loc_CB9645: FLdPr Me
  loc_CB9648: VCallAd Control_ID_TotaBoleTxt
  loc_CB964B: FStAdFunc var_A4
  loc_CB964E: FLdPr var_A4
  loc_CB9651: Me.Text = from_stack_1
  loc_CB9656: FFreeStr var_A8 = ""
  loc_CB965D: FFreeAd var_90 = ""
  loc_CB9664: FFreeVar var_A0 = "": var_F4 = "": var_104 = ""
  loc_CB966F: LitStr "0"
  loc_CB9672: FLdPr Me
  loc_CB9675: VCallAd Control_ID_NumeBoleTxt
  loc_CB9678: FStAdFunc var_90
  loc_CB967B: FLdPr var_90
  loc_CB967E: Me.Text = from_stack_1
  loc_CB9683: FFree1Ad var_90
  loc_CB9686: LitI4 0
  loc_CB968B: LitI4 2
  loc_CB9690: FLdRfVar var_360
  loc_CB9693: Redim
  loc_CB969D: FLdPr Me
  loc_CB96A0: VCallAd Control_ID_FeenAcpaMsk
  loc_CB96A3: CVarAd
  loc_CB96A7: ParmAry1St
  loc_CB96AD: FLdPr Me
  loc_CB96B0: VCallAd Control_ID_FeenAcpaCmd
  loc_CB96B3: CVarAd
  loc_CB96B7: ParmAry1St
  loc_CB96BD: FLdPr Me
  loc_CB96C0: VCallAd Control_ID_NumeAcpaTxt
  loc_CB96C3: CVarAd
  loc_CB96C7: ParmAry1St
  loc_CB96CD: FLdRfVar var_360
  loc_CB96D0: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CB96D5: FLdRfVar var_360
  loc_CB96D8: Erase
  loc_CB96D9: FLdPr Me
  loc_CB96DC: VCallAd Control_ID_NumeBoleTxt
  loc_CB96DF: CVarAd
  loc_CB96E3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CB96E8: FFree1Var var_A0 = ""
  loc_CB96EB: FLdPr Me
  loc_CB96EE: VCallAd Control_ID_FeenAcpaMsk
  loc_CB96F1: FStAdFunc var_90
  loc_CB96F4: FLdPr var_90
  loc_CB96F7: LateIdLdVar var_A0 DispID_15 0
  loc_CB96FE: PopAd
  loc_CB9700: LitStr "SELECT pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.CodiOfic, pago.CuenCtct, infogov.persona.DetaPers, boleto.TipoBole, "
  loc_CB9703: LitStr " pago.CapiPago, pago.RecaPago, pago.DecaPago, pago.DerePago, pago.IntePago, pago.ExenPago, pago.AprePago, pago.TotaPago FROM pago "
  loc_CB9706: ConcatStr
  loc_CB9707: FStStrNoPop var_A8
  loc_CB970A: LitStr " LEFT JOIN boleto ON pago.PeriBole = boleto.PeriBole"
  loc_CB970D: ConcatStr
  loc_CB970E: FStStrNoPop var_AC
  loc_CB9711: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_CB9714: ConcatStr
  loc_CB9715: FStStrNoPop var_B0
  loc_CB9718: LitStr " LEFT JOIN infogov.persona ON pago.CucuPers = infogov.persona.CucuPers"
  loc_CB971B: ConcatStr
  loc_CB971C: FStStrNoPop var_B4
  loc_CB971F: LitStr " WHERE FeenAcpa = '"
  loc_CB9722: ConcatStr
  loc_CB9723: FStStrNoPop var_B8
  loc_CB9726: LitI4 1
  loc_CB972B: LitI4 1
  loc_CB9730: LitVarStr var_D4, "yyyy-mm-dd"
  loc_CB9735: FStVarCopyObj var_104
  loc_CB9738: FLdRfVar var_104
  loc_CB973B: FLdRfVar var_A0
  loc_CB973E: CStrVarTmp
  loc_CB973F: CVarStr var_F4
  loc_CB9742: ImpAdCallI2 Format$(, )
  loc_CB9747: FStStrNoPop var_BC
  loc_CB974A: ConcatStr
  loc_CB974B: FStStrNoPop var_C0
  loc_CB974E: LitStr "'"
  loc_CB9751: ConcatStr
  loc_CB9752: FStStrNoPop var_10C
  loc_CB9755: LitStr " AND NumeAcpa = "
  loc_CB9758: ConcatStr
  loc_CB9759: FStStrNoPop var_144
  loc_CB975C: FLdRfVar var_110
  loc_CB975F: FLdPr Me
  loc_CB9762: VCallAd Control_ID_NumeAcpaTxt
  loc_CB9765: FStAdFunc var_A4
  loc_CB9768: FLdPr var_A4
  loc_CB976B:  = Me.Text
  loc_CB9770: ILdRf var_110
  loc_CB9773: ConcatStr
  loc_CB9774: FStStrNoPop var_148
  loc_CB9777: LitStr " AND ActuPago = 'No'"
  loc_CB977A: ConcatStr
  loc_CB977B: FStStrNoPop var_14C
  loc_CB977E: LitStr " ORDER BY pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole"
  loc_CB9781: ConcatStr
  loc_CB9782: FStStrNoPop var_194
  loc_CB9785: FLdPr Me
  loc_CB9788: MemLdRfVar from_stack_1.global_64
  loc_CB978B: NewIfNullPr clspago
  loc_CB978E: Call clspago.RedefineRS(from_stack_1v)
  loc_CB9793: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_10C = "": var_144 = "": var_110 = "": var_148 = "": var_14C = ""
  loc_CB97B0: FFreeAd var_90 = ""
  loc_CB97B7: FFreeVar var_A0 = "": var_F4 = ""
  loc_CB97C0: LitI4 0
  loc_CB97C5: LitI4 1
  loc_CB97CA: FLdRfVar var_360
  loc_CB97CD: Redim
  loc_CB97D7: FLdPr Me
  loc_CB97DA: MemLdRfVar from_stack_1.global_64
  loc_CB97DD: NewIfNullAd
  loc_CB97E0: FStAd var_90 
  loc_CB97E4: FLdRfVar var_90
  loc_CB97E7: CVarRef
  loc_CB97EC: ParmAry1St
  loc_CB97F2: FLdPr Me
  loc_CB97F5: VCallAd Control_ID_dgdPago
  loc_CB97F8: CVarAd
  loc_CB97FC: ParmAry1St
  loc_CB9802: FLdRfVar var_360
  loc_CB9805: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_CB980A: ILdRf var_90
  loc_CB980D: CastAd
  loc_CB9810: FLdPr Me
  loc_CB9813: MemStAdFunc
  loc_CB9817: FLdRfVar var_360
  loc_CB981A: Erase
  loc_CB981B: FFree1Ad var_90
  loc_CB981E: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'AB1B64
  'Data Table: 4FF4BC
  loc_AB1AA4: LitI4 0
  loc_AB1AA9: LitI4 7
  loc_AB1AAE: FLdRfVar var_88
  loc_AB1AB1: Redim
  loc_AB1ABB: FLdPr Me
  loc_AB1ABE: MemLdRfVar from_stack_1.global_52
  loc_AB1AC1: NewIfNullAd
  loc_AB1AC4: FStAd var_8C 
  loc_AB1AC8: FLdRfVar var_8C
  loc_AB1ACB: CVarRef
  loc_AB1AD0: ParmAry1St
  loc_AB1AD6: FLdPr Me
  loc_AB1AD9: VCallAd Control_ID_FeenAcpaMsk
  loc_AB1ADC: CVarAd
  loc_AB1AE0: ParmAry1St
  loc_AB1AE6: FLdPr Me
  loc_AB1AE9: VCallAd Control_ID_NumeAcpaTxt
  loc_AB1AEC: CVarAd
  loc_AB1AF0: ParmAry1St
  loc_AB1AF6: FLdPr Me
  loc_AB1AF9: VCallAd Control_ID_FepaAcpaMsk
  loc_AB1AFC: CVarAd
  loc_AB1B00: ParmAry1St
  loc_AB1B06: FLdPr Me
  loc_AB1B09: VCallAd Control_ID_CodiEnreTxt
  loc_AB1B0C: CVarAd
  loc_AB1B10: ParmAry1St
  loc_AB1B16: FLdPr Me
  loc_AB1B19: VCallAd Control_ID_DetaEnreLbl
  loc_AB1B1C: CVarAd
  loc_AB1B20: ParmAry1St
  loc_AB1B26: FLdPr Me
  loc_AB1B29: VCallAd Control_ID_TocoAcpaTxt
  loc_AB1B2C: CVarAd
  loc_AB1B30: ParmAry1St
  loc_AB1B36: FLdPr Me
  loc_AB1B39: VCallAd Control_ID_ImpoAcpaTxt
  loc_AB1B3C: CVarAd
  loc_AB1B40: ParmAry1St
  loc_AB1B46: FLdRfVar var_88
  loc_AB1B49: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB1B4E: ILdRf var_8C
  loc_AB1B51: CastAd
  loc_AB1B54: FLdPr Me
  loc_AB1B57: MemStAdFunc
  loc_AB1B5B: FLdRfVar var_88
  loc_AB1B5E: Erase
  loc_AB1B5F: FFree1Ad var_8C
  loc_AB1B62: ExitProcHresult
End Sub
