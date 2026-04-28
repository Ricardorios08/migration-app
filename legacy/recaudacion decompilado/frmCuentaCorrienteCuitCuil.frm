VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCuentaCorrienteCuitCuil
  Caption = "Cuenta Corriente por C.U.I.T - C.U.I.L."
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
  ClientHeight = 10320
  Begin VB.CommandButton ImprimirCuentasCmd
    Left = 12240
    Top = 1200
    Width = 450
    Height = 345
    TabIndex = 19
    Picture = "frmCuentaCorrienteCuitCuil.frx":0000
    Style = 1
  End
  Begin VB.CommandButton ConstanciadeCumplimientoTributarioCmd
    Left = 12240
    Top = 4680
    Width = 450
    Height = 345
    TabIndex = 24
    Picture = "frmCuentaCorrienteCuitCuil.frx":0102
    Style = 1
  End
  Begin VB.CommandButton CertificadoCmd
    Left = 12240
    Top = 3960
    Width = 450
    Height = 345
    TabIndex = 22
    Picture = "frmCuentaCorrienteCuitCuil.frx":0634
    Style = 1
  End
  Begin VB.CommandButton ImprimirCmd
    Left = 12240
    Top = 3240
    Width = 450
    Height = 345
    TabIndex = 20
    Picture = "frmCuentaCorrienteCuitCuil.frx":0B66
    Style = 1
  End
  Begin VB.TextBox CucuPersTxt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 240
    Width = 1815
    Height = 345
    TabIndex = 0
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
  Begin VB.TextBox txtTotaDere
    Left = 1560
    Top = 5160
    Width = 1575
    Height = 345
    TabIndex = 10
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
  Begin VB.TextBox txtTotaReca
    Left = 7440
    Top = 5160
    Width = 1455
    Height = 345
    TabIndex = 9
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
  Begin VB.TextBox txtTotaApre
    Left = 4440
    Top = 5160
    Width = 1575
    Height = 360
    TabIndex = 8
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
  Begin VB.TextBox txtTotal
    Left = 10440
    Top = 5160
    Width = 1575
    Height = 345
    TabIndex = 7
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
  Begin VB.CommandButton BuscarCmd
    Left = 4920
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 3
    Picture = "frmCuentaCorrienteCuitCuil.frx":0C68
    Style = 1
  End
  Begin VB.CommandButton NumeCtaCmd
    Left = 4560
    Top = 240
    Width = 450
    Height = 345
    TabIndex = 1
    Picture = "frmCuentaCorrienteCuitCuil.frx":0D4A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton SalirCmd
    Left = 14400
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 6
    Picture = "frmCuentaCorrienteCuitCuil.frx":0E44
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2640
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 2
    OleObjectBlob = "frmCuentaCorrienteCuitCuil.frx":1096
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteUnicaFlex
    Left = 120
    Top = 1200
    Width = 12015
    Height = 3855
    TabIndex = 4
    OleObjectBlob = "frmCuentaCorrienteCuitCuil.frx":1146
    Appearance = 0 'Flat
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 5640
    Width = 15015
    Height = 4215
    TabIndex = 14
    OleObjectBlob = "frmCuentaCorrienteCuitCuil.frx":1232
    Appearance = 0 'Flat
  End
  Begin VB.Label Label10
    Caption = "Imprime detalle de cuentas"
    Left = 12720
    Top = 1200
    Width = 2415
    Height = 240
    TabIndex = 26
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label9
    Caption = "Constancia de Cumplimiento Tributario"
    Left = 12840
    Top = 4680
    Width = 3450
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Certificado para Proveedores"
    Left = 12840
    Top = 3960
    Width = 2655
    Height = 240
    TabIndex = 23
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Imprime la cuenta seleccionada"
    Left = 12720
    Top = 3240
    Width = 2850
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 9720
    Top = 5160
    Width = 690
    Height = 300
    TabIndex = 18
    AutoSize = -1  'True
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
  Begin VB.Label Label7
    Caption = "Apremio:"
    Left = 3240
    Top = 5160
    Width = 1080
    Height = 300
    TabIndex = 17
    AutoSize = -1  'True
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
  Begin VB.Label Label6
    Caption = "Recargo:"
    Left = 6240
    Top = 5160
    Width = 1110
    Height = 300
    TabIndex = 16
    AutoSize = -1  'True
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
  Begin VB.Label Label2
    Caption = "Derechos:"
    Left = 240
    Top = 5160
    Width = 1245
    Height = 300
    TabIndex = 15
    AutoSize = -1  'True
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
  Begin VB.Label Label1
    Caption = "C.U.I.L. - C.U.I.T.:"
    Left = 720
    Top = 240
    Width = 1845
    Height = 300
    TabIndex = 13
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 5520
    Top = 720
    Width = 7215
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 5160
    Top = 240
    Width = 7695
    Height = 315
    TabIndex = 11
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
    Caption = "Fecha de Vencimiento:"
    Left = 165
    Top = 720
    Width = 2445
    Height = 300
    TabIndex = 5
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

Attribute VB_Name = "frmCuentaCorrienteCuitCuil"


Private Sub CertificadoCmd_Click() 'A7D014
  'Data Table: 4BC1C0
  loc_A7CF94: LitStr "Municipalidad de Guaymallén"
  loc_A7CF97: LitStr "Municipalidad de Lavalle"
  loc_A7CF9A: EqStr
  loc_A7CF9C: LitStr "Municipalidad de Guaymallén"
  loc_A7CF9F: LitStr "Municipalidad de Tunuyán"
  loc_A7CFA2: EqStr
  loc_A7CFA4: OrI4
  loc_A7CFA5: BranchF loc_A7D010
  loc_A7CFA8: LitI2_Byte &HB
  loc_A7CFAA: FLdPr Me
  loc_A7CFAD: Me.MousePointer = from_stack_1
  loc_A7CFB2: ImpAdLdRf MemVar_D94070
  loc_A7CFB5: NewIfNullAd
  loc_A7CFB8: CastAd
  loc_A7CFBB: FStAdFuncNoPop
  loc_A7CFBE: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A7CFC3: FFree1Ad var_88
  loc_A7CFC6: FLdRfVar var_8C
  loc_A7CFC9: FLdPr Me
  loc_A7CFCC: VCallAd Control_ID_CucuPersTxt
  loc_A7CFCF: FStAdFunc var_88
  loc_A7CFD2: FLdPr var_88
  loc_A7CFD5:  = Me.Text
  loc_A7CFDA: ILdRf var_8C
  loc_A7CFDD: ImpAdLdRf MemVar_D94070
  loc_A7CFE0: NewIfNullPr rptCertificadodeProveedores
  loc_A7CFE3: VCallAd Control_ID_CucuPersTxt
  loc_A7CFE6: FStAdFunc var_90
  loc_A7CFE9: FLdPr var_90
  loc_A7CFEC: rptCertificadodeProveedores.TextBox.Text = from_stack_1
  loc_A7CFF1: FFree1Str var_8C
  loc_A7CFF4: FFreeAd var_88 = ""
  loc_A7CFFB: ImpAdLdRf MemVar_D94070
  loc_A7CFFE: NewIfNullPr rptCertificadodeProveedores
  loc_A7D001: Call rptCertificadodeProveedores.cmdPredeterminada_Click()
  loc_A7D006: LitI2_Byte 0
  loc_A7D008: FLdPr Me
  loc_A7D00B: rptCertificadodeProveedores.MousePointer = from_stack_1
  loc_A7D010: ExitProcHresult
End Sub

Private Sub ConstanciadeCumplimientoTributarioCmd_Click() 'A6CD6C
  'Data Table: 4BC1C0
  loc_A6CD00: LitI2_Byte &HB
  loc_A6CD02: FLdPr Me
  loc_A6CD05: Me.MousePointer = from_stack_1
  loc_A6CD0A: ImpAdLdRf MemVar_D9405C
  loc_A6CD0D: NewIfNullAd
  loc_A6CD10: CastAd
  loc_A6CD13: FStAdFuncNoPop
  loc_A6CD16: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A6CD1B: FFree1Ad var_88
  loc_A6CD1E: FLdRfVar var_8C
  loc_A6CD21: FLdPr Me
  loc_A6CD24: VCallAd Control_ID_CucuPersTxt
  loc_A6CD27: FStAdFunc var_88
  loc_A6CD2A: FLdPr var_88
  loc_A6CD2D:  = Me.Text
  loc_A6CD32: ILdRf var_8C
  loc_A6CD35: ImpAdLdRf MemVar_D9405C
  loc_A6CD38: NewIfNullPr rptConstanciadeCumplimientoTributario
  loc_A6CD3B: VCallAd Control_ID_CucuPersTxt
  loc_A6CD3E: FStAdFunc var_90
  loc_A6CD41: FLdPr var_90
  loc_A6CD44: rptConstanciadeCumplimientoTributario.TextBox.Text = from_stack_1
  loc_A6CD49: FFree1Str var_8C
  loc_A6CD4C: FFreeAd var_88 = ""
  loc_A6CD53: ImpAdLdRf MemVar_D9405C
  loc_A6CD56: NewIfNullPr rptConstanciadeCumplimientoTributario
  loc_A6CD59: Call rptConstanciadeCumplimientoTributario.cmdPredeterminada_Click()
  loc_A6CD5E: LitI2_Byte 0
  loc_A6CD60: FLdPr Me
  loc_A6CD63: rptConstanciadeCumplimientoTributario.MousePointer = from_stack_1
  loc_A6CD68: ExitProcHresult
  loc_A6CD69: ExitProcHresult
  loc_A6CD6A: ModI2
End Sub

Private Sub ImprimirCmd_Click() 'AE4440
  'Data Table: 4BC1C0
  loc_AE42E0: FLdPr Me
  loc_AE42E3: VCallAd Control_ID_ctacteUnicaFlex
  loc_AE42E6: FStAdFunc var_88
  loc_AE42E9: FLdPr var_88
  loc_AE42EC: LateIdLdVar var_98 DispID_4 0
  loc_AE42F3: CI4Var
  loc_AE42F5: LitI4 1
  loc_AE42FA: GtI4
  loc_AE42FB: FFree1Ad var_88
  loc_AE42FE: FFree1Var var_98 = ""
  loc_AE4301: BranchF loc_AE443C
  loc_AE4304: ImpAdLdUI1
  loc_AE4308: CI2UI1
  loc_AE430A: LitI2_Byte 0
  loc_AE430C: NeI2
  loc_AE430D: FLdPr Me
  loc_AE4310: VCallAd Control_ID_ctacteUnicaFlex
  loc_AE4313: FStAdFunc var_88
  loc_AE4316: FLdPr var_88
  loc_AE4319: LateIdLdVar var_98 DispID_10 0
  loc_AE4320: CI4Var
  loc_AE4322: CVarI4
  loc_AE4326: PopAdLdVar
  loc_AE4327: LitVarI4
  loc_AE432F: PopAdLdVar
  loc_AE4330: FLdPr Me
  loc_AE4333: VCallAd Control_ID_ctacteUnicaFlex
  loc_AE4336: FStAdFunc var_DC
  loc_AE4339: FLdPr var_DC
  loc_AE433C: LateIdCallLdVar
  loc_AE4346: CStrVarTmp
  loc_AE4347: FStStrNoPop var_F0
  loc_AE434A: LitStr vbNullString
  loc_AE434D: NeStr
  loc_AE434F: AndI4
  loc_AE4350: FFree1Str var_F0
  loc_AE4353: FFreeAd var_88 = ""
  loc_AE435A: FFreeVar var_98 = ""
  loc_AE4361: BranchF loc_AE4434
  loc_AE4364: ImpAdLdRf MemVar_D94084
  loc_AE4367: NewIfNullAd
  loc_AE436A: CastAd
  loc_AE436D: FStAdFuncNoPop
  loc_AE4370: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_AE4375: FFree1Ad var_88
  loc_AE4378: ImpAdLdRf MemVar_D94084
  loc_AE437B: NewIfNullAd
  loc_AE437E: FStAd var_F4 
  loc_AE4382: ImpAdLdUI1
  loc_AE4386: CI2UI1
  loc_AE4388: LitI2_Byte 1
  loc_AE438A: SubI2
  loc_AE438B: FLdPr var_F4
  loc_AE438E: VCallAd Control_ID_Label2
  loc_AE4391: FStAdFunc var_88
  loc_AE4394: FLdPr var_88
  loc_AE4397: Me.ListIndex = from_stack_1
  loc_AE439C: FFree1Ad var_88
  loc_AE439F: FLdPr Me
  loc_AE43A2: VCallAd Control_ID_ctacteUnicaFlex
  loc_AE43A5: FStAdFunc var_88
  loc_AE43A8: FLdPr var_88
  loc_AE43AB: LateIdLdVar var_98 DispID_10 0
  loc_AE43B2: CI4Var
  loc_AE43B4: CVarI4
  loc_AE43B8: PopAdLdVar
  loc_AE43B9: LitVarI4
  loc_AE43C1: PopAdLdVar
  loc_AE43C2: FLdPr Me
  loc_AE43C5: VCallAd Control_ID_ctacteUnicaFlex
  loc_AE43C8: FStAdFunc var_DC
  loc_AE43CB: FLdPr var_DC
  loc_AE43CE: LateIdCallLdVar
  loc_AE43D8: CStrVarTmp
  loc_AE43D9: FStStrNoPop var_F0
  loc_AE43DC: FLdPr var_F4
  loc_AE43DF: VCallAd Control_ID_Label6
  loc_AE43E2: FStAdFunc var_F8
  loc_AE43E5: FLdPr var_F8
  loc_AE43E8: Me.Text = from_stack_1
  loc_AE43ED: FFree1Str var_F0
  loc_AE43F0: FFreeAd var_88 = "": var_DC = ""
  loc_AE43F9: FFreeVar var_98 = ""
  loc_AE4400: LitI2_Byte 1
  loc_AE4402: FLdPr var_F4
  loc_AE4405: VCallAd Control_ID_txtTotaApre
  loc_AE4408: FStAdFunc var_88
  loc_AE440B: FLdPr var_88
  loc_AE440E: Me.Value = from_stack_1
  loc_AE4413: FFree1Ad var_88
  loc_AE4416: LitVar_Missing var_B8
  loc_AE4419: PopAdLdVar
  loc_AE441A: LitVarI4
  loc_AE4422: PopAdLdVar
  loc_AE4423: FLdPr var_F4
  loc_AE4426: Me.Show from_stack_1, from_stack_2
  loc_AE442B: LitNothing
  loc_AE442D: FStAd var_F4 
  loc_AE4431: Branch loc_AE443C
  loc_AE4434: LitStr "Seleccione la cuenta que quiere imprimir."
  loc_AE4437: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE443C: ExitProcHresult
  loc_AE443D: NeI4
End Sub

Private Sub Form_Load() 'BA6BAC
  'Data Table: 4BC1C0
  loc_BA657C: LitI2_Byte 0
  loc_BA657E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BA6583: CStrDate
  loc_BA6585: CVarStr var_94
  loc_BA6588: PopAdLdVar
  loc_BA6589: FLdPr Me
  loc_BA658C: VCallAd Control_ID_FechVencMsk
  loc_BA658F: FStAdFunc var_A8
  loc_BA6592: FLdPr var_A8
  loc_BA6595: LateIdSt
  loc_BA659A: FFree1Ad var_A8
  loc_BA659D: FFree1Var var_94 = ""
  loc_BA65A0: FLdPr Me
  loc_BA65A3: VCallAd Control_ID_ctacteUnicaFlex
  loc_BA65A6: FStAdFunc var_AC
  loc_BA65A9: LitVarI4
  loc_BA65B1: PopAdLdVar
  loc_BA65B2: LitVarI4
  loc_BA65BA: PopAdLdVar
  loc_BA65BB: FLdPr var_AC
  loc_BA65BE: LateIdCallSt
  loc_BA65C6: LitVarI4
  loc_BA65CE: PopAdLdVar
  loc_BA65CF: LitVarI4
  loc_BA65D7: PopAdLdVar
  loc_BA65D8: FLdPr var_AC
  loc_BA65DB: LateIdCallSt
  loc_BA65E3: LitVarI4
  loc_BA65EB: PopAdLdVar
  loc_BA65EC: LitVarI4
  loc_BA65F4: PopAdLdVar
  loc_BA65F5: FLdPr var_AC
  loc_BA65F8: LateIdCallSt
  loc_BA6600: LitVarI4
  loc_BA6608: PopAdLdVar
  loc_BA6609: LitVarI4
  loc_BA6611: PopAdLdVar
  loc_BA6612: FLdPr var_AC
  loc_BA6615: LateIdCallSt
  loc_BA661D: LitVarI4
  loc_BA6625: PopAdLdVar
  loc_BA6626: LitVarI4
  loc_BA662E: PopAdLdVar
  loc_BA662F: FLdPr var_AC
  loc_BA6632: LateIdCallSt
  loc_BA663A: LitVarI4
  loc_BA6642: PopAdLdVar
  loc_BA6643: LitVarI4
  loc_BA664B: PopAdLdVar
  loc_BA664C: FLdPr var_AC
  loc_BA664F: LateIdCallSt
  loc_BA6657: LitVarI4
  loc_BA665F: PopAdLdVar
  loc_BA6660: LitVarI4
  loc_BA6668: PopAdLdVar
  loc_BA6669: FLdPr var_AC
  loc_BA666C: LateIdCallSt
  loc_BA6674: LitVarI4
  loc_BA667C: PopAdLdVar
  loc_BA667D: LitVarI4
  loc_BA6685: PopAdLdVar
  loc_BA6686: FLdPr var_AC
  loc_BA6689: LateIdCallSt
  loc_BA6691: LitVarI4
  loc_BA6699: PopAdLdVar
  loc_BA669A: LitVarI4
  loc_BA66A2: PopAdLdVar
  loc_BA66A3: LitVarStr var_EC, "Oficina"
  loc_BA66A8: PopAdLdVar
  loc_BA66A9: FLdPr var_AC
  loc_BA66AC: LateIdCallSt
  loc_BA66B4: LitVarI4
  loc_BA66BC: PopAdLdVar
  loc_BA66BD: LitVarI4
  loc_BA66C5: PopAdLdVar
  loc_BA66C6: LitVarStr var_EC, "Cuenta"
  loc_BA66CB: PopAdLdVar
  loc_BA66CC: FLdPr var_AC
  loc_BA66CF: LateIdCallSt
  loc_BA66D7: LitVarI4
  loc_BA66DF: PopAdLdVar
  loc_BA66E0: LitVarI4
  loc_BA66E8: PopAdLdVar
  loc_BA66E9: LitVarStr var_EC, "Relacion"
  loc_BA66EE: PopAdLdVar
  loc_BA66EF: FLdPr var_AC
  loc_BA66F2: LateIdCallSt
  loc_BA66FA: LitVarI4
  loc_BA6702: PopAdLdVar
  loc_BA6703: LitVarI4
  loc_BA670B: PopAdLdVar
  loc_BA670C: LitVarStr var_EC, "Derecho"
  loc_BA6711: PopAdLdVar
  loc_BA6712: FLdPr var_AC
  loc_BA6715: LateIdCallSt
  loc_BA671D: LitVarI4
  loc_BA6725: PopAdLdVar
  loc_BA6726: LitVarI4
  loc_BA672E: PopAdLdVar
  loc_BA672F: LitVarStr var_EC, "Apremio"
  loc_BA6734: PopAdLdVar
  loc_BA6735: FLdPr var_AC
  loc_BA6738: LateIdCallSt
  loc_BA6740: LitVarI4
  loc_BA6748: PopAdLdVar
  loc_BA6749: LitVarI4
  loc_BA6751: PopAdLdVar
  loc_BA6752: LitVarStr var_EC, "Recargo"
  loc_BA6757: PopAdLdVar
  loc_BA6758: FLdPr var_AC
  loc_BA675B: LateIdCallSt
  loc_BA6763: LitVarI4
  loc_BA676B: PopAdLdVar
  loc_BA676C: LitVarI4
  loc_BA6774: PopAdLdVar
  loc_BA6775: LitVarStr var_EC, "Saldo"
  loc_BA677A: PopAdLdVar
  loc_BA677B: FLdPr var_AC
  loc_BA677E: LateIdCallSt
  loc_BA6786: LitVarI4
  loc_BA678E: PopAdLdVar
  loc_BA678F: LitVarI4
  loc_BA6797: PopAdLdVar
  loc_BA6798: LitVarStr var_EC, "Se"
  loc_BA679D: PopAdLdVar
  loc_BA679E: FLdPr var_AC
  loc_BA67A1: LateIdCallSt
  loc_BA67A9: LitNothing
  loc_BA67AB: FStAd var_AC 
  loc_BA67AF: FLdPr Me
  loc_BA67B2: VCallAd Control_ID_ctacteFlex
  loc_BA67B5: FStAdFunc var_100
  loc_BA67B8: LitVarI4
  loc_BA67C0: PopAdLdVar
  loc_BA67C1: LitVarI4
  loc_BA67C9: PopAdLdVar
  loc_BA67CA: FLdPr var_100
  loc_BA67CD: LateIdCallSt
  loc_BA67D5: LitVarI4
  loc_BA67DD: PopAdLdVar
  loc_BA67DE: LitVarI4
  loc_BA67E6: PopAdLdVar
  loc_BA67E7: FLdPr var_100
  loc_BA67EA: LateIdCallSt
  loc_BA67F2: LitVarI4
  loc_BA67FA: PopAdLdVar
  loc_BA67FB: LitVarI4
  loc_BA6803: PopAdLdVar
  loc_BA6804: FLdPr var_100
  loc_BA6807: LateIdCallSt
  loc_BA680F: LitVarI4
  loc_BA6817: PopAdLdVar
  loc_BA6818: LitVarI4
  loc_BA6820: PopAdLdVar
  loc_BA6821: FLdPr var_100
  loc_BA6824: LateIdCallSt
  loc_BA682C: LitVarI4
  loc_BA6834: PopAdLdVar
  loc_BA6835: LitVarI4
  loc_BA683D: PopAdLdVar
  loc_BA683E: FLdPr var_100
  loc_BA6841: LateIdCallSt
  loc_BA6849: LitVarI4
  loc_BA6851: PopAdLdVar
  loc_BA6852: LitVarI4
  loc_BA685A: PopAdLdVar
  loc_BA685B: FLdPr var_100
  loc_BA685E: LateIdCallSt
  loc_BA6866: LitVarI4
  loc_BA686E: PopAdLdVar
  loc_BA686F: LitVarI4
  loc_BA6877: PopAdLdVar
  loc_BA6878: FLdPr var_100
  loc_BA687B: LateIdCallSt
  loc_BA6883: LitVarI4
  loc_BA688B: PopAdLdVar
  loc_BA688C: LitVarI4
  loc_BA6894: PopAdLdVar
  loc_BA6895: FLdPr var_100
  loc_BA6898: LateIdCallSt
  loc_BA68A0: LitVarI4
  loc_BA68A8: PopAdLdVar
  loc_BA68A9: LitVarI4
  loc_BA68B1: PopAdLdVar
  loc_BA68B2: FLdPr var_100
  loc_BA68B5: LateIdCallSt
  loc_BA68BD: LitVarI4
  loc_BA68C5: PopAdLdVar
  loc_BA68C6: LitVarI4
  loc_BA68CE: PopAdLdVar
  loc_BA68CF: FLdPr var_100
  loc_BA68D2: LateIdCallSt
  loc_BA68DA: LitVarI4
  loc_BA68E2: PopAdLdVar
  loc_BA68E3: LitVarI4
  loc_BA68EB: PopAdLdVar
  loc_BA68EC: FLdPr var_100
  loc_BA68EF: LateIdCallSt
  loc_BA68F7: LitVarI4
  loc_BA68FF: PopAdLdVar
  loc_BA6900: LitVarI4
  loc_BA6908: PopAdLdVar
  loc_BA6909: FLdPr var_100
  loc_BA690C: LateIdCallSt
  loc_BA6914: LitVarI4
  loc_BA691C: PopAdLdVar
  loc_BA691D: LitVarI4
  loc_BA6925: PopAdLdVar
  loc_BA6926: FLdPr var_100
  loc_BA6929: LateIdCallSt
  loc_BA6931: LitVarI4
  loc_BA6939: PopAdLdVar
  loc_BA693A: LitVarI4
  loc_BA6942: PopAdLdVar
  loc_BA6943: FLdPr var_100
  loc_BA6946: LateIdCallSt
  loc_BA694E: LitVarI4
  loc_BA6956: PopAdLdVar
  loc_BA6957: LitVarI4
  loc_BA695F: PopAdLdVar
  loc_BA6960: FLdPr var_100
  loc_BA6963: LateIdCallSt
  loc_BA696B: LitVarI4
  loc_BA6973: PopAdLdVar
  loc_BA6974: LitVarI4
  loc_BA697C: PopAdLdVar
  loc_BA697D: LitVarStr var_EC, "Periodo"
  loc_BA6982: PopAdLdVar
  loc_BA6983: FLdPr var_100
  loc_BA6986: LateIdCallSt
  loc_BA698E: LitVarI4
  loc_BA6996: PopAdLdVar
  loc_BA6997: LitVarI4
  loc_BA699F: PopAdLdVar
  loc_BA69A0: LitVarStr var_EC, "Boleto"
  loc_BA69A5: PopAdLdVar
  loc_BA69A6: FLdPr var_100
  loc_BA69A9: LateIdCallSt
  loc_BA69B1: LitVarI4
  loc_BA69B9: PopAdLdVar
  loc_BA69BA: LitVarI4
  loc_BA69C2: PopAdLdVar
  loc_BA69C3: LitVarStr var_EC, "Fech. Emis."
  loc_BA69C8: PopAdLdVar
  loc_BA69C9: FLdPr var_100
  loc_BA69CC: LateIdCallSt
  loc_BA69D4: LitVarI4
  loc_BA69DC: PopAdLdVar
  loc_BA69DD: LitVarI4
  loc_BA69E5: PopAdLdVar
  loc_BA69E6: LitVarStr var_EC, "Venc/Pago"
  loc_BA69EB: PopAdLdVar
  loc_BA69EC: FLdPr var_100
  loc_BA69EF: LateIdCallSt
  loc_BA69F7: LitVarI4
  loc_BA69FF: PopAdLdVar
  loc_BA6A00: LitVarI4
  loc_BA6A08: PopAdLdVar
  loc_BA6A09: LitVarStr var_EC, "Concepto"
  loc_BA6A0E: PopAdLdVar
  loc_BA6A0F: FLdPr var_100
  loc_BA6A12: LateIdCallSt
  loc_BA6A1A: LitVarI4
  loc_BA6A22: PopAdLdVar
  loc_BA6A23: LitVarI4
  loc_BA6A2B: PopAdLdVar
  loc_BA6A2C: LitVarStr var_EC, "Facilidad"
  loc_BA6A31: PopAdLdVar
  loc_BA6A32: FLdPr var_100
  loc_BA6A35: LateIdCallSt
  loc_BA6A3D: LitVarI4
  loc_BA6A45: PopAdLdVar
  loc_BA6A46: LitVarI4
  loc_BA6A4E: PopAdLdVar
  loc_BA6A4F: LitVarStr var_EC, "Apremio"
  loc_BA6A54: PopAdLdVar
  loc_BA6A55: FLdPr var_100
  loc_BA6A58: LateIdCallSt
  loc_BA6A60: LitVarI4
  loc_BA6A68: PopAdLdVar
  loc_BA6A69: LitVarI4
  loc_BA6A71: PopAdLdVar
  loc_BA6A72: LitVarStr var_EC, "Exped./Comprob."
  loc_BA6A77: PopAdLdVar
  loc_BA6A78: FLdPr var_100
  loc_BA6A7B: LateIdCallSt
  loc_BA6A83: LitVarI4
  loc_BA6A8B: PopAdLdVar
  loc_BA6A8C: LitVarI4
  loc_BA6A94: PopAdLdVar
  loc_BA6A95: LitVarStr var_EC, "Tipo Movimin."
  loc_BA6A9A: PopAdLdVar
  loc_BA6A9B: FLdPr var_100
  loc_BA6A9E: LateIdCallSt
  loc_BA6AA6: LitVarI4
  loc_BA6AAE: PopAdLdVar
  loc_BA6AAF: LitVarI4
  loc_BA6AB7: PopAdLdVar
  loc_BA6AB8: LitVarStr var_EC, "Debito"
  loc_BA6ABD: PopAdLdVar
  loc_BA6ABE: FLdPr var_100
  loc_BA6AC1: LateIdCallSt
  loc_BA6AC9: LitVarI4
  loc_BA6AD1: PopAdLdVar
  loc_BA6AD2: LitVarI4
  loc_BA6ADA: PopAdLdVar
  loc_BA6ADB: LitVarStr var_EC, "Credito"
  loc_BA6AE0: PopAdLdVar
  loc_BA6AE1: FLdPr var_100
  loc_BA6AE4: LateIdCallSt
  loc_BA6AEC: LitVarI4
  loc_BA6AF4: PopAdLdVar
  loc_BA6AF5: LitVarI4
  loc_BA6AFD: PopAdLdVar
  loc_BA6AFE: LitVarStr var_EC, "Recargo"
  loc_BA6B03: PopAdLdVar
  loc_BA6B04: FLdPr var_100
  loc_BA6B07: LateIdCallSt
  loc_BA6B0F: LitVarI4
  loc_BA6B17: PopAdLdVar
  loc_BA6B18: LitVarI4
  loc_BA6B20: PopAdLdVar
  loc_BA6B21: LitVarStr var_EC, "Saldo"
  loc_BA6B26: PopAdLdVar
  loc_BA6B27: FLdPr var_100
  loc_BA6B2A: LateIdCallSt
  loc_BA6B32: LitVarI4
  loc_BA6B3A: PopAdLdVar
  loc_BA6B3B: LitVarI4
  loc_BA6B43: PopAdLdVar
  loc_BA6B44: LitVarStr var_EC, "Numero"
  loc_BA6B49: PopAdLdVar
  loc_BA6B4A: FLdPr var_100
  loc_BA6B4D: LateIdCallSt
  loc_BA6B55: LitVarI4
  loc_BA6B5D: PopAdLdVar
  loc_BA6B5E: LitVarI4
  loc_BA6B66: PopAdLdVar
  loc_BA6B67: LitVarStr var_EC, "Mov"
  loc_BA6B6C: PopAdLdVar
  loc_BA6B6D: FLdPr var_100
  loc_BA6B70: LateIdCallSt
  loc_BA6B78: LitNothing
  loc_BA6B7A: FStAd var_100 
  loc_BA6B7E: LitI2_Byte 0
  loc_BA6B80: FLdPr Me
  loc_BA6B83: VCallAd Control_ID_CertificadoCmd
  loc_BA6B86: FStAdFunc var_A8
  loc_BA6B89: FLdPr var_A8
  loc_BA6B8C: Me.Enabled = from_stack_1b
  loc_BA6B91: FFree1Ad var_A8
  loc_BA6B94: LitI2_Byte 0
  loc_BA6B96: FLdPr Me
  loc_BA6B99: VCallAd Control_ID_ConstanciadeCumplimientoTributarioCmd
  loc_BA6B9C: FStAdFunc var_A8
  loc_BA6B9F: FLdPr var_A8
  loc_BA6BA2: Me.Value = from_stack_1b
  loc_BA6BA7: FFree1Ad var_A8
  loc_BA6BAA: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB31C
  'Data Table: 4BC1C0
  loc_9BB308: ILdI2 KeyCode
  loc_9BB30B: CI4UI1
  loc_9BB30C: LitI4 &H78
  loc_9BB311: EqI4
  loc_9BB312: BranchF loc_9BB31A
  loc_9BB315: Call SalirCmd_Click()
  loc_9BB31A: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() 'A6F3E4
  'Data Table: 4BC1C0
  loc_A6F370: FLdPr Me
  loc_A6F373: VCallAd Control_ID_CucuPersTxt
  loc_A6F376: CVarAd
  loc_A6F37A: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A6F37F: FFree1Var var_94 = ""
  loc_A6F382: LitI2_Byte 0
  loc_A6F384: FLdPr Me
  loc_A6F387: VCallAd Control_ID_CertificadoCmd
  loc_A6F38A: FStAdFunc var_98
  loc_A6F38D: FLdPr var_98
  loc_A6F390: Me.Enabled = from_stack_1b
  loc_A6F395: FFree1Ad var_98
  loc_A6F398: LitI2_Byte 0
  loc_A6F39A: FLdPr Me
  loc_A6F39D: VCallAd Control_ID_ConstanciadeCumplimientoTributarioCmd
  loc_A6F3A0: FStAdFunc var_98
  loc_A6F3A3: FLdPr var_98
  loc_A6F3A6: Me.Enabled = from_stack_1b
  loc_A6F3AB: FFree1Ad var_98
  loc_A6F3AE: Call Proc_23_15_AD8A74()
  loc_A6F3B3: LitStr vbNullString
  loc_A6F3B6: FLdPr Me
  loc_A6F3B9: VCallAd Control_ID_DetaPersLbl
  loc_A6F3BC: FStAdFunc var_98
  loc_A6F3BF: FLdPr var_98
  loc_A6F3C2: Me.Caption = from_stack_1
  loc_A6F3C7: FFree1Ad var_98
  loc_A6F3CA: LitStr vbNullString
  loc_A6F3CD: FLdPr Me
  loc_A6F3D0: VCallAd Control_ID_DomiPersLbl
  loc_A6F3D3: FStAdFunc var_98
  loc_A6F3D6: FLdPr var_98
  loc_A6F3D9: Me.Caption = from_stack_1
  loc_A6F3DE: FFree1Ad var_98
  loc_A6F3E1: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'AEEC48
  'Data Table: 4BC1C0
  loc_AEEAC0: FLdRfVar var_8A
  loc_AEEAC3: FLdPr Me
  loc_AEEAC6: VCallAd Control_ID_CucuPersTxt
  loc_AEEAC9: FStAdFunc var_88
  loc_AEEACC: FLdPr var_88
  loc_AEEACF:  = Me.Enabled
  loc_AEEAD4: FLdI2 var_8A
  loc_AEEAD7: FFree1Ad var_88
  loc_AEEADA: BranchF loc_AEEB41
  loc_AEEADD: FLdRfVar var_90
  loc_AEEAE0: FLdPr Me
  loc_AEEAE3: VCallAd Control_ID_CucuPersTxt
  loc_AEEAE6: FStAdFunc var_88
  loc_AEEAE9: FLdPr var_88
  loc_AEEAEC:  = Me.Text
  loc_AEEAF1: ILdRf var_90
  loc_AEEAF4: LitStr "C.U.I.T."
  loc_AEEAF7: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AEEAFC: FStStrNoPop var_94
  loc_AEEAFF: FLdPr Me
  loc_AEEB02: MemStStrCopy
  loc_AEEB06: FFreeStr var_90 = ""
  loc_AEEB0D: FFree1Ad var_88
  loc_AEEB10: FLdPr Me
  loc_AEEB13: MemLdStr global_68
  loc_AEEB16: LitStr vbNullString
  loc_AEEB19: NeStr
  loc_AEEB1B: BranchF loc_AEEB41
  loc_AEEB1E: FLdPr Me
  loc_AEEB21: MemLdStr global_68
  loc_AEEB24: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEEB29: FLdPr Me
  loc_AEEB2C: VCallAd Control_ID_CucuPersTxt
  loc_AEEB2F: CVarAd
  loc_AEEB33: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEEB38: FFree1Var var_A4 = ""
  loc_AEEB3B: LitI2_Byte &HFF
  loc_AEEB3D: IStI2 Cancel
  loc_AEEB40: ExitProcHresult
  loc_AEEB41: FLdRfVar var_90
  loc_AEEB44: FLdPr Me
  loc_AEEB47: VCallAd Control_ID_CucuPersTxt
  loc_AEEB4A: FStAdFunc var_88
  loc_AEEB4D: FLdPr var_88
  loc_AEEB50:  = Me.Text
  loc_AEEB55: FLdPr Me
  loc_AEEB58: MemLdRfVar from_stack_1.global_64
  loc_AEEB5B: NewIfNullRf
  loc_AEEB5F: ILdRf var_90
  loc_AEEB62: ImpAdCallI2 Proc_270_6_B02218(, )
  loc_AEEB67: LitI2_Byte &HFF
  loc_AEEB69: EqI2
  loc_AEEB6A: FFree1Str var_90
  loc_AEEB6D: FFree1Ad var_88
  loc_AEEB70: BranchF loc_AEEC18
  loc_AEEB73: FLdRfVar var_90
  loc_AEEB76: FLdPr Me
  loc_AEEB79: MemLdRfVar from_stack_1.global_64
  loc_AEEB7C: NewIfNullPr tblPersona
  loc_AEEB7F: from_stack_1v = tblPersona.DetaPersGet()
  loc_AEEB84: ILdRf var_90
  loc_AEEB87: FLdPr Me
  loc_AEEB8A: VCallAd Control_ID_DetaPersLbl
  loc_AEEB8D: FStAdFunc var_88
  loc_AEEB90: FLdPr var_88
  loc_AEEB93: Me.Caption = from_stack_1
  loc_AEEB98: FFree1Str var_90
  loc_AEEB9B: FFree1Ad var_88
  loc_AEEB9E: FLdRfVar var_90
  loc_AEEBA1: FLdPr Me
  loc_AEEBA4: MemLdRfVar from_stack_1.global_64
  loc_AEEBA7: NewIfNullPr tblPersona
  loc_AEEBAA: from_stack_1v = tblPersona.DetaCallGet()
  loc_AEEBAF: ILdRf var_90
  loc_AEEBB2: LitStr " "
  loc_AEEBB5: ConcatStr
  loc_AEEBB6: FStStrNoPop var_A8
  loc_AEEBB9: FLdRfVar var_94
  loc_AEEBBC: FLdPr Me
  loc_AEEBBF: MemLdRfVar from_stack_1.global_64
  loc_AEEBC2: NewIfNullPr tblPersona
  loc_AEEBC5: from_stack_1v = tblPersona.NumeCasaGet()
  loc_AEEBCA: ILdRf var_94
  loc_AEEBCD: ConcatStr
  loc_AEEBCE: FStStrNoPop var_AC
  loc_AEEBD1: LitStr " "
  loc_AEEBD4: ConcatStr
  loc_AEEBD5: FStStrNoPop var_B4
  loc_AEEBD8: FLdRfVar var_B0
  loc_AEEBDB: FLdPr Me
  loc_AEEBDE: MemLdRfVar from_stack_1.global_64
  loc_AEEBE1: NewIfNullPr tblPersona
  loc_AEEBE4: from_stack_1v = tblPersona.DetaLocaGet()
  loc_AEEBE9: ILdRf var_B0
  loc_AEEBEC: ConcatStr
  loc_AEEBED: FStStrNoPop var_B8
  loc_AEEBF0: FLdPr Me
  loc_AEEBF3: VCallAd Control_ID_DomiPersLbl
  loc_AEEBF6: FStAdFunc var_88
  loc_AEEBF9: FLdPr var_88
  loc_AEEBFC: Me.Caption = from_stack_1
  loc_AEEC01: FFreeStr var_90 = "": var_A8 = "": var_94 = "": var_AC = "": var_B4 = "": var_B0 = ""
  loc_AEEC12: FFree1Ad var_88
  loc_AEEC15: Branch loc_AEEC45
  loc_AEEC18: LitStr "No existe el contribuyente. Verifique..."
  loc_AEEC1B: FLdPr Me
  loc_AEEC1E: MemStStrCopy
  loc_AEEC22: FLdPr Me
  loc_AEEC25: MemLdStr global_68
  loc_AEEC28: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEEC2D: FLdPr Me
  loc_AEEC30: VCallAd Control_ID_CucuPersTxt
  loc_AEEC33: CVarAd
  loc_AEEC37: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_AEEC3C: FFree1Var var_A4 = ""
  loc_AEEC3F: LitI2_Byte &HFF
  loc_AEEC41: IStI2 Cancel
  loc_AEEC44: ExitProcHresult
  loc_AEEC45: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9C9F6C
  'Data Table: 4BC1C0
  loc_9C9F54: ILdRf Me
  loc_9C9F57: FStAdNoPop
  loc_9C9F5B: ImpAdLdRf MemVar_D9C5D8
  loc_9C9F5E: NewIfNullPr Global
  loc_9C9F61: Global.Unload from_stack_1
  loc_9C9F66: FFree1Ad var_88
  loc_9C9F69: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9C6860
  'Data Table: 4BC1C0
  loc_9C684C: FLdPr Me
  loc_9C684F: VCallAd Control_ID_FechVencMsk
  loc_9C6852: CVarAd
  loc_9C6856: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C685B: FFree1Var var_94 = ""
  loc_9C685E: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'ABD4F4
  'Data Table: 4BC1C0
  loc_ABD3FC: FLdPr Me
  loc_ABD3FF: VCallAd Control_ID_FechVencMsk
  loc_ABD402: FStAdFunc var_88
  loc_ABD405: FLdPr var_88
  loc_ABD408: LateIdLdVar var_98 DispID_13 -32767
  loc_ABD40F: CBoolVar
  loc_ABD411: LitI2_Byte &HFF
  loc_ABD413: EqI2
  loc_ABD414: FFree1Ad var_88
  loc_ABD417: FFree1Var var_98 = ""
  loc_ABD41A: BranchF loc_ABD4F2
  loc_ABD41D: LitVarStr var_A8, vbNullString
  loc_ABD422: PopAdLdVar
  loc_ABD423: FLdPr Me
  loc_ABD426: VCallAd Control_ID_FechVencMsk
  loc_ABD429: FStAdFunc var_88
  loc_ABD42C: FLdPr var_88
  loc_ABD42F: LateIdSt
  loc_ABD434: FFree1Ad var_88
  loc_ABD437: FLdPr Me
  loc_ABD43A: VCallAd Control_ID_FechVencMsk
  loc_ABD43D: FStAdFunc var_88
  loc_ABD440: FLdPr var_88
  loc_ABD443: LateIdLdVar var_98 DispID_22 0
  loc_ABD44A: CStrVarTmp
  loc_ABD44B: FStStrNoPop var_BC
  loc_ABD44E: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABD453: FStStrNoPop var_C0
  loc_ABD456: FLdPr Me
  loc_ABD459: MemStStrCopy
  loc_ABD45D: FFreeStr var_BC = ""
  loc_ABD464: FFree1Ad var_88
  loc_ABD467: FFree1Var var_98 = ""
  loc_ABD46A: LitVarStr var_A8, "##/##/####"
  loc_ABD46F: PopAdLdVar
  loc_ABD470: FLdPr Me
  loc_ABD473: VCallAd Control_ID_FechVencMsk
  loc_ABD476: FStAdFunc var_88
  loc_ABD479: FLdPr var_88
  loc_ABD47C: LateIdSt
  loc_ABD481: FFree1Ad var_88
  loc_ABD484: LitVarI2 var_A8, 10
  loc_ABD489: PopAdLdVar
  loc_ABD48A: FLdPr Me
  loc_ABD48D: VCallAd Control_ID_FechVencMsk
  loc_ABD490: FStAdFunc var_88
  loc_ABD493: FLdPr var_88
  loc_ABD496: LateIdSt
  loc_ABD49B: FFree1Ad var_88
  loc_ABD49E: FLdPr Me
  loc_ABD4A1: MemLdStr global_68
  loc_ABD4A4: LitStr vbNullString
  loc_ABD4A7: NeStr
  loc_ABD4A9: BranchF loc_ABD4F2
  loc_ABD4AC: FLdPr Me
  loc_ABD4AF: MemLdStr global_68
  loc_ABD4B2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABD4B7: LitI2_Byte 0
  loc_ABD4B9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABD4BE: CStrDate
  loc_ABD4C0: CVarStr var_98
  loc_ABD4C3: PopAdLdVar
  loc_ABD4C4: FLdPr Me
  loc_ABD4C7: VCallAd Control_ID_FechVencMsk
  loc_ABD4CA: FStAdFunc var_88
  loc_ABD4CD: FLdPr var_88
  loc_ABD4D0: LateIdSt
  loc_ABD4D5: FFree1Ad var_88
  loc_ABD4D8: FFree1Var var_98 = ""
  loc_ABD4DB: FLdPr Me
  loc_ABD4DE: VCallAd Control_ID_FechVencMsk
  loc_ABD4E1: CVarAd
  loc_ABD4E5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABD4EA: FFree1Var var_98 = ""
  loc_ABD4ED: LitI2_Byte &HFF
  loc_ABD4EF: IStI2 arg_C
  loc_ABD4F2: ExitProcHresult
End Function

Private Sub FechVencMsk_KeyPress(KeyAscii As Integer) 'A245F8
  'Data Table: 4BC1C0
  loc_A245B0: ILdI2 KeyAscii
  loc_A245B3: CI4UI1
  loc_A245B4: LitI4 &H20
  loc_A245B9: EqI4
  loc_A245BA: BranchF loc_A245F7
  loc_A245BD: LitVar_Missing var_A4
  loc_A245C0: PopAdLdVar
  loc_A245C1: LitVarI4
  loc_A245C9: PopAdLdVar
  loc_A245CA: ImpAdLdRf MemVar_D930A4
  loc_A245CD: NewIfNullPr frmCalendario
  loc_A245D0: frmCalendario.Show from_stack_1, from_stack_2
  loc_A245D5: ImpAdLdRf MemVar_D93028
  loc_A245D8: CDargRef
  loc_A245DC: FLdPr Me
  loc_A245DF: VCallAd Control_ID_FechVencMsk
  loc_A245E2: FStAdFunc var_A8
  loc_A245E5: FLdPr var_A8
  loc_A245E8: LateIdSt
  loc_A245ED: FFree1Ad var_A8
  loc_A245F0: LitStr vbNullString
  loc_A245F3: ImpAdStStrCopy MemVar_D93028
  loc_A245F7: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'BF6654
  'Data Table: 4BC1C0
  loc_BF5E6C: Call Proc_23_15_AD8A74()
  loc_BF5E71: Call Proc_23_16_B0D6E4()
  loc_BF5E76: LitI2_Byte 0
  loc_BF5E78: CR8I2
  loc_BF5E79: FStFPR8 var_90
  loc_BF5E7C: LitI2_Byte 0
  loc_BF5E7E: CR8I2
  loc_BF5E7F: FStFPR8 var_98
  loc_BF5E82: LitI2_Byte 0
  loc_BF5E84: CR8I2
  loc_BF5E85: FStFPR8 var_A0
  loc_BF5E88: LitI2_Byte 0
  loc_BF5E8A: CR8I2
  loc_BF5E8B: FStFPR8 var_A8
  loc_BF5E8E: LitI4 1
  loc_BF5E93: LitI4 1
  loc_BF5E98: LitVarStr var_C8, "0.00"
  loc_BF5E9D: FStVarCopyObj var_D8
  loc_BF5EA0: FLdRfVar var_D8
  loc_BF5EA3: FLdRfVar var_90
  loc_BF5EA6: CVarRef
  loc_BF5EAB: FLdRfVar var_E8
  loc_BF5EAE: ImpAdCallFPR4  = Format(, )
  loc_BF5EB3: FLdRfVar var_E8
  loc_BF5EB6: CStrVarVal var_EC
  loc_BF5EBA: FLdPr Me
  loc_BF5EBD: VCallAd Control_ID_txtTotaDere
  loc_BF5EC0: FStAdFunc var_F0
  loc_BF5EC3: FLdPr var_F0
  loc_BF5EC6: Me.Text = from_stack_1
  loc_BF5ECB: FFree1Str var_EC
  loc_BF5ECE: FFree1Ad var_F0
  loc_BF5ED1: FFreeVar var_D8 = ""
  loc_BF5ED8: LitI4 1
  loc_BF5EDD: LitI4 1
  loc_BF5EE2: LitVarStr var_C8, "0.00"
  loc_BF5EE7: FStVarCopyObj var_D8
  loc_BF5EEA: FLdRfVar var_D8
  loc_BF5EED: FLdRfVar var_98
  loc_BF5EF0: CVarRef
  loc_BF5EF5: FLdRfVar var_E8
  loc_BF5EF8: ImpAdCallFPR4  = Format(, )
  loc_BF5EFD: FLdRfVar var_E8
  loc_BF5F00: CStrVarVal var_EC
  loc_BF5F04: FLdPr Me
  loc_BF5F07: VCallAd Control_ID_txtTotaReca
  loc_BF5F0A: FStAdFunc var_F0
  loc_BF5F0D: FLdPr var_F0
  loc_BF5F10: Me.Text = from_stack_1
  loc_BF5F15: FFree1Str var_EC
  loc_BF5F18: FFree1Ad var_F0
  loc_BF5F1B: FFreeVar var_D8 = ""
  loc_BF5F22: LitI4 1
  loc_BF5F27: LitI4 1
  loc_BF5F2C: LitVarStr var_C8, "0.00"
  loc_BF5F31: FStVarCopyObj var_D8
  loc_BF5F34: FLdRfVar var_D8
  loc_BF5F37: FLdRfVar var_A0
  loc_BF5F3A: CVarRef
  loc_BF5F3F: FLdRfVar var_E8
  loc_BF5F42: ImpAdCallFPR4  = Format(, )
  loc_BF5F47: FLdRfVar var_E8
  loc_BF5F4A: CStrVarVal var_EC
  loc_BF5F4E: FLdPr Me
  loc_BF5F51: VCallAd Control_ID_txtTotaApre
  loc_BF5F54: FStAdFunc var_F0
  loc_BF5F57: FLdPr var_F0
  loc_BF5F5A: Me.Text = from_stack_1
  loc_BF5F5F: FFree1Str var_EC
  loc_BF5F62: FFree1Ad var_F0
  loc_BF5F65: FFreeVar var_D8 = ""
  loc_BF5F6C: LitI4 2
  loc_BF5F71: FLdRfVar var_90
  loc_BF5F74: CVarRef
  loc_BF5F79: FLdRfVar var_D8
  loc_BF5F7C: ImpAdCallFPR4  = Round(, )
  loc_BF5F81: FLdRfVar var_D8
  loc_BF5F84: LitI4 2
  loc_BF5F89: FLdRfVar var_98
  loc_BF5F8C: CVarRef
  loc_BF5F91: FLdRfVar var_E8
  loc_BF5F94: ImpAdCallFPR4  = Round(, )
  loc_BF5F99: FLdRfVar var_E8
  loc_BF5F9C: AddVar var_100
  loc_BF5FA0: LitI4 2
  loc_BF5FA5: FLdRfVar var_A0
  loc_BF5FA8: CVarRef
  loc_BF5FAD: FLdRfVar var_120
  loc_BF5FB0: ImpAdCallFPR4  = Round(, )
  loc_BF5FB5: FLdRfVar var_120
  loc_BF5FB8: AddVar var_130
  loc_BF5FBC: CR4Var
  loc_BF5FBD: FStFPR8 var_A8
  loc_BF5FC0: FFreeVar var_D8 = "": var_E8 = "": var_100 = "": var_120 = ""
  loc_BF5FCD: LitI4 1
  loc_BF5FD2: LitI4 1
  loc_BF5FD7: LitVarStr var_C8, "0.00"
  loc_BF5FDC: FStVarCopyObj var_D8
  loc_BF5FDF: FLdRfVar var_D8
  loc_BF5FE2: FLdRfVar var_A8
  loc_BF5FE5: CVarRef
  loc_BF5FEA: FLdRfVar var_E8
  loc_BF5FED: ImpAdCallFPR4  = Format(, )
  loc_BF5FF2: FLdRfVar var_E8
  loc_BF5FF5: CStrVarVal var_EC
  loc_BF5FF9: FLdPr Me
  loc_BF5FFC: VCallAd Control_ID_txtTotal
  loc_BF5FFF: FStAdFunc var_F0
  loc_BF6002: FLdPr var_F0
  loc_BF6005: Me.Text = from_stack_1
  loc_BF600A: FFree1Str var_EC
  loc_BF600D: FFree1Ad var_F0
  loc_BF6010: FFreeVar var_D8 = ""
  loc_BF6017: LitI2_Byte 0
  loc_BF6019: CUI1I2
  loc_BF601B: ImpAdStUI1 MemVar_D93038
  loc_BF601F: FLdRfVar var_EC
  loc_BF6022: FLdPr Me
  loc_BF6025: VCallAd Control_ID_CucuPersTxt
  loc_BF6028: FStAdFunc var_F0
  loc_BF602B: FLdPr var_F0
  loc_BF602E:  = Me.Text
  loc_BF6033: FLdPr Me
  loc_BF6036: VCallAd Control_ID_FechVencMsk
  loc_BF6039: FStAdFunc var_134
  loc_BF603C: FLdPr var_134
  loc_BF603F: LateIdLdVar var_D8 DispID_15 0
  loc_BF6046: CStrVarTmp
  loc_BF6047: FStStrNoPop var_138
  loc_BF604A: ILdRf var_EC
  loc_BF604D: FLdPr Me
  loc_BF6050: MemLdRfVar from_stack_1.global_52
  loc_BF6053: NewIfNullPr clsctacte
  loc_BF6056: Call clsctacte.CreaTemporalDeudaCuilCuit(from_stack_1v, from_stack_2v)
  loc_BF605B: FFreeStr var_EC = ""
  loc_BF6062: FFreeAd var_F0 = ""
  loc_BF6069: FFree1Var var_D8 = ""
  loc_BF606C: LitStr "SELECT * FROM tmp_CtaCteCucu"
  loc_BF606F: LitStr " ORDER BY tmp_CtaCteCucu.CodiOfic, tmp_CtaCteCucu.CuenCtct"
  loc_BF6072: ConcatStr
  loc_BF6073: FStStrNoPop var_EC
  loc_BF6076: FLdPr Me
  loc_BF6079: MemLdRfVar from_stack_1.global_52
  loc_BF607C: NewIfNullPr clsctacte
  loc_BF607F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BF6084: FFree1Str var_EC
  loc_BF6087: FLdRfVar var_13C
  loc_BF608A: FLdPr Me
  loc_BF608D: MemLdRfVar from_stack_1.global_52
  loc_BF6090: NewIfNullPr clsctacte
  loc_BF6093: from_stack_1 = clsctacte.RecordCount
  loc_BF6098: ILdRf var_13C
  loc_BF609B: LitI4 0
  loc_BF60A0: GtI4
  loc_BF60A1: BranchF loc_BF663C
  loc_BF60A4: FLdPr Me
  loc_BF60A7: MemLdRfVar from_stack_1.global_52
  loc_BF60AA: NewIfNullPr clsctacte
  loc_BF60AD: Call clsctacte.MoveFirst()
  loc_BF60B2: FLdRfVar var_13E
  loc_BF60B5: FLdPr Me
  loc_BF60B8: MemLdRfVar from_stack_1.global_52
  loc_BF60BB: NewIfNullPr clsctacte
  loc_BF60BE: from_stack_1 = clsctacte.EOF
  loc_BF60C3: FLdI2 var_13E
  loc_BF60C6: NotI4
  loc_BF60C7: BranchF loc_BF6457
  loc_BF60CA: FLdRfVar var_D8
  loc_BF60CD: FLdPr Me
  loc_BF60D0: MemLdRfVar from_stack_1.global_52
  loc_BF60D3: NewIfNullPr clsctacte
  loc_BF60D6: from_stack_1 = clsctacte.ApreCtct
  loc_BF60DB: LitI4 2
  loc_BF60E0: FLdFPR8 var_A0
  loc_BF60E3: FnCDblR8
  loc_BF60E5: FLdRfVar var_D8
  loc_BF60E8: FnCDblVar
  loc_BF60EA: AddR8
  loc_BF60EB: CVarR8
  loc_BF60EF: FLdRfVar var_100
  loc_BF60F2: ImpAdCallFPR4  = Round(, )
  loc_BF60F7: FLdRfVar var_100
  loc_BF60FA: CR4Var
  loc_BF60FB: FStFPR8 var_A0
  loc_BF60FE: FFreeVar var_D8 = "": var_D8 = "": var_E8 = ""
  loc_BF6109: FLdRfVar var_D8
  loc_BF610C: FLdPr Me
  loc_BF610F: MemLdRfVar from_stack_1.global_52
  loc_BF6112: NewIfNullPr clsctacte
  loc_BF6115: from_stack_1 = clsctacte.ImpoCtct
  loc_BF611A: LitI4 2
  loc_BF611F: FLdFPR8 var_90
  loc_BF6122: FnCDblR8
  loc_BF6124: FLdRfVar var_D8
  loc_BF6127: FnCDblVar
  loc_BF6129: AddR8
  loc_BF612A: CVarR8
  loc_BF612E: FLdRfVar var_100
  loc_BF6131: ImpAdCallFPR4  = Round(, )
  loc_BF6136: FLdRfVar var_100
  loc_BF6139: CR4Var
  loc_BF613A: FStFPR8 var_90
  loc_BF613D: FFreeVar var_D8 = "": var_D8 = "": var_E8 = ""
  loc_BF6148: FLdRfVar var_148
  loc_BF614B: FLdPr Me
  loc_BF614E: MemLdRfVar from_stack_1.global_52
  loc_BF6151: NewIfNullPr clsctacte
  loc_BF6154: from_stack_1 = clsctacte.RecaCtct
  loc_BF6159: LitI4 2
  loc_BF615E: FLdFPR8 var_98
  loc_BF6161: FnCDblR8
  loc_BF6163: FLdFPR8 var_148
  loc_BF6166: FnCDblR8
  loc_BF6168: AddR8
  loc_BF6169: CVarR8
  loc_BF616D: FLdRfVar var_E8
  loc_BF6170: ImpAdCallFPR4  = Round(, )
  loc_BF6175: FLdRfVar var_E8
  loc_BF6178: CR4Var
  loc_BF6179: FStFPR8 var_98
  loc_BF617C: FFreeVar var_D8 = ""
  loc_BF6183: FLdRfVar var_13E
  loc_BF6186: FLdPr Me
  loc_BF6189: MemLdRfVar from_stack_1.global_52
  loc_BF618C: NewIfNullPr clsctacte
  loc_BF618F: from_stack_1 = clsctacte.CodiOfic
  loc_BF6194: FLdI2 var_13E
  loc_BF6197: FStI2 var_14A
  loc_BF619A: FLdI2 var_14A
  loc_BF619D: LitI2_Byte 1
  loc_BF619F: EqI2
  loc_BF61A0: BranchF loc_BF61AC
  loc_BF61A3: LitStr "Inmueble"
  loc_BF61A6: FStStrCopy var_88
  loc_BF61A9: Branch loc_BF6215
  loc_BF61AC: FLdI2 var_14A
  loc_BF61AF: LitI2_Byte 2
  loc_BF61B1: EqI2
  loc_BF61B2: BranchF loc_BF61BE
  loc_BF61B5: LitStr "Comercio"
  loc_BF61B8: FStStrCopy var_88
  loc_BF61BB: Branch loc_BF6215
  loc_BF61BE: FLdI2 var_14A
  loc_BF61C1: LitI2_Byte 3
  loc_BF61C3: EqI2
  loc_BF61C4: BranchF loc_BF61D0
  loc_BF61C7: LitStr "Deudores Varios"
  loc_BF61CA: FStStrCopy var_88
  loc_BF61CD: Branch loc_BF6215
  loc_BF61D0: FLdI2 var_14A
  loc_BF61D3: LitI2_Byte 4
  loc_BF61D5: EqI2
  loc_BF61D6: BranchF loc_BF61E2
  loc_BF61D9: LitStr "Cementerio"
  loc_BF61DC: FStStrCopy var_88
  loc_BF61DF: Branch loc_BF6215
  loc_BF61E2: FLdI2 var_14A
  loc_BF61E5: LitI2_Byte 5
  loc_BF61E7: EqI2
  loc_BF61E8: BranchF loc_BF61F4
  loc_BF61EB: LitStr "Transito"
  loc_BF61EE: FStStrCopy var_88
  loc_BF61F1: Branch loc_BF6215
  loc_BF61F4: FLdI2 var_14A
  loc_BF61F7: LitI2_Byte 6
  loc_BF61F9: EqI2
  loc_BF61FA: BranchF loc_BF6206
  loc_BF61FD: LitStr "Publicidad"
  loc_BF6200: FStStrCopy var_88
  loc_BF6203: Branch loc_BF6215
  loc_BF6206: FLdI2 var_14A
  loc_BF6209: LitI2_Byte 7
  loc_BF620B: EqI2
  loc_BF620C: BranchF loc_BF6215
  loc_BF620F: LitStr "Antena"
  loc_BF6212: FStStrCopy var_88
  loc_BF6215: FLdRfVar var_1AC
  loc_BF6218: FLdPr Me
  loc_BF621B: MemLdRfVar from_stack_1.global_52
  loc_BF621E: NewIfNullPr clsctacte
  loc_BF6221: from_stack_1 = clsctacte.ImpoCtct
  loc_BF6226: FLdRfVar var_20C
  loc_BF6229: FLdPr Me
  loc_BF622C: MemLdRfVar from_stack_1.global_52
  loc_BF622F: NewIfNullPr clsctacte
  loc_BF6232: from_stack_1 = clsctacte.ApreCtct
  loc_BF6237: FLdRfVar var_148
  loc_BF623A: FLdPr Me
  loc_BF623D: MemLdRfVar from_stack_1.global_52
  loc_BF6240: NewIfNullPr clsctacte
  loc_BF6243: from_stack_1 = clsctacte.RecaCtct
  loc_BF6248: FLdRfVar var_2E4
  loc_BF624B: FLdPr Me
  loc_BF624E: MemLdRfVar from_stack_1.global_52
  loc_BF6251: NewIfNullPr clsctacte
  loc_BF6254: from_stack_1 = clsctacte.TotaCtct
  loc_BF6259: ILdRf var_88
  loc_BF625C: CVarStr var_B8
  loc_BF625F: LitI4 9
  loc_BF6264: FLdRfVar var_D8
  loc_BF6267: ImpAdCallFPR4  = Chr()
  loc_BF626C: FLdRfVar var_D8
  loc_BF626F: ConcatVar var_E8
  loc_BF6273: FLdRfVar var_EC
  loc_BF6276: FLdPr Me
  loc_BF6279: MemLdRfVar from_stack_1.global_52
  loc_BF627C: NewIfNullPr clsctacte
  loc_BF627F: from_stack_1 = clsctacte.CuenCtct
  loc_BF6284: FLdZeroAd var_EC
  loc_BF6287: CVarStr var_100
  loc_BF628A: ConcatVar var_120
  loc_BF628E: LitI4 9
  loc_BF6293: FLdRfVar var_130
  loc_BF6296: ImpAdCallFPR4  = Chr()
  loc_BF629B: FLdRfVar var_130
  loc_BF629E: ConcatVar var_15C
  loc_BF62A2: FLdRfVar var_138
  loc_BF62A5: FLdPr Me
  loc_BF62A8: MemLdRfVar from_stack_1.global_52
  loc_BF62AB: NewIfNullPr clsctacte
  loc_BF62AE: from_stack_1 = clsctacte.TipoRela
  loc_BF62B3: FLdZeroAd var_138
  loc_BF62B6: CVarStr var_16C
  loc_BF62B9: ConcatVar var_17C
  loc_BF62BD: LitI4 9
  loc_BF62C2: FLdRfVar var_18C
  loc_BF62C5: ImpAdCallFPR4  = Chr()
  loc_BF62CA: FLdRfVar var_18C
  loc_BF62CD: ConcatVar var_19C
  loc_BF62D1: LitI4 1
  loc_BF62D6: LitI4 1
  loc_BF62DB: LitVarStr var_C8, "###,###,##0.00"
  loc_BF62E0: FStVarCopyObj var_1BC
  loc_BF62E3: FLdRfVar var_1BC
  loc_BF62E6: FLdRfVar var_1AC
  loc_BF62E9: FLdRfVar var_1CC
  loc_BF62EC: ImpAdCallFPR4  = Format(, )
  loc_BF62F1: FLdRfVar var_1CC
  loc_BF62F4: ConcatVar var_1DC
  loc_BF62F8: LitI4 9
  loc_BF62FD: FLdRfVar var_1EC
  loc_BF6300: ImpAdCallFPR4  = Chr()
  loc_BF6305: FLdRfVar var_1EC
  loc_BF6308: ConcatVar var_1FC
  loc_BF630C: LitI4 1
  loc_BF6311: LitI4 1
  loc_BF6316: LitVarStr var_110, "###,###,##0.00"
  loc_BF631B: FStVarCopyObj var_21C
  loc_BF631E: FLdRfVar var_21C
  loc_BF6321: FLdRfVar var_20C
  loc_BF6324: FLdRfVar var_22C
  loc_BF6327: ImpAdCallFPR4  = Format(, )
  loc_BF632C: FLdRfVar var_22C
  loc_BF632F: ConcatVar var_23C
  loc_BF6333: LitI4 9
  loc_BF6338: FLdRfVar var_24C
  loc_BF633B: ImpAdCallFPR4  = Chr()
  loc_BF6340: FLdRfVar var_24C
  loc_BF6343: ConcatVar var_25C
  loc_BF6347: LitI4 1
  loc_BF634C: LitI4 1
  loc_BF6351: LitVarStr var_28C, "###,###,##0.00"
  loc_BF6356: FStVarCopyObj var_29C
  loc_BF6359: FLdRfVar var_29C
  loc_BF635C: FLdFPR8 var_148
  loc_BF635F: CVarR8
  loc_BF6363: FLdRfVar var_2AC
  loc_BF6366: ImpAdCallFPR4  = Format(, )
  loc_BF636B: FLdRfVar var_2AC
  loc_BF636E: ConcatVar var_2BC
  loc_BF6372: LitI4 9
  loc_BF6377: FLdRfVar var_2CC
  loc_BF637A: ImpAdCallFPR4  = Chr()
  loc_BF637F: FLdRfVar var_2CC
  loc_BF6382: ConcatVar var_2DC
  loc_BF6386: LitI4 1
  loc_BF638B: LitI4 1
  loc_BF6390: LitVarStr var_314, "###,###,##0.00"
  loc_BF6395: FStVarCopyObj var_324
  loc_BF6398: FLdRfVar var_324
  loc_BF639B: FLdFPR8 var_2E4
  loc_BF639E: CVarR8
  loc_BF63A2: FLdRfVar var_334
  loc_BF63A5: ImpAdCallFPR4  = Format(, )
  loc_BF63AA: FLdRfVar var_334
  loc_BF63AD: ConcatVar var_344
  loc_BF63B1: LitI4 9
  loc_BF63B6: FLdRfVar var_354
  loc_BF63B9: ImpAdCallFPR4  = Chr()
  loc_BF63BE: FLdRfVar var_354
  loc_BF63C1: ConcatVar var_364
  loc_BF63C5: LitVarStr var_374, "No"
  loc_BF63CA: ConcatVar var_384
  loc_BF63CE: CStrVarTmp
  loc_BF63CF: FStStrNoPop var_388
  loc_BF63D2: FLdPr Me
  loc_BF63D5: MemStStrCopy
  loc_BF63D9: FFree1Str var_388
  loc_BF63DC: FFreeVar var_334 = "": var_344 = "": var_354 = "": var_364 = "": var_384 = "": var_D8 = "": var_E8 = "": var_100 = "": var_120 = "": var_130 = "": var_15C = "": var_16C = "": var_17C = "": var_18C = "": var_1AC = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_1EC = "": var_20C = "": var_21C = "": var_1FC = "": var_22C = "": var_23C = "": var_24C = "": var_27C = "": var_29C = "": var_25C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_304 = "": var_324 = ""
  loc_BF6425: FLdPr Me
  loc_BF6428: MemLdRfVar from_stack_1.global_72
  loc_BF642B: CDargRef
  loc_BF642F: FLdPr Me
  loc_BF6432: VCallAd Control_ID_ctacteUnicaFlex
  loc_BF6435: FStAdFunc var_F0
  loc_BF6438: FLdPr var_F0
  loc_BF643B: LateIdCall
  loc_BF6443: FFree1Ad var_F0
  loc_BF6446: FLdPr Me
  loc_BF6449: MemLdRfVar from_stack_1.global_52
  loc_BF644C: NewIfNullPr clsctacte
  loc_BF644F: Call clsctacte.MoveSiguiente()
  loc_BF6454: Branch loc_BF60B2
  loc_BF6457: LitI4 1
  loc_BF645C: LitI4 1
  loc_BF6461: LitVarStr var_C8, "###,###,##0.00"
  loc_BF6466: FStVarCopyObj var_D8
  loc_BF6469: FLdRfVar var_D8
  loc_BF646C: FLdRfVar var_90
  loc_BF646F: CVarRef
  loc_BF6474: FLdRfVar var_E8
  loc_BF6477: ImpAdCallFPR4  = Format(, )
  loc_BF647C: FLdRfVar var_E8
  loc_BF647F: CStrVarVal var_EC
  loc_BF6483: FLdPr Me
  loc_BF6486: VCallAd Control_ID_txtTotaDere
  loc_BF6489: FStAdFunc var_F0
  loc_BF648C: FLdPr var_F0
  loc_BF648F: Me.Text = from_stack_1
  loc_BF6494: FFree1Str var_EC
  loc_BF6497: FFree1Ad var_F0
  loc_BF649A: FFreeVar var_D8 = ""
  loc_BF64A1: LitI4 1
  loc_BF64A6: LitI4 1
  loc_BF64AB: LitVarStr var_C8, "###,###,##0.00"
  loc_BF64B0: FStVarCopyObj var_D8
  loc_BF64B3: FLdRfVar var_D8
  loc_BF64B6: FLdRfVar var_98
  loc_BF64B9: CVarRef
  loc_BF64BE: FLdRfVar var_E8
  loc_BF64C1: ImpAdCallFPR4  = Format(, )
  loc_BF64C6: FLdRfVar var_E8
  loc_BF64C9: CStrVarVal var_EC
  loc_BF64CD: FLdPr Me
  loc_BF64D0: VCallAd Control_ID_txtTotaReca
  loc_BF64D3: FStAdFunc var_F0
  loc_BF64D6: FLdPr var_F0
  loc_BF64D9: Me.Text = from_stack_1
  loc_BF64DE: FFree1Str var_EC
  loc_BF64E1: FFree1Ad var_F0
  loc_BF64E4: FFreeVar var_D8 = ""
  loc_BF64EB: LitI4 1
  loc_BF64F0: LitI4 1
  loc_BF64F5: LitVarStr var_C8, "###,###,##0.00"
  loc_BF64FA: FStVarCopyObj var_D8
  loc_BF64FD: FLdRfVar var_D8
  loc_BF6500: FLdRfVar var_A0
  loc_BF6503: CVarRef
  loc_BF6508: FLdRfVar var_E8
  loc_BF650B: ImpAdCallFPR4  = Format(, )
  loc_BF6510: FLdRfVar var_E8
  loc_BF6513: CStrVarVal var_EC
  loc_BF6517: FLdPr Me
  loc_BF651A: VCallAd Control_ID_txtTotaApre
  loc_BF651D: FStAdFunc var_F0
  loc_BF6520: FLdPr var_F0
  loc_BF6523: Me.Text = from_stack_1
  loc_BF6528: FFree1Str var_EC
  loc_BF652B: FFree1Ad var_F0
  loc_BF652E: FFreeVar var_D8 = ""
  loc_BF6535: LitI4 2
  loc_BF653A: FLdRfVar var_90
  loc_BF653D: CVarRef
  loc_BF6542: FLdRfVar var_D8
  loc_BF6545: ImpAdCallFPR4  = Round(, )
  loc_BF654A: FLdRfVar var_D8
  loc_BF654D: LitI4 2
  loc_BF6552: FLdRfVar var_98
  loc_BF6555: CVarRef
  loc_BF655A: FLdRfVar var_E8
  loc_BF655D: ImpAdCallFPR4  = Round(, )
  loc_BF6562: FLdRfVar var_E8
  loc_BF6565: AddVar var_100
  loc_BF6569: LitI4 2
  loc_BF656E: FLdRfVar var_A0
  loc_BF6571: CVarRef
  loc_BF6576: FLdRfVar var_120
  loc_BF6579: ImpAdCallFPR4  = Round(, )
  loc_BF657E: FLdRfVar var_120
  loc_BF6581: AddVar var_130
  loc_BF6585: CR4Var
  loc_BF6586: FStFPR8 var_A8
  loc_BF6589: FFreeVar var_D8 = "": var_E8 = "": var_100 = "": var_120 = ""
  loc_BF6596: LitI4 1
  loc_BF659B: LitI4 1
  loc_BF65A0: LitVarStr var_C8, "###,###,##0.00"
  loc_BF65A5: FStVarCopyObj var_D8
  loc_BF65A8: FLdRfVar var_D8
  loc_BF65AB: FLdRfVar var_A8
  loc_BF65AE: CVarRef
  loc_BF65B3: FLdRfVar var_E8
  loc_BF65B6: ImpAdCallFPR4  = Format(, )
  loc_BF65BB: FLdRfVar var_E8
  loc_BF65BE: CStrVarVal var_EC
  loc_BF65C2: FLdPr Me
  loc_BF65C5: VCallAd Control_ID_txtTotal
  loc_BF65C8: FStAdFunc var_F0
  loc_BF65CB: FLdPr var_F0
  loc_BF65CE: Me.Text = from_stack_1
  loc_BF65D3: FFree1Str var_EC
  loc_BF65D6: FFree1Ad var_F0
  loc_BF65D9: FFreeVar var_D8 = ""
  loc_BF65E0: LitI2_Byte &HFF
  loc_BF65E2: FLdPr Me
  loc_BF65E5: VCallAd Control_ID_CertificadoCmd
  loc_BF65E8: FStAdFunc var_F0
  loc_BF65EB: FLdPr var_F0
  loc_BF65EE: Me.Enabled = from_stack_1b
  loc_BF65F3: FFree1Ad var_F0
  loc_BF65F6: FLdFPR8 var_A8
  loc_BF65F9: LitI2_Byte 0
  loc_BF65FB: CR8I2
  loc_BF65FC: GtR4
  loc_BF65FD: BranchF loc_BF6619
  loc_BF6600: LitI2_Byte 0
  loc_BF6602: FLdPr Me
  loc_BF6605: VCallAd Control_ID_ConstanciadeCumplimientoTributarioCmd
  loc_BF6608: FStAdFunc var_F0
  loc_BF660B: FLdPr var_F0
  loc_BF660E: Me.Enabled = from_stack_1b
  loc_BF6613: FFree1Ad var_F0
  loc_BF6616: Branch loc_BF6639
  loc_BF6619: FLdFPR8 var_A8
  loc_BF661C: LitI2_Byte 0
  loc_BF661E: CR8I2
  loc_BF661F: LeR8
  loc_BF6620: BranchF loc_BF6639
  loc_BF6623: LitI2_Byte &HFF
  loc_BF6625: FLdPr Me
  loc_BF6628: VCallAd Control_ID_ConstanciadeCumplimientoTributarioCmd
  loc_BF662B: FStAdFunc var_F0
  loc_BF662E: FLdPr var_F0
  loc_BF6631: Me.Enabled = from_stack_1b
  loc_BF6636: FFree1Ad var_F0
  loc_BF6639: Branch loc_BF6652
  loc_BF663C: LitI2_Byte &HFF
  loc_BF663E: FLdPr Me
  loc_BF6641: VCallAd Control_ID_ConstanciadeCumplimientoTributarioCmd
  loc_BF6644: FStAdFunc var_F0
  loc_BF6647: FLdPr var_F0
  loc_BF664A: Me.Enabled = from_stack_1b
  loc_BF664F: FFree1Ad var_F0
  loc_BF6652: ExitProcHresult
End Sub

Private Sub ImprimirCuentasCmd_Click() 'A037C4
  'Data Table: 4BC1C0
  loc_A03794: ImpAdLdRf MemVar_D94098
  loc_A03797: NewIfNullAd
  loc_A0379A: CastAd
  loc_A0379D: FStAdFuncNoPop
  loc_A037A0: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A037A5: FFree1Ad var_88
  loc_A037A8: LitVar_Missing var_A8
  loc_A037AB: PopAdLdVar
  loc_A037AC: LitVarI4
  loc_A037B4: PopAdLdVar
  loc_A037B5: ImpAdLdRf MemVar_D94098
  loc_A037B8: NewIfNullPr rptCuentasporCuilCuit
  loc_A037BB: rptCuentasporCuilCuit.Show from_stack_1, from_stack_2
  loc_A037C0: ExitProcHresult
End Sub

Private Sub NumeCtaCmd_Click() 'A8D954
  'Data Table: 4BC1C0
  loc_A8D8B0: LitVar_Missing var_A4
  loc_A8D8B3: PopAdLdVar
  loc_A8D8B4: LitVarI4
  loc_A8D8BC: PopAdLdVar
  loc_A8D8BD: ImpAdLdRf MemVar_D940AC
  loc_A8D8C0: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A8D8C3: dlgBuscarPersonaPorCucuPers.Show from_stack_1, from_stack_2
  loc_A8D8C8: FLdRfVar var_A8
  loc_A8D8CB: ImpAdLdRf MemVar_D940AC
  loc_A8D8CE: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A8D8D1: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A8D8D6: ILdRf var_A8
  loc_A8D8D9: LitStr vbNullString
  loc_A8D8DC: NeStr
  loc_A8D8DE: FFree1Str var_A8
  loc_A8D8E1: BranchF loc_A8D94C
  loc_A8D8E4: FLdRfVar var_A8
  loc_A8D8E7: ImpAdLdRf MemVar_D940AC
  loc_A8D8EA: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A8D8ED: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A8D8F2: ILdRf var_A8
  loc_A8D8F5: FLdPr Me
  loc_A8D8F8: VCallAd Control_ID_OKButton
  loc_A8D8FB: FStAdFunc var_AC
  loc_A8D8FE: FLdPr var_AC
  loc_A8D901: dlgBuscarPersonaPorCucuPers.TextBox.Text = from_stack_1
  loc_A8D906: FFree1Str var_A8
  loc_A8D909: FFree1Ad var_AC
  loc_A8D90C: LitStr vbNullString
  loc_A8D90F: ImpAdLdRf MemVar_D940AC
  loc_A8D912: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A8D915: Call dlgBuscarPersonaPorCucuPers.sPasaCodigoPut(from_stack_1v)
  loc_A8D91A: FLdRfVar var_A8
  loc_A8D91D: ImpAdLdRf MemVar_D940AC
  loc_A8D920: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A8D923: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaDetalleGet()
  loc_A8D928: ILdRf var_A8
  loc_A8D92B: FLdPr Me
  loc_A8D92E: VCallAd Control_ID_
  loc_A8D931: FStAdFunc var_AC
  loc_A8D934: FLdPr var_AC
  loc_A8D937: dlgBuscarPersonaPorCucuPers.Label.Caption = from_stack_1
  loc_A8D93C: FFree1Str var_A8
  loc_A8D93F: FFree1Ad var_AC
  loc_A8D942: LitI2_Byte 0
  loc_A8D944: PopTmpLdAd2 var_AE
  loc_A8D947: Call CucuPersTxt_Validate(from_stack_1v)
  loc_A8D94C: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A8D951: ExitProcHresult
  loc_A8D952: FLdPr NumeCtaCmd_Click800
End Sub

Private Sub ctacteUnicaFlex_Click() 'C5FDB8
  'Data Table: 4BC1C0
  loc_C5EF44: Call Proc_23_16_B0D6E4()
  loc_C5EF49: FLdPr Me
  loc_C5EF4C: VCallAd Control_ID_ctacteUnicaFlex
  loc_C5EF4F: FStAdFunc var_E4
  loc_C5EF52: FLdPr var_E4
  loc_C5EF55: LateIdLdVar var_F4 DispID_10 0
  loc_C5EF5C: CI4Var
  loc_C5EF5E: CVarI4
  loc_C5EF62: PopAdLdVar
  loc_C5EF63: LitVarI4
  loc_C5EF6B: PopAdLdVar
  loc_C5EF6C: FLdPr Me
  loc_C5EF6F: VCallAd Control_ID_ctacteUnicaFlex
  loc_C5EF72: FStAdFunc var_138
  loc_C5EF75: FLdPr var_138
  loc_C5EF78: LateIdCallLdVar
  loc_C5EF82: CStrVarTmp
  loc_C5EF83: FStStr var_14C
  loc_C5EF86: FFreeAd var_E4 = ""
  loc_C5EF8D: FFreeVar var_F4 = ""
  loc_C5EF94: ILdRf var_14C
  loc_C5EF97: LitStr "Inmueble"
  loc_C5EF9A: EqStr
  loc_C5EF9C: BranchF loc_C5EFAA
  loc_C5EF9F: LitI2_Byte 1
  loc_C5EFA1: CUI1I2
  loc_C5EFA3: ImpAdStUI1 MemVar_D93038
  loc_C5EFA7: Branch loc_C5EFE9
  loc_C5EFAA: ILdRf var_14C
  loc_C5EFAD: LitStr "Comercio"
  loc_C5EFB0: EqStr
  loc_C5EFB2: BranchF loc_C5EFC0
  loc_C5EFB5: LitI2_Byte 2
  loc_C5EFB7: CUI1I2
  loc_C5EFB9: ImpAdStUI1 MemVar_D93038
  loc_C5EFBD: Branch loc_C5EFE9
  loc_C5EFC0: ILdRf var_14C
  loc_C5EFC3: LitStr "Deudores Varios"
  loc_C5EFC6: EqStr
  loc_C5EFC8: BranchF loc_C5EFD6
  loc_C5EFCB: LitI2_Byte 3
  loc_C5EFCD: CUI1I2
  loc_C5EFCF: ImpAdStUI1 MemVar_D93038
  loc_C5EFD3: Branch loc_C5EFE9
  loc_C5EFD6: ILdRf var_14C
  loc_C5EFD9: LitStr "Cementerio"
  loc_C5EFDC: EqStr
  loc_C5EFDE: BranchF loc_C5EFE9
  loc_C5EFE1: LitI2_Byte 4
  loc_C5EFE3: CUI1I2
  loc_C5EFE5: ImpAdStUI1 MemVar_D93038
  loc_C5EFE9: FLdPr Me
  loc_C5EFEC: VCallAd Control_ID_ctacteUnicaFlex
  loc_C5EFEF: FStAdFunc var_E4
  loc_C5EFF2: FLdPr var_E4
  loc_C5EFF5: LateIdLdVar var_F4 DispID_10 0
  loc_C5EFFC: CI4Var
  loc_C5EFFE: CVarI4
  loc_C5F002: PopAdLdVar
  loc_C5F003: LitVarI4
  loc_C5F00B: PopAdLdVar
  loc_C5F00C: FLdPr Me
  loc_C5F00F: VCallAd Control_ID_ctacteUnicaFlex
  loc_C5F012: FStAdFunc var_138
  loc_C5F015: FLdPr var_138
  loc_C5F018: LateIdCallLdVar
  loc_C5F022: PopAd
  loc_C5F024: FLdPr Me
  loc_C5F027: VCallAd Control_ID_FechVencMsk
  loc_C5F02A: FStAdFunc var_150
  loc_C5F02D: FLdPr var_150
  loc_C5F030: LateIdLdVar var_160 DispID_15 0
  loc_C5F037: CStrVarTmp
  loc_C5F038: FStStrNoPop var_168
  loc_C5F03B: FLdRfVar var_148
  loc_C5F03E: CStrVarTmp
  loc_C5F03F: FStStrNoPop var_164
  loc_C5F042: ImpAdLdUI1
  loc_C5F046: FLdPr Me
  loc_C5F049: MemLdRfVar from_stack_1.global_52
  loc_C5F04C: NewIfNullPr clsctacte
  loc_C5F04F: Call clsctacte.CreaTemporalDeuda(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C5F054: FFreeStr var_164 = ""
  loc_C5F05B: FFreeAd var_E4 = "": var_138 = ""
  loc_C5F064: FFreeVar var_F4 = "": var_148 = ""
  loc_C5F06D: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct FROM tmp_ctacte "
  loc_C5F070: LitStr " GROUP BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct"
  loc_C5F073: ConcatStr
  loc_C5F074: FStStrNoPop var_164
  loc_C5F077: FLdPr Me
  loc_C5F07A: MemLdRfVar from_stack_1.global_52
  loc_C5F07D: NewIfNullPr clsctacte
  loc_C5F080: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C5F085: FFree1Str var_164
  loc_C5F088: FLdRfVar var_16C
  loc_C5F08B: FLdPr Me
  loc_C5F08E: MemLdRfVar from_stack_1.global_52
  loc_C5F091: NewIfNullPr clsctacte
  loc_C5F094: from_stack_1 = clsctacte.RecordCount
  loc_C5F099: ILdRf var_16C
  loc_C5F09C: LitI4 0
  loc_C5F0A1: GtI4
  loc_C5F0A2: BranchF loc_C5FDB7
  loc_C5F0A5: FLdPr Me
  loc_C5F0A8: MemLdRfVar from_stack_1.global_52
  loc_C5F0AB: NewIfNullPr clsctacte
  loc_C5F0AE: Call clsctacte.MoveFirst()
  loc_C5F0B3: FLdRfVar var_16E
  loc_C5F0B6: FLdPr Me
  loc_C5F0B9: MemLdRfVar from_stack_1.global_52
  loc_C5F0BC: NewIfNullPr clsctacte
  loc_C5F0BF: from_stack_1 = clsctacte.EOF
  loc_C5F0C4: FLdI2 var_16E
  loc_C5F0C7: NotI4
  loc_C5F0C8: BranchF loc_C5FDB7
  loc_C5F0CB: LitI2_Byte 0
  loc_C5F0CD: CR8I2
  loc_C5F0CE: FStFPR8 var_C8
  loc_C5F0D1: LitI2_Byte 0
  loc_C5F0D3: CR8I2
  loc_C5F0D4: FStFPR8 var_D0
  loc_C5F0D7: LitI2_Byte 0
  loc_C5F0D9: CR8I2
  loc_C5F0DA: FStFPR8 var_D8
  loc_C5F0DD: LitI2_Byte 0
  loc_C5F0DF: CR8I2
  loc_C5F0E0: FStFPR8 var_E0
  loc_C5F0E3: LitStr "SELECT * FROM tmp_ctacte LEFT JOIN tipomovi ON tmp_ctacte.CodiTimo = tipomovi.CodiTimo"
  loc_C5F0E6: LitStr " WHERE tmp_ctacte.CodiOfic = "
  loc_C5F0E9: ConcatStr
  loc_C5F0EA: FStStrNoPop var_164
  loc_C5F0ED: FLdRfVar var_16E
  loc_C5F0F0: FLdPr Me
  loc_C5F0F3: MemLdRfVar from_stack_1.global_52
  loc_C5F0F6: NewIfNullPr clsctacte
  loc_C5F0F9: from_stack_1 = clsctacte.CodiOfic
  loc_C5F0FE: FLdI2 var_16E
  loc_C5F101: CStrUI1
  loc_C5F103: FStStrNoPop var_168
  loc_C5F106: ConcatStr
  loc_C5F107: FStStrNoPop var_174
  loc_C5F10A: LitStr " AND tmp_ctacte.CuenCtct = '"
  loc_C5F10D: ConcatStr
  loc_C5F10E: FStStrNoPop var_17C
  loc_C5F111: FLdRfVar var_178
  loc_C5F114: FLdPr Me
  loc_C5F117: MemLdRfVar from_stack_1.global_52
  loc_C5F11A: NewIfNullPr clsctacte
  loc_C5F11D: from_stack_1 = clsctacte.CuenCtct
  loc_C5F122: ILdRf var_178
  loc_C5F125: ConcatStr
  loc_C5F126: FStStrNoPop var_180
  loc_C5F129: LitStr "'"
  loc_C5F12C: ConcatStr
  loc_C5F12D: FStStrNoPop var_184
  loc_C5F130: LitStr " AND tmp_ctacte.PeriCtct = "
  loc_C5F133: ConcatStr
  loc_C5F134: FStStrNoPop var_18C
  loc_C5F137: FLdRfVar var_186
  loc_C5F13A: FLdPr Me
  loc_C5F13D: MemLdRfVar from_stack_1.global_52
  loc_C5F140: NewIfNullPr clsctacte
  loc_C5F143: from_stack_1 = clsctacte.PeriCtct
  loc_C5F148: FLdI2 var_186
  loc_C5F14B: CStrUI1
  loc_C5F14D: FStStrNoPop var_190
  loc_C5F150: ConcatStr
  loc_C5F151: FStStrNoPop var_194
  loc_C5F154: LitStr " ORDER BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct, tmp_ctacte.BimeCtct, tmp_ctacte.NumeCtct, tmp_ctacte.MoviCtct"
  loc_C5F157: ConcatStr
  loc_C5F158: FStStrNoPop var_198
  loc_C5F15B: FLdPr Me
  loc_C5F15E: MemLdRfVar from_stack_1.global_56
  loc_C5F161: NewIfNullPr clsctacte
  loc_C5F164: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C5F169: FFreeStr var_164 = "": var_168 = "": var_174 = "": var_17C = "": var_178 = "": var_180 = "": var_184 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_C5F182: FLdRfVar var_16C
  loc_C5F185: FLdPr Me
  loc_C5F188: MemLdRfVar from_stack_1.global_56
  loc_C5F18B: NewIfNullPr clsctacte
  loc_C5F18E: from_stack_1 = clsctacte.RecordCount
  loc_C5F193: ILdRf var_16C
  loc_C5F196: LitI4 0
  loc_C5F19B: GtI4
  loc_C5F19C: BranchF loc_C5FDA6
  loc_C5F19F: FLdPr Me
  loc_C5F1A2: MemLdRfVar from_stack_1.global_56
  loc_C5F1A5: NewIfNullPr clsctacte
  loc_C5F1A8: Call clsctacte.MoveFirst()
  loc_C5F1AD: FLdRfVar var_16E
  loc_C5F1B0: FLdPr Me
  loc_C5F1B3: MemLdRfVar from_stack_1.global_56
  loc_C5F1B6: NewIfNullPr clsctacte
  loc_C5F1B9: from_stack_1 = clsctacte.EOF
  loc_C5F1BE: FLdI2 var_16E
  loc_C5F1C1: NotI4
  loc_C5F1C2: BranchF loc_C5F991
  loc_C5F1C5: FLdRfVar var_1A0
  loc_C5F1C8: FLdPr Me
  loc_C5F1CB: MemLdRfVar from_stack_1.global_56
  loc_C5F1CE: NewIfNullPr clsctacte
  loc_C5F1D1: from_stack_1 = clsctacte.DebeCtct
  loc_C5F1D6: LitI4 2
  loc_C5F1DB: FLdFPR8 var_C8
  loc_C5F1DE: FnCDblR8
  loc_C5F1E0: FLdFPR8 var_1A0
  loc_C5F1E3: FnCDblR8
  loc_C5F1E5: AddR8
  loc_C5F1E6: CVarR8
  loc_C5F1EA: FLdRfVar var_148
  loc_C5F1ED: ImpAdCallFPR4  = Round(, )
  loc_C5F1F2: FLdRfVar var_148
  loc_C5F1F5: CR4Var
  loc_C5F1F6: FStFPR8 var_C8
  loc_C5F1F9: FFreeVar var_F4 = ""
  loc_C5F200: FLdRfVar var_1A0
  loc_C5F203: FLdPr Me
  loc_C5F206: MemLdRfVar from_stack_1.global_56
  loc_C5F209: NewIfNullPr clsctacte
  loc_C5F20C: from_stack_1 = clsctacte.CredCtct
  loc_C5F211: LitI4 2
  loc_C5F216: FLdFPR8 var_D0
  loc_C5F219: FnCDblR8
  loc_C5F21B: FLdFPR8 var_1A0
  loc_C5F21E: FnCDblR8
  loc_C5F220: AddR8
  loc_C5F221: CVarR8
  loc_C5F225: FLdRfVar var_148
  loc_C5F228: ImpAdCallFPR4  = Round(, )
  loc_C5F22D: FLdRfVar var_148
  loc_C5F230: CR4Var
  loc_C5F231: FStFPR8 var_D0
  loc_C5F234: FFreeVar var_F4 = ""
  loc_C5F23B: FLdRfVar var_1A0
  loc_C5F23E: FLdPr Me
  loc_C5F241: MemLdRfVar from_stack_1.global_56
  loc_C5F244: NewIfNullPr clsctacte
  loc_C5F247: from_stack_1 = clsctacte.RecaCtct
  loc_C5F24C: LitI4 2
  loc_C5F251: FLdFPR8 var_D8
  loc_C5F254: FnCDblR8
  loc_C5F256: FLdFPR8 var_1A0
  loc_C5F259: FnCDblR8
  loc_C5F25B: AddR8
  loc_C5F25C: CVarR8
  loc_C5F260: FLdRfVar var_148
  loc_C5F263: ImpAdCallFPR4  = Round(, )
  loc_C5F268: FLdRfVar var_148
  loc_C5F26B: CR4Var
  loc_C5F26C: FStFPR8 var_D8
  loc_C5F26F: FFreeVar var_F4 = ""
  loc_C5F276: FLdRfVar var_16E
  loc_C5F279: FLdPr Me
  loc_C5F27C: MemLdRfVar from_stack_1.global_56
  loc_C5F27F: NewIfNullPr clsctacte
  loc_C5F282: from_stack_1 = clsctacte.BimeCtct
  loc_C5F287: LitI4 1
  loc_C5F28C: LitI4 1
  loc_C5F291: LitVarStr var_114, "00"
  loc_C5F296: FStVarCopyObj var_148
  loc_C5F299: FLdRfVar var_148
  loc_C5F29C: FLdI2 var_16E
  loc_C5F29F: CVarI2 var_F4
  loc_C5F2A2: FLdRfVar var_160
  loc_C5F2A5: ImpAdCallFPR4  = Format(, )
  loc_C5F2AA: FLdRfVar var_160
  loc_C5F2AD: LitVarStr var_124, "/"
  loc_C5F2B2: ConcatVar var_1B0
  loc_C5F2B6: FLdRfVar var_186
  loc_C5F2B9: FLdPr Me
  loc_C5F2BC: MemLdRfVar from_stack_1.global_56
  loc_C5F2BF: NewIfNullPr clsctacte
  loc_C5F2C2: from_stack_1 = clsctacte.PeriCtct
  loc_C5F2C7: FLdI2 var_186
  loc_C5F2CA: CVarI2 var_134
  loc_C5F2CD: ConcatVar var_1C0
  loc_C5F2D1: CStrVarTmp
  loc_C5F2D2: FLdRfVar var_94
  loc_C5F2D5: StFixedStrFree
  loc_C5F2D9: FFreeVar var_F4 = "": var_148 = "": var_160 = "": var_1B0 = ""
  loc_C5F2E6: FLdRfVar var_16C
  loc_C5F2E9: FLdPr Me
  loc_C5F2EC: MemLdRfVar from_stack_1.global_56
  loc_C5F2EF: NewIfNullPr clsctacte
  loc_C5F2F2: from_stack_1 = clsctacte.NumeBole
  loc_C5F2F7: FLdRfVar var_16E
  loc_C5F2FA: FLdPr Me
  loc_C5F2FD: MemLdRfVar from_stack_1.global_56
  loc_C5F300: NewIfNullPr clsctacte
  loc_C5F303: from_stack_1 = clsctacte.PeriBole
  loc_C5F308: LitI4 1
  loc_C5F30D: LitI4 1
  loc_C5F312: LitVarStr var_114, "#######0"
  loc_C5F317: FStVarCopyObj var_148
  loc_C5F31A: FLdRfVar var_148
  loc_C5F31D: ILdRf var_16C
  loc_C5F320: CVarI4
  loc_C5F324: FLdRfVar var_160
  loc_C5F327: ImpAdCallFPR4  = Format(, )
  loc_C5F32C: FLdRfVar var_160
  loc_C5F32F: LitVarStr var_124, "-"
  loc_C5F334: ConcatVar var_1B0
  loc_C5F338: LitI4 1
  loc_C5F33D: LitI4 1
  loc_C5F342: LitVarStr var_1D0, "0000"
  loc_C5F347: FStVarCopyObj var_1E0
  loc_C5F34A: FLdRfVar var_1E0
  loc_C5F34D: FLdI2 var_16E
  loc_C5F350: CVarI2 var_1C0
  loc_C5F353: FLdRfVar var_1F0
  loc_C5F356: ImpAdCallFPR4  = Format(, )
  loc_C5F35B: FLdRfVar var_1F0
  loc_C5F35E: ConcatVar var_200
  loc_C5F362: CStrVarTmp
  loc_C5F363: FLdRfVar var_AE
  loc_C5F366: StFixedStrRFree
  loc_C5F36A: FFreeVar var_F4 = "": var_148 = "": var_160 = "": var_1C0 = "": var_1E0 = "": var_1B0 = "": var_1F0 = ""
  loc_C5F37D: FLdRfVar var_1A0
  loc_C5F380: FLdPr Me
  loc_C5F383: MemLdRfVar from_stack_1.global_56
  loc_C5F386: NewIfNullPr clsctacte
  loc_C5F389: from_stack_1 = clsctacte.DebeCtct
  loc_C5F38E: FLdFPR8 var_1A0
  loc_C5F391: FnCDblR8
  loc_C5F393: LitI2_Byte 0
  loc_C5F395: CR8I2
  loc_C5F396: NeR8
  loc_C5F397: BranchF loc_C5F3E2
  loc_C5F39A: FLdRfVar var_1A0
  loc_C5F39D: FLdPr Me
  loc_C5F3A0: MemLdRfVar from_stack_1.global_56
  loc_C5F3A3: NewIfNullPr clsctacte
  loc_C5F3A6: from_stack_1 = clsctacte.DebeCtct
  loc_C5F3AB: LitI4 1
  loc_C5F3B0: LitI4 1
  loc_C5F3B5: LitVarStr var_114, "###,###,##0.00"
  loc_C5F3BA: FStVarCopyObj var_148
  loc_C5F3BD: FLdRfVar var_148
  loc_C5F3C0: FLdFPR8 var_1A0
  loc_C5F3C3: CVarR8
  loc_C5F3C7: FLdRfVar var_160
  loc_C5F3CA: ImpAdCallFPR4  = Format(, )
  loc_C5F3CF: FLdRfVar var_160
  loc_C5F3D2: CStrVarTmp
  loc_C5F3D3: FStStr var_B4
  loc_C5F3D6: FFreeVar var_F4 = "": var_148 = ""
  loc_C5F3DF: Branch loc_C5F3E8
  loc_C5F3E2: LitStr vbNullString
  loc_C5F3E5: FStStrCopy var_B4
  loc_C5F3E8: FLdRfVar var_1A0
  loc_C5F3EB: FLdPr Me
  loc_C5F3EE: MemLdRfVar from_stack_1.global_56
  loc_C5F3F1: NewIfNullPr clsctacte
  loc_C5F3F4: from_stack_1 = clsctacte.CredCtct
  loc_C5F3F9: FLdFPR8 var_1A0
  loc_C5F3FC: FnCDblR8
  loc_C5F3FE: LitI2_Byte 0
  loc_C5F400: CR8I2
  loc_C5F401: NeR8
  loc_C5F402: BranchF loc_C5F44D
  loc_C5F405: FLdRfVar var_1A0
  loc_C5F408: FLdPr Me
  loc_C5F40B: MemLdRfVar from_stack_1.global_56
  loc_C5F40E: NewIfNullPr clsctacte
  loc_C5F411: from_stack_1 = clsctacte.CredCtct
  loc_C5F416: LitI4 1
  loc_C5F41B: LitI4 1
  loc_C5F420: LitVarStr var_114, "###,###,##0.00"
  loc_C5F425: FStVarCopyObj var_148
  loc_C5F428: FLdRfVar var_148
  loc_C5F42B: FLdFPR8 var_1A0
  loc_C5F42E: CVarR8
  loc_C5F432: FLdRfVar var_160
  loc_C5F435: ImpAdCallFPR4  = Format(, )
  loc_C5F43A: FLdRfVar var_160
  loc_C5F43D: CStrVarTmp
  loc_C5F43E: FStStr var_B8
  loc_C5F441: FFreeVar var_F4 = "": var_148 = ""
  loc_C5F44A: Branch loc_C5F453
  loc_C5F44D: LitStr vbNullString
  loc_C5F450: FStStrCopy var_B8
  loc_C5F453: FLdRfVar var_1A0
  loc_C5F456: FLdPr Me
  loc_C5F459: MemLdRfVar from_stack_1.global_56
  loc_C5F45C: NewIfNullPr clsctacte
  loc_C5F45F: from_stack_1 = clsctacte.RecaCtct
  loc_C5F464: FLdFPR8 var_1A0
  loc_C5F467: FnCDblR8
  loc_C5F469: LitI2_Byte 0
  loc_C5F46B: CR8I2
  loc_C5F46C: NeR8
  loc_C5F46D: BranchF loc_C5F4B8
  loc_C5F470: FLdRfVar var_1A0
  loc_C5F473: FLdPr Me
  loc_C5F476: MemLdRfVar from_stack_1.global_56
  loc_C5F479: NewIfNullPr clsctacte
  loc_C5F47C: from_stack_1 = clsctacte.RecaCtct
  loc_C5F481: LitI4 1
  loc_C5F486: LitI4 1
  loc_C5F48B: LitVarStr var_114, "###,###,##0.00"
  loc_C5F490: FStVarCopyObj var_148
  loc_C5F493: FLdRfVar var_148
  loc_C5F496: FLdFPR8 var_1A0
  loc_C5F499: CVarR8
  loc_C5F49D: FLdRfVar var_160
  loc_C5F4A0: ImpAdCallFPR4  = Format(, )
  loc_C5F4A5: FLdRfVar var_160
  loc_C5F4A8: CStrVarTmp
  loc_C5F4A9: FStStr var_BC
  loc_C5F4AC: FFreeVar var_F4 = "": var_148 = ""
  loc_C5F4B5: Branch loc_C5F4BE
  loc_C5F4B8: LitStr vbNullString
  loc_C5F4BB: FStStrCopy var_BC
  loc_C5F4BE: FLdRfVar var_1A0
  loc_C5F4C1: FLdPr Me
  loc_C5F4C4: MemLdRfVar from_stack_1.global_56
  loc_C5F4C7: NewIfNullPr clsctacte
  loc_C5F4CA: from_stack_1 = clsctacte.SaldCtct
  loc_C5F4CF: FLdRfVar var_208
  loc_C5F4D2: FLdPr Me
  loc_C5F4D5: MemLdRfVar from_stack_1.global_56
  loc_C5F4D8: NewIfNullPr clsctacte
  loc_C5F4DB: from_stack_1 = clsctacte.RecaCtct
  loc_C5F4E0: LitI4 2
  loc_C5F4E5: FLdFPR8 var_1A0
  loc_C5F4E8: FnCDblR8
  loc_C5F4EA: FLdFPR8 var_208
  loc_C5F4ED: FnCDblR8
  loc_C5F4EF: AddR8
  loc_C5F4F0: CVarR8
  loc_C5F4F4: FLdRfVar var_148
  loc_C5F4F7: ImpAdCallFPR4  = Round(, )
  loc_C5F4FC: LitI4 1
  loc_C5F501: LitI4 1
  loc_C5F506: LitVarStr var_114, "###,###,##0.00"
  loc_C5F50B: FStVarCopyObj var_160
  loc_C5F50E: FLdRfVar var_160
  loc_C5F511: FLdRfVar var_148
  loc_C5F514: FLdRfVar var_1B0
  loc_C5F517: ImpAdCallFPR4  = Format(, )
  loc_C5F51C: FLdRfVar var_1B0
  loc_C5F51F: CStrVarTmp
  loc_C5F520: FStStr var_C0
  loc_C5F523: FFreeVar var_F4 = "": var_148 = "": var_160 = ""
  loc_C5F52E: FLdRfVar var_94
  loc_C5F531: LdFixedStr
  loc_C5F534: CVarStr var_148
  loc_C5F537: LitI4 9
  loc_C5F53C: FLdRfVar var_F4
  loc_C5F53F: ImpAdCallFPR4  = Chr()
  loc_C5F544: FLdRfVar var_F4
  loc_C5F547: ConcatVar var_160
  loc_C5F54B: FLdRfVar var_AE
  loc_C5F54E: LdFixedStr
  loc_C5F551: CVarStr var_1B0
  loc_C5F554: ConcatVar var_1C0
  loc_C5F558: LitI4 9
  loc_C5F55D: FLdRfVar var_1E0
  loc_C5F560: ImpAdCallFPR4  = Chr()
  loc_C5F565: FLdRfVar var_1E0
  loc_C5F568: ConcatVar var_1F0
  loc_C5F56C: FLdRfVar var_164
  loc_C5F56F: FLdPr Me
  loc_C5F572: MemLdRfVar from_stack_1.global_56
  loc_C5F575: NewIfNullPr clsctacte
  loc_C5F578: from_stack_1 = clsctacte.FealCtct
  loc_C5F57D: FLdZeroAd var_164
  loc_C5F580: CVarStr var_200
  loc_C5F583: ConcatVar var_218
  loc_C5F587: LitI4 9
  loc_C5F58C: FLdRfVar var_228
  loc_C5F58F: ImpAdCallFPR4  = Chr()
  loc_C5F594: FLdRfVar var_228
  loc_C5F597: ConcatVar var_238
  loc_C5F59B: FLdRfVar var_248
  loc_C5F59E: FLdPr Me
  loc_C5F5A1: MemLdRfVar from_stack_1.global_56
  loc_C5F5A4: NewIfNullPr clsctacte
  loc_C5F5A7: from_stack_1 = clsctacte.FeveCtct
  loc_C5F5AC: FLdRfVar var_248
  loc_C5F5AF: ConcatVar var_258
  loc_C5F5B3: LitI4 9
  loc_C5F5B8: FLdRfVar var_268
  loc_C5F5BB: ImpAdCallFPR4  = Chr()
  loc_C5F5C0: FLdRfVar var_268
  loc_C5F5C3: ConcatVar var_278
  loc_C5F5C7: FLdRfVar var_168
  loc_C5F5CA: FLdPr Me
  loc_C5F5CD: MemLdRfVar from_stack_1.global_56
  loc_C5F5D0: NewIfNullPr clsctacte
  loc_C5F5D3: from_stack_1 = clsctacte.CodiConc
  loc_C5F5D8: FLdZeroAd var_168
  loc_C5F5DB: CVarStr var_288
  loc_C5F5DE: ConcatVar var_298
  loc_C5F5E2: LitI4 9
  loc_C5F5E7: FLdRfVar var_2A8
  loc_C5F5EA: ImpAdCallFPR4  = Chr()
  loc_C5F5EF: FLdRfVar var_2A8
  loc_C5F5F2: ConcatVar var_2B8
  loc_C5F5F6: FLdRfVar var_16C
  loc_C5F5F9: FLdPr Me
  loc_C5F5FC: MemLdRfVar from_stack_1.global_56
  loc_C5F5FF: NewIfNullPr clsctacte
  loc_C5F602: from_stack_1 = clsctacte.CodiFapa
  loc_C5F607: ILdRf var_16C
  loc_C5F60A: CVarI4
  loc_C5F60E: ConcatVar var_2C8
  loc_C5F612: LitI4 9
  loc_C5F617: FLdRfVar var_2D8
  loc_C5F61A: ImpAdCallFPR4  = Chr()
  loc_C5F61F: FLdRfVar var_2D8
  loc_C5F622: ConcatVar var_2E8
  loc_C5F626: FLdRfVar var_2EC
  loc_C5F629: FLdPr Me
  loc_C5F62C: MemLdRfVar from_stack_1.global_56
  loc_C5F62F: NewIfNullPr clsctacte
  loc_C5F632: from_stack_1 = clsctacte.NumeApre
  loc_C5F637: ILdRf var_2EC
  loc_C5F63A: CVarI4
  loc_C5F63E: ConcatVar var_2FC
  loc_C5F642: LitI4 9
  loc_C5F647: FLdRfVar var_30C
  loc_C5F64A: ImpAdCallFPR4  = Chr()
  loc_C5F64F: FLdRfVar var_30C
  loc_C5F652: ConcatVar var_31C
  loc_C5F656: FLdRfVar var_174
  loc_C5F659: FLdPr Me
  loc_C5F65C: MemLdRfVar from_stack_1.global_56
  loc_C5F65F: NewIfNullPr clsctacte
  loc_C5F662: from_stack_1 = clsctacte.ExpeCtct
  loc_C5F667: FLdZeroAd var_174
  loc_C5F66A: CVarStr var_32C
  loc_C5F66D: ConcatVar var_33C
  loc_C5F671: LitI4 9
  loc_C5F676: FLdRfVar var_34C
  loc_C5F679: ImpAdCallFPR4  = Chr()
  loc_C5F67E: FLdRfVar var_34C
  loc_C5F681: ConcatVar var_35C
  loc_C5F685: FLdRfVar var_178
  loc_C5F688: FLdPr Me
  loc_C5F68B: MemLdRfVar from_stack_1.global_56
  loc_C5F68E: NewIfNullPr clsctacte
  loc_C5F691: from_stack_1 = clsctacte.AbreTimo
  loc_C5F696: FLdZeroAd var_178
  loc_C5F699: CVarStr var_36C
  loc_C5F69C: ConcatVar var_37C
  loc_C5F6A0: LitI4 9
  loc_C5F6A5: FLdRfVar var_38C
  loc_C5F6A8: ImpAdCallFPR4  = Chr()
  loc_C5F6AD: FLdRfVar var_38C
  loc_C5F6B0: ConcatVar var_39C
  loc_C5F6B4: ILdRf var_B4
  loc_C5F6B7: CVarStr var_124
  loc_C5F6BA: ConcatVar var_3AC
  loc_C5F6BE: LitI4 9
  loc_C5F6C3: FLdRfVar var_3BC
  loc_C5F6C6: ImpAdCallFPR4  = Chr()
  loc_C5F6CB: FLdRfVar var_3BC
  loc_C5F6CE: ConcatVar var_3CC
  loc_C5F6D2: ILdRf var_B8
  loc_C5F6D5: CVarStr var_134
  loc_C5F6D8: ConcatVar var_3DC
  loc_C5F6DC: LitI4 9
  loc_C5F6E1: FLdRfVar var_3EC
  loc_C5F6E4: ImpAdCallFPR4  = Chr()
  loc_C5F6E9: FLdRfVar var_3EC
  loc_C5F6EC: ConcatVar var_3FC
  loc_C5F6F0: ILdRf var_BC
  loc_C5F6F3: CVarStr var_1D0
  loc_C5F6F6: ConcatVar var_40C
  loc_C5F6FA: LitI4 9
  loc_C5F6FF: FLdRfVar var_41C
  loc_C5F702: ImpAdCallFPR4  = Chr()
  loc_C5F707: FLdRfVar var_41C
  loc_C5F70A: ConcatVar var_42C
  loc_C5F70E: ILdRf var_C0
  loc_C5F711: CVarStr var_43C
  loc_C5F714: ConcatVar var_44C
  loc_C5F718: LitI4 9
  loc_C5F71D: FLdRfVar var_45C
  loc_C5F720: ImpAdCallFPR4  = Chr()
  loc_C5F725: FLdRfVar var_45C
  loc_C5F728: ConcatVar var_46C
  loc_C5F72C: FLdRfVar var_470
  loc_C5F72F: FLdPr Me
  loc_C5F732: MemLdRfVar from_stack_1.global_56
  loc_C5F735: NewIfNullPr clsctacte
  loc_C5F738: from_stack_1 = clsctacte.NumeCtct
  loc_C5F73D: ILdRf var_470
  loc_C5F740: CVarI4
  loc_C5F744: ConcatVar var_490
  loc_C5F748: LitI4 9
  loc_C5F74D: FLdRfVar var_4A0
  loc_C5F750: ImpAdCallFPR4  = Chr()
  loc_C5F755: FLdRfVar var_4A0
  loc_C5F758: ConcatVar var_4B0
  loc_C5F75C: FLdRfVar var_16E
  loc_C5F75F: FLdPr Me
  loc_C5F762: MemLdRfVar from_stack_1.global_56
  loc_C5F765: NewIfNullPr clsctacte
  loc_C5F768: from_stack_1 = clsctacte.MoviCtct
  loc_C5F76D: FLdI2 var_16E
  loc_C5F770: CVarI2 var_4C0
  loc_C5F773: ConcatVar var_4D0
  loc_C5F777: CStrVarTmp
  loc_C5F778: FStStrNoPop var_17C
  loc_C5F77B: FLdPr Me
  loc_C5F77E: MemStStrCopy
  loc_C5F782: FFree1Str var_17C
  loc_C5F785: FFreeVar var_37C = "": var_38C = "": var_39C = "": var_3AC = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = "": var_3FC = "": var_40C = "": var_41C = "": var_42C = "": var_44C = "": var_45C = "": var_46C = "": var_490 = "": var_4A0 = "": var_4B0 = "": var_4D0 = "": var_148 = "": var_F4 = "": var_160 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_34C = "": var_35C = ""
  loc_C5F7EA: FLdPr Me
  loc_C5F7ED: MemLdRfVar from_stack_1.global_72
  loc_C5F7F0: CDargRef
  loc_C5F7F4: FLdPr Me
  loc_C5F7F7: VCallAd Control_ID_ctacteFlex
  loc_C5F7FA: FStAdFunc var_E4
  loc_C5F7FD: FLdPr var_E4
  loc_C5F800: LateIdCall
  loc_C5F808: FFree1Ad var_E4
  loc_C5F80B: FLdRfVar var_16E
  loc_C5F80E: FLdPr Me
  loc_C5F811: MemLdRfVar from_stack_1.global_56
  loc_C5F814: NewIfNullPr clsctacte
  loc_C5F817: from_stack_1 = clsctacte.MoviCtct
  loc_C5F81C: FLdI2 var_16E
  loc_C5F81F: CR8I2
  loc_C5F820: LitStr "1"
  loc_C5F823: CR8Str
  loc_C5F825: EqR4
  loc_C5F826: BranchF loc_C5F8D6
  loc_C5F829: FLdPr Me
  loc_C5F82C: VCallAd Control_ID_ctacteFlex
  loc_C5F82F: FStAdFunc var_E4
  loc_C5F832: FLdPr var_E4
  loc_C5F835: LateIdLdVar var_F4 DispID_4 0
  loc_C5F83C: CI4Var
  loc_C5F83E: LitI4 1
  loc_C5F843: SubI4
  loc_C5F844: CVarI4
  loc_C5F848: PopAdLdVar
  loc_C5F849: FLdPr Me
  loc_C5F84C: VCallAd Control_ID_ctacteFlex
  loc_C5F84F: FStAdFunc var_138
  loc_C5F852: FLdPr var_138
  loc_C5F855: LateIdSt
  loc_C5F85A: FFreeAd var_E4 = ""
  loc_C5F861: FFree1Var var_F4 = ""
  loc_C5F864: LitI2_Byte 0
  loc_C5F866: FLdRfVar var_86
  loc_C5F869: FLdPr Me
  loc_C5F86C: VCallAd Control_ID_ctacteFlex
  loc_C5F86F: FStAdFunc var_E4
  loc_C5F872: FLdPr var_E4
  loc_C5F875: LateIdLdVar var_F4 DispID_5 0
  loc_C5F87C: CI4Var
  loc_C5F87E: LitI4 1
  loc_C5F883: SubI4
  loc_C5F884: CI2I4
  loc_C5F885: FFree1Ad var_E4
  loc_C5F888: FFree1Var var_F4 = ""
  loc_C5F88B: ForI2 var_4D4
  loc_C5F891: FLdI2 var_86
  loc_C5F894: CI4UI1
  loc_C5F895: CVarI4
  loc_C5F899: PopAdLdVar
  loc_C5F89A: FLdPr Me
  loc_C5F89D: VCallAd Control_ID_ctacteFlex
  loc_C5F8A0: FStAdFunc var_E4
  loc_C5F8A3: FLdPr var_E4
  loc_C5F8A6: LateIdSt
  loc_C5F8AB: FFree1Ad var_E4
  loc_C5F8AE: LitVarI4
  loc_C5F8B6: PopAdLdVar
  loc_C5F8B7: FLdPr Me
  loc_C5F8BA: VCallAd Control_ID_ctacteFlex
  loc_C5F8BD: FStAdFunc var_E4
  loc_C5F8C0: FLdPr var_E4
  loc_C5F8C3: LateIdSt
  loc_C5F8C8: FFree1Ad var_E4
  loc_C5F8CB: FLdRfVar var_86
  loc_C5F8CE: NextI2 var_4D4, loc_C5F891
  loc_C5F8D3: Branch loc_C5F980
  loc_C5F8D6: FLdPr Me
  loc_C5F8D9: VCallAd Control_ID_ctacteFlex
  loc_C5F8DC: FStAdFunc var_E4
  loc_C5F8DF: FLdPr var_E4
  loc_C5F8E2: LateIdLdVar var_F4 DispID_4 0
  loc_C5F8E9: CI4Var
  loc_C5F8EB: LitI4 1
  loc_C5F8F0: SubI4
  loc_C5F8F1: CVarI4
  loc_C5F8F5: PopAdLdVar
  loc_C5F8F6: FLdPr Me
  loc_C5F8F9: VCallAd Control_ID_ctacteFlex
  loc_C5F8FC: FStAdFunc var_138
  loc_C5F8FF: FLdPr var_138
  loc_C5F902: LateIdSt
  loc_C5F907: FFreeAd var_E4 = ""
  loc_C5F90E: FFree1Var var_F4 = ""
  loc_C5F911: LitI2_Byte 0
  loc_C5F913: FLdRfVar var_86
  loc_C5F916: FLdPr Me
  loc_C5F919: VCallAd Control_ID_ctacteFlex
  loc_C5F91C: FStAdFunc var_E4
  loc_C5F91F: FLdPr var_E4
  loc_C5F922: LateIdLdVar var_F4 DispID_5 0
  loc_C5F929: CI4Var
  loc_C5F92B: LitI4 1
  loc_C5F930: SubI4
  loc_C5F931: CI2I4
  loc_C5F932: FFree1Ad var_E4
  loc_C5F935: FFree1Var var_F4 = ""
  loc_C5F938: ForI2 var_4D8
  loc_C5F93E: FLdI2 var_86
  loc_C5F941: CI4UI1
  loc_C5F942: CVarI4
  loc_C5F946: PopAdLdVar
  loc_C5F947: FLdPr Me
  loc_C5F94A: VCallAd Control_ID_ctacteFlex
  loc_C5F94D: FStAdFunc var_E4
  loc_C5F950: FLdPr var_E4
  loc_C5F953: LateIdSt
  loc_C5F958: FFree1Ad var_E4
  loc_C5F95B: LitVarI4
  loc_C5F963: PopAdLdVar
  loc_C5F964: FLdPr Me
  loc_C5F967: VCallAd Control_ID_ctacteFlex
  loc_C5F96A: FStAdFunc var_E4
  loc_C5F96D: FLdPr var_E4
  loc_C5F970: LateIdSt
  loc_C5F975: FFree1Ad var_E4
  loc_C5F978: FLdRfVar var_86
  loc_C5F97B: NextI2 var_4D8, loc_C5F93E
  loc_C5F980: FLdPr Me
  loc_C5F983: MemLdRfVar from_stack_1.global_56
  loc_C5F986: NewIfNullPr clsctacte
  loc_C5F989: Call clsctacte.MoveSiguiente()
  loc_C5F98E: Branch loc_C5F1AD
  loc_C5F991: FLdFPR8 var_E0
  loc_C5F994: FLdFPR8 var_C8
  loc_C5F997: AddR8
  loc_C5F998: FLdFPR8 var_D0
  loc_C5F99B: SubR4
  loc_C5F99C: FLdFPR8 var_D8
  loc_C5F99F: AddR8
  loc_C5F9A0: FStFPR8 var_E0
  loc_C5F9A3: LitI4 1
  loc_C5F9A8: LitI4 1
  loc_C5F9AD: LitVarStr var_508, "###,###,##0.00"
  loc_C5F9B2: FStVarCopyObj var_33C
  loc_C5F9B5: FLdRfVar var_33C
  loc_C5F9B8: FLdRfVar var_C8
  loc_C5F9BB: CVarRef
  loc_C5F9C0: FLdRfVar var_34C
  loc_C5F9C3: ImpAdCallFPR4  = Format(, )
  loc_C5F9C8: LitI4 1
  loc_C5F9CD: LitI4 1
  loc_C5F9D2: LitVarStr var_548, "###,###,##0.00"
  loc_C5F9D7: FStVarCopyObj var_3AC
  loc_C5F9DA: FLdRfVar var_3AC
  loc_C5F9DD: FLdRfVar var_D0
  loc_C5F9E0: CVarRef
  loc_C5F9E5: FLdRfVar var_3BC
  loc_C5F9E8: ImpAdCallFPR4  = Format(, )
  loc_C5F9ED: LitI4 1
  loc_C5F9F2: LitI4 1
  loc_C5F9F7: LitVarStr var_588, "###,###,##0.00"
  loc_C5F9FC: FStVarCopyObj var_41C
  loc_C5F9FF: FLdRfVar var_41C
  loc_C5FA02: FLdRfVar var_D8
  loc_C5FA05: CVarRef
  loc_C5FA0A: FLdRfVar var_42C
  loc_C5FA0D: ImpAdCallFPR4  = Format(, )
  loc_C5FA12: LitI4 1
  loc_C5FA17: LitI4 1
  loc_C5FA1C: LitVarStr var_5C8, "###,###,##0.00"
  loc_C5FA21: FStVarCopyObj var_4B0
  loc_C5FA24: FLdRfVar var_4B0
  loc_C5FA27: FLdRfVar var_E0
  loc_C5FA2A: CVarRef
  loc_C5FA2F: FLdRfVar var_4D0
  loc_C5FA32: ImpAdCallFPR4  = Format(, )
  loc_C5FA37: LitVarStr var_104, vbNullString
  loc_C5FA3C: LitI4 9
  loc_C5FA41: FLdRfVar var_F4
  loc_C5FA44: ImpAdCallFPR4  = Chr()
  loc_C5FA49: FLdRfVar var_F4
  loc_C5FA4C: ConcatVar var_148
  loc_C5FA50: LitVarStr var_114, vbNullString
  loc_C5FA55: ConcatVar var_160
  loc_C5FA59: LitI4 9
  loc_C5FA5E: FLdRfVar var_1B0
  loc_C5FA61: ImpAdCallFPR4  = Chr()
  loc_C5FA66: FLdRfVar var_1B0
  loc_C5FA69: ConcatVar var_1C0
  loc_C5FA6D: LitVarStr var_124, vbNullString
  loc_C5FA72: ConcatVar var_1E0
  loc_C5FA76: LitI4 9
  loc_C5FA7B: FLdRfVar var_1F0
  loc_C5FA7E: ImpAdCallFPR4  = Chr()
  loc_C5FA83: FLdRfVar var_1F0
  loc_C5FA86: ConcatVar var_200
  loc_C5FA8A: LitVarStr var_134, vbNullString
  loc_C5FA8F: ConcatVar var_218
  loc_C5FA93: LitI4 9
  loc_C5FA98: FLdRfVar var_228
  loc_C5FA9B: ImpAdCallFPR4  = Chr()
  loc_C5FAA0: FLdRfVar var_228
  loc_C5FAA3: ConcatVar var_238
  loc_C5FAA7: LitVarStr var_1D0, vbNullString
  loc_C5FAAC: ConcatVar var_248
  loc_C5FAB0: LitI4 9
  loc_C5FAB5: FLdRfVar var_258
  loc_C5FAB8: ImpAdCallFPR4  = Chr()
  loc_C5FABD: FLdRfVar var_258
  loc_C5FAC0: ConcatVar var_268
  loc_C5FAC4: LitVarStr var_43C, vbNullString
  loc_C5FAC9: ConcatVar var_278
  loc_C5FACD: LitI4 9
  loc_C5FAD2: FLdRfVar var_288
  loc_C5FAD5: ImpAdCallFPR4  = Chr()
  loc_C5FADA: FLdRfVar var_288
  loc_C5FADD: ConcatVar var_298
  loc_C5FAE1: LitVarStr var_480, vbNullString
  loc_C5FAE6: ConcatVar var_2A8
  loc_C5FAEA: LitI4 9
  loc_C5FAEF: FLdRfVar var_2B8
  loc_C5FAF2: ImpAdCallFPR4  = Chr()
  loc_C5FAF7: FLdRfVar var_2B8
  loc_C5FAFA: ConcatVar var_2C8
  loc_C5FAFE: LitVarStr var_4C0, vbNullString
  loc_C5FB03: ConcatVar var_2D8
  loc_C5FB07: LitI4 9
  loc_C5FB0C: FLdRfVar var_2E8
  loc_C5FB0F: ImpAdCallFPR4  = Chr()
  loc_C5FB14: FLdRfVar var_2E8
  loc_C5FB17: ConcatVar var_2FC
  loc_C5FB1B: LitVarStr var_4E8, "Sub Total:"
  loc_C5FB20: ConcatVar var_30C
  loc_C5FB24: LitI4 9
  loc_C5FB29: FLdRfVar var_31C
  loc_C5FB2C: ImpAdCallFPR4  = Chr()
  loc_C5FB31: FLdRfVar var_31C
  loc_C5FB34: ConcatVar var_32C
  loc_C5FB38: LitVarStr var_528, vbNullString
  loc_C5FB3D: FStVarCopyObj var_35C
  loc_C5FB40: FLdRfVar var_35C
  loc_C5FB43: FLdRfVar var_34C
  loc_C5FB46: FLdFPR8 var_C8
  loc_C5FB49: LitI2_Byte 0
  loc_C5FB4B: CR8I2
  loc_C5FB4C: NeR8
  loc_C5FB4D: CVarBoolI2 var_518
  loc_C5FB51: FLdRfVar var_36C
  loc_C5FB54: ImpAdCallFPR4  = IIf(, , )
  loc_C5FB59: FLdRfVar var_36C
  loc_C5FB5C: ConcatVar var_37C
  loc_C5FB60: LitI4 9
  loc_C5FB65: FLdRfVar var_38C
  loc_C5FB68: ImpAdCallFPR4  = Chr()
  loc_C5FB6D: FLdRfVar var_38C
  loc_C5FB70: ConcatVar var_39C
  loc_C5FB74: LitVarStr var_568, vbNullString
  loc_C5FB79: FStVarCopyObj var_3CC
  loc_C5FB7C: FLdRfVar var_3CC
  loc_C5FB7F: FLdRfVar var_3BC
  loc_C5FB82: FLdFPR8 var_D0
  loc_C5FB85: LitI2_Byte 0
  loc_C5FB87: CR8I2
  loc_C5FB88: NeR8
  loc_C5FB89: CVarBoolI2 var_558
  loc_C5FB8D: FLdRfVar var_3DC
  loc_C5FB90: ImpAdCallFPR4  = IIf(, , )
  loc_C5FB95: FLdRfVar var_3DC
  loc_C5FB98: ConcatVar var_3EC
  loc_C5FB9C: LitI4 9
  loc_C5FBA1: FLdRfVar var_3FC
  loc_C5FBA4: ImpAdCallFPR4  = Chr()
  loc_C5FBA9: FLdRfVar var_3FC
  loc_C5FBAC: ConcatVar var_40C
  loc_C5FBB0: LitVarStr var_5A8, vbNullString
  loc_C5FBB5: FStVarCopyObj var_44C
  loc_C5FBB8: FLdRfVar var_44C
  loc_C5FBBB: FLdRfVar var_42C
  loc_C5FBBE: FLdFPR8 var_D8
  loc_C5FBC1: LitI2_Byte 0
  loc_C5FBC3: CR8I2
  loc_C5FBC4: NeR8
  loc_C5FBC5: CVarBoolI2 var_598
  loc_C5FBC9: FLdRfVar var_45C
  loc_C5FBCC: ImpAdCallFPR4  = IIf(, , )
  loc_C5FBD1: FLdRfVar var_45C
  loc_C5FBD4: ConcatVar var_46C
  loc_C5FBD8: LitI4 9
  loc_C5FBDD: FLdRfVar var_490
  loc_C5FBE0: ImpAdCallFPR4  = Chr()
  loc_C5FBE5: FLdRfVar var_490
  loc_C5FBE8: ConcatVar var_4A0
  loc_C5FBEC: LitVarStr var_5E8, vbNullString
  loc_C5FBF1: FStVarCopyObj var_5F8
  loc_C5FBF4: FLdRfVar var_5F8
  loc_C5FBF7: FLdRfVar var_4D0
  loc_C5FBFA: FLdFPR8 var_E0
  loc_C5FBFD: LitI2_Byte 0
  loc_C5FBFF: CR8I2
  loc_C5FC00: NeR8
  loc_C5FC01: CVarBoolI2 var_5D8
  loc_C5FC05: FLdRfVar var_608
  loc_C5FC08: ImpAdCallFPR4  = IIf(, , )
  loc_C5FC0D: FLdRfVar var_608
  loc_C5FC10: ConcatVar var_618
  loc_C5FC14: LitI4 9
  loc_C5FC19: FLdRfVar var_628
  loc_C5FC1C: ImpAdCallFPR4  = Chr()
  loc_C5FC21: FLdRfVar var_628
  loc_C5FC24: ConcatVar var_638
  loc_C5FC28: LitVarStr var_648, "0"
  loc_C5FC2D: ConcatVar var_658
  loc_C5FC31: LitI4 9
  loc_C5FC36: FLdRfVar var_668
  loc_C5FC39: ImpAdCallFPR4  = Chr()
  loc_C5FC3E: FLdRfVar var_668
  loc_C5FC41: ConcatVar var_678
  loc_C5FC45: LitVarStr var_688, "0"
  loc_C5FC4A: ConcatVar var_698
  loc_C5FC4E: CStrVarTmp
  loc_C5FC4F: FStStrNoPop var_164
  loc_C5FC52: FLdPr Me
  loc_C5FC55: MemStStrCopy
  loc_C5FC59: FFree1Str var_164
  loc_C5FC5C: FFreeVar var_678 = "": var_698 = "": var_36C = "": var_37C = "": var_38C = "": var_3AC = "": var_558 = "": var_3BC = "": var_3CC = "": var_39C = "": var_3DC = "": var_3EC = "": var_3FC = "": var_41C = "": var_598 = "": var_42C = "": var_44C = "": var_40C = "": var_45C = "": var_46C = "": var_490 = "": var_4B0 = "": var_5D8 = "": var_4D0 = "": var_5F8 = "": var_4A0 = "": var_608 = "": var_618 = "": var_628 = "": var_638 = "": var_658 = "": var_668 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2FC = "": var_30C = "": var_31C = "": var_33C = "": var_518 = "": var_34C = "": var_35C = ""
  loc_C5FCDB: FLdPr Me
  loc_C5FCDE: MemLdRfVar from_stack_1.global_72
  loc_C5FCE1: CDargRef
  loc_C5FCE5: FLdPr Me
  loc_C5FCE8: VCallAd Control_ID_ctacteFlex
  loc_C5FCEB: FStAdFunc var_E4
  loc_C5FCEE: FLdPr var_E4
  loc_C5FCF1: LateIdCall
  loc_C5FCF9: FFree1Ad var_E4
  loc_C5FCFC: FLdPr Me
  loc_C5FCFF: VCallAd Control_ID_ctacteFlex
  loc_C5FD02: FStAdFunc var_E4
  loc_C5FD05: FLdPr var_E4
  loc_C5FD08: LateIdLdVar var_F4 DispID_4 0
  loc_C5FD0F: CI4Var
  loc_C5FD11: LitI4 1
  loc_C5FD16: SubI4
  loc_C5FD17: CVarI4
  loc_C5FD1B: PopAdLdVar
  loc_C5FD1C: FLdPr Me
  loc_C5FD1F: VCallAd Control_ID_ctacteFlex
  loc_C5FD22: FStAdFunc var_138
  loc_C5FD25: FLdPr var_138
  loc_C5FD28: LateIdSt
  loc_C5FD2D: FFreeAd var_E4 = ""
  loc_C5FD34: FFree1Var var_F4 = ""
  loc_C5FD37: LitI2_Byte 0
  loc_C5FD39: FLdRfVar var_86
  loc_C5FD3C: FLdPr Me
  loc_C5FD3F: VCallAd Control_ID_ctacteFlex
  loc_C5FD42: FStAdFunc var_E4
  loc_C5FD45: FLdPr var_E4
  loc_C5FD48: LateIdLdVar var_F4 DispID_5 0
  loc_C5FD4F: CI4Var
  loc_C5FD51: LitI4 1
  loc_C5FD56: SubI4
  loc_C5FD57: CI2I4
  loc_C5FD58: FFree1Ad var_E4
  loc_C5FD5B: FFree1Var var_F4 = ""
  loc_C5FD5E: ForI2 var_69C
  loc_C5FD64: FLdI2 var_86
  loc_C5FD67: CI4UI1
  loc_C5FD68: CVarI4
  loc_C5FD6C: PopAdLdVar
  loc_C5FD6D: FLdPr Me
  loc_C5FD70: VCallAd Control_ID_ctacteFlex
  loc_C5FD73: FStAdFunc var_E4
  loc_C5FD76: FLdPr var_E4
  loc_C5FD79: LateIdSt
  loc_C5FD7E: FFree1Ad var_E4
  loc_C5FD81: LitVarI4
  loc_C5FD89: PopAdLdVar
  loc_C5FD8A: FLdPr Me
  loc_C5FD8D: VCallAd Control_ID_ctacteFlex
  loc_C5FD90: FStAdFunc var_E4
  loc_C5FD93: FLdPr var_E4
  loc_C5FD96: LateIdSt
  loc_C5FD9B: FFree1Ad var_E4
  loc_C5FD9E: FLdRfVar var_86
  loc_C5FDA1: NextI2 var_69C, loc_C5FD64
  loc_C5FDA6: FLdPr Me
  loc_C5FDA9: MemLdRfVar from_stack_1.global_52
  loc_C5FDAC: NewIfNullPr clsctacte
  loc_C5FDAF: Call clsctacte.MoveSiguiente()
  loc_C5FDB4: Branch loc_C5F0B3
  loc_C5FDB7: ExitProcHresult
End Sub

Private Function Proc_23_15_AD8A74() 'AD8A74
  'Data Table: 4BC1C0
  loc_AD8924: FLdPr Me
  loc_AD8927: VCallAd Control_ID_ctacteUnicaFlex
  loc_AD892A: FStAdFunc var_88
  loc_AD892D: FLdPr var_88
  loc_AD8930: LateIdCall
  loc_AD8938: LitVarI4
  loc_AD8940: PopAdLdVar
  loc_AD8941: FLdPr var_88
  loc_AD8944: LateIdSt
  loc_AD8949: LitVarI4
  loc_AD8951: PopAdLdVar
  loc_AD8952: LitVarI4
  loc_AD895A: PopAdLdVar
  loc_AD895B: LitVarStr var_D8, "Oficina"
  loc_AD8960: PopAdLdVar
  loc_AD8961: FLdPr var_88
  loc_AD8964: LateIdCallSt
  loc_AD896C: LitVarI4
  loc_AD8974: PopAdLdVar
  loc_AD8975: LitVarI4
  loc_AD897D: PopAdLdVar
  loc_AD897E: LitVarStr var_D8, "Cuenta"
  loc_AD8983: PopAdLdVar
  loc_AD8984: FLdPr var_88
  loc_AD8987: LateIdCallSt
  loc_AD898F: LitVarI4
  loc_AD8997: PopAdLdVar
  loc_AD8998: LitVarI4
  loc_AD89A0: PopAdLdVar
  loc_AD89A1: LitVarStr var_D8, "Relacion"
  loc_AD89A6: PopAdLdVar
  loc_AD89A7: FLdPr var_88
  loc_AD89AA: LateIdCallSt
  loc_AD89B2: LitVarI4
  loc_AD89BA: PopAdLdVar
  loc_AD89BB: LitVarI4
  loc_AD89C3: PopAdLdVar
  loc_AD89C4: LitVarStr var_D8, "Derecho"
  loc_AD89C9: PopAdLdVar
  loc_AD89CA: FLdPr var_88
  loc_AD89CD: LateIdCallSt
  loc_AD89D5: LitVarI4
  loc_AD89DD: PopAdLdVar
  loc_AD89DE: LitVarI4
  loc_AD89E6: PopAdLdVar
  loc_AD89E7: LitVarStr var_D8, "Apremio"
  loc_AD89EC: PopAdLdVar
  loc_AD89ED: FLdPr var_88
  loc_AD89F0: LateIdCallSt
  loc_AD89F8: LitVarI4
  loc_AD8A00: PopAdLdVar
  loc_AD8A01: LitVarI4
  loc_AD8A09: PopAdLdVar
  loc_AD8A0A: LitVarStr var_D8, "Recargo"
  loc_AD8A0F: PopAdLdVar
  loc_AD8A10: FLdPr var_88
  loc_AD8A13: LateIdCallSt
  loc_AD8A1B: LitVarI4
  loc_AD8A23: PopAdLdVar
  loc_AD8A24: LitVarI4
  loc_AD8A2C: PopAdLdVar
  loc_AD8A2D: LitVarStr var_D8, "Saldo"
  loc_AD8A32: PopAdLdVar
  loc_AD8A33: FLdPr var_88
  loc_AD8A36: LateIdCallSt
  loc_AD8A3E: LitVarI4
  loc_AD8A46: PopAdLdVar
  loc_AD8A47: LitVarI4
  loc_AD8A4F: PopAdLdVar
  loc_AD8A50: LitVarStr var_D8, "Se"
  loc_AD8A55: PopAdLdVar
  loc_AD8A56: FLdPr var_88
  loc_AD8A59: LateIdCallSt
  loc_AD8A61: FLdPr var_88
  loc_AD8A64: LateIdCall
  loc_AD8A6C: LitNothing
  loc_AD8A6E: FStAd var_88 
  loc_AD8A72: ExitProcHresult
End Function

Private Function Proc_23_16_B0D6E4() 'B0D6E4
  'Data Table: 4BC1C0
  loc_B0D4A0: FLdPr Me
  loc_B0D4A3: VCallAd Control_ID_ctacteFlex
  loc_B0D4A6: FStAdFunc var_88
  loc_B0D4A9: FLdPr var_88
  loc_B0D4AC: LateIdCall
  loc_B0D4B4: LitVarI4
  loc_B0D4BC: PopAdLdVar
  loc_B0D4BD: FLdPr var_88
  loc_B0D4C0: LateIdSt
  loc_B0D4C5: LitVarI4
  loc_B0D4CD: PopAdLdVar
  loc_B0D4CE: LitVarI4
  loc_B0D4D6: PopAdLdVar
  loc_B0D4D7: LitVarStr var_D8, "Periodo"
  loc_B0D4DC: PopAdLdVar
  loc_B0D4DD: FLdPr var_88
  loc_B0D4E0: LateIdCallSt
  loc_B0D4E8: LitVarI4
  loc_B0D4F0: PopAdLdVar
  loc_B0D4F1: LitVarI4
  loc_B0D4F9: PopAdLdVar
  loc_B0D4FA: LitVarStr var_D8, "Boleto"
  loc_B0D4FF: PopAdLdVar
  loc_B0D500: FLdPr var_88
  loc_B0D503: LateIdCallSt
  loc_B0D50B: LitVarI4
  loc_B0D513: PopAdLdVar
  loc_B0D514: LitVarI4
  loc_B0D51C: PopAdLdVar
  loc_B0D51D: LitVarStr var_D8, "Fech. Emis."
  loc_B0D522: PopAdLdVar
  loc_B0D523: FLdPr var_88
  loc_B0D526: LateIdCallSt
  loc_B0D52E: LitVarI4
  loc_B0D536: PopAdLdVar
  loc_B0D537: LitVarI4
  loc_B0D53F: PopAdLdVar
  loc_B0D540: LitVarStr var_D8, "Venc/Pago"
  loc_B0D545: PopAdLdVar
  loc_B0D546: FLdPr var_88
  loc_B0D549: LateIdCallSt
  loc_B0D551: LitVarI4
  loc_B0D559: PopAdLdVar
  loc_B0D55A: LitVarI4
  loc_B0D562: PopAdLdVar
  loc_B0D563: LitVarStr var_D8, "Concepto"
  loc_B0D568: PopAdLdVar
  loc_B0D569: FLdPr var_88
  loc_B0D56C: LateIdCallSt
  loc_B0D574: LitVarI4
  loc_B0D57C: PopAdLdVar
  loc_B0D57D: LitVarI4
  loc_B0D585: PopAdLdVar
  loc_B0D586: LitVarStr var_D8, "Facilidad"
  loc_B0D58B: PopAdLdVar
  loc_B0D58C: FLdPr var_88
  loc_B0D58F: LateIdCallSt
  loc_B0D597: LitVarI4
  loc_B0D59F: PopAdLdVar
  loc_B0D5A0: LitVarI4
  loc_B0D5A8: PopAdLdVar
  loc_B0D5A9: LitVarStr var_D8, "Apremio"
  loc_B0D5AE: PopAdLdVar
  loc_B0D5AF: FLdPr var_88
  loc_B0D5B2: LateIdCallSt
  loc_B0D5BA: LitVarI4
  loc_B0D5C2: PopAdLdVar
  loc_B0D5C3: LitVarI4
  loc_B0D5CB: PopAdLdVar
  loc_B0D5CC: LitVarStr var_D8, "Exped./Comprob."
  loc_B0D5D1: PopAdLdVar
  loc_B0D5D2: FLdPr var_88
  loc_B0D5D5: LateIdCallSt
  loc_B0D5DD: LitVarI4
  loc_B0D5E5: PopAdLdVar
  loc_B0D5E6: LitVarI4
  loc_B0D5EE: PopAdLdVar
  loc_B0D5EF: LitVarStr var_D8, "Tipo Movimin."
  loc_B0D5F4: PopAdLdVar
  loc_B0D5F5: FLdPr var_88
  loc_B0D5F8: LateIdCallSt
  loc_B0D600: LitVarI4
  loc_B0D608: PopAdLdVar
  loc_B0D609: LitVarI4
  loc_B0D611: PopAdLdVar
  loc_B0D612: LitVarStr var_D8, "Debito"
  loc_B0D617: PopAdLdVar
  loc_B0D618: FLdPr var_88
  loc_B0D61B: LateIdCallSt
  loc_B0D623: LitVarI4
  loc_B0D62B: PopAdLdVar
  loc_B0D62C: LitVarI4
  loc_B0D634: PopAdLdVar
  loc_B0D635: LitVarStr var_D8, "Credito"
  loc_B0D63A: PopAdLdVar
  loc_B0D63B: FLdPr var_88
  loc_B0D63E: LateIdCallSt
  loc_B0D646: LitVarI4
  loc_B0D64E: PopAdLdVar
  loc_B0D64F: LitVarI4
  loc_B0D657: PopAdLdVar
  loc_B0D658: LitVarStr var_D8, "Recargo"
  loc_B0D65D: PopAdLdVar
  loc_B0D65E: FLdPr var_88
  loc_B0D661: LateIdCallSt
  loc_B0D669: LitVarI4
  loc_B0D671: PopAdLdVar
  loc_B0D672: LitVarI4
  loc_B0D67A: PopAdLdVar
  loc_B0D67B: LitVarStr var_D8, "Saldo"
  loc_B0D680: PopAdLdVar
  loc_B0D681: FLdPr var_88
  loc_B0D684: LateIdCallSt
  loc_B0D68C: LitVarI4
  loc_B0D694: PopAdLdVar
  loc_B0D695: LitVarI4
  loc_B0D69D: PopAdLdVar
  loc_B0D69E: LitVarStr var_D8, "Numero"
  loc_B0D6A3: PopAdLdVar
  loc_B0D6A4: FLdPr var_88
  loc_B0D6A7: LateIdCallSt
  loc_B0D6AF: LitVarI4
  loc_B0D6B7: PopAdLdVar
  loc_B0D6B8: LitVarI4
  loc_B0D6C0: PopAdLdVar
  loc_B0D6C1: LitVarStr var_D8, "Mov"
  loc_B0D6C6: PopAdLdVar
  loc_B0D6C7: FLdPr var_88
  loc_B0D6CA: LateIdCallSt
  loc_B0D6D2: FLdPr var_88
  loc_B0D6D5: LateIdCall
  loc_B0D6DD: LitNothing
  loc_B0D6DF: FStAd var_88 
  loc_B0D6E3: ExitProcHresult
End Function
