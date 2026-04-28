VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeRecepciondeOrdendeCompra
  Caption = "Recepción de Orden de Compra"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeRecepciondeOrdendeCompra.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10830
  ClientHeight = 6135
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5880
    Width = 10830
    Height = 255
    TabIndex = 30
    OleObjectBlob = "rptListadodeRecepciondeOrdendeCompra.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8880
    Top = 4920
    Width = 735
    Height = 615
    TabIndex = 26
    Cancel = -1  'True
    Picture = "rptListadodeRecepciondeOrdendeCompra.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeRecepciondeOrdendeCompra.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4680
    Width = 1815
    Height = 1095
    TabIndex = 28
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 24
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4680
    Width = 3015
    Height = 1095
    TabIndex = 27
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 23
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10575
    Height = 4575
    TabIndex = 0
    Begin VB.TextBox CodiReceTxt
      Left = 5040
      Top = 900
      Width = 2055
      Height = 315
      TabIndex = 6
      MaxLength = 400
    End
    Begin VB.Frame framePie
      Caption = " Pie de página "
      Left = 120
      Top = 3000
      Width = 10335
      Height = 975
      TabIndex = 31
      Begin VB.TextBox txtPie
        Left = 240
        Top = 240
        Width = 9855
        Height = 615
        TabIndex = 19
      End
    End
    Begin VB.CheckBox IncluyeAnuladasChk
      Caption = "Incluye Anuladas"
      Left = 4860
      Top = 4200
      Width = 1575
      Height = 255
      TabIndex = 21
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 5520
      Top = 1920
      Width = 375
      Height = 375
      TabIndex = 14
      Picture = "rptListadodeRecepciondeOrdendeCompra.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 3120
      Top = 1920
      Width = 375
      Height = 375
      TabIndex = 11
      Picture = "rptListadodeRecepciondeOrdendeCompra.frx":1142
      Style = 1
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 3240
      Top = 2490
      Width = 375
      Height = 375
      TabIndex = 17
      Picture = "rptListadodeRecepciondeOrdendeCompra.frx":1684
      Style = 1
    End
    Begin VB.ComboBox cboExpeImpu
      Left = 1920
      Top = 1440
      Width = 2055
      Height = 315
      TabIndex = 8
    End
    Begin VB.CheckBox HojasSeparadasChk
      Caption = "Hojas separadas"
      Left = 3000
      Top = 4200
      Width = 1575
      Height = 255
      TabIndex = 20
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1920
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8400
      Top = 960
      Width = 1335
      Height = 495
      TabIndex = 25
    End
    Begin MSMask.MaskEdBox CodiOrcoMsk
      Left = 1920
      Top = 900
      Width = 975
      Height = 315
      TabIndex = 4
      OleObjectBlob = "rptListadodeRecepciondeOrdendeCompra.frx":177E
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 1920
      Top = 2520
      Width = 1215
      Height = 315
      TabIndex = 16
      OleObjectBlob = "rptListadodeRecepciondeOrdendeCompra.frx":17EE
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1920
      Top = 1965
      Width = 1095
      Height = 285
      TabIndex = 10
      OleObjectBlob = "rptListadodeRecepciondeOrdendeCompra.frx":1864
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 4320
      Top = 1965
      Width = 1095
      Height = 285
      TabIndex = 13
      OleObjectBlob = "rptListadodeRecepciondeOrdendeCompra.frx":18EC
    End
    Begin VB.Label Label7
      Caption = "Hasta:"
      Left = 3720
      Top = 2010
      Width = 465
      Height = 195
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 1275
      Top = 2010
      Width = 510
      Height = 195
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 1005
      Top = 2580
      Width = 780
      Height = 195
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label DetaProvLbl
      Left = 3780
      Top = 2520
      Width = 4935
      Height = 315
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
    Begin VB.Label Label4
      Caption = "Expediente de Pago:"
      Left = 300
      Top = 1500
      Width = 1485
      Height = 195
      TabIndex = 7
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Recepción Desde-Hasta:"
      Left = 3120
      Top = 960
      Width = 1800
      Height = 195
      TabIndex = 5
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Orden de Compra Nº:"
      Left = 240
      Top = 960
      Width = 1515
      Height = 195
      TabIndex = 3
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1200
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9000
    Top = 5280
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 29
    OleObjectBlob = "rptListadodeRecepciondeOrdendeCompra.frx":1974
  End
End

Attribute VB_Name = "rptListadodeRecepciondeOrdendeCompra"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00597558
  bStruc(60) As Byte ' String fields: 15
End Type

Private Type UDT_2_005975A0
  bStruc(72) As Byte ' String fields: 18
End Type


Private Sub cmdNueva_Click() '9D1744
  'Data Table: 4C93E8
  loc_9D1654: LitI2_Byte 0
  loc_9D1656: FLdPr Me
  loc_9D1659: MemStI2 bGenerado
  loc_9D165C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D1661: ImpAdLdI2 MemVar_C3D064
  loc_9D1664: CStrUI1
  loc_9D1666: FStStrNoPop var_88
  loc_9D1669: FLdPr Me
  loc_9D166C: VCallAd Control_ID_cboPeriodo
  loc_9D166F: FStAdFunc var_8C
  loc_9D1672: FLdPr var_8C
  loc_9D1675: Me.Text = from_stack_1
  loc_9D167A: FFree1Str var_88
  loc_9D167D: FFree1Ad var_8C
  loc_9D1680: LitStr vbNullString
  loc_9D1683: FLdPr Me
  loc_9D1686: VCallAd Control_ID_CodiReceTxt
  loc_9D1689: FStAdFunc var_8C
  loc_9D168C: FLdPr var_8C
  loc_9D168F: Me.Text = from_stack_1
  loc_9D1694: FFree1Ad var_8C
  loc_9D1697: LitStr vbNullString
  loc_9D169A: FLdPr Me
  loc_9D169D: VCallAd Control_ID_cboExpeImpu
  loc_9D16A0: FStAdFunc var_8C
  loc_9D16A3: FLdPr var_8C
  loc_9D16A6: Me.Text = from_stack_1
  loc_9D16AB: FFree1Ad var_8C
  loc_9D16AE: LitVarStr var_9C, vbNullString
  loc_9D16B3: PopAdLdVar
  loc_9D16B4: FLdPr Me
  loc_9D16B7: VCallAd Control_ID_CucuPersMsk
  loc_9D16BA: FStAdFunc var_8C
  loc_9D16BD: FLdPr var_8C
  loc_9D16C0: LateIdSt
  loc_9D16C5: FFree1Ad var_8C
  loc_9D16C8: LitStr vbNullString
  loc_9D16CB: FLdPr Me
  loc_9D16CE: VCallAd Control_ID_DetaProvLbl
  loc_9D16D1: FStAdFunc var_8C
  loc_9D16D4: FLdPr var_8C
  loc_9D16D7: Me.Caption = from_stack_1
  loc_9D16DC: FFree1Ad var_8C
  loc_9D16DF: LitI4 1
  loc_9D16E4: CI2I4
  loc_9D16E5: FLdPr Me
  loc_9D16E8: VCallAd Control_ID_HojasSeparadasChk
  loc_9D16EB: FStAdFunc var_8C
  loc_9D16EE: FLdPr var_8C
  loc_9D16F1: Me.Value = from_stack_1
  loc_9D16F6: FFree1Ad var_8C
  loc_9D16F9: LitI4 0
  loc_9D16FE: CI2I4
  loc_9D16FF: FLdPr Me
  loc_9D1702: VCallAd Control_ID_IncluyeAnuladasChk
  loc_9D1705: FStAdFunc var_8C
  loc_9D1708: FLdPr var_8C
  loc_9D170B: Me.Value = from_stack_1
  loc_9D1710: FFree1Ad var_8C
  loc_9D1713: LitStr vbNullString
  loc_9D1716: FLdPr Me
  loc_9D1719: VCallAd Control_ID_txtPie
  loc_9D171C: FStAdFunc var_8C
  loc_9D171F: FLdPr var_8C
  loc_9D1722: Me.Text = from_stack_1
  loc_9D1727: FFree1Ad var_8C
  loc_9D172A: Call HabilitarCriterio()
  loc_9D172F: ILdRf Me
  loc_9D1732: CastAd
  loc_9D1735: FStAdFunc var_8C
  loc_9D1738: FLdRfVar var_8C
  loc_9D173B: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D1740: FFree1Ad var_8C
  loc_9D1743: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() '9FE724
  'Data Table: 4C93E8
  loc_9FE5E0: LitI2_Byte &HFF
  loc_9FE5E2: ImpAdLdRf MemVar_C3D74C
  loc_9FE5E5: NewIfNullPr bscProveedor
  loc_9FE5E8: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9FE5ED: LitNothing
  loc_9FE5EF: CastAd
  loc_9FE5F2: FStAdFuncNoPop
  loc_9FE5F5: ImpAdLdRf MemVar_C3D74C
  loc_9FE5F8: NewIfNullPr bscProveedor
  loc_9FE5FB: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9FE600: FFree1Ad var_88
  loc_9FE603: LitVar_Missing var_A8
  loc_9FE606: PopAdLdVar
  loc_9FE607: LitVarI4
  loc_9FE60F: PopAdLdVar
  loc_9FE610: ImpAdLdRf MemVar_C3D74C
  loc_9FE613: NewIfNullPr bscProveedor
  loc_9FE616: bscProveedor.Show from_stack_1, from_stack_2
  loc_9FE61B: FLdRfVar var_AC
  loc_9FE61E: FLdRfVar var_88
  loc_9FE621: ImpAdLdRf MemVar_C3D74C
  loc_9FE624: NewIfNullPr bscProveedor
  loc_9FE627: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9FE62C: FLdPr var_88
  loc_9FE62F: from_stack_1 = clsbase.RecordCount
  loc_9FE634: ILdRf var_AC
  loc_9FE637: LitI4 0
  loc_9FE63C: GtI4
  loc_9FE63D: FFree1Ad var_88
  loc_9FE640: BranchF loc_9FE71B
  loc_9FE643: FLdRfVar var_C8
  loc_9FE646: FLdRfVar var_B8
  loc_9FE649: LitVarStr var_98, "CucuPers"
  loc_9FE64E: PopAdLdVar
  loc_9FE64F: FLdRfVar var_B4
  loc_9FE652: FLdRfVar var_B0
  loc_9FE655: FLdRfVar var_88
  loc_9FE658: ImpAdLdRf MemVar_C3D74C
  loc_9FE65B: NewIfNullPr bscProveedor
  loc_9FE65E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9FE663: FLdPr var_88
  loc_9FE666: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE66B: FLdPr var_B0
  loc_9FE66E:  = Me.Fields
  loc_9FE673: FLdPr var_B4
  loc_9FE676: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE67B: FLdPr var_B8
  loc_9FE67E:  = Me.Value
  loc_9FE683: FLdRfVar var_C8
  loc_9FE686: CStrVarTmp
  loc_9FE687: CVarStr var_D8
  loc_9FE68A: PopAdLdVar
  loc_9FE68B: FLdPr Me
  loc_9FE68E: VCallAd Control_ID_CucuPersMsk
  loc_9FE691: FStAdFunc var_DC
  loc_9FE694: FLdPr var_DC
  loc_9FE697: LateIdSt
  loc_9FE69C: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FE6A9: FFreeVar var_C8 = ""
  loc_9FE6B0: FLdRfVar var_C8
  loc_9FE6B3: FLdRfVar var_B8
  loc_9FE6B6: LitVarStr var_98, "DetaProv"
  loc_9FE6BB: PopAdLdVar
  loc_9FE6BC: FLdRfVar var_B4
  loc_9FE6BF: FLdRfVar var_B0
  loc_9FE6C2: FLdRfVar var_88
  loc_9FE6C5: ImpAdLdRf MemVar_C3D74C
  loc_9FE6C8: NewIfNullPr bscProveedor
  loc_9FE6CB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9FE6D0: FLdPr var_88
  loc_9FE6D3: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE6D8: FLdPr var_B0
  loc_9FE6DB:  = Me.Fields
  loc_9FE6E0: FLdPr var_B4
  loc_9FE6E3: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE6E8: FLdPr var_B8
  loc_9FE6EB:  = Me.Value
  loc_9FE6F0: FLdRfVar var_C8
  loc_9FE6F3: CStrVarTmp
  loc_9FE6F4: FStStrNoPop var_E0
  loc_9FE6F7: FLdPr Me
  loc_9FE6FA: VCallAd Control_ID_DetaProvLbl
  loc_9FE6FD: FStAdFunc var_DC
  loc_9FE700: FLdPr var_DC
  loc_9FE703: Me.Caption = from_stack_1
  loc_9FE708: FFree1Str var_E0
  loc_9FE70B: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FE718: FFree1Var var_C8 = ""
  loc_9FE71B: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9FE720: ExitProcHresult
End Sub

Private Sub CodiOrcoMsk_UnknownEvent_0 '94C008
  'Data Table: 4C93E8
  loc_94BFF4: FLdPr Me
  loc_94BFF7: VCallAd Control_ID_CodiOrcoMsk
  loc_94BFFA: CVarAd
  loc_94BFFE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C003: FFree1Var var_94 = ""
  loc_94C006: ExitProcHresult
End Sub

Private Sub CodiOrcoMsk_UnknownEvent_1 'A21EE4
  'Data Table: 4C93E8
  loc_A21D74: FLdPr Me
  loc_A21D77: MemLdRfVar from_stack_1.global_76
  loc_A21D7A: NewIfNullAd
  loc_A21D7D: FStAd var_88 
  loc_A21D81: LitStr "SELECT IFNULL(Min(CodiRece),0) minCodiRece, IFNULL(Max(CodiRece),0) maxCodiRece"
  loc_A21D84: LitStr " FROM recepcion"
  loc_A21D87: ConcatStr
  loc_A21D88: FStStrNoPop var_8C
  loc_A21D8B: LitStr " WHERE PeriInfo = "
  loc_A21D8E: ConcatStr
  loc_A21D8F: FStStrNoPop var_98
  loc_A21D92: FLdRfVar var_94
  loc_A21D95: FLdPr Me
  loc_A21D98: VCallAd Control_ID_cboPeriodo
  loc_A21D9B: FStAdFunc var_90
  loc_A21D9E: FLdPr var_90
  loc_A21DA1:  = Me.Text
  loc_A21DA6: ILdRf var_94
  loc_A21DA9: ConcatStr
  loc_A21DAA: FStStrNoPop var_9C
  loc_A21DAD: LitStr " AND CodiOrco = '"
  loc_A21DB0: ConcatStr
  loc_A21DB1: FStStrNoPop var_B4
  loc_A21DB4: FLdPr Me
  loc_A21DB7: VCallAd Control_ID_CodiOrcoMsk
  loc_A21DBA: FStAdFunc var_A0
  loc_A21DBD: FLdPr var_A0
  loc_A21DC0: LateIdLdVar var_B0 DispID_22 0
  loc_A21DC7: CStrVarTmp
  loc_A21DC8: FStStrNoPop var_B8
  loc_A21DCB: ConcatStr
  loc_A21DCC: FStStrNoPop var_BC
  loc_A21DCF: LitStr "'"
  loc_A21DD2: ConcatStr
  loc_A21DD3: FStStrNoPop var_C0
  loc_A21DD6: LitStr " LIMIT 1;"
  loc_A21DD9: ConcatStr
  loc_A21DDA: FStStrNoPop var_C4
  loc_A21DDD: FLdPr var_88
  loc_A21DE0: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_A21DE5: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A21DFA: FFreeAd var_90 = ""
  loc_A21E01: FFree1Var var_B0 = ""
  loc_A21E04: LitStr vbNullString
  loc_A21E07: FLdPr Me
  loc_A21E0A: VCallAd Control_ID_CodiReceTxt
  loc_A21E0D: FStAdFunc var_90
  loc_A21E10: FLdPr var_90
  loc_A21E13: Me.Text = from_stack_1
  loc_A21E18: FFree1Ad var_90
  loc_A21E1B: FLdRfVar var_C8
  loc_A21E1E: FLdPr var_88
  loc_A21E21: from_stack_1 = clsrecepcion.RecordCount
  loc_A21E26: ILdRf var_C8
  loc_A21E29: LitI4 0
  loc_A21E2E: GtI4
  loc_A21E2F: BranchF loc_A21EDD
  loc_A21E32: FLdRfVar var_B0
  loc_A21E35: FLdRfVar var_DC
  loc_A21E38: LitVarStr var_D8, "minCodiRece"
  loc_A21E3D: PopAdLdVar
  loc_A21E3E: FLdRfVar var_A0
  loc_A21E41: FLdRfVar var_90
  loc_A21E44: FLdPr var_88
  loc_A21E47: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A21E4C: FLdPr var_90
  loc_A21E4F:  = Me.Fields
  loc_A21E54: FLdPr var_A0
  loc_A21E57: from_stack_2 = Me.Item(from_stack_1)
  loc_A21E5C: FLdPr var_DC
  loc_A21E5F:  = Me.Value
  loc_A21E64: FLdRfVar var_B0
  loc_A21E67: LitVarStr var_EC, "-"
  loc_A21E6C: ConcatVar var_FC
  loc_A21E70: FLdRfVar var_128
  loc_A21E73: FLdRfVar var_118
  loc_A21E76: LitVarStr var_114, "maxCodiRece"
  loc_A21E7B: PopAdLdVar
  loc_A21E7C: FLdRfVar var_104
  loc_A21E7F: FLdRfVar var_100
  loc_A21E82: FLdPr var_88
  loc_A21E85: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A21E8A: FLdPr var_100
  loc_A21E8D:  = Me.Fields
  loc_A21E92: FLdPr var_104
  loc_A21E95: from_stack_2 = Me.Item(from_stack_1)
  loc_A21E9A: FLdPr var_118
  loc_A21E9D:  = Me.Value
  loc_A21EA2: FLdRfVar var_128
  loc_A21EA5: ConcatVar var_138
  loc_A21EA9: CStrVarVal var_8C
  loc_A21EAD: FLdPr Me
  loc_A21EB0: VCallAd Control_ID_CodiReceTxt
  loc_A21EB3: FStAdFunc var_13C
  loc_A21EB6: FLdPr var_13C
  loc_A21EB9: Me.Text = from_stack_1
  loc_A21EBE: FFree1Str var_8C
  loc_A21EC1: FFreeAd var_90 = "": var_A0 = "": var_DC = "": var_100 = "": var_104 = "": var_118 = ""
  loc_A21ED2: FFreeVar var_B0 = "": var_FC = "": var_128 = ""
  loc_A21EDD: LitNothing
  loc_A21EDF: FStAd var_88 
  loc_A21EE3: ExitProcHresult
End Sub

Private Function CodiOrcoMsk_UnknownEvent_8(arg_C) 'A34BD0
  'Data Table: 4C93E8
  loc_A349F0: FLdPr Me
  loc_A349F3: VCallAd Control_ID_CodiOrcoMsk
  loc_A349F6: FStAdFunc var_88
  loc_A349F9: FLdPr var_88
  loc_A349FC: LateIdLdVar var_98 DispID_22 0
  loc_A34A03: CStrVarTmp
  loc_A34A04: FStStrNoPop var_9C
  loc_A34A07: LitStr vbNullString
  loc_A34A0A: NeStr
  loc_A34A0C: FFree1Str var_9C
  loc_A34A0F: FFree1Ad var_88
  loc_A34A12: FFree1Var var_98 = ""
  loc_A34A15: BranchF loc_A34BCE
  loc_A34A18: FLdPr Me
  loc_A34A1B: VCallAd Control_ID_CodiOrcoMsk
  loc_A34A1E: FStAdFunc var_88
  loc_A34A21: FLdPr var_88
  loc_A34A24: LateIdLdVar var_98 DispID_0 0
  loc_A34A2B: PopAd
  loc_A34A2D: LitI2_Byte 0
  loc_A34A2F: LitI2_Byte 0
  loc_A34A31: FLdRfVar var_98
  loc_A34A34: CStrVarTmp
  loc_A34A35: FStStrNoPop var_9C
  loc_A34A38: LitStr "Orden de compra"
  loc_A34A3B: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_A34A40: FStStrNoPop var_A0
  loc_A34A43: FLdPr Me
  loc_A34A46: MemStStrCopy
  loc_A34A4A: FFreeStr var_9C = ""
  loc_A34A51: FFree1Ad var_88
  loc_A34A54: FFree1Var var_98 = ""
  loc_A34A57: FLdPr Me
  loc_A34A5A: VCallAd Control_ID_CodiOrcoMsk
  loc_A34A5D: FStAdFunc var_AC
  loc_A34A60: LitNothing
  loc_A34A62: CastAd
  loc_A34A65: FStAdFunc var_A8
  loc_A34A68: FLdRfVar var_A8
  loc_A34A6B: FLdZeroAd var_AC
  loc_A34A6E: FStAdFuncNoPop
  loc_A34A71: CastAd
  loc_A34A74: FStAdFunc var_A4
  loc_A34A77: FLdRfVar var_A4
  loc_A34A7A: FLdPr Me
  loc_A34A7D: MemLdRfVar from_stack_1.global_104
  loc_A34A80: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A34A85: IStI2 arg_C
  loc_A34A88: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_A34A93: ILdI2 arg_C
  loc_A34A96: NotI4
  loc_A34A97: BranchF loc_A34BCE
  loc_A34A9A: FLdPr Me
  loc_A34A9D: MemLdRfVar from_stack_1.global_76
  loc_A34AA0: NewIfNullAd
  loc_A34AA3: FStAd var_B0 
  loc_A34AA7: LitStr "SELECT IFNULL(min(CodiRece),0) as minCodiRece, IFNULL(max(CodiRece),0) as maxCodiRece FROM recepcion WHERE PeriInfo = "
  loc_A34AAA: FLdRfVar var_9C
  loc_A34AAD: FLdPr Me
  loc_A34AB0: VCallAd Control_ID_cboPeriodo
  loc_A34AB3: FStAdFunc var_88
  loc_A34AB6: FLdPr var_88
  loc_A34AB9:  = Me.Text
  loc_A34ABE: ILdRf var_9C
  loc_A34AC1: ConcatStr
  loc_A34AC2: FStStrNoPop var_A0
  loc_A34AC5: LitStr " AND CodiOrco = "
  loc_A34AC8: ConcatStr
  loc_A34AC9: FStStrNoPop var_B4
  loc_A34ACC: FLdPr Me
  loc_A34ACF: VCallAd Control_ID_CodiOrcoMsk
  loc_A34AD2: FStAdFunc var_A4
  loc_A34AD5: FLdPr var_A4
  loc_A34AD8: LateIdLdVar var_98 DispID_22 0
  loc_A34ADF: CStrVarTmp
  loc_A34AE0: FStStrNoPop var_B8
  loc_A34AE3: ConcatStr
  loc_A34AE4: FStStrNoPop var_BC
  loc_A34AE7: FLdPr var_B0
  loc_A34AEA: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_A34AEF: FFreeStr var_9C = "": var_A0 = "": var_B4 = "": var_B8 = ""
  loc_A34AFC: FFreeAd var_88 = ""
  loc_A34B03: FFree1Var var_98 = ""
  loc_A34B06: FLdRfVar var_C0
  loc_A34B09: FLdPr var_B0
  loc_A34B0C: from_stack_1 = clsrecepcion.RecordCount
  loc_A34B11: ILdRf var_C0
  loc_A34B14: LitI4 0
  loc_A34B19: GtI4
  loc_A34B1A: BranchF loc_A34BC8
  loc_A34B1D: FLdRfVar var_98
  loc_A34B20: FLdRfVar var_A8
  loc_A34B23: LitVarStr var_D0, "minCodiRece"
  loc_A34B28: PopAdLdVar
  loc_A34B29: FLdRfVar var_A4
  loc_A34B2C: FLdRfVar var_88
  loc_A34B2F: FLdPr var_B0
  loc_A34B32: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A34B37: FLdPr var_88
  loc_A34B3A:  = Me.Fields
  loc_A34B3F: FLdPr var_A4
  loc_A34B42: from_stack_2 = Me.Item(from_stack_1)
  loc_A34B47: FLdPr var_A8
  loc_A34B4A:  = Me.Value
  loc_A34B4F: FLdRfVar var_98
  loc_A34B52: LitVarStr var_E0, "-"
  loc_A34B57: ConcatVar var_F0
  loc_A34B5B: FLdRfVar var_118
  loc_A34B5E: FLdRfVar var_108
  loc_A34B61: LitVarStr var_104, "maxCodiRece"
  loc_A34B66: PopAdLdVar
  loc_A34B67: FLdRfVar var_F4
  loc_A34B6A: FLdRfVar var_AC
  loc_A34B6D: FLdPr var_B0
  loc_A34B70: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A34B75: FLdPr var_AC
  loc_A34B78:  = Me.Fields
  loc_A34B7D: FLdPr var_F4
  loc_A34B80: from_stack_2 = Me.Item(from_stack_1)
  loc_A34B85: FLdPr var_108
  loc_A34B88:  = Me.Value
  loc_A34B8D: FLdRfVar var_118
  loc_A34B90: ConcatVar var_128
  loc_A34B94: CStrVarVal var_9C
  loc_A34B98: FLdPr Me
  loc_A34B9B: VCallAd Control_ID_CodiReceTxt
  loc_A34B9E: FStAdFunc var_12C
  loc_A34BA1: FLdPr var_12C
  loc_A34BA4: Me.Text = from_stack_1
  loc_A34BA9: FFree1Str var_9C
  loc_A34BAC: FFreeAd var_88 = "": var_A4 = "": var_A8 = "": var_AC = "": var_F4 = "": var_108 = ""
  loc_A34BBD: FFreeVar var_98 = "": var_F0 = "": var_118 = ""
  loc_A34BC8: LitNothing
  loc_A34BCA: FStAd var_B0 
  loc_A34BCE: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '9579B0
  'Data Table: 4C93E8
  loc_957998: ILdRf Me
  loc_95799B: CastAd
  loc_95799E: FStAdFunc var_88
  loc_9579A1: FLdRfVar var_88
  loc_9579A4: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9579A9: FFree1Ad var_88
  loc_9579AC: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '975274
  'Data Table: 4C93E8
  loc_97524C: FLdPr Me
  loc_97524F: VCallAd Control_ID_cboExpeImpu
  loc_975252: FStAdFunc var_8C
  loc_975255: ILdI2 KeyAscii
  loc_975258: FLdZeroAd var_8C
  loc_97525B: FStAdFunc var_88
  loc_97525E: FLdRfVar var_88
  loc_975261: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975266: IStI2 KeyAscii
  loc_975269: FFreeAd var_88 = ""
  loc_975270: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Validate(Cancel As Boolean) '993AF8
  'Data Table: 4C93E8
  loc_993AA0: FLdRfVar var_8C
  loc_993AA3: FLdPr Me
  loc_993AA6: VCallAd Control_ID_cboExpeImpu
  loc_993AA9: FStAdFunc var_88
  loc_993AAC: FLdPr var_88
  loc_993AAF:  = Me.Text
  loc_993AB4: ILdRf var_8C
  loc_993AB7: LitStr vbNullString
  loc_993ABA: NeStr
  loc_993ABC: FFree1Str var_8C
  loc_993ABF: FFree1Ad var_88
  loc_993AC2: BranchF loc_993AF6
  loc_993AC5: LitVarStr var_9C, vbNullString
  loc_993ACA: PopAdLdVar
  loc_993ACB: FLdPr Me
  loc_993ACE: VCallAd Control_ID_CodiOrcoMsk
  loc_993AD1: FStAdFunc var_88
  loc_993AD4: FLdPr var_88
  loc_993AD7: LateIdSt
  loc_993ADC: FFree1Ad var_88
  loc_993ADF: LitStr vbNullString
  loc_993AE2: FLdPr Me
  loc_993AE5: VCallAd Control_ID_CodiReceTxt
  loc_993AE8: FStAdFunc var_88
  loc_993AEB: FLdPr var_88
  loc_993AEE: Me.Text = from_stack_1
  loc_993AF3: FFree1Ad var_88
  loc_993AF6: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '957B78
  'Data Table: 4C93E8
  loc_957B60: LitI2_Byte 0
  loc_957B62: ILdRf Me
  loc_957B65: CastAd
  loc_957B68: FStAdFunc var_88
  loc_957B6B: FLdRfVar var_88
  loc_957B6E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_957B73: FFree1Ad var_88
  loc_957B76: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94BFC0
  'Data Table: 4C93E8
  loc_94BFAC: FLdPr Me
  loc_94BFAF: VCallAd Control_ID_mskDesde
  loc_94BFB2: CVarAd
  loc_94BFB6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BFBB: FFree1Var var_94 = ""
  loc_94BFBE: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '957E24
  'Data Table: 4C93E8
  loc_957E0C: ILdRf Me
  loc_957E0F: CastAd
  loc_957E12: FStAdFunc var_88
  loc_957E15: FLdRfVar var_88
  loc_957E18: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_957E1D: FFree1Ad var_88
  loc_957E20: ExitProcHresult
End Sub

Private Sub Form_Load() '9CF168
  'Data Table: 4C93E8
  loc_9CF090: LitI2_Byte &HFF
  loc_9CF092: ImpAdStI2 MemVar_C3D840
  loc_9CF095: ILdRf Me
  loc_9CF098: CastAd
  loc_9CF09B: FStAdFunc var_8C
  loc_9CF09E: FLdRfVar var_8C
  loc_9CF0A1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CF0A6: FFree1Ad var_8C
  loc_9CF0A9: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CF0AC: FLdRfVar var_88
  loc_9CF0AF: NewIfNullPr clsperiodo
  loc_9CF0B2: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CF0B7: FLdRfVar var_90
  loc_9CF0BA: FLdRfVar var_88
  loc_9CF0BD: NewIfNullPr clsperiodo
  loc_9CF0C0: from_stack_1 = clsperiodo.RecordCount
  loc_9CF0C5: ILdRf var_90
  loc_9CF0C8: LitI4 0
  loc_9CF0CD: GtI4
  loc_9CF0CE: BranchF loc_9CF161
  loc_9CF0D1: FLdRfVar var_88
  loc_9CF0D4: NewIfNullPr clsperiodo
  loc_9CF0D7: Call clsperiodo.MoveFirst()
  loc_9CF0DC: FLdRfVar var_92
  loc_9CF0DF: FLdRfVar var_88
  loc_9CF0E2: NewIfNullPr clsperiodo
  loc_9CF0E5: from_stack_1 = clsperiodo.EOF
  loc_9CF0EA: FLdI2 var_92
  loc_9CF0ED: NotI4
  loc_9CF0EE: BranchF loc_9CF161
  loc_9CF0F1: LitVar_Missing var_D0
  loc_9CF0F4: PopAdLdVar
  loc_9CF0F5: FLdRfVar var_BC
  loc_9CF0F8: FLdRfVar var_AC
  loc_9CF0FB: LitVarStr var_A8, "PeriInfo"
  loc_9CF100: PopAdLdVar
  loc_9CF101: FLdRfVar var_98
  loc_9CF104: FLdRfVar var_8C
  loc_9CF107: FLdRfVar var_88
  loc_9CF10A: NewIfNullPr clsperiodo
  loc_9CF10D: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CF112: FLdPr var_8C
  loc_9CF115:  = Me.Fields
  loc_9CF11A: FLdPr var_98
  loc_9CF11D: from_stack_2 = Me.Item(from_stack_1)
  loc_9CF122: FLdPr var_AC
  loc_9CF125:  = Me.Value
  loc_9CF12A: FLdRfVar var_BC
  loc_9CF12D: CStrVarTmp
  loc_9CF12E: FStStrNoPop var_C0
  loc_9CF131: FLdPr Me
  loc_9CF134: VCallAd Control_ID_cboPeriodo
  loc_9CF137: FStAdFunc var_D4
  loc_9CF13A: FLdPr var_D4
  loc_9CF13D: Me.AddItem from_stack_1, from_stack_2
  loc_9CF142: FFree1Str var_C0
  loc_9CF145: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CF150: FFree1Var var_BC = ""
  loc_9CF153: FLdRfVar var_88
  loc_9CF156: NewIfNullPr clsperiodo
  loc_9CF159: Call clsperiodo.MoveSiguiente()
  loc_9CF15E: Branch loc_9CF0DC
  loc_9CF161: Call cmdNueva_Click()
  loc_9CF166: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9548B4
  'Data Table: 4C93E8
  loc_95489C: FLdPr Me
  loc_95489F: VCallAd Control_ID_wbbReporte
  loc_9548A2: FStAdFunc var_88
  loc_9548A5: FLdRfVar var_88
  loc_9548A8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9548AD: FFree1Ad var_88
  loc_9548B0: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94BF78
  'Data Table: 4C93E8
  loc_94BF64: FLdPr Me
  loc_94BF67: VCallAd Control_ID_mskHasta
  loc_94BF6A: CVarAd
  loc_94BF6E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BF73: FFree1Var var_94 = ""
  loc_94BF76: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_8 '9B2954
  'Data Table: 4C93E8
  loc_9B28B8: FLdPr Me
  loc_9B28BB: VCallAd Control_ID_mskHasta
  loc_9B28BE: FStAdFunc var_88
  loc_9B28C1: FLdPr var_88
  loc_9B28C4: LateIdLdVar var_98 DispID_15 0
  loc_9B28CB: PopAd
  loc_9B28CD: FLdPr Me
  loc_9B28D0: VCallAd Control_ID_mskHasta
  loc_9B28D3: FStAdFunc var_AC
  loc_9B28D6: LitI2_Byte 0
  loc_9B28D8: PopTmpLdAd2 var_A2
  loc_9B28DB: FLdZeroAd var_AC
  loc_9B28DE: FStAdFunc var_A0
  loc_9B28E1: FLdRfVar var_A0
  loc_9B28E4: LitStr vbNullString
  loc_9B28E7: LitI2_Byte 0
  loc_9B28E9: LitI2_Byte 0
  loc_9B28EB: FLdRfVar var_98
  loc_9B28EE: CStrVarTmp
  loc_9B28EF: FStStrNoPop var_9C
  loc_9B28F2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B28F7: FStStrNoPop var_A8
  loc_9B28FA: FLdPr Me
  loc_9B28FD: MemStStrCopy
  loc_9B2901: FFreeStr var_9C = ""
  loc_9B2908: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2911: FFree1Var var_98 = ""
  loc_9B2914: FLdPr Me
  loc_9B2917: VCallAd Control_ID_mskHasta
  loc_9B291A: FStAdFunc var_B0
  loc_9B291D: LitNothing
  loc_9B291F: CastAd
  loc_9B2922: FStAdFunc var_AC
  loc_9B2925: FLdRfVar var_AC
  loc_9B2928: FLdZeroAd var_B0
  loc_9B292B: FStAdFuncNoPop
  loc_9B292E: CastAd
  loc_9B2931: FStAdFunc var_A0
  loc_9B2934: FLdRfVar var_A0
  loc_9B2937: FLdPr Me
  loc_9B293A: MemLdRfVar from_stack_1.global_104
  loc_9B293D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2942: IStI2 Cancel
  loc_9B2945: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2950: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9891F4
  'Data Table: 4C93E8
  loc_9891BC: FLdPr Me
  loc_9891BF: VCallAd Control_ID_statusBar
  loc_9891C2: FStAdFunc var_88
  loc_9891C5: FLdPr var_88
  loc_9891C8: LateIdLdVar var_98 DispID_1 0
  loc_9891CF: CStrVarTmp
  loc_9891D0: CVarStr var_A8
  loc_9891D3: PopAdLdVar
  loc_9891D4: FLdPr Me
  loc_9891D7: VCallAd Control_ID_statusBar
  loc_9891DA: FStAdFunc var_BC
  loc_9891DD: FLdPr var_BC
  loc_9891E0: LateIdSt
  loc_9891E5: FFreeAd var_88 = ""
  loc_9891EC: FFreeVar var_98 = ""
  loc_9891F3: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A80C
  'Data Table: 4C93E8
  loc_97A7DC: LitVarStr var_94, "Cerrando..."
  loc_97A7E1: PopAdLdVar
  loc_97A7E2: FLdPr Me
  loc_97A7E5: VCallAd Control_ID_statusBar
  loc_97A7E8: FStAdFunc var_A8
  loc_97A7EB: FLdPr var_A8
  loc_97A7EE: LateIdSt
  loc_97A7F3: FFree1Ad var_A8
  loc_97A7F6: ILdRf Me
  loc_97A7F9: FStAdNoPop
  loc_97A7FD: ImpAdLdRf MemVar_C44F9C
  loc_97A800: NewIfNullPr Me
  loc_97A803: Me.Global.Unload from_stack_1
  loc_97A808: FFree1Ad var_A8
  loc_97A80B: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '982C3C
  'Data Table: 4C93E8
  loc_982C00: LitVar_Missing var_A4
  loc_982C03: PopAdLdVar
  loc_982C04: LitVarI4
  loc_982C0C: PopAdLdVar
  loc_982C0D: ImpAdLdRf MemVar_C3D9A8
  loc_982C10: NewIfNullPr frmCalendario
  loc_982C13: frmCalendario.Show from_stack_1, from_stack_2
  loc_982C18: ImpAdLdRf MemVar_C3D038
  loc_982C1B: CDargRef
  loc_982C1F: FLdPr Me
  loc_982C22: VCallAd Control_ID_mskDesde
  loc_982C25: FStAdFunc var_A8
  loc_982C28: FLdPr var_A8
  loc_982C2B: LateIdSt
  loc_982C30: FFree1Ad var_A8
  loc_982C33: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_982C38: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '98459C
  'Data Table: 4C93E8
  loc_984560: LitVar_Missing var_A4
  loc_984563: PopAdLdVar
  loc_984564: LitVarI4
  loc_98456C: PopAdLdVar
  loc_98456D: ImpAdLdRf MemVar_C3D9A8
  loc_984570: NewIfNullPr frmCalendario
  loc_984573: frmCalendario.Show from_stack_1, from_stack_2
  loc_984578: ImpAdLdRf MemVar_C3D038
  loc_98457B: CDargRef
  loc_98457F: FLdPr Me
  loc_984582: VCallAd Control_ID_mskHasta
  loc_984585: FStAdFunc var_A8
  loc_984588: FLdPr var_A8
  loc_98458B: LateIdSt
  loc_984590: FFree1Ad var_A8
  loc_984593: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_984598: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'A5E814
  'Data Table: 4C93E8
  loc_A5E51C: LitI4 &HB
  loc_A5E521: CI2I4
  loc_A5E522: FLdRfVar var_88
  loc_A5E525: ImpAdLdRf MemVar_C44F9C
  loc_A5E528: NewIfNullPr Me
  loc_A5E52B:  = Me.Global.Screen
  loc_A5E530: FLdPr var_88
  loc_A5E533: Screen.MousePointer = from_stack_1
  loc_A5E538: FFree1Ad var_88
  loc_A5E53B: FLdPr Me
  loc_A5E53E: VCallAd Control_ID_cboExpeImpu
  loc_A5E541: FStAdFunc var_88
  loc_A5E544: FLdPr var_88
  loc_A5E547: Me.Clear
  loc_A5E54C: FFree1Ad var_88
  loc_A5E54F: LitStr "SELECT DISTINCT ExpeImpu"
  loc_A5E552: LitStr " FROM recepcion"
  loc_A5E555: ConcatStr
  loc_A5E556: FStStrNoPop var_8C
  loc_A5E559: LitStr " WHERE PeriInfo = "
  loc_A5E55C: ConcatStr
  loc_A5E55D: FStStrNoPop var_94
  loc_A5E560: FLdRfVar var_90
  loc_A5E563: FLdPr Me
  loc_A5E566: VCallAd Control_ID_cboPeriodo
  loc_A5E569: FStAdFunc var_88
  loc_A5E56C: FLdPr var_88
  loc_A5E56F:  = Me.Text
  loc_A5E574: ILdRf var_90
  loc_A5E577: ConcatStr
  loc_A5E578: FStStrNoPop var_98
  loc_A5E57B: LitStr " ORDER BY ExpeImpu;"
  loc_A5E57E: ConcatStr
  loc_A5E57F: FStStrNoPop var_9C
  loc_A5E582: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A5E587: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A5E594: FFree1Ad var_88
  loc_A5E597: FLdRfVar var_A0
  loc_A5E59A: ImpAdLdPr unk_4C942C
  loc_A5E59D: MemLdPr global_0
  loc_A5E5A0:  = Me.RecordCount
  loc_A5E5A5: ILdRf var_A0
  loc_A5E5A8: LitI4 0
  loc_A5E5AD: GtI4
  loc_A5E5AE: BranchF loc_A5E62E
  loc_A5E5B1: ImpAdLdPr unk_4C942C
  loc_A5E5B4: MemLdPr global_0
  loc_A5E5B7: Me.MoveFirst
  loc_A5E5BC: FLdRfVar var_A2
  loc_A5E5BF: ImpAdLdPr unk_4C942C
  loc_A5E5C2: MemLdPr global_0
  loc_A5E5C5:  = Me.EOF
  loc_A5E5CA: FLdI2 var_A2
  loc_A5E5CD: NotI4
  loc_A5E5CE: BranchF loc_A5E62E
  loc_A5E5D1: LitVar_Missing var_D8
  loc_A5E5D4: PopAdLdVar
  loc_A5E5D5: FLdRfVar var_C8
  loc_A5E5D8: FLdRfVar var_B8
  loc_A5E5DB: LitVarStr var_B4, "ExpeImpu"
  loc_A5E5E0: PopAdLdVar
  loc_A5E5E1: FLdRfVar var_88
  loc_A5E5E4: ImpAdLdPr unk_4C942C
  loc_A5E5E7: MemLdPr global_0
  loc_A5E5EA:  = Me.Fields
  loc_A5E5EF: FLdPr var_88
  loc_A5E5F2: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E5F7: FLdPr var_B8
  loc_A5E5FA:  = Me.Value
  loc_A5E5FF: FLdRfVar var_C8
  loc_A5E602: CStrVarTmp
  loc_A5E603: FStStrNoPop var_8C
  loc_A5E606: FLdPr Me
  loc_A5E609: VCallAd Control_ID_cboExpeImpu
  loc_A5E60C: FStAdFunc var_DC
  loc_A5E60F: FLdPr var_DC
  loc_A5E612: Me.AddItem from_stack_1, from_stack_2
  loc_A5E617: FFree1Str var_8C
  loc_A5E61A: FFreeAd var_88 = "": var_B8 = ""
  loc_A5E623: FFree1Var var_C8 = ""
  loc_A5E626: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_A5E62B: Branch loc_A5E5BC
  loc_A5E62E: LitI4 0
  loc_A5E633: CI2I4
  loc_A5E634: FLdRfVar var_88
  loc_A5E637: ImpAdLdRf MemVar_C44F9C
  loc_A5E63A: NewIfNullPr Me
  loc_A5E63D:  = Me.Global.Screen
  loc_A5E642: FLdPr var_88
  loc_A5E645: Screen.MousePointer = from_stack_1
  loc_A5E64A: FFree1Ad var_88
  loc_A5E64D: FLdPr Me
  loc_A5E650: MemLdRfVar from_stack_1.global_76
  loc_A5E653: NewIfNullAd
  loc_A5E656: FStAd var_E0 
  loc_A5E65A: LitStr "SELECT CodiOrco FROM recepcion WHERE PeriInfo = "
  loc_A5E65D: FLdRfVar var_8C
  loc_A5E660: FLdPr Me
  loc_A5E663: VCallAd Control_ID_cboPeriodo
  loc_A5E666: FStAdFunc var_88
  loc_A5E669: FLdPr var_88
  loc_A5E66C:  = Me.Text
  loc_A5E671: ILdRf var_8C
  loc_A5E674: ConcatStr
  loc_A5E675: FStStrNoPop var_90
  loc_A5E678: LitStr " ORDER BY CodiOrco DESC LIMIT 1"
  loc_A5E67B: ConcatStr
  loc_A5E67C: FStStrNoPop var_94
  loc_A5E67F: FLdPr var_E0
  loc_A5E682: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_A5E687: FFreeStr var_8C = "": var_90 = ""
  loc_A5E690: FFree1Ad var_88
  loc_A5E693: FLdRfVar var_A0
  loc_A5E696: FLdPr var_E0
  loc_A5E699: from_stack_1 = clsrecepcion.RecordCount
  loc_A5E69E: ILdRf var_A0
  loc_A5E6A1: LitI4 0
  loc_A5E6A6: GtI4
  loc_A5E6A7: BranchF loc_A5E70A
  loc_A5E6AA: FLdRfVar var_C8
  loc_A5E6AD: FLdRfVar var_DC
  loc_A5E6B0: LitVarStr var_B4, "CodiOrco"
  loc_A5E6B5: PopAdLdVar
  loc_A5E6B6: FLdRfVar var_B8
  loc_A5E6B9: FLdRfVar var_88
  loc_A5E6BC: FLdPr var_E0
  loc_A5E6BF: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_A5E6C4: FLdPr var_88
  loc_A5E6C7:  = Me.Fields
  loc_A5E6CC: FLdPr var_B8
  loc_A5E6CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E6D4: FLdPr var_DC
  loc_A5E6D7:  = Me.Value
  loc_A5E6DC: FLdRfVar var_C8
  loc_A5E6DF: CStrVarTmp
  loc_A5E6E0: CVarStr var_F0
  loc_A5E6E3: PopAdLdVar
  loc_A5E6E4: FLdPr Me
  loc_A5E6E7: VCallAd Control_ID_CodiOrcoMsk
  loc_A5E6EA: FStAdFunc var_F4
  loc_A5E6ED: FLdPr var_F4
  loc_A5E6F0: LateIdSt
  loc_A5E6F5: FFreeAd var_88 = "": var_B8 = "": var_DC = ""
  loc_A5E700: FFreeVar var_C8 = ""
  loc_A5E707: Branch loc_A5E724
  loc_A5E70A: LitVarStr var_B4, "1"
  loc_A5E70F: PopAdLdVar
  loc_A5E710: FLdPr Me
  loc_A5E713: VCallAd Control_ID_CodiOrcoMsk
  loc_A5E716: FStAdFunc var_88
  loc_A5E719: FLdPr var_88
  loc_A5E71C: LateIdSt
  loc_A5E721: FFree1Ad var_88
  loc_A5E724: LitNothing
  loc_A5E726: FStAd var_E0 
  loc_A5E72A: FLdRfVar var_8C
  loc_A5E72D: FLdPr Me
  loc_A5E730: VCallAd Control_ID_cboPeriodo
  loc_A5E733: FStAdFunc var_88
  loc_A5E736: FLdPr var_88
  loc_A5E739:  = Me.Text
  loc_A5E73E: LitI2_Byte 1
  loc_A5E740: LitI2_Byte 1
  loc_A5E742: ILdRf var_8C
  loc_A5E745: CI2Str
  loc_A5E747: FLdRfVar var_C8
  loc_A5E74A: ImpAdCallFPR4  = DateSerial(, , )
  loc_A5E74F: FLdRfVar var_C8
  loc_A5E752: CStrVarTmp
  loc_A5E753: CVarStr var_F0
  loc_A5E756: PopAdLdVar
  loc_A5E757: FLdPr Me
  loc_A5E75A: VCallAd Control_ID_mskDesde
  loc_A5E75D: FStAdFunc var_B8
  loc_A5E760: FLdPr var_B8
  loc_A5E763: LateIdSt
  loc_A5E768: FFree1Str var_8C
  loc_A5E76B: FFreeAd var_88 = ""
  loc_A5E772: FFreeVar var_C8 = ""
  loc_A5E779: FLdRfVar var_8C
  loc_A5E77C: FLdPr Me
  loc_A5E77F: VCallAd Control_ID_cboPeriodo
  loc_A5E782: FStAdFunc var_88
  loc_A5E785: FLdPr var_88
  loc_A5E788:  = Me.Text
  loc_A5E78D: ILdRf var_8C
  loc_A5E790: CI2Str
  loc_A5E792: ImpAdLdI2 MemVar_C3D064
  loc_A5E795: LtI2
  loc_A5E796: FFree1Str var_8C
  loc_A5E799: FFree1Ad var_88
  loc_A5E79C: BranchF loc_A5E7F1
  loc_A5E79F: FLdRfVar var_8C
  loc_A5E7A2: FLdPr Me
  loc_A5E7A5: VCallAd Control_ID_cboPeriodo
  loc_A5E7A8: FStAdFunc var_88
  loc_A5E7AB: FLdPr var_88
  loc_A5E7AE:  = Me.Text
  loc_A5E7B3: LitI2_Byte &H1F
  loc_A5E7B5: LitI2_Byte &HC
  loc_A5E7B7: ILdRf var_8C
  loc_A5E7BA: CI2Str
  loc_A5E7BC: FLdRfVar var_C8
  loc_A5E7BF: ImpAdCallFPR4  = DateSerial(, , )
  loc_A5E7C4: FLdRfVar var_C8
  loc_A5E7C7: CStrVarTmp
  loc_A5E7C8: CVarStr var_F0
  loc_A5E7CB: PopAdLdVar
  loc_A5E7CC: FLdPr Me
  loc_A5E7CF: VCallAd Control_ID_mskHasta
  loc_A5E7D2: FStAdFunc var_B8
  loc_A5E7D5: FLdPr var_B8
  loc_A5E7D8: LateIdSt
  loc_A5E7DD: FFree1Str var_8C
  loc_A5E7E0: FFreeAd var_88 = ""
  loc_A5E7E7: FFreeVar var_C8 = ""
  loc_A5E7EE: Branch loc_A5E811
  loc_A5E7F1: ImpAdLdFPR8 MemVar_C3D04C
  loc_A5E7F4: CStrDate
  loc_A5E7F6: CVarStr var_C8
  loc_A5E7F9: PopAdLdVar
  loc_A5E7FA: FLdPr Me
  loc_A5E7FD: VCallAd Control_ID_mskHasta
  loc_A5E800: FStAdFunc var_88
  loc_A5E803: FLdPr var_88
  loc_A5E806: LateIdSt
  loc_A5E80B: FFree1Ad var_88
  loc_A5E80E: FFree1Var var_C8 = ""
  loc_A5E811: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '94BF30
  'Data Table: 4C93E8
  loc_94BF1C: FLdPr Me
  loc_94BF1F: VCallAd Control_ID_CucuPersMsk
  loc_94BF22: CVarAd
  loc_94BF26: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BF2B: FFree1Var var_94 = ""
  loc_94BF2E: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) '9DD984
  'Data Table: 4C93E8
  loc_9DD88C: FLdPr Me
  loc_9DD88F: VCallAd Control_ID_CucuPersMsk
  loc_9DD892: FStAdFunc var_88
  loc_9DD895: FLdPr var_88
  loc_9DD898: LateIdLdVar var_98 DispID_13 -32767
  loc_9DD89F: CBoolVar
  loc_9DD8A1: FLdPr Me
  loc_9DD8A4: VCallAd Control_ID_CucuPersMsk
  loc_9DD8A7: FStAdFunc var_9C
  loc_9DD8AA: FLdPr var_9C
  loc_9DD8AD: LateIdLdVar var_AC DispID_22 0
  loc_9DD8B4: CStrVarTmp
  loc_9DD8B5: FStStrNoPop var_B0
  loc_9DD8B8: LitStr vbNullString
  loc_9DD8BB: NeStr
  loc_9DD8BD: AndI4
  loc_9DD8BE: FFree1Str var_B0
  loc_9DD8C1: FFreeAd var_88 = ""
  loc_9DD8C8: FFreeVar var_98 = ""
  loc_9DD8CF: BranchF loc_9DD983
  loc_9DD8D2: FLdPr Me
  loc_9DD8D5: VCallAd Control_ID_CucuPersMsk
  loc_9DD8D8: FStAdFunc var_88
  loc_9DD8DB: FLdPr var_88
  loc_9DD8DE: LateIdLdVar var_98 DispID_22 0
  loc_9DD8E5: PopAd
  loc_9DD8E7: FLdPr Me
  loc_9DD8EA: MemLdRfVar from_stack_1.global_72
  loc_9DD8ED: NewIfNullRf
  loc_9DD8F1: FLdRfVar var_98
  loc_9DD8F4: CStrVarTmp
  loc_9DD8F5: FStStrNoPop var_B0
  loc_9DD8F8: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9DD8FD: FStStrNoPop var_B4
  loc_9DD900: FLdPr Me
  loc_9DD903: MemStStrCopy
  loc_9DD907: FFreeStr var_B0 = ""
  loc_9DD90E: FFree1Ad var_88
  loc_9DD911: FFree1Var var_98 = ""
  loc_9DD914: FLdPr Me
  loc_9DD917: VCallAd Control_ID_CucuPersMsk
  loc_9DD91A: FStAdFunc var_BC
  loc_9DD91D: FLdPr Me
  loc_9DD920: VCallAd Control_ID_DetaProvLbl
  loc_9DD923: FStAdFunc var_B8
  loc_9DD926: FLdRfVar var_B8
  loc_9DD929: FLdZeroAd var_BC
  loc_9DD92C: FStAdFuncNoPop
  loc_9DD92F: CastAd
  loc_9DD932: FStAdFunc var_9C
  loc_9DD935: FLdRfVar var_9C
  loc_9DD938: FLdPr Me
  loc_9DD93B: MemLdRfVar from_stack_1.global_104
  loc_9DD93E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DD943: IStI2 arg_C
  loc_9DD946: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9DD951: ILdI2 arg_C
  loc_9DD954: NotI4
  loc_9DD955: BranchF loc_9DD983
  loc_9DD958: FLdRfVar var_B0
  loc_9DD95B: FLdPr Me
  loc_9DD95E: MemLdRfVar from_stack_1.global_72
  loc_9DD961: NewIfNullPr tblproveedor
  loc_9DD964: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9DD969: ILdRf var_B0
  loc_9DD96C: FLdPr Me
  loc_9DD96F: VCallAd Control_ID_DetaProvLbl
  loc_9DD972: FStAdFunc var_88
  loc_9DD975: FLdPr var_88
  loc_9DD978: Me.Caption = from_stack_1
  loc_9DD97D: FFree1Str var_B0
  loc_9DD980: FFree1Ad var_88
  loc_9DD983: ExitProcHresult
End Function

Private Sub CodiReceTxt_GotFocus() '94C128
  'Data Table: 4C93E8
  loc_94C114: FLdPr Me
  loc_94C117: VCallAd Control_ID_CodiReceTxt
  loc_94C11A: CVarAd
  loc_94C11E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C123: FFree1Var var_94 = ""
  loc_94C126: ExitProcHresult
End Sub

Private Sub CodiReceTxt_KeyPress(KeyAscii As Integer) '97E9F0
  'Data Table: 4C93E8
  loc_97E9BC: LitStr "1234567890-,."
  loc_97E9BF: FStStrCopy var_88
  loc_97E9C2: FLdRfVar var_88
  loc_97E9C5: ILdRf KeyAscii
  loc_97E9C8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E9CD: IStI2 KeyAscii
  loc_97E9D0: FFree1Str var_88
  loc_97E9D3: ILdI2 KeyAscii
  loc_97E9D6: LitStr "."
  loc_97E9D9: ImpAdCallI2 Asc()
  loc_97E9DE: EqI2
  loc_97E9DF: BranchF loc_97E9ED
  loc_97E9E2: LitStr ","
  loc_97E9E5: ImpAdCallI2 Asc()
  loc_97E9EA: IStI2 KeyAscii
  loc_97E9ED: ExitProcHresult
End Sub

Private Sub CodiReceTxt_Validate(Cancel As Boolean) 'A7E004
  'Data Table: 4C93E8
  loc_A7DC30: LitStr vbNullString
  loc_A7DC33: FLdPr Me
  loc_A7DC36: MemStStrCopy
  loc_A7DC3A: FLdRfVar var_8C
  loc_A7DC3D: FLdPr Me
  loc_A7DC40: VCallAd Control_ID_CodiReceTxt
  loc_A7DC43: FStAdFunc var_88
  loc_A7DC46: FLdPr var_88
  loc_A7DC49:  = Me.Text
  loc_A7DC4E: LitI2_Byte 0
  loc_A7DC50: PopTmpLdAd2 var_92
  loc_A7DC53: LitI2_Byte 0
  loc_A7DC55: PopTmpLdAd2 var_90
  loc_A7DC58: LitI2_Byte 0
  loc_A7DC5A: PopTmpLdAd2 var_8E
  loc_A7DC5D: ILdRf var_8C
  loc_A7DC60: LitStr "Número de recepción"
  loc_A7DC63: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A7DC68: FStStrNoPop var_98
  loc_A7DC6B: FLdPr Me
  loc_A7DC6E: MemStStrCopy
  loc_A7DC72: FFreeStr var_8C = ""
  loc_A7DC79: FFree1Ad var_88
  loc_A7DC7C: FLdPr Me
  loc_A7DC7F: VCallAd Control_ID_CodiReceTxt
  loc_A7DC82: FStAdFunc var_A4
  loc_A7DC85: LitNothing
  loc_A7DC87: CastAd
  loc_A7DC8A: FStAdFunc var_A0
  loc_A7DC8D: FLdRfVar var_A0
  loc_A7DC90: FLdZeroAd var_A4
  loc_A7DC93: FStAdFuncNoPop
  loc_A7DC96: CastAd
  loc_A7DC99: FStAdFunc var_9C
  loc_A7DC9C: FLdRfVar var_9C
  loc_A7DC9F: FLdPr Me
  loc_A7DCA2: MemLdRfVar from_stack_1.global_104
  loc_A7DCA5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7DCAA: IStI2 Cancel
  loc_A7DCAD: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7DCB8: ILdI2 Cancel
  loc_A7DCBB: NotI4
  loc_A7DCBC: BranchF loc_A7E000
  loc_A7DCBF: LitI4 1
  loc_A7DCC4: FLdRfVar var_8C
  loc_A7DCC7: FLdPr Me
  loc_A7DCCA: VCallAd Control_ID_CodiReceTxt
  loc_A7DCCD: FStAdFunc var_88
  loc_A7DCD0: FLdPr var_88
  loc_A7DCD3:  = Me.Text
  loc_A7DCD8: ILdRf var_8C
  loc_A7DCDB: LitStr "-"
  loc_A7DCDE: LitI4 0
  loc_A7DCE3: FnInStr4
  loc_A7DCE5: LitI4 0
  loc_A7DCEA: GtI4
  loc_A7DCEB: FFree1Str var_8C
  loc_A7DCEE: FFree1Ad var_88
  loc_A7DCF1: BranchF loc_A7DE85
  loc_A7DCF4: LitI4 1
  loc_A7DCF9: FLdRfVar var_8C
  loc_A7DCFC: FLdPr Me
  loc_A7DCFF: VCallAd Control_ID_CodiReceTxt
  loc_A7DD02: FStAdFunc var_88
  loc_A7DD05: FLdPr var_88
  loc_A7DD08:  = Me.Text
  loc_A7DD0D: ILdRf var_8C
  loc_A7DD10: LitStr ","
  loc_A7DD13: LitI4 0
  loc_A7DD18: FnInStr4
  loc_A7DD1A: LitI4 0
  loc_A7DD1F: GtI4
  loc_A7DD20: FFree1Str var_8C
  loc_A7DD23: FFree1Ad var_88
  loc_A7DD26: BranchF loc_A7DD36
  loc_A7DD29: LitStr "primero un guión, y luego una coma..."
  loc_A7DD2C: FLdPr Me
  loc_A7DD2F: MemStStrCopy
  loc_A7DD33: Branch loc_A7DE82
  loc_A7DD36: FLdRfVar var_98
  loc_A7DD39: FLdPr Me
  loc_A7DD3C: VCallAd Control_ID_CodiReceTxt
  loc_A7DD3F: FStAdFunc var_9C
  loc_A7DD42: FLdPr var_9C
  loc_A7DD45:  = Me.Text
  loc_A7DD4A: LitI4 1
  loc_A7DD4F: FLdRfVar var_8C
  loc_A7DD52: FLdPr Me
  loc_A7DD55: VCallAd Control_ID_CodiReceTxt
  loc_A7DD58: FStAdFunc var_88
  loc_A7DD5B: FLdPr var_88
  loc_A7DD5E:  = Me.Text
  loc_A7DD63: ILdRf var_8C
  loc_A7DD66: LitStr "-"
  loc_A7DD69: LitI4 0
  loc_A7DD6E: FnInStr4
  loc_A7DD70: LitI4 0
  loc_A7DD75: LitI4 -1
  loc_A7DD7A: LitStr "-"
  loc_A7DD7D: ILdRf var_98
  loc_A7DD80: ImpAdCallI2 InStrRev(, , , )
  loc_A7DD85: NeI4
  loc_A7DD86: FFreeStr var_8C = ""
  loc_A7DD8D: FFreeAd var_88 = ""
  loc_A7DD94: BranchF loc_A7DDA4
  loc_A7DD97: LitStr "tiene más de un guión..."
  loc_A7DD9A: FLdPr Me
  loc_A7DD9D: MemStStrCopy
  loc_A7DDA1: Branch loc_A7DE82
  loc_A7DDA4: FLdRfVar var_8C
  loc_A7DDA7: FLdPr Me
  loc_A7DDAA: VCallAd Control_ID_CodiReceTxt
  loc_A7DDAD: FStAdFunc var_88
  loc_A7DDB0: FLdPr var_88
  loc_A7DDB3:  = Me.Text
  loc_A7DDB8: FLdRfVar var_B0
  loc_A7DDBB: FLdPr Me
  loc_A7DDBE: VCallAd Control_ID_CodiReceTxt
  loc_A7DDC1: FStAdFunc var_A0
  loc_A7DDC4: FLdPr var_A0
  loc_A7DDC7:  = Me.Text
  loc_A7DDCC: FLdRfVar var_B4
  loc_A7DDCF: FLdPr Me
  loc_A7DDD2: VCallAd Control_ID_CodiReceTxt
  loc_A7DDD5: FStAdFunc var_A4
  loc_A7DDD8: FLdPr var_A4
  loc_A7DDDB:  = Me.Text
  loc_A7DDE0: LitStr " AND r.CodiRece >= '"
  loc_A7DDE3: LitI4 1
  loc_A7DDE8: FLdRfVar var_98
  loc_A7DDEB: FLdPr Me
  loc_A7DDEE: VCallAd Control_ID_CodiReceTxt
  loc_A7DDF1: FStAdFunc var_9C
  loc_A7DDF4: FLdPr var_9C
  loc_A7DDF7:  = Me.Text
  loc_A7DDFC: ILdRf var_98
  loc_A7DDFF: LitStr "-"
  loc_A7DE02: LitI4 0
  loc_A7DE07: FnInStr4
  loc_A7DE09: LitI4 1
  loc_A7DE0E: SubI4
  loc_A7DE0F: ILdRf var_8C
  loc_A7DE12: ImpAdCallI2 Left$(, )
  loc_A7DE17: FStStrNoPop var_A8
  loc_A7DE1A: ConcatStr
  loc_A7DE1B: FStStrNoPop var_AC
  loc_A7DE1E: LitStr "' AND r.CodiRece <= '"
  loc_A7DE21: ConcatStr
  loc_A7DE22: FStStrNoPop var_D8
  loc_A7DE25: LitVar_Missing var_D4
  loc_A7DE28: LitI4 1
  loc_A7DE2D: ILdRf var_B4
  loc_A7DE30: LitStr "-"
  loc_A7DE33: LitI4 0
  loc_A7DE38: FnInStr4
  loc_A7DE3A: LitI4 1
  loc_A7DE3F: AddI4
  loc_A7DE40: ILdRf var_B0
  loc_A7DE43: ImpAdCallI2 Mid$(, , )
  loc_A7DE48: FStStrNoPop var_DC
  loc_A7DE4B: ConcatStr
  loc_A7DE4C: FStStrNoPop var_E0
  loc_A7DE4F: LitStr "'"
  loc_A7DE52: ConcatStr
  loc_A7DE53: FStStrNoPop var_E4
  loc_A7DE56: FLdPr Me
  loc_A7DE59: MemStStrCopy
  loc_A7DE5D: FFreeStr var_98 = "": var_8C = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A7DE74: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7DE7F: FFree1Var var_D4 = ""
  loc_A7DE82: Branch loc_A7DFC4
  loc_A7DE85: LitI4 1
  loc_A7DE8A: FLdRfVar var_8C
  loc_A7DE8D: FLdPr Me
  loc_A7DE90: VCallAd Control_ID_CodiReceTxt
  loc_A7DE93: FStAdFunc var_88
  loc_A7DE96: FLdPr var_88
  loc_A7DE99:  = Me.Text
  loc_A7DE9E: ILdRf var_8C
  loc_A7DEA1: LitStr ","
  loc_A7DEA4: LitI4 0
  loc_A7DEA9: FnInStr4
  loc_A7DEAB: LitI4 0
  loc_A7DEB0: GtI4
  loc_A7DEB1: FFree1Str var_8C
  loc_A7DEB4: FFree1Ad var_88
  loc_A7DEB7: BranchF loc_A7DF56
  loc_A7DEBA: LitI4 1
  loc_A7DEBF: FLdRfVar var_8C
  loc_A7DEC2: FLdPr Me
  loc_A7DEC5: VCallAd Control_ID_CodiReceTxt
  loc_A7DEC8: FStAdFunc var_88
  loc_A7DECB: FLdPr var_88
  loc_A7DECE:  = Me.Text
  loc_A7DED3: ILdRf var_8C
  loc_A7DED6: LitStr "-"
  loc_A7DED9: LitI4 0
  loc_A7DEDE: FnInStr4
  loc_A7DEE0: LitI4 0
  loc_A7DEE5: GtI4
  loc_A7DEE6: FFree1Str var_8C
  loc_A7DEE9: FFree1Ad var_88
  loc_A7DEEC: BranchF loc_A7DEFC
  loc_A7DEEF: LitStr "primero un coma, y luego un guión..."
  loc_A7DEF2: FLdPr Me
  loc_A7DEF5: MemStStrCopy
  loc_A7DEF9: Branch loc_A7DF53
  loc_A7DEFC: FLdRfVar var_8C
  loc_A7DEFF: FLdPr Me
  loc_A7DF02: VCallAd Control_ID_CodiReceTxt
  loc_A7DF05: FStAdFunc var_88
  loc_A7DF08: FLdPr var_88
  loc_A7DF0B:  = Me.Text
  loc_A7DF10: LitStr " AND r.CodiRece IN ('"
  loc_A7DF13: LitI4 0
  loc_A7DF18: LitI4 -1
  loc_A7DF1D: LitI4 1
  loc_A7DF22: LitStr "','"
  loc_A7DF25: LitStr ","
  loc_A7DF28: ILdRf var_8C
  loc_A7DF2B: ImpAdCallI2 Replace(, , , , , )
  loc_A7DF30: FStStrNoPop var_98
  loc_A7DF33: ConcatStr
  loc_A7DF34: FStStrNoPop var_A8
  loc_A7DF37: LitStr "')"
  loc_A7DF3A: ConcatStr
  loc_A7DF3B: FStStrNoPop var_AC
  loc_A7DF3E: FLdPr Me
  loc_A7DF41: MemStStrCopy
  loc_A7DF45: FFreeStr var_8C = "": var_98 = "": var_A8 = ""
  loc_A7DF50: FFree1Ad var_88
  loc_A7DF53: Branch loc_A7DFC4
  loc_A7DF56: FLdRfVar var_8C
  loc_A7DF59: FLdPr Me
  loc_A7DF5C: VCallAd Control_ID_CodiReceTxt
  loc_A7DF5F: FStAdFunc var_88
  loc_A7DF62: FLdPr var_88
  loc_A7DF65:  = Me.Text
  loc_A7DF6A: FLdZeroAd var_8C
  loc_A7DF6D: CVarStr var_D4
  loc_A7DF70: ImpAdCallI2 IsNumeric()
  loc_A7DF75: NotI4
  loc_A7DF76: FFree1Ad var_88
  loc_A7DF79: FFree1Var var_D4 = ""
  loc_A7DF7C: BranchF loc_A7DF8C
  loc_A7DF7F: LitStr "no es un número..."
  loc_A7DF82: FLdPr Me
  loc_A7DF85: MemStStrCopy
  loc_A7DF89: Branch loc_A7DFC4
  loc_A7DF8C: LitStr " AND r.CodiRece = '"
  loc_A7DF8F: FLdRfVar var_8C
  loc_A7DF92: FLdPr Me
  loc_A7DF95: VCallAd Control_ID_CodiReceTxt
  loc_A7DF98: FStAdFunc var_88
  loc_A7DF9B: FLdPr var_88
  loc_A7DF9E:  = Me.Text
  loc_A7DFA3: ILdRf var_8C
  loc_A7DFA6: ConcatStr
  loc_A7DFA7: FStStrNoPop var_98
  loc_A7DFAA: LitStr "'"
  loc_A7DFAD: ConcatStr
  loc_A7DFAE: FStStrNoPop var_A8
  loc_A7DFB1: FLdPr Me
  loc_A7DFB4: MemStStrCopy
  loc_A7DFB8: FFreeStr var_8C = "": var_98 = ""
  loc_A7DFC1: FFree1Ad var_88
  loc_A7DFC4: FLdPr Me
  loc_A7DFC7: VCallAd Control_ID_CodiReceTxt
  loc_A7DFCA: FStAdFunc var_A4
  loc_A7DFCD: LitNothing
  loc_A7DFCF: CastAd
  loc_A7DFD2: FStAdFunc var_A0
  loc_A7DFD5: FLdRfVar var_A0
  loc_A7DFD8: FLdZeroAd var_A4
  loc_A7DFDB: FStAdFuncNoPop
  loc_A7DFDE: CastAd
  loc_A7DFE1: FStAdFunc var_9C
  loc_A7DFE4: FLdRfVar var_9C
  loc_A7DFE7: FLdPr Me
  loc_A7DFEA: MemLdRfVar from_stack_1.global_104
  loc_A7DFED: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7DFF2: IStI2 Cancel
  loc_A7DFF5: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7E000: ExitProcHresult
End Sub

Public Function htmFileGet() '4CAB00
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4CAB0F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4CAB1E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4CAB2D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4CAB3C
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9E7C10
  'Data Table: 4C93E8
  loc_9E7B1C: LitI4 0
  loc_9E7B21: LitI4 &HC
  loc_9E7B26: FLdRfVar var_88
  loc_9E7B29: Redim
  loc_9E7B33: FLdPr Me
  loc_9E7B36: VCallAd Control_ID_cboPeriodo
  loc_9E7B39: CVarAd
  loc_9E7B3D: ParmAry1St
  loc_9E7B43: FLdPr Me
  loc_9E7B46: VCallAd Control_ID_CodiOrcoMsk
  loc_9E7B49: CVarAd
  loc_9E7B4D: ParmAry1St
  loc_9E7B53: FLdPr Me
  loc_9E7B56: VCallAd Control_ID_CodiReceTxt
  loc_9E7B59: CVarAd
  loc_9E7B5D: ParmAry1St
  loc_9E7B63: FLdPr Me
  loc_9E7B66: VCallAd Control_ID_cboExpeImpu
  loc_9E7B69: CVarAd
  loc_9E7B6D: ParmAry1St
  loc_9E7B73: FLdPr Me
  loc_9E7B76: VCallAd Control_ID_mskDesde
  loc_9E7B79: CVarAd
  loc_9E7B7D: ParmAry1St
  loc_9E7B83: FLdPr Me
  loc_9E7B86: VCallAd Control_ID_cmdCalDesde
  loc_9E7B89: CVarAd
  loc_9E7B8D: ParmAry1St
  loc_9E7B93: FLdPr Me
  loc_9E7B96: VCallAd Control_ID_mskHasta
  loc_9E7B99: CVarAd
  loc_9E7B9D: ParmAry1St
  loc_9E7BA3: FLdPr Me
  loc_9E7BA6: VCallAd Control_ID_cmdCalHasta
  loc_9E7BA9: CVarAd
  loc_9E7BAD: ParmAry1St
  loc_9E7BB3: FLdPr Me
  loc_9E7BB6: VCallAd Control_ID_HojasSeparadasChk
  loc_9E7BB9: CVarAd
  loc_9E7BBD: ParmAry1St
  loc_9E7BC3: FLdPr Me
  loc_9E7BC6: VCallAd Control_ID_IncluyeAnuladasChk
  loc_9E7BC9: CVarAd
  loc_9E7BCD: ParmAry1St
  loc_9E7BD3: FLdPr Me
  loc_9E7BD6: VCallAd Control_ID_CucuPersMsk
  loc_9E7BD9: CVarAd
  loc_9E7BDD: ParmAry1St
  loc_9E7BE3: FLdPr Me
  loc_9E7BE6: VCallAd Control_ID_CucuPersCmd
  loc_9E7BE9: CVarAd
  loc_9E7BED: ParmAry1St
  loc_9E7BF3: FLdPr Me
  loc_9E7BF6: VCallAd Control_ID_txtPie
  loc_9E7BF9: CVarAd
  loc_9E7BFD: ParmAry1St
  loc_9E7C03: FLdRfVar var_88
  loc_9E7C06: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E7C0B: FLdRfVar var_88
  loc_9E7C0E: Erase
  loc_9E7C0F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BCF5D4
  'Data Table: 4C93E8
  loc_BCE1A8: FLdPr Me
  loc_BCE1AB: MemLdI2 bGenerado
  loc_BCE1AE: BranchF loc_BCE1B2
  loc_BCE1B1: ExitProcHresult
  loc_BCE1B2: LitVarStr var_B4, "Generando reporte..."
  loc_BCE1B7: PopAdLdVar
  loc_BCE1B8: FLdPr Me
  loc_BCE1BB: VCallAd Control_ID_statusBar
  loc_BCE1BE: FStAdFunc var_C8
  loc_BCE1C1: FLdPr var_C8
  loc_BCE1C4: LateIdSt
  loc_BCE1C9: FFree1Ad var_C8
  loc_BCE1CC: LitI4 &HB
  loc_BCE1D1: CI2I4
  loc_BCE1D2: FLdPr Me
  loc_BCE1D5: Me.MousePointer = from_stack_1
  loc_BCE1DA: LitI2_Byte 0
  loc_BCE1DC: PopTmpLdAd2 var_CA
  loc_BCE1DF: Call CodiReceTxt_Validate(from_stack_1v)
  loc_BCE1E4: FLdPr Me
  loc_BCE1E7: MemLdStr global_104
  loc_BCE1EA: LitStr vbNullString
  loc_BCE1ED: NeStr
  loc_BCE1EF: BranchF loc_BCE1F5
  loc_BCE1F2: Branch loc_BCF5AA
  loc_BCE1F5: FLdPr Me
  loc_BCE1F8: MemLdStr global_108
  loc_BCE1FB: LitStr vbNullString
  loc_BCE1FE: EqStr
  loc_BCE200: BranchF loc_BCE206
  loc_BCE203: Branch loc_BCF5AA
  loc_BCE206: FLdPr Me
  loc_BCE209: VCallAd Control_ID_CodiOrcoMsk
  loc_BCE20C: FStAdFunc var_C8
  loc_BCE20F: FLdPr var_C8
  loc_BCE212: LateIdLdVar var_DC DispID_22 0
  loc_BCE219: PopAd
  loc_BCE21B: FLdPr Me
  loc_BCE21E: VCallAd Control_ID_CodiOrcoMsk
  loc_BCE221: FStAdFunc var_E4
  loc_BCE224: FLdPr var_E4
  loc_BCE227: LateIdLdVar var_F4 DispID_22 0
  loc_BCE22E: PopAd
  loc_BCE230: LitVarStr var_C4, vbNullString
  loc_BCE235: FStVarCopyObj var_118
  loc_BCE238: FLdRfVar var_118
  loc_BCE23B: LitStr " AND r.CodiOrco = "
  loc_BCE23E: FLdRfVar var_F4
  loc_BCE241: CStrVarTmp
  loc_BCE242: FStStrNoPop var_F8
  loc_BCE245: ConcatStr
  loc_BCE246: CVarStr var_108
  loc_BCE249: FLdRfVar var_DC
  loc_BCE24C: CStrVarTmp
  loc_BCE24D: FStStrNoPop var_E0
  loc_BCE250: LitStr vbNullString
  loc_BCE253: NeStr
  loc_BCE255: CVarBoolI2 var_B4
  loc_BCE259: FLdRfVar var_128
  loc_BCE25C: ImpAdCallFPR4  = IIf(, , )
  loc_BCE261: FLdRfVar var_128
  loc_BCE264: CStrVarTmp
  loc_BCE265: FStStr var_8C
  loc_BCE268: FFreeStr var_E0 = ""
  loc_BCE26F: FFreeAd var_C8 = ""
  loc_BCE276: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_BCE285: FLdRfVar var_E0
  loc_BCE288: FLdPr Me
  loc_BCE28B: VCallAd Control_ID_cboExpeImpu
  loc_BCE28E: FStAdFunc var_C8
  loc_BCE291: FLdPr var_C8
  loc_BCE294:  = Me.Text
  loc_BCE299: FLdRfVar var_F8
  loc_BCE29C: FLdPr Me
  loc_BCE29F: VCallAd Control_ID_cboExpeImpu
  loc_BCE2A2: FStAdFunc var_E4
  loc_BCE2A5: FLdPr var_E4
  loc_BCE2A8:  = Me.Text
  loc_BCE2AD: LitVarStr var_C4, vbNullString
  loc_BCE2B2: FStVarCopyObj var_F4
  loc_BCE2B5: FLdRfVar var_F4
  loc_BCE2B8: LitStr " AND r.ExpeImpu = '"
  loc_BCE2BB: ILdRf var_F8
  loc_BCE2BE: ConcatStr
  loc_BCE2BF: FStStrNoPop var_12C
  loc_BCE2C2: LitStr "'"
  loc_BCE2C5: ConcatStr
  loc_BCE2C6: CVarStr var_DC
  loc_BCE2C9: ILdRf var_E0
  loc_BCE2CC: LitStr vbNullString
  loc_BCE2CF: NeStr
  loc_BCE2D1: CVarBoolI2 var_B4
  loc_BCE2D5: FLdRfVar var_108
  loc_BCE2D8: ImpAdCallFPR4  = IIf(, , )
  loc_BCE2DD: FLdRfVar var_108
  loc_BCE2E0: CStrVarTmp
  loc_BCE2E1: FStStr var_90
  loc_BCE2E4: FFreeStr var_E0 = "": var_F8 = ""
  loc_BCE2ED: FFreeAd var_C8 = ""
  loc_BCE2F4: FFreeVar var_B4 = "": var_DC = "": var_F4 = ""
  loc_BCE2FF: FLdPr Me
  loc_BCE302: VCallAd Control_ID_mskDesde
  loc_BCE305: FStAdFunc var_C8
  loc_BCE308: FLdPr var_C8
  loc_BCE30B: LateIdLdVar var_DC DispID_20 0
  loc_BCE312: PopAd
  loc_BCE314: FLdPr Me
  loc_BCE317: VCallAd Control_ID_mskDesde
  loc_BCE31A: FStAdFunc var_E4
  loc_BCE31D: FLdPr var_E4
  loc_BCE320: LateIdLdVar var_F4 DispID_15 0
  loc_BCE327: PopAd
  loc_BCE329: LitI4 1
  loc_BCE32E: LitI4 1
  loc_BCE333: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BCE338: FStVarCopyObj var_118
  loc_BCE33B: FLdRfVar var_118
  loc_BCE33E: FLdRfVar var_F4
  loc_BCE341: CStrVarTmp
  loc_BCE342: CVarStr var_108
  loc_BCE345: ImpAdCallI2 Format$(, )
  loc_BCE34A: FStStr var_12C
  loc_BCE34D: LitVarStr var_13C, vbNullString
  loc_BCE352: FStVarCopyObj var_14C
  loc_BCE355: FLdRfVar var_14C
  loc_BCE358: LitStr " AND FechRece >= "
  loc_BCE35B: FLdZeroAd var_12C
  loc_BCE35E: FStStrNoPop var_F8
  loc_BCE361: ConcatStr
  loc_BCE362: CVarStr var_128
  loc_BCE365: FLdRfVar var_DC
  loc_BCE368: CStrVarTmp
  loc_BCE369: FStStrNoPop var_E0
  loc_BCE36C: LitStr vbNullString
  loc_BCE36F: NeStr
  loc_BCE371: CVarBoolI2 var_C4
  loc_BCE375: FLdRfVar var_15C
  loc_BCE378: ImpAdCallFPR4  = IIf(, , )
  loc_BCE37D: FLdRfVar var_15C
  loc_BCE380: CStrVarTmp
  loc_BCE381: FStStr var_9C
  loc_BCE384: FFreeStr var_E0 = "": var_F8 = ""
  loc_BCE38D: FFreeAd var_C8 = ""
  loc_BCE394: FFreeVar var_DC = "": var_F4 = "": var_108 = "": var_118 = "": var_C4 = "": var_128 = "": var_14C = ""
  loc_BCE3A7: FLdPr Me
  loc_BCE3AA: VCallAd Control_ID_mskHasta
  loc_BCE3AD: FStAdFunc var_C8
  loc_BCE3B0: FLdPr var_C8
  loc_BCE3B3: LateIdLdVar var_DC DispID_20 0
  loc_BCE3BA: PopAd
  loc_BCE3BC: FLdPr Me
  loc_BCE3BF: VCallAd Control_ID_mskHasta
  loc_BCE3C2: FStAdFunc var_E4
  loc_BCE3C5: FLdPr var_E4
  loc_BCE3C8: LateIdLdVar var_F4 DispID_15 0
  loc_BCE3CF: PopAd
  loc_BCE3D1: LitI4 1
  loc_BCE3D6: LitI4 1
  loc_BCE3DB: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BCE3E0: FStVarCopyObj var_118
  loc_BCE3E3: FLdRfVar var_118
  loc_BCE3E6: FLdRfVar var_F4
  loc_BCE3E9: CStrVarTmp
  loc_BCE3EA: CVarStr var_108
  loc_BCE3ED: ImpAdCallI2 Format$(, )
  loc_BCE3F2: FStStr var_12C
  loc_BCE3F5: LitVarStr var_13C, vbNullString
  loc_BCE3FA: FStVarCopyObj var_14C
  loc_BCE3FD: FLdRfVar var_14C
  loc_BCE400: LitStr " AND FechRece <= "
  loc_BCE403: FLdZeroAd var_12C
  loc_BCE406: FStStrNoPop var_F8
  loc_BCE409: ConcatStr
  loc_BCE40A: CVarStr var_128
  loc_BCE40D: FLdRfVar var_DC
  loc_BCE410: CStrVarTmp
  loc_BCE411: FStStrNoPop var_E0
  loc_BCE414: LitStr vbNullString
  loc_BCE417: NeStr
  loc_BCE419: CVarBoolI2 var_C4
  loc_BCE41D: FLdRfVar var_15C
  loc_BCE420: ImpAdCallFPR4  = IIf(, , )
  loc_BCE425: FLdRfVar var_15C
  loc_BCE428: CStrVarTmp
  loc_BCE429: FStStr var_A0
  loc_BCE42C: FFreeStr var_E0 = "": var_F8 = ""
  loc_BCE435: FFreeAd var_C8 = ""
  loc_BCE43C: FFreeVar var_DC = "": var_F4 = "": var_108 = "": var_118 = "": var_C4 = "": var_128 = "": var_14C = ""
  loc_BCE44F: FLdPr Me
  loc_BCE452: VCallAd Control_ID_CucuPersMsk
  loc_BCE455: FStAdFunc var_C8
  loc_BCE458: FLdPr var_C8
  loc_BCE45B: LateIdLdVar var_DC DispID_0 0
  loc_BCE462: PopAd
  loc_BCE464: FLdPr Me
  loc_BCE467: VCallAd Control_ID_CucuPersMsk
  loc_BCE46A: FStAdFunc var_E4
  loc_BCE46D: FLdPr var_E4
  loc_BCE470: LateIdLdVar var_F4 DispID_0 0
  loc_BCE477: PopAd
  loc_BCE479: LitVarStr var_C4, vbNullString
  loc_BCE47E: FStVarCopyObj var_118
  loc_BCE481: FLdRfVar var_118
  loc_BCE484: LitStr " AND oc.CucuPers = '"
  loc_BCE487: FLdRfVar var_F4
  loc_BCE48A: CStrVarTmp
  loc_BCE48B: FStStrNoPop var_F8
  loc_BCE48E: ConcatStr
  loc_BCE48F: FStStrNoPop var_12C
  loc_BCE492: LitStr "'"
  loc_BCE495: ConcatStr
  loc_BCE496: CVarStr var_108
  loc_BCE499: FLdRfVar var_DC
  loc_BCE49C: CStrVarTmp
  loc_BCE49D: FStStrNoPop var_E0
  loc_BCE4A0: LitStr vbNullString
  loc_BCE4A3: NeStr
  loc_BCE4A5: CVarBoolI2 var_B4
  loc_BCE4A9: FLdRfVar var_128
  loc_BCE4AC: ImpAdCallFPR4  = IIf(, , )
  loc_BCE4B1: FLdRfVar var_128
  loc_BCE4B4: CStrVarTmp
  loc_BCE4B5: FStStr var_94
  loc_BCE4B8: FFreeStr var_E0 = "": var_F8 = ""
  loc_BCE4C1: FFreeAd var_C8 = ""
  loc_BCE4C8: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_BCE4D7: FLdRfVar var_CA
  loc_BCE4DA: FLdPr Me
  loc_BCE4DD: VCallAd Control_ID_IncluyeAnuladasChk
  loc_BCE4E0: FStAdFunc var_C8
  loc_BCE4E3: FLdPr var_C8
  loc_BCE4E6:  = Me.Value
  loc_BCE4EB: LitVarStr var_13C, " AND FeanRece IS NULL "
  loc_BCE4F0: FStVarCopyObj var_F4
  loc_BCE4F3: FLdRfVar var_F4
  loc_BCE4F6: LitVarStr var_C4, vbNullString
  loc_BCE4FB: FStVarCopyObj var_DC
  loc_BCE4FE: FLdRfVar var_DC
  loc_BCE501: FLdI2 var_CA
  loc_BCE504: CI4UI1
  loc_BCE505: LitI4 1
  loc_BCE50A: EqI4
  loc_BCE50B: CVarBoolI2 var_B4
  loc_BCE50F: FLdRfVar var_108
  loc_BCE512: ImpAdCallFPR4  = IIf(, , )
  loc_BCE517: FLdRfVar var_108
  loc_BCE51A: CStrVarTmp
  loc_BCE51B: FStStr var_98
  loc_BCE51E: FFree1Ad var_C8
  loc_BCE521: FFreeVar var_B4 = "": var_DC = "": var_F4 = ""
  loc_BCE52C: LitStr "SELECT r.*, oc.CucuPers, DetaOrco, CodiNope, oc.CodiTico, DetaTico, DetaProv"
  loc_BCE52F: LitStr " FROM recepcion r"
  loc_BCE532: ConcatStr
  loc_BCE533: FStStrNoPop var_E0
  loc_BCE536: LitStr " INNER JOIN ordencompra oc ON oc.PeriInfo = r.PeriInfo AND oc.CodiOrco = r.CodiOrco"
  loc_BCE539: ConcatStr
  loc_BCE53A: FStStrNoPop var_F8
  loc_BCE53D: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_BCE540: ConcatStr
  loc_BCE541: FStStrNoPop var_12C
  loc_BCE544: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = oc.CodiTico"
  loc_BCE547: ConcatStr
  loc_BCE548: FStStrNoPop var_160
  loc_BCE54B: LitStr " WHERE r.PeriInfo = "
  loc_BCE54E: ConcatStr
  loc_BCE54F: FStStrNoPop var_168
  loc_BCE552: FLdRfVar var_164
  loc_BCE555: FLdPr Me
  loc_BCE558: VCallAd Control_ID_cboPeriodo
  loc_BCE55B: FStAdFunc var_C8
  loc_BCE55E: FLdPr var_C8
  loc_BCE561:  = Me.Text
  loc_BCE566: ILdRf var_164
  loc_BCE569: ConcatStr
  loc_BCE56A: FStStrNoPop var_16C
  loc_BCE56D: ILdRf var_98
  loc_BCE570: ConcatStr
  loc_BCE571: FStStrNoPop var_170
  loc_BCE574: ILdRf var_8C
  loc_BCE577: ConcatStr
  loc_BCE578: FStStrNoPop var_174
  loc_BCE57B: FLdPr Me
  loc_BCE57E: MemLdStr global_108
  loc_BCE581: ConcatStr
  loc_BCE582: FStStrNoPop var_178
  loc_BCE585: ILdRf var_90
  loc_BCE588: ConcatStr
  loc_BCE589: FStStrNoPop var_17C
  loc_BCE58C: ILdRf var_94
  loc_BCE58F: ConcatStr
  loc_BCE590: FStStrNoPop var_180
  loc_BCE593: ILdRf var_9C
  loc_BCE596: ConcatStr
  loc_BCE597: FStStrNoPop var_184
  loc_BCE59A: ILdRf var_A0
  loc_BCE59D: ConcatStr
  loc_BCE59E: FStStrNoPop var_188
  loc_BCE5A1: LitStr " ORDER BY r.CodiOrco, r.CodiRece;"
  loc_BCE5A4: ConcatStr
  loc_BCE5A5: FStStrNoPop var_18C
  loc_BCE5A8: FLdPr Me
  loc_BCE5AB: MemLdRfVar from_stack_1.global_76
  loc_BCE5AE: NewIfNullPr clsrecepcion
  loc_BCE5B1: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_BCE5B6: FFreeStr var_E0 = "": var_F8 = "": var_12C = "": var_160 = "": var_168 = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_BCE5D7: FFree1Ad var_C8
  loc_BCE5DA: FLdRfVar var_190
  loc_BCE5DD: FLdPr Me
  loc_BCE5E0: MemLdRfVar from_stack_1.global_76
  loc_BCE5E3: NewIfNullPr clsrecepcion
  loc_BCE5E6: from_stack_1 = clsrecepcion.RecordCount
  loc_BCE5EB: ILdRf var_190
  loc_BCE5EE: LitI4 0
  loc_BCE5F3: EqI4
  loc_BCE5F4: BranchF loc_BCE607
  loc_BCE5F7: LitI4 0
  loc_BCE5FC: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BCE5FF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCE604: Branch loc_BCF5AA
  loc_BCE607: LitI4 0
  loc_BCE60C: FLdRfVar var_190
  loc_BCE60F: FLdPr Me
  loc_BCE612: MemLdRfVar from_stack_1.global_76
  loc_BCE615: NewIfNullPr clsrecepcion
  loc_BCE618: from_stack_1 = clsrecepcion.RecordCount
  loc_BCE61D: ILdRf var_190
  loc_BCE620: FLdPr Me
  loc_BCE623: MemLdRfVar from_stack_1.global_88
  loc_BCE626: Redim
  loc_BCE630: LitI2_Byte 0
  loc_BCE632: CStrUI1
  loc_BCE634: FStStrNoPop var_E0
  loc_BCE637: FLdPr Me
  loc_BCE63A: MemStStrCopy
  loc_BCE63E: FFree1Str var_E0
  loc_BCE641: FLdPr Me
  loc_BCE644: MemLdRfVar from_stack_1.global_76
  loc_BCE647: NewIfNullPr clsrecepcion
  loc_BCE64A: Call clsrecepcion.MoveFirst()
  loc_BCE64F: LitI4 1
  loc_BCE654: FLdPr Me
  loc_BCE657: MemLdRfVar from_stack_1.global_96
  loc_BCE65A: FLdPr Me
  loc_BCE65D: MemLdStr global_88
  loc_BCE660: LitI2_Byte 1
  loc_BCE662: FnUBound
  loc_BCE664: ForI4 var_198
  loc_BCE66A: FLdPr Me
  loc_BCE66D: MemLdRfVar from_stack_1.global_76
  loc_BCE670: NewIfNullAd
  loc_BCE673: FStAd var_19C 
  loc_BCE677: FLdRfVar var_1A0
  loc_BCE67A: LitVarStr var_B4, "CodiOrco"
  loc_BCE67F: PopAdLdVar
  loc_BCE680: FLdRfVar var_E4
  loc_BCE683: FLdRfVar var_C8
  loc_BCE686: FLdPr var_19C
  loc_BCE689: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE68E: FLdPr var_C8
  loc_BCE691:  = Me.Fields
  loc_BCE696: FLdPr var_E4
  loc_BCE699: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE69E: LitI2_Byte 0
  loc_BCE6A0: LitVar_Missing var_F4
  loc_BCE6A3: LitI2_Byte 0
  loc_BCE6A5: FLdZeroAd var_1A0
  loc_BCE6A8: CVarAd
  loc_BCE6AC: PopAdLdVar
  loc_BCE6AD: FLdPr Me
  loc_BCE6B0: MemLdStr global_96
  loc_BCE6B3: FLdPr Me
  loc_BCE6B6: MemLdStr global_88
  loc_BCE6B9: AryLock
  loc_BCE6BC: Ary1LdPr
  loc_BCE6BD: MemLdRfVar from_stack_1.global_0
  loc_BCE6C0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE6C5: AryUnlock
  loc_BCE6C8: FFreeAd var_C8 = ""
  loc_BCE6CF: FFreeVar var_DC = ""
  loc_BCE6D6: FLdRfVar var_1A0
  loc_BCE6D9: LitVarStr var_B4, "CodiRece"
  loc_BCE6DE: PopAdLdVar
  loc_BCE6DF: FLdRfVar var_E4
  loc_BCE6E2: FLdRfVar var_C8
  loc_BCE6E5: FLdPr var_19C
  loc_BCE6E8: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE6ED: FLdPr var_C8
  loc_BCE6F0:  = Me.Fields
  loc_BCE6F5: FLdPr var_E4
  loc_BCE6F8: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE6FD: LitI2_Byte 0
  loc_BCE6FF: LitVar_Missing var_F4
  loc_BCE702: LitI2_Byte 0
  loc_BCE704: FLdZeroAd var_1A0
  loc_BCE707: CVarAd
  loc_BCE70B: PopAdLdVar
  loc_BCE70C: FLdPr Me
  loc_BCE70F: MemLdStr global_96
  loc_BCE712: FLdPr Me
  loc_BCE715: MemLdStr global_88
  loc_BCE718: AryLock
  loc_BCE71B: Ary1LdPr
  loc_BCE71C: MemLdRfVar from_stack_1.global_4
  loc_BCE71F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE724: AryUnlock
  loc_BCE727: FFreeAd var_C8 = ""
  loc_BCE72E: FFreeVar var_DC = ""
  loc_BCE735: FLdRfVar var_1A0
  loc_BCE738: LitVarStr var_B4, "DetaOrco"
  loc_BCE73D: PopAdLdVar
  loc_BCE73E: FLdRfVar var_E4
  loc_BCE741: FLdRfVar var_C8
  loc_BCE744: FLdPr var_19C
  loc_BCE747: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE74C: FLdPr var_C8
  loc_BCE74F:  = Me.Fields
  loc_BCE754: FLdPr var_E4
  loc_BCE757: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE75C: LitI2_Byte 0
  loc_BCE75E: LitVar_Missing var_F4
  loc_BCE761: LitI2_Byte 0
  loc_BCE763: FLdZeroAd var_1A0
  loc_BCE766: CVarAd
  loc_BCE76A: PopAdLdVar
  loc_BCE76B: FLdPr Me
  loc_BCE76E: MemLdStr global_96
  loc_BCE771: FLdPr Me
  loc_BCE774: MemLdStr global_88
  loc_BCE777: AryLock
  loc_BCE77A: Ary1LdPr
  loc_BCE77B: MemLdRfVar from_stack_1.global_8
  loc_BCE77E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE783: AryUnlock
  loc_BCE786: FFreeAd var_C8 = ""
  loc_BCE78D: FFreeVar var_DC = ""
  loc_BCE794: FLdRfVar var_1A0
  loc_BCE797: LitVarStr var_B4, "CodiNope"
  loc_BCE79C: PopAdLdVar
  loc_BCE79D: FLdRfVar var_E4
  loc_BCE7A0: FLdRfVar var_C8
  loc_BCE7A3: FLdPr var_19C
  loc_BCE7A6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE7AB: FLdPr var_C8
  loc_BCE7AE:  = Me.Fields
  loc_BCE7B3: FLdPr var_E4
  loc_BCE7B6: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE7BB: LitI2_Byte 0
  loc_BCE7BD: LitVar_Missing var_F4
  loc_BCE7C0: LitI2_Byte 0
  loc_BCE7C2: FLdZeroAd var_1A0
  loc_BCE7C5: CVarAd
  loc_BCE7C9: PopAdLdVar
  loc_BCE7CA: FLdPr Me
  loc_BCE7CD: MemLdStr global_96
  loc_BCE7D0: FLdPr Me
  loc_BCE7D3: MemLdStr global_88
  loc_BCE7D6: AryLock
  loc_BCE7D9: Ary1LdPr
  loc_BCE7DA: MemLdRfVar from_stack_1.global_12
  loc_BCE7DD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE7E2: AryUnlock
  loc_BCE7E5: FFreeAd var_C8 = ""
  loc_BCE7EC: FFreeVar var_DC = ""
  loc_BCE7F3: FLdRfVar var_1A0
  loc_BCE7F6: LitVarStr var_B4, "CodiTico"
  loc_BCE7FB: PopAdLdVar
  loc_BCE7FC: FLdRfVar var_E4
  loc_BCE7FF: FLdRfVar var_C8
  loc_BCE802: FLdPr var_19C
  loc_BCE805: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE80A: FLdPr var_C8
  loc_BCE80D:  = Me.Fields
  loc_BCE812: FLdPr var_E4
  loc_BCE815: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE81A: LitI2_Byte 0
  loc_BCE81C: LitVar_Missing var_F4
  loc_BCE81F: LitI2_Byte 0
  loc_BCE821: FLdZeroAd var_1A0
  loc_BCE824: CVarAd
  loc_BCE828: PopAdLdVar
  loc_BCE829: FLdPr Me
  loc_BCE82C: MemLdStr global_96
  loc_BCE82F: FLdPr Me
  loc_BCE832: MemLdStr global_88
  loc_BCE835: AryLock
  loc_BCE838: Ary1LdPr
  loc_BCE839: MemLdRfVar from_stack_1.global_16
  loc_BCE83C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE841: AryUnlock
  loc_BCE844: FFreeAd var_C8 = ""
  loc_BCE84B: FFreeVar var_DC = ""
  loc_BCE852: FLdRfVar var_1A0
  loc_BCE855: LitVarStr var_B4, "DetaTico"
  loc_BCE85A: PopAdLdVar
  loc_BCE85B: FLdRfVar var_E4
  loc_BCE85E: FLdRfVar var_C8
  loc_BCE861: FLdPr var_19C
  loc_BCE864: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE869: FLdPr var_C8
  loc_BCE86C:  = Me.Fields
  loc_BCE871: FLdPr var_E4
  loc_BCE874: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE879: LitI2_Byte 0
  loc_BCE87B: LitVar_Missing var_F4
  loc_BCE87E: LitI2_Byte 0
  loc_BCE880: FLdZeroAd var_1A0
  loc_BCE883: CVarAd
  loc_BCE887: PopAdLdVar
  loc_BCE888: FLdPr Me
  loc_BCE88B: MemLdStr global_96
  loc_BCE88E: FLdPr Me
  loc_BCE891: MemLdStr global_88
  loc_BCE894: AryLock
  loc_BCE897: Ary1LdPr
  loc_BCE898: MemLdRfVar from_stack_1.global_20
  loc_BCE89B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE8A0: AryUnlock
  loc_BCE8A3: FFreeAd var_C8 = ""
  loc_BCE8AA: FFreeVar var_DC = ""
  loc_BCE8B1: FLdRfVar var_1A0
  loc_BCE8B4: LitVarStr var_B4, "CucuPers"
  loc_BCE8B9: PopAdLdVar
  loc_BCE8BA: FLdRfVar var_E4
  loc_BCE8BD: FLdRfVar var_C8
  loc_BCE8C0: FLdPr var_19C
  loc_BCE8C3: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE8C8: FLdPr var_C8
  loc_BCE8CB:  = Me.Fields
  loc_BCE8D0: FLdPr var_E4
  loc_BCE8D3: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE8D8: LitI2_Byte 0
  loc_BCE8DA: LitVar_Missing var_F4
  loc_BCE8DD: LitI2_Byte 0
  loc_BCE8DF: FLdZeroAd var_1A0
  loc_BCE8E2: CVarAd
  loc_BCE8E6: PopAdLdVar
  loc_BCE8E7: FLdPr Me
  loc_BCE8EA: MemLdStr global_96
  loc_BCE8ED: FLdPr Me
  loc_BCE8F0: MemLdStr global_88
  loc_BCE8F3: AryLock
  loc_BCE8F6: Ary1LdPr
  loc_BCE8F7: MemLdRfVar from_stack_1.global_24
  loc_BCE8FA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE8FF: AryUnlock
  loc_BCE902: FFreeAd var_C8 = ""
  loc_BCE909: FFreeVar var_DC = ""
  loc_BCE910: FLdRfVar var_1A0
  loc_BCE913: LitVarStr var_B4, "DetaProv"
  loc_BCE918: PopAdLdVar
  loc_BCE919: FLdRfVar var_E4
  loc_BCE91C: FLdRfVar var_C8
  loc_BCE91F: FLdPr var_19C
  loc_BCE922: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE927: FLdPr var_C8
  loc_BCE92A:  = Me.Fields
  loc_BCE92F: FLdPr var_E4
  loc_BCE932: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE937: LitI2_Byte 0
  loc_BCE939: LitVar_Missing var_F4
  loc_BCE93C: LitI2_Byte 0
  loc_BCE93E: FLdZeroAd var_1A0
  loc_BCE941: CVarAd
  loc_BCE945: PopAdLdVar
  loc_BCE946: FLdPr Me
  loc_BCE949: MemLdStr global_96
  loc_BCE94C: FLdPr Me
  loc_BCE94F: MemLdStr global_88
  loc_BCE952: AryLock
  loc_BCE955: Ary1LdPr
  loc_BCE956: MemLdRfVar from_stack_1.global_28
  loc_BCE959: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE95E: AryUnlock
  loc_BCE961: FFreeAd var_C8 = ""
  loc_BCE968: FFreeVar var_DC = ""
  loc_BCE96F: FLdRfVar var_1A0
  loc_BCE972: LitVarStr var_B4, "ExpeImpu"
  loc_BCE977: PopAdLdVar
  loc_BCE978: FLdRfVar var_E4
  loc_BCE97B: FLdRfVar var_C8
  loc_BCE97E: FLdPr var_19C
  loc_BCE981: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE986: FLdPr var_C8
  loc_BCE989:  = Me.Fields
  loc_BCE98E: FLdPr var_E4
  loc_BCE991: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE996: LitI2_Byte 0
  loc_BCE998: LitVar_Missing var_F4
  loc_BCE99B: LitI2_Byte 0
  loc_BCE99D: FLdZeroAd var_1A0
  loc_BCE9A0: CVarAd
  loc_BCE9A4: PopAdLdVar
  loc_BCE9A5: FLdPr Me
  loc_BCE9A8: MemLdStr global_96
  loc_BCE9AB: FLdPr Me
  loc_BCE9AE: MemLdStr global_88
  loc_BCE9B1: AryLock
  loc_BCE9B4: Ary1LdPr
  loc_BCE9B5: MemLdRfVar from_stack_1.global_32
  loc_BCE9B8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCE9BD: AryUnlock
  loc_BCE9C0: FFreeAd var_C8 = ""
  loc_BCE9C7: FFreeVar var_DC = ""
  loc_BCE9CE: FLdRfVar var_1A0
  loc_BCE9D1: LitVarStr var_B4, "ExpeImpuGDE"
  loc_BCE9D6: PopAdLdVar
  loc_BCE9D7: FLdRfVar var_E4
  loc_BCE9DA: FLdRfVar var_C8
  loc_BCE9DD: FLdPr var_19C
  loc_BCE9E0: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCE9E5: FLdPr var_C8
  loc_BCE9E8:  = Me.Fields
  loc_BCE9ED: FLdPr var_E4
  loc_BCE9F0: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE9F5: LitI2_Byte 0
  loc_BCE9F7: LitVar_Missing var_F4
  loc_BCE9FA: LitI2_Byte 0
  loc_BCE9FC: FLdZeroAd var_1A0
  loc_BCE9FF: CVarAd
  loc_BCEA03: PopAdLdVar
  loc_BCEA04: FLdPr Me
  loc_BCEA07: MemLdStr global_96
  loc_BCEA0A: FLdPr Me
  loc_BCEA0D: MemLdStr global_88
  loc_BCEA10: AryLock
  loc_BCEA13: Ary1LdPr
  loc_BCEA14: MemLdRfVar from_stack_1.global_36
  loc_BCEA17: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEA1C: AryUnlock
  loc_BCEA1F: FFreeAd var_C8 = ""
  loc_BCEA26: FFreeVar var_DC = ""
  loc_BCEA2D: FLdRfVar var_1A0
  loc_BCEA30: LitVarStr var_B4, "FechRece"
  loc_BCEA35: PopAdLdVar
  loc_BCEA36: FLdRfVar var_E4
  loc_BCEA39: FLdRfVar var_C8
  loc_BCEA3C: FLdPr var_19C
  loc_BCEA3F: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEA44: FLdPr var_C8
  loc_BCEA47:  = Me.Fields
  loc_BCEA4C: FLdPr var_E4
  loc_BCEA4F: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEA54: LitI2_Byte 0
  loc_BCEA56: LitVar_Missing var_F4
  loc_BCEA59: LitI2_Byte 0
  loc_BCEA5B: FLdZeroAd var_1A0
  loc_BCEA5E: CVarAd
  loc_BCEA62: PopAdLdVar
  loc_BCEA63: FLdPr Me
  loc_BCEA66: MemLdStr global_96
  loc_BCEA69: FLdPr Me
  loc_BCEA6C: MemLdStr global_88
  loc_BCEA6F: AryLock
  loc_BCEA72: Ary1LdPr
  loc_BCEA73: MemLdRfVar from_stack_1.global_40
  loc_BCEA76: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEA7B: AryUnlock
  loc_BCEA7E: FFreeAd var_C8 = ""
  loc_BCEA85: FFreeVar var_DC = ""
  loc_BCEA8C: FLdRfVar var_1A0
  loc_BCEA8F: LitVarStr var_B4, "FefaRece"
  loc_BCEA94: PopAdLdVar
  loc_BCEA95: FLdRfVar var_E4
  loc_BCEA98: FLdRfVar var_C8
  loc_BCEA9B: FLdPr var_19C
  loc_BCEA9E: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEAA3: FLdPr var_C8
  loc_BCEAA6:  = Me.Fields
  loc_BCEAAB: FLdPr var_E4
  loc_BCEAAE: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEAB3: LitI2_Byte 0
  loc_BCEAB5: LitVar_Missing var_F4
  loc_BCEAB8: LitI2_Byte 0
  loc_BCEABA: FLdZeroAd var_1A0
  loc_BCEABD: CVarAd
  loc_BCEAC1: PopAdLdVar
  loc_BCEAC2: FLdPr Me
  loc_BCEAC5: MemLdStr global_96
  loc_BCEAC8: FLdPr Me
  loc_BCEACB: MemLdStr global_88
  loc_BCEACE: AryLock
  loc_BCEAD1: Ary1LdPr
  loc_BCEAD2: MemLdRfVar from_stack_1.global_44
  loc_BCEAD5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEADA: AryUnlock
  loc_BCEADD: FFreeAd var_C8 = ""
  loc_BCEAE4: FFreeVar var_DC = ""
  loc_BCEAEB: FLdRfVar var_1A0
  loc_BCEAEE: LitVarStr var_B4, "FeanRece"
  loc_BCEAF3: PopAdLdVar
  loc_BCEAF4: FLdRfVar var_E4
  loc_BCEAF7: FLdRfVar var_C8
  loc_BCEAFA: FLdPr var_19C
  loc_BCEAFD: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEB02: FLdPr var_C8
  loc_BCEB05:  = Me.Fields
  loc_BCEB0A: FLdPr var_E4
  loc_BCEB0D: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEB12: LitI2_Byte 0
  loc_BCEB14: LitVar_Missing var_F4
  loc_BCEB17: LitI2_Byte 0
  loc_BCEB19: FLdZeroAd var_1A0
  loc_BCEB1C: CVarAd
  loc_BCEB20: PopAdLdVar
  loc_BCEB21: FLdPr Me
  loc_BCEB24: MemLdStr global_96
  loc_BCEB27: FLdPr Me
  loc_BCEB2A: MemLdStr global_88
  loc_BCEB2D: AryLock
  loc_BCEB30: Ary1LdPr
  loc_BCEB31: MemLdRfVar from_stack_1.global_48
  loc_BCEB34: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEB39: AryUnlock
  loc_BCEB3C: FFreeAd var_C8 = ""
  loc_BCEB43: FFreeVar var_DC = ""
  loc_BCEB4A: FLdRfVar var_1A0
  loc_BCEB4D: LitVarStr var_B4, "BajaMoti"
  loc_BCEB52: PopAdLdVar
  loc_BCEB53: FLdRfVar var_E4
  loc_BCEB56: FLdRfVar var_C8
  loc_BCEB59: FLdPr var_19C
  loc_BCEB5C: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEB61: FLdPr var_C8
  loc_BCEB64:  = Me.Fields
  loc_BCEB69: FLdPr var_E4
  loc_BCEB6C: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEB71: LitI2_Byte 0
  loc_BCEB73: LitVar_Missing var_F4
  loc_BCEB76: LitI2_Byte 0
  loc_BCEB78: FLdZeroAd var_1A0
  loc_BCEB7B: CVarAd
  loc_BCEB7F: PopAdLdVar
  loc_BCEB80: FLdPr Me
  loc_BCEB83: MemLdStr global_96
  loc_BCEB86: FLdPr Me
  loc_BCEB89: MemLdStr global_88
  loc_BCEB8C: AryLock
  loc_BCEB8F: Ary1LdPr
  loc_BCEB90: MemLdRfVar from_stack_1.htmFile
  loc_BCEB93: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEB98: AryUnlock
  loc_BCEB9B: FFreeAd var_C8 = ""
  loc_BCEBA2: FFreeVar var_DC = ""
  loc_BCEBA9: FLdRfVar var_1A0
  loc_BCEBAC: LitVarStr var_B4, "AltaUsua"
  loc_BCEBB1: PopAdLdVar
  loc_BCEBB2: FLdRfVar var_E4
  loc_BCEBB5: FLdRfVar var_C8
  loc_BCEBB8: FLdPr var_19C
  loc_BCEBBB: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEBC0: FLdPr var_C8
  loc_BCEBC3:  = Me.Fields
  loc_BCEBC8: FLdPr var_E4
  loc_BCEBCB: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEBD0: LitI2_Byte 0
  loc_BCEBD2: LitVar_Missing var_F4
  loc_BCEBD5: LitI2_Byte 0
  loc_BCEBD7: FLdZeroAd var_1A0
  loc_BCEBDA: CVarAd
  loc_BCEBDE: PopAdLdVar
  loc_BCEBDF: FLdPr Me
  loc_BCEBE2: MemLdStr global_96
  loc_BCEBE5: FLdPr Me
  loc_BCEBE8: MemLdStr global_88
  loc_BCEBEB: AryLock
  loc_BCEBEE: Ary1LdPr
  loc_BCEBEF: MemLdRfVar from_stack_1.global_56
  loc_BCEBF2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEBF7: AryUnlock
  loc_BCEBFA: FFreeAd var_C8 = ""
  loc_BCEC01: FFreeVar var_DC = ""
  loc_BCEC08: FLdRfVar var_1A0
  loc_BCEC0B: LitVarStr var_B4, "NumeFact"
  loc_BCEC10: PopAdLdVar
  loc_BCEC11: FLdRfVar var_E4
  loc_BCEC14: FLdRfVar var_C8
  loc_BCEC17: FLdPr var_19C
  loc_BCEC1A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEC1F: FLdPr var_C8
  loc_BCEC22:  = Me.Fields
  loc_BCEC27: FLdPr var_E4
  loc_BCEC2A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEC2F: LitI2_Byte 0
  loc_BCEC31: LitVar_Missing var_F4
  loc_BCEC34: LitI2_Byte 0
  loc_BCEC36: FLdZeroAd var_1A0
  loc_BCEC39: CVarAd
  loc_BCEC3D: PopAdLdVar
  loc_BCEC3E: FLdPr Me
  loc_BCEC41: MemLdStr global_96
  loc_BCEC44: FLdPr Me
  loc_BCEC47: MemLdStr global_88
  loc_BCEC4A: AryLock
  loc_BCEC4D: Ary1LdPr
  loc_BCEC4E: MemLdRfVar from_stack_1.global_60
  loc_BCEC51: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEC56: AryUnlock
  loc_BCEC59: FFreeAd var_C8 = ""
  loc_BCEC60: FFreeVar var_DC = ""
  loc_BCEC67: LitNothing
  loc_BCEC69: FStAd var_19C 
  loc_BCEC6D: LitStr "SELECT itr.*, DetaItco, CaraItco, DetaInsu, (CantItre * ImpoItre)+AjusItre TotalItre"
  loc_BCEC70: LitStr ", IF(tc.ReimpTico=1,contpres.fnSaldItcoImpo(itr.PeriInfo, itr.CodiOrco, itr.CodiItco, itr.AlteItco),contpres.fnSaldItco(itr.PeriInfo, itr.CodiOrco, itr.CodiItco, itr.AlteItco)) SaldoItem"
  loc_BCEC73: ConcatStr
  loc_BCEC74: FStStrNoPop var_E0
  loc_BCEC77: LitStr " FROM itemrecepcion itr"
  loc_BCEC7A: ConcatStr
  loc_BCEC7B: FStStrNoPop var_F8
  loc_BCEC7E: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = itr.PeriInfo AND itc.CodiOrco = itr.CodiOrco AND itc.CodiItco = itr.CodiItco AND itc.AlteItco = itr.AlteItco"
  loc_BCEC81: ConcatStr
  loc_BCEC82: FStStrNoPop var_12C
  loc_BCEC85: LitStr " INNER JOIN ordencompra o ON o.PeriInfo = itc.PeriInfo AND o.CodiOrco = itc.CodiOrco"
  loc_BCEC88: ConcatStr
  loc_BCEC89: FStStrNoPop var_160
  loc_BCEC8C: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = o.CodiTico"
  loc_BCEC8F: ConcatStr
  loc_BCEC90: FStStrNoPop var_164
  loc_BCEC93: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itr.CodiInsu"
  loc_BCEC96: ConcatStr
  loc_BCEC97: FStStrNoPop var_168
  loc_BCEC9A: LitStr " WHERE itr.PeriInfo = "
  loc_BCEC9D: ConcatStr
  loc_BCEC9E: FStStrNoPop var_170
  loc_BCECA1: FLdRfVar var_16C
  loc_BCECA4: FLdPr Me
  loc_BCECA7: VCallAd Control_ID_cboPeriodo
  loc_BCECAA: FStAdFunc var_C8
  loc_BCECAD: FLdPr var_C8
  loc_BCECB0:  = Me.Text
  loc_BCECB5: ILdRf var_16C
  loc_BCECB8: ConcatStr
  loc_BCECB9: FStStrNoPop var_174
  loc_BCECBC: LitStr " AND itr.CodiOrco = "
  loc_BCECBF: ConcatStr
  loc_BCECC0: FStStrNoPop var_178
  loc_BCECC3: FLdPr Me
  loc_BCECC6: MemLdStr global_96
  loc_BCECC9: FLdPr Me
  loc_BCECCC: MemLdStr global_88
  loc_BCECCF: Ary1LdPr
  loc_BCECD0: MemLdStr global_0
  loc_BCECD3: ConcatStr
  loc_BCECD4: FStStrNoPop var_17C
  loc_BCECD7: LitStr " AND itr.CodiRece = "
  loc_BCECDA: ConcatStr
  loc_BCECDB: FStStrNoPop var_180
  loc_BCECDE: FLdPr Me
  loc_BCECE1: MemLdStr global_96
  loc_BCECE4: FLdPr Me
  loc_BCECE7: MemLdStr global_88
  loc_BCECEA: Ary1LdPr
  loc_BCECEB: MemLdStr global_4
  loc_BCECEE: ConcatStr
  loc_BCECEF: FStStrNoPop var_184
  loc_BCECF2: LitStr " ORDER BY CodiItco, AlteItco"
  loc_BCECF5: ConcatStr
  loc_BCECF6: FStStrNoPop var_188
  loc_BCECF9: FLdPr Me
  loc_BCECFC: MemLdRfVar from_stack_1.global_80
  loc_BCECFF: NewIfNullPr clsrecepcion
  loc_BCED02: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_BCED07: FFreeStr var_E0 = "": var_F8 = "": var_12C = "": var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_BCED26: FFree1Ad var_C8
  loc_BCED29: FLdRfVar var_190
  loc_BCED2C: FLdPr Me
  loc_BCED2F: MemLdRfVar from_stack_1.global_80
  loc_BCED32: NewIfNullPr clsrecepcion
  loc_BCED35: from_stack_1 = clsrecepcion.RecordCount
  loc_BCED3A: ILdRf var_190
  loc_BCED3D: LitI4 1
  loc_BCED42: LtI4
  loc_BCED43: BranchF loc_BCED97
  loc_BCED46: LitI4 0
  loc_BCED4B: LitStr "La Recepción Nº "
  loc_BCED4E: FLdPr Me
  loc_BCED51: MemLdStr global_96
  loc_BCED54: FLdPr Me
  loc_BCED57: MemLdStr global_88
  loc_BCED5A: Ary1LdPr
  loc_BCED5B: MemLdStr global_4
  loc_BCED5E: ConcatStr
  loc_BCED5F: FStStrNoPop var_E0
  loc_BCED62: LitStr " correspondiente a la Orden de Compra "
  loc_BCED65: ConcatStr
  loc_BCED66: FStStrNoPop var_F8
  loc_BCED69: FLdPr Me
  loc_BCED6C: MemLdStr global_96
  loc_BCED6F: FLdPr Me
  loc_BCED72: MemLdStr global_88
  loc_BCED75: Ary1LdPr
  loc_BCED76: MemLdStr global_0
  loc_BCED79: ConcatStr
  loc_BCED7A: FStStrNoPop var_12C
  loc_BCED7D: LitStr " no tiene items."
  loc_BCED80: ConcatStr
  loc_BCED81: FStStrNoPop var_160
  loc_BCED84: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCED89: FFreeStr var_E0 = "": var_F8 = "": var_12C = ""
  loc_BCED94: Branch loc_BCF5AA
  loc_BCED97: FLdRfVar var_190
  loc_BCED9A: FLdPr Me
  loc_BCED9D: MemLdRfVar from_stack_1.global_80
  loc_BCEDA0: NewIfNullPr clsrecepcion
  loc_BCEDA3: from_stack_1 = clsrecepcion.RecordCount
  loc_BCEDA8: LitI4 0
  loc_BCEDAD: ILdRf var_190
  loc_BCEDB0: FLdPr Me
  loc_BCEDB3: MemLdStr global_96
  loc_BCEDB6: FLdPr Me
  loc_BCEDB9: MemLdStr global_88
  loc_BCEDBC: Ary1LdPr
  loc_BCEDBD: MemLdRfVar from_stack_1.global_64
  loc_BCEDC0: Redim
  loc_BCEDCA: FLdPr Me
  loc_BCEDCD: MemLdRfVar from_stack_1.global_80
  loc_BCEDD0: NewIfNullPr clsrecepcion
  loc_BCEDD3: Call clsrecepcion.MoveFirst()
  loc_BCEDD8: LitI4 1
  loc_BCEDDD: FLdPr Me
  loc_BCEDE0: MemLdRfVar from_stack_1.global_100
  loc_BCEDE3: FLdPr Me
  loc_BCEDE6: MemLdStr global_96
  loc_BCEDE9: FLdPr Me
  loc_BCEDEC: MemLdStr global_88
  loc_BCEDEF: Ary1LdPr
  loc_BCEDF0: MemLdStr global_64
  loc_BCEDF3: LitI2_Byte 1
  loc_BCEDF5: FnUBound
  loc_BCEDF7: ForI4 var_1AC
  loc_BCEDFD: FLdPr Me
  loc_BCEE00: MemLdRfVar from_stack_1.global_80
  loc_BCEE03: NewIfNullAd
  loc_BCEE06: FStAd var_1B0 
  loc_BCEE0A: FLdRfVar var_1A0
  loc_BCEE0D: LitVarStr var_B4, "CodiItco"
  loc_BCEE12: PopAdLdVar
  loc_BCEE13: FLdRfVar var_E4
  loc_BCEE16: FLdRfVar var_C8
  loc_BCEE19: FLdPr var_1B0
  loc_BCEE1C: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEE21: FLdPr var_C8
  loc_BCEE24:  = Me.Fields
  loc_BCEE29: FLdPr var_E4
  loc_BCEE2C: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEE31: LitI2_Byte 0
  loc_BCEE33: LitVar_Missing var_F4
  loc_BCEE36: LitI2_Byte 0
  loc_BCEE38: FLdZeroAd var_1A0
  loc_BCEE3B: CVarAd
  loc_BCEE3F: PopAdLdVar
  loc_BCEE40: FLdPr Me
  loc_BCEE43: MemLdStr global_100
  loc_BCEE46: FLdPr Me
  loc_BCEE49: MemLdStr global_96
  loc_BCEE4C: FLdPr Me
  loc_BCEE4F: MemLdStr global_88
  loc_BCEE52: AryLock
  loc_BCEE55: Ary1LdPr
  loc_BCEE56: MemLdStr global_64
  loc_BCEE59: AryLock
  loc_BCEE5C: Ary1LdPr
  loc_BCEE5D: MemLdRfVar from_stack_1.global_0
  loc_BCEE60: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEE65: AryUnlock
  loc_BCEE68: AryUnlock
  loc_BCEE6B: FFreeAd var_C8 = ""
  loc_BCEE72: FFreeVar var_DC = ""
  loc_BCEE79: FLdRfVar var_1A0
  loc_BCEE7C: LitVarStr var_B4, "AlteItco"
  loc_BCEE81: PopAdLdVar
  loc_BCEE82: FLdRfVar var_E4
  loc_BCEE85: FLdRfVar var_C8
  loc_BCEE88: FLdPr var_1B0
  loc_BCEE8B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEE90: FLdPr var_C8
  loc_BCEE93:  = Me.Fields
  loc_BCEE98: FLdPr var_E4
  loc_BCEE9B: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEEA0: LitI2_Byte 0
  loc_BCEEA2: LitVar_Missing var_F4
  loc_BCEEA5: LitI2_Byte 0
  loc_BCEEA7: FLdZeroAd var_1A0
  loc_BCEEAA: CVarAd
  loc_BCEEAE: PopAdLdVar
  loc_BCEEAF: FLdPr Me
  loc_BCEEB2: MemLdStr global_100
  loc_BCEEB5: FLdPr Me
  loc_BCEEB8: MemLdStr global_96
  loc_BCEEBB: FLdPr Me
  loc_BCEEBE: MemLdStr global_88
  loc_BCEEC1: AryLock
  loc_BCEEC4: Ary1LdPr
  loc_BCEEC5: MemLdStr global_64
  loc_BCEEC8: AryLock
  loc_BCEECB: Ary1LdPr
  loc_BCEECC: MemLdRfVar from_stack_1.global_4
  loc_BCEECF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEED4: AryUnlock
  loc_BCEED7: AryUnlock
  loc_BCEEDA: FFreeAd var_C8 = ""
  loc_BCEEE1: FFreeVar var_DC = ""
  loc_BCEEE8: FLdRfVar var_1A0
  loc_BCEEEB: LitVarStr var_B4, "DetaItco"
  loc_BCEEF0: PopAdLdVar
  loc_BCEEF1: FLdRfVar var_E4
  loc_BCEEF4: FLdRfVar var_C8
  loc_BCEEF7: FLdPr var_1B0
  loc_BCEEFA: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEEFF: FLdPr var_C8
  loc_BCEF02:  = Me.Fields
  loc_BCEF07: FLdPr var_E4
  loc_BCEF0A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEF0F: LitI2_Byte 0
  loc_BCEF11: LitVar_Missing var_F4
  loc_BCEF14: LitI2_Byte 0
  loc_BCEF16: FLdZeroAd var_1A0
  loc_BCEF19: CVarAd
  loc_BCEF1D: PopAdLdVar
  loc_BCEF1E: FLdPr Me
  loc_BCEF21: MemLdStr global_100
  loc_BCEF24: FLdPr Me
  loc_BCEF27: MemLdStr global_96
  loc_BCEF2A: FLdPr Me
  loc_BCEF2D: MemLdStr global_88
  loc_BCEF30: AryLock
  loc_BCEF33: Ary1LdPr
  loc_BCEF34: MemLdStr global_64
  loc_BCEF37: AryLock
  loc_BCEF3A: Ary1LdPr
  loc_BCEF3B: MemLdRfVar from_stack_1.global_8
  loc_BCEF3E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEF43: AryUnlock
  loc_BCEF46: AryUnlock
  loc_BCEF49: FFreeAd var_C8 = ""
  loc_BCEF50: FFreeVar var_DC = ""
  loc_BCEF57: FLdRfVar var_1A0
  loc_BCEF5A: LitVarStr var_B4, "CaraItco"
  loc_BCEF5F: PopAdLdVar
  loc_BCEF60: FLdRfVar var_E4
  loc_BCEF63: FLdRfVar var_C8
  loc_BCEF66: FLdPr var_1B0
  loc_BCEF69: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEF6E: FLdPr var_C8
  loc_BCEF71:  = Me.Fields
  loc_BCEF76: FLdPr var_E4
  loc_BCEF79: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEF7E: LitI2_Byte 0
  loc_BCEF80: LitVar_Missing var_F4
  loc_BCEF83: LitI2_Byte 0
  loc_BCEF85: FLdZeroAd var_1A0
  loc_BCEF88: CVarAd
  loc_BCEF8C: PopAdLdVar
  loc_BCEF8D: FLdPr Me
  loc_BCEF90: MemLdStr global_100
  loc_BCEF93: FLdPr Me
  loc_BCEF96: MemLdStr global_96
  loc_BCEF99: FLdPr Me
  loc_BCEF9C: MemLdStr global_88
  loc_BCEF9F: AryLock
  loc_BCEFA2: Ary1LdPr
  loc_BCEFA3: MemLdStr global_64
  loc_BCEFA6: AryLock
  loc_BCEFA9: Ary1LdPr
  loc_BCEFAA: MemLdRfVar from_stack_1.global_12
  loc_BCEFAD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCEFB2: AryUnlock
  loc_BCEFB5: AryUnlock
  loc_BCEFB8: FFreeAd var_C8 = ""
  loc_BCEFBF: FFreeVar var_DC = ""
  loc_BCEFC6: FLdRfVar var_1A0
  loc_BCEFC9: LitVarStr var_B4, "CodiInsu"
  loc_BCEFCE: PopAdLdVar
  loc_BCEFCF: FLdRfVar var_E4
  loc_BCEFD2: FLdRfVar var_C8
  loc_BCEFD5: FLdPr var_1B0
  loc_BCEFD8: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCEFDD: FLdPr var_C8
  loc_BCEFE0:  = Me.Fields
  loc_BCEFE5: FLdPr var_E4
  loc_BCEFE8: from_stack_2 = Me.Item(from_stack_1)
  loc_BCEFED: LitI2_Byte 0
  loc_BCEFEF: LitVar_Missing var_F4
  loc_BCEFF2: LitI2_Byte 0
  loc_BCEFF4: FLdZeroAd var_1A0
  loc_BCEFF7: CVarAd
  loc_BCEFFB: PopAdLdVar
  loc_BCEFFC: FLdPr Me
  loc_BCEFFF: MemLdStr global_100
  loc_BCF002: FLdPr Me
  loc_BCF005: MemLdStr global_96
  loc_BCF008: FLdPr Me
  loc_BCF00B: MemLdStr global_88
  loc_BCF00E: AryLock
  loc_BCF011: Ary1LdPr
  loc_BCF012: MemLdStr global_64
  loc_BCF015: AryLock
  loc_BCF018: Ary1LdPr
  loc_BCF019: MemLdRfVar from_stack_1.global_16
  loc_BCF01C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF021: AryUnlock
  loc_BCF024: AryUnlock
  loc_BCF027: FFreeAd var_C8 = ""
  loc_BCF02E: FFreeVar var_DC = ""
  loc_BCF035: FLdRfVar var_1A0
  loc_BCF038: LitVarStr var_B4, "DetaInsu"
  loc_BCF03D: PopAdLdVar
  loc_BCF03E: FLdRfVar var_E4
  loc_BCF041: FLdRfVar var_C8
  loc_BCF044: FLdPr var_1B0
  loc_BCF047: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF04C: FLdPr var_C8
  loc_BCF04F:  = Me.Fields
  loc_BCF054: FLdPr var_E4
  loc_BCF057: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF05C: LitI2_Byte 0
  loc_BCF05E: LitVar_Missing var_F4
  loc_BCF061: LitI2_Byte 0
  loc_BCF063: FLdZeroAd var_1A0
  loc_BCF066: CVarAd
  loc_BCF06A: PopAdLdVar
  loc_BCF06B: FLdPr Me
  loc_BCF06E: MemLdStr global_100
  loc_BCF071: FLdPr Me
  loc_BCF074: MemLdStr global_96
  loc_BCF077: FLdPr Me
  loc_BCF07A: MemLdStr global_88
  loc_BCF07D: AryLock
  loc_BCF080: Ary1LdPr
  loc_BCF081: MemLdStr global_64
  loc_BCF084: AryLock
  loc_BCF087: Ary1LdPr
  loc_BCF088: MemLdRfVar from_stack_1.global_20
  loc_BCF08B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF090: AryUnlock
  loc_BCF093: AryUnlock
  loc_BCF096: FFreeAd var_C8 = ""
  loc_BCF09D: FFreeVar var_DC = ""
  loc_BCF0A4: FLdRfVar var_1A0
  loc_BCF0A7: LitVarStr var_B4, "CantItre"
  loc_BCF0AC: PopAdLdVar
  loc_BCF0AD: FLdRfVar var_E4
  loc_BCF0B0: FLdRfVar var_C8
  loc_BCF0B3: FLdPr var_1B0
  loc_BCF0B6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF0BB: FLdPr var_C8
  loc_BCF0BE:  = Me.Fields
  loc_BCF0C3: FLdPr var_E4
  loc_BCF0C6: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF0CB: LitI2_Byte 0
  loc_BCF0CD: LitVar_Missing var_F4
  loc_BCF0D0: LitI2_Byte 0
  loc_BCF0D2: FLdZeroAd var_1A0
  loc_BCF0D5: CVarAd
  loc_BCF0D9: PopAdLdVar
  loc_BCF0DA: FLdPr Me
  loc_BCF0DD: MemLdStr global_100
  loc_BCF0E0: FLdPr Me
  loc_BCF0E3: MemLdStr global_96
  loc_BCF0E6: FLdPr Me
  loc_BCF0E9: MemLdStr global_88
  loc_BCF0EC: AryLock
  loc_BCF0EF: Ary1LdPr
  loc_BCF0F0: MemLdStr global_64
  loc_BCF0F3: AryLock
  loc_BCF0F6: Ary1LdPr
  loc_BCF0F7: MemLdRfVar from_stack_1.global_24
  loc_BCF0FA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF0FF: AryUnlock
  loc_BCF102: AryUnlock
  loc_BCF105: FFreeAd var_C8 = ""
  loc_BCF10C: FFreeVar var_DC = ""
  loc_BCF113: FLdRfVar var_1A0
  loc_BCF116: LitVarStr var_B4, "ImpoItre"
  loc_BCF11B: PopAdLdVar
  loc_BCF11C: FLdRfVar var_E4
  loc_BCF11F: FLdRfVar var_C8
  loc_BCF122: FLdPr var_1B0
  loc_BCF125: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF12A: FLdPr var_C8
  loc_BCF12D:  = Me.Fields
  loc_BCF132: FLdPr var_E4
  loc_BCF135: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF13A: LitI4 -1
  loc_BCF13F: LitI4 0
  loc_BCF144: LitI4 -1
  loc_BCF149: LitI4 2
  loc_BCF14E: FLdZeroAd var_1A0
  loc_BCF151: CVarAd
  loc_BCF155: ImpAdCallI2 FormatNumber(, , , , )
  loc_BCF15A: FStStr var_E0
  loc_BCF15D: LitI2_Byte 0
  loc_BCF15F: LitVar_Missing var_108
  loc_BCF162: LitI2_Byte 0
  loc_BCF164: FLdZeroAd var_E0
  loc_BCF167: CVarStr var_F4
  loc_BCF16A: PopAdLdVar
  loc_BCF16B: FLdPr Me
  loc_BCF16E: MemLdStr global_100
  loc_BCF171: FLdPr Me
  loc_BCF174: MemLdStr global_96
  loc_BCF177: FLdPr Me
  loc_BCF17A: MemLdStr global_88
  loc_BCF17D: AryLock
  loc_BCF180: Ary1LdPr
  loc_BCF181: MemLdStr global_64
  loc_BCF184: AryLock
  loc_BCF187: Ary1LdPr
  loc_BCF188: MemLdRfVar from_stack_1.global_28
  loc_BCF18B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF190: AryUnlock
  loc_BCF193: AryUnlock
  loc_BCF196: FFree1Str var_E0
  loc_BCF199: FFreeAd var_C8 = ""
  loc_BCF1A0: FFreeVar var_DC = "": var_F4 = ""
  loc_BCF1A9: FLdRfVar var_1A0
  loc_BCF1AC: LitVarStr var_B4, "AjusItre"
  loc_BCF1B1: PopAdLdVar
  loc_BCF1B2: FLdRfVar var_E4
  loc_BCF1B5: FLdRfVar var_C8
  loc_BCF1B8: FLdPr var_1B0
  loc_BCF1BB: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF1C0: FLdPr var_C8
  loc_BCF1C3:  = Me.Fields
  loc_BCF1C8: FLdPr var_E4
  loc_BCF1CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF1D0: LitI4 -1
  loc_BCF1D5: LitI4 0
  loc_BCF1DA: LitI4 -1
  loc_BCF1DF: LitI4 2
  loc_BCF1E4: FLdZeroAd var_1A0
  loc_BCF1E7: CVarAd
  loc_BCF1EB: ImpAdCallI2 FormatNumber(, , , , )
  loc_BCF1F0: FStStr var_E0
  loc_BCF1F3: LitI2_Byte 0
  loc_BCF1F5: LitVar_Missing var_108
  loc_BCF1F8: LitI2_Byte 0
  loc_BCF1FA: FLdZeroAd var_E0
  loc_BCF1FD: CVarStr var_F4
  loc_BCF200: PopAdLdVar
  loc_BCF201: FLdPr Me
  loc_BCF204: MemLdStr global_100
  loc_BCF207: FLdPr Me
  loc_BCF20A: MemLdStr global_96
  loc_BCF20D: FLdPr Me
  loc_BCF210: MemLdStr global_88
  loc_BCF213: AryLock
  loc_BCF216: Ary1LdPr
  loc_BCF217: MemLdStr global_64
  loc_BCF21A: AryLock
  loc_BCF21D: Ary1LdPr
  loc_BCF21E: MemLdRfVar from_stack_1.global_40
  loc_BCF221: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF226: AryUnlock
  loc_BCF229: AryUnlock
  loc_BCF22C: FFree1Str var_E0
  loc_BCF22F: FFreeAd var_C8 = ""
  loc_BCF236: FFreeVar var_DC = "": var_F4 = ""
  loc_BCF23F: FLdRfVar var_1A0
  loc_BCF242: LitVarStr var_B4, "TotalItre"
  loc_BCF247: PopAdLdVar
  loc_BCF248: FLdRfVar var_E4
  loc_BCF24B: FLdRfVar var_C8
  loc_BCF24E: FLdPr var_1B0
  loc_BCF251: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF256: FLdPr var_C8
  loc_BCF259:  = Me.Fields
  loc_BCF25E: FLdPr var_E4
  loc_BCF261: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF266: LitI2_Byte 2
  loc_BCF268: CUI1I2
  loc_BCF26A: FLdPr Me
  loc_BCF26D: MemLdStr global_96
  loc_BCF270: FLdPr Me
  loc_BCF273: MemLdStr global_88
  loc_BCF276: AryLock
  loc_BCF279: Ary1LdPr
  loc_BCF27A: MemLdRfVar from_stack_1.bGenerado
  loc_BCF27D: CVarRef
  loc_BCF282: LitI2_Byte &HFF
  loc_BCF284: FLdZeroAd var_1A0
  loc_BCF287: CVarAd
  loc_BCF28B: PopAdLdVar
  loc_BCF28C: FLdPr Me
  loc_BCF28F: MemLdStr global_100
  loc_BCF292: FLdPr Me
  loc_BCF295: MemLdStr global_96
  loc_BCF298: FLdPr Me
  loc_BCF29B: MemLdStr global_88
  loc_BCF29E: AryLock
  loc_BCF2A1: Ary1LdPr
  loc_BCF2A2: MemLdStr global_64
  loc_BCF2A5: AryLock
  loc_BCF2A8: Ary1LdPr
  loc_BCF2A9: MemLdRfVar from_stack_1.global_32
  loc_BCF2AC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF2B1: AryUnlock
  loc_BCF2B4: AryUnlock
  loc_BCF2B7: AryUnlock
  loc_BCF2BA: FFreeAd var_C8 = ""
  loc_BCF2C1: FFree1Var var_DC = ""
  loc_BCF2C4: FLdRfVar var_1A0
  loc_BCF2C7: LitVarStr var_B4, "SaldoItem"
  loc_BCF2CC: PopAdLdVar
  loc_BCF2CD: FLdRfVar var_E4
  loc_BCF2D0: FLdRfVar var_C8
  loc_BCF2D3: FLdPr var_1B0
  loc_BCF2D6: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF2DB: FLdPr var_C8
  loc_BCF2DE:  = Me.Fields
  loc_BCF2E3: FLdPr var_E4
  loc_BCF2E6: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF2EB: LitI4 -1
  loc_BCF2F0: LitI4 0
  loc_BCF2F5: LitI4 -1
  loc_BCF2FA: LitI4 3
  loc_BCF2FF: FLdZeroAd var_1A0
  loc_BCF302: CVarAd
  loc_BCF306: ImpAdCallI2 FormatNumber(, , , , )
  loc_BCF30B: FStStr var_E0
  loc_BCF30E: LitI2_Byte 0
  loc_BCF310: LitVar_Missing var_108
  loc_BCF313: LitI2_Byte 0
  loc_BCF315: FLdZeroAd var_E0
  loc_BCF318: CVarStr var_F4
  loc_BCF31B: PopAdLdVar
  loc_BCF31C: FLdPr Me
  loc_BCF31F: MemLdStr global_100
  loc_BCF322: FLdPr Me
  loc_BCF325: MemLdStr global_96
  loc_BCF328: FLdPr Me
  loc_BCF32B: MemLdStr global_88
  loc_BCF32E: AryLock
  loc_BCF331: Ary1LdPr
  loc_BCF332: MemLdStr global_64
  loc_BCF335: AryLock
  loc_BCF338: Ary1LdPr
  loc_BCF339: MemLdRfVar from_stack_1.global_36
  loc_BCF33C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF341: AryUnlock
  loc_BCF344: AryUnlock
  loc_BCF347: FFree1Str var_E0
  loc_BCF34A: FFreeAd var_C8 = ""
  loc_BCF351: FFreeVar var_DC = "": var_F4 = ""
  loc_BCF35A: FLdRfVar var_1A0
  loc_BCF35D: LitVarStr var_B4, "CodiPart"
  loc_BCF362: PopAdLdVar
  loc_BCF363: FLdRfVar var_E4
  loc_BCF366: FLdRfVar var_C8
  loc_BCF369: FLdPr var_1B0
  loc_BCF36C: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF371: FLdPr var_C8
  loc_BCF374:  = Me.Fields
  loc_BCF379: FLdPr var_E4
  loc_BCF37C: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF381: LitI2_Byte 0
  loc_BCF383: LitVar_Missing var_F4
  loc_BCF386: LitI2_Byte 0
  loc_BCF388: FLdZeroAd var_1A0
  loc_BCF38B: CVarAd
  loc_BCF38F: PopAdLdVar
  loc_BCF390: FLdPr Me
  loc_BCF393: MemLdStr global_100
  loc_BCF396: FLdPr Me
  loc_BCF399: MemLdStr global_96
  loc_BCF39C: FLdPr Me
  loc_BCF39F: MemLdStr global_88
  loc_BCF3A2: AryLock
  loc_BCF3A5: Ary1LdPr
  loc_BCF3A6: MemLdStr global_64
  loc_BCF3A9: AryLock
  loc_BCF3AC: Ary1LdPr
  loc_BCF3AD: MemLdRfVar from_stack_1.global_44
  loc_BCF3B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF3B5: AryUnlock
  loc_BCF3B8: AryUnlock
  loc_BCF3BB: FFreeAd var_C8 = ""
  loc_BCF3C2: FFreeVar var_DC = ""
  loc_BCF3C9: FLdRfVar var_1A0
  loc_BCF3CC: LitVarStr var_B4, "CodiOrga"
  loc_BCF3D1: PopAdLdVar
  loc_BCF3D2: FLdRfVar var_E4
  loc_BCF3D5: FLdRfVar var_C8
  loc_BCF3D8: FLdPr var_1B0
  loc_BCF3DB: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF3E0: FLdPr var_C8
  loc_BCF3E3:  = Me.Fields
  loc_BCF3E8: FLdPr var_E4
  loc_BCF3EB: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF3F0: LitI2_Byte 0
  loc_BCF3F2: LitVar_Missing var_F4
  loc_BCF3F5: LitI2_Byte 0
  loc_BCF3F7: FLdZeroAd var_1A0
  loc_BCF3FA: CVarAd
  loc_BCF3FE: PopAdLdVar
  loc_BCF3FF: FLdPr Me
  loc_BCF402: MemLdStr global_100
  loc_BCF405: FLdPr Me
  loc_BCF408: MemLdStr global_96
  loc_BCF40B: FLdPr Me
  loc_BCF40E: MemLdStr global_88
  loc_BCF411: AryLock
  loc_BCF414: Ary1LdPr
  loc_BCF415: MemLdStr global_64
  loc_BCF418: AryLock
  loc_BCF41B: Ary1LdPr
  loc_BCF41C: MemLdRfVar from_stack_1.global_48
  loc_BCF41F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF424: AryUnlock
  loc_BCF427: AryUnlock
  loc_BCF42A: FFreeAd var_C8 = ""
  loc_BCF431: FFreeVar var_DC = ""
  loc_BCF438: FLdRfVar var_1A0
  loc_BCF43B: LitVarStr var_B4, "CodiFifu"
  loc_BCF440: PopAdLdVar
  loc_BCF441: FLdRfVar var_E4
  loc_BCF444: FLdRfVar var_C8
  loc_BCF447: FLdPr var_1B0
  loc_BCF44A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF44F: FLdPr var_C8
  loc_BCF452:  = Me.Fields
  loc_BCF457: FLdPr var_E4
  loc_BCF45A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF45F: LitI2_Byte 0
  loc_BCF461: LitVar_Missing var_F4
  loc_BCF464: LitI2_Byte 0
  loc_BCF466: FLdZeroAd var_1A0
  loc_BCF469: CVarAd
  loc_BCF46D: PopAdLdVar
  loc_BCF46E: FLdPr Me
  loc_BCF471: MemLdStr global_100
  loc_BCF474: FLdPr Me
  loc_BCF477: MemLdStr global_96
  loc_BCF47A: FLdPr Me
  loc_BCF47D: MemLdStr global_88
  loc_BCF480: AryLock
  loc_BCF483: Ary1LdPr
  loc_BCF484: MemLdStr global_64
  loc_BCF487: AryLock
  loc_BCF48A: Ary1LdPr
  loc_BCF48B: MemLdRfVar from_stack_1.htmFile
  loc_BCF48E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF493: AryUnlock
  loc_BCF496: AryUnlock
  loc_BCF499: FFreeAd var_C8 = ""
  loc_BCF4A0: FFreeVar var_DC = ""
  loc_BCF4A7: FLdRfVar var_1A0
  loc_BCF4AA: LitVarStr var_B4, "IdImpu"
  loc_BCF4AF: PopAdLdVar
  loc_BCF4B0: FLdRfVar var_E4
  loc_BCF4B3: FLdRfVar var_C8
  loc_BCF4B6: FLdPr var_1B0
  loc_BCF4B9: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_BCF4BE: FLdPr var_C8
  loc_BCF4C1:  = Me.Fields
  loc_BCF4C6: FLdPr var_E4
  loc_BCF4C9: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF4CE: LitI2_Byte 0
  loc_BCF4D0: LitVar_Missing var_F4
  loc_BCF4D3: LitI2_Byte 0
  loc_BCF4D5: FLdZeroAd var_1A0
  loc_BCF4D8: CVarAd
  loc_BCF4DC: PopAdLdVar
  loc_BCF4DD: FLdPr Me
  loc_BCF4E0: MemLdStr global_100
  loc_BCF4E3: FLdPr Me
  loc_BCF4E6: MemLdStr global_96
  loc_BCF4E9: FLdPr Me
  loc_BCF4EC: MemLdStr global_88
  loc_BCF4EF: AryLock
  loc_BCF4F2: Ary1LdPr
  loc_BCF4F3: MemLdStr global_64
  loc_BCF4F6: AryLock
  loc_BCF4F9: Ary1LdPr
  loc_BCF4FA: MemLdRfVar from_stack_1.global_56
  loc_BCF4FD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF502: AryUnlock
  loc_BCF505: AryUnlock
  loc_BCF508: FFreeAd var_C8 = ""
  loc_BCF50F: FFreeVar var_DC = ""
  loc_BCF516: FLdPr var_1B0
  loc_BCF519: Call clsrecepcion.MoveSiguiente()
  loc_BCF51E: LitNothing
  loc_BCF520: FStAd var_1B0 
  loc_BCF524: FLdPr Me
  loc_BCF527: MemLdRfVar from_stack_1.global_100
  loc_BCF52A: NextI4 var_1AC, loc_BCEDFD
  loc_BCF52F: LitI2_Byte 0
  loc_BCF531: FLdPr Me
  loc_BCF534: MemLdRfVar from_stack_1.global_92
  loc_BCF537: CVarRef
  loc_BCF53C: LitI2_Byte &HFF
  loc_BCF53E: FLdPr Me
  loc_BCF541: MemLdStr global_96
  loc_BCF544: FLdPr Me
  loc_BCF547: MemLdStr global_88
  loc_BCF54A: Ary1LdPr
  loc_BCF54B: MemLdStr bGenerado
  loc_BCF54E: CVarStr var_B4
  loc_BCF551: PopAdLdVar
  loc_BCF552: FLdRfVar var_A4
  loc_BCF555: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF55A: FLdPr Me
  loc_BCF55D: MemLdRfVar from_stack_1.global_76
  loc_BCF560: NewIfNullPr clsrecepcion
  loc_BCF563: Call clsrecepcion.MoveSiguiente()
  loc_BCF568: LitI2_Byte 2
  loc_BCF56A: CUI1I2
  loc_BCF56C: FLdPr Me
  loc_BCF56F: MemLdStr global_96
  loc_BCF572: FLdPr Me
  loc_BCF575: MemLdStr global_88
  loc_BCF578: AryLock
  loc_BCF57B: Ary1LdPr
  loc_BCF57C: MemLdRfVar from_stack_1.bGenerado
  loc_BCF57F: CVarRef
  loc_BCF584: LitI2_Byte &HFF
  loc_BCF586: LitVarI2 var_B4, 0
  loc_BCF58B: PopAdLdVar
  loc_BCF58C: FLdRfVar var_88
  loc_BCF58F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCF594: AryUnlock
  loc_BCF597: FLdPr Me
  loc_BCF59A: MemLdRfVar from_stack_1.global_96
  loc_BCF59D: NextI4 var_198, loc_BCE66A
  loc_BCF5A2: LitI2_Byte &HFF
  loc_BCF5A4: FLdPr Me
  loc_BCF5A7: MemStI2 bGenerado
  loc_BCF5AA: LitI4 0
  loc_BCF5AF: CI2I4
  loc_BCF5B0: FLdPr Me
  loc_BCF5B3: Me.MousePointer = from_stack_1
  loc_BCF5B8: LitVarStr var_B4, vbNullString
  loc_BCF5BD: PopAdLdVar
  loc_BCF5BE: FLdPr Me
  loc_BCF5C1: VCallAd Control_ID_statusBar
  loc_BCF5C4: FStAdFunc var_C8
  loc_BCF5C7: FLdPr var_C8
  loc_BCF5CA: LateIdSt
  loc_BCF5CF: FFree1Ad var_C8
  loc_BCF5D2: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9C2094
  'Data Table: 4C93E8
  loc_9C1FC0: FLdRfVar var_88
  loc_9C1FC3: LitI2_Byte 0
  loc_9C1FC5: LitI2_Byte &HFF
  loc_9C1FC7: ImpAdLdI4 MemVar_C3D83C
  loc_9C1FCA: FLdPr Me
  loc_9C1FCD: MemLdRfVar from_stack_1.global_84
  loc_9C1FD0: NewIfNullPr IFileSystem3
  loc_9C1FD3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9C1FD8: ILdRf var_88
  loc_9C1FDB: FLdPr Me
  loc_9C1FDE: MemStVarAd
  loc_9C1FE2: FFree1Ad var_88
  loc_9C1FE5: Call Proc_203_33_9B9BBC()
  loc_9C1FEA: LitI4 1
  loc_9C1FEF: FLdPr Me
  loc_9C1FF2: MemLdRfVar from_stack_1.global_96
  loc_9C1FF5: FLdPr Me
  loc_9C1FF8: MemLdStr global_88
  loc_9C1FFB: LitI2_Byte 1
  loc_9C1FFD: FnUBound
  loc_9C1FFF: ForI4 var_90
  loc_9C2005: FLdRfVar var_92
  loc_9C2008: FLdPr Me
  loc_9C200B: VCallAd Control_ID_HojasSeparadasChk
  loc_9C200E: FStAdFunc var_88
  loc_9C2011: FLdPr var_88
  loc_9C2014:  = Me.Value
  loc_9C2019: FLdI2 var_92
  loc_9C201C: CI4UI1
  loc_9C201D: LitI4 1
  loc_9C2022: EqI4
  loc_9C2023: FFree1Ad var_88
  loc_9C2026: BranchF loc_9C2054
  loc_9C2029: FLdPr Me
  loc_9C202C: MemLdStr global_96
  loc_9C202F: LitI4 1
  loc_9C2034: NeI4
  loc_9C2035: BranchF loc_9C204C
  loc_9C2038: LitVarStr var_A4, "<div style=""page-break-before:always""></div>"
  loc_9C203D: PopAdLdVar
  loc_9C203E: FLdPr Me
  loc_9C2041: MemLdRfVar from_stack_1.htmFile
  loc_9C2044: LdPrVar
  loc_9C2046: LateMemCall
  loc_9C204C: Call Proc_203_34_A0E824()
  loc_9C2051: Branch loc_9C2068
  loc_9C2054: FLdPr Me
  loc_9C2057: MemLdStr global_96
  loc_9C205A: LitI4 1
  loc_9C205F: EqI4
  loc_9C2060: BranchF loc_9C2068
  loc_9C2063: Call Proc_203_34_A0E824()
  loc_9C2068: Call Proc_203_35_B30E80()
  loc_9C206D: FLdPr Me
  loc_9C2070: MemLdRfVar from_stack_1.global_96
  loc_9C2073: NextI4 var_90, loc_9C2005
  loc_9C2078: Call Proc_203_36_9F7160()
  loc_9C207D: FLdPr Me
  loc_9C2080: MemLdRfVar from_stack_1.htmFile
  loc_9C2083: LdPrVar
  loc_9C2085: LateMemCall
  loc_9C208B: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9C2090: ExitProcHresult
  loc_9C2091: NewIfNullPr Me
End Sub

Private Function Proc_203_33_9B9BBC() '9B9BBC
  'Data Table: 4C93E8
  loc_9B9B04: LitVarStr var_94, "<html>"
  loc_9B9B09: PopAdLdVar
  loc_9B9B0A: FLdPr Me
  loc_9B9B0D: MemLdRfVar from_stack_1.htmFile
  loc_9B9B10: LdPrVar
  loc_9B9B12: LateMemCall
  loc_9B9B18: LitVarStr var_94, "<head>"
  loc_9B9B1D: PopAdLdVar
  loc_9B9B1E: FLdPr Me
  loc_9B9B21: MemLdRfVar from_stack_1.htmFile
  loc_9B9B24: LdPrVar
  loc_9B9B26: LateMemCall
  loc_9B9B2C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9B9B31: PopAdLdVar
  loc_9B9B32: FLdPr Me
  loc_9B9B35: MemLdRfVar from_stack_1.htmFile
  loc_9B9B38: LdPrVar
  loc_9B9B3A: LateMemCall
  loc_9B9B40: LitStr "<title>"
  loc_9B9B43: FLdRfVar var_A8
  loc_9B9B46: FLdPr Me
  loc_9B9B49:  = Me.Caption
  loc_9B9B4E: ILdRf var_A8
  loc_9B9B51: ConcatStr
  loc_9B9B52: FStStrNoPop var_AC
  loc_9B9B55: LitStr "</title>"
  loc_9B9B58: ConcatStr
  loc_9B9B59: CVarStr var_BC
  loc_9B9B5C: PopAdLdVar
  loc_9B9B5D: FLdPr Me
  loc_9B9B60: MemLdRfVar from_stack_1.htmFile
  loc_9B9B63: LdPrVar
  loc_9B9B65: LateMemCall
  loc_9B9B6B: FFreeStr var_A8 = ""
  loc_9B9B72: FFree1Var var_BC = ""
  loc_9B9B75: LitStr vbNullString
  loc_9B9B78: ILdRf Me
  loc_9B9B7B: CastAd
  loc_9B9B7E: FStAdFunc var_C0
  loc_9B9B81: FLdRfVar var_C0
  loc_9B9B84: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9B9B89: FFree1Ad var_C0
  loc_9B9B8C: LitI4 0
  loc_9B9B91: FStStrCopy var_AC
  loc_9B9B94: FLdRfVar var_AC
  loc_9B9B97: LitI4 0
  loc_9B9B9C: FStStrCopy var_A8
  loc_9B9B9F: FLdRfVar var_A8
  loc_9B9BA2: LitI2_Byte 0
  loc_9B9BA4: PopTmpLdAd2 var_C2
  loc_9B9BA7: FLdPr Me
  loc_9B9BAA: MemLdRfVar from_stack_1.htmFile
  loc_9B9BAD: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9B9BB2: FFreeStr var_A8 = ""
  loc_9B9BB9: ExitProcHresult
End Function

Private Function Proc_203_34_A0E824() 'A0E824
  'Data Table: 4C93E8
  loc_A0E6C8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A0E6CD: PopAdLdVar
  loc_A0E6CE: FLdPr Me
  loc_A0E6D1: MemLdRfVar from_stack_1.htmFile
  loc_A0E6D4: LdPrVar
  loc_A0E6D6: LateMemCall
  loc_A0E6DC: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A0E6E1: PopAdLdVar
  loc_A0E6E2: FLdPr Me
  loc_A0E6E5: MemLdRfVar from_stack_1.htmFile
  loc_A0E6E8: LdPrVar
  loc_A0E6EA: LateMemCall
  loc_A0E6F0: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A0E6F5: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A0E6FA: FStVarCopyObj var_B4
  loc_A0E6FD: FLdRfVar var_B4
  loc_A0E700: FLdRfVar var_C4
  loc_A0E703: ImpAdCallFPR4  = Ucase()
  loc_A0E708: FLdRfVar var_C4
  loc_A0E70B: ConcatVar var_D4
  loc_A0E70F: LitVarStr var_E4, "</p><p>"
  loc_A0E714: ConcatVar var_F4
  loc_A0E718: FLdRfVar var_F8
  loc_A0E71B: FLdPr Me
  loc_A0E71E:  = Me.Caption
  loc_A0E723: FLdZeroAd var_F8
  loc_A0E726: CVarStr var_108
  loc_A0E729: ConcatVar var_118
  loc_A0E72D: LitVarStr var_128, "</p></th>"
  loc_A0E732: ConcatVar var_138
  loc_A0E736: PopAdLdVar
  loc_A0E737: FLdPr Me
  loc_A0E73A: MemLdRfVar from_stack_1.htmFile
  loc_A0E73D: LdPrVar
  loc_A0E73F: LateMemCall
  loc_A0E745: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = ""
  loc_A0E756: LitVarStr var_94, "  </tr>"
  loc_A0E75B: PopAdLdVar
  loc_A0E75C: FLdPr Me
  loc_A0E75F: MemLdRfVar from_stack_1.htmFile
  loc_A0E762: LdPrVar
  loc_A0E764: LateMemCall
  loc_A0E76A: LitVarStr var_94, "  <tr>"
  loc_A0E76F: PopAdLdVar
  loc_A0E770: FLdPr Me
  loc_A0E773: MemLdRfVar from_stack_1.htmFile
  loc_A0E776: LdPrVar
  loc_A0E778: LateMemCall
  loc_A0E77E: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A0E783: PopAdLdVar
  loc_A0E784: FLdPr Me
  loc_A0E787: MemLdRfVar from_stack_1.htmFile
  loc_A0E78A: LdPrVar
  loc_A0E78C: LateMemCall
  loc_A0E792: LitVarStr var_94, "  </tr>"
  loc_A0E797: PopAdLdVar
  loc_A0E798: FLdPr Me
  loc_A0E79B: MemLdRfVar from_stack_1.htmFile
  loc_A0E79E: LdPrVar
  loc_A0E7A0: LateMemCall
  loc_A0E7A6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A0E7AB: PopAdLdVar
  loc_A0E7AC: FLdPr Me
  loc_A0E7AF: MemLdRfVar from_stack_1.htmFile
  loc_A0E7B2: LdPrVar
  loc_A0E7B4: LateMemCall
  loc_A0E7BA: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A0E7BD: FLdRfVar var_F8
  loc_A0E7C0: FLdPr Me
  loc_A0E7C3: VCallAd Control_ID_cboPeriodo
  loc_A0E7C6: FStAdFunc var_14C
  loc_A0E7C9: FLdPr var_14C
  loc_A0E7CC:  = Me.Text
  loc_A0E7D1: ILdRf var_F8
  loc_A0E7D4: ConcatStr
  loc_A0E7D5: FStStrNoPop var_150
  loc_A0E7D8: LitStr "</span></th>"
  loc_A0E7DB: ConcatStr
  loc_A0E7DC: CVarStr var_B4
  loc_A0E7DF: PopAdLdVar
  loc_A0E7E0: FLdPr Me
  loc_A0E7E3: MemLdRfVar from_stack_1.htmFile
  loc_A0E7E6: LdPrVar
  loc_A0E7E8: LateMemCall
  loc_A0E7EE: FFreeStr var_F8 = ""
  loc_A0E7F5: FFree1Ad var_14C
  loc_A0E7F8: FFree1Var var_B4 = ""
  loc_A0E7FB: LitVarStr var_94, "  </tr>"
  loc_A0E800: PopAdLdVar
  loc_A0E801: FLdPr Me
  loc_A0E804: MemLdRfVar from_stack_1.htmFile
  loc_A0E807: LdPrVar
  loc_A0E809: LateMemCall
  loc_A0E80F: LitVarStr var_94, "</table>"
  loc_A0E814: PopAdLdVar
  loc_A0E815: FLdPr Me
  loc_A0E818: MemLdRfVar from_stack_1.htmFile
  loc_A0E81B: LdPrVar
  loc_A0E81D: LateMemCall
  loc_A0E823: ExitProcHresult
End Function

Private Function Proc_203_35_B30E80() 'B30E80
  'Data Table: 4C93E8
  loc_B30504: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B30509: PopAdLdVar
  loc_B3050A: FLdPr Me
  loc_B3050D: MemLdRfVar from_stack_1.htmFile
  loc_B30510: LdPrVar
  loc_B30512: LateMemCall
  loc_B30518: LitVarStr var_94, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_B3051D: PopAdLdVar
  loc_B3051E: FLdPr Me
  loc_B30521: MemLdRfVar from_stack_1.htmFile
  loc_B30524: LdPrVar
  loc_B30526: LateMemCall
  loc_B3052C: LitVarStr var_94, "    <th colspan=""13"" class=""LineaDato"">"
  loc_B30531: PopAdLdVar
  loc_B30532: FLdPr Me
  loc_B30535: MemLdRfVar from_stack_1.htmFile
  loc_B30538: LdPrVar
  loc_B3053A: LateMemCall
  loc_B30540: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_B30545: PopAdLdVar
  loc_B30546: FLdPr Me
  loc_B30549: MemLdRfVar from_stack_1.htmFile
  loc_B3054C: LdPrVar
  loc_B3054E: LateMemCall
  loc_B30554: LitVarStr var_94, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B30559: PopAdLdVar
  loc_B3055A: FLdPr Me
  loc_B3055D: MemLdRfVar from_stack_1.htmFile
  loc_B30560: LdPrVar
  loc_B30562: LateMemCall
  loc_B30568: LitStr "        <td align=""left"" class=""Encabezado"">Orden de compra N&ordm;:&nbsp;"
  loc_B3056B: FLdPr Me
  loc_B3056E: MemLdStr global_96
  loc_B30571: FLdPr Me
  loc_B30574: MemLdStr global_88
  loc_B30577: Ary1LdPr
  loc_B30578: MemLdStr global_0
  loc_B3057B: ConcatStr
  loc_B3057C: FStStrNoPop var_A8
  loc_B3057F: LitStr "<br>"
  loc_B30582: ConcatStr
  loc_B30583: CVarStr var_B8
  loc_B30586: PopAdLdVar
  loc_B30587: FLdPr Me
  loc_B3058A: MemLdRfVar from_stack_1.htmFile
  loc_B3058D: LdPrVar
  loc_B3058F: LateMemCall
  loc_B30595: FFree1Str var_A8
  loc_B30598: FFree1Var var_B8 = ""
  loc_B3059B: LitStr "                                     Recepción N&ordm;:&nbsp;"
  loc_B3059E: FLdPr Me
  loc_B305A1: MemLdStr global_96
  loc_B305A4: FLdPr Me
  loc_B305A7: MemLdStr global_88
  loc_B305AA: Ary1LdPr
  loc_B305AB: MemLdStr global_4
  loc_B305AE: ConcatStr
  loc_B305AF: FStStrNoPop var_A8
  loc_B305B2: LitStr "</td>"
  loc_B305B5: ConcatStr
  loc_B305B6: CVarStr var_B8
  loc_B305B9: PopAdLdVar
  loc_B305BA: FLdPr Me
  loc_B305BD: MemLdRfVar from_stack_1.htmFile
  loc_B305C0: LdPrVar
  loc_B305C2: LateMemCall
  loc_B305C8: FFree1Str var_A8
  loc_B305CB: FFree1Var var_B8 = ""
  loc_B305CE: LitStr "        <td>Fecha de recepción:<br>"
  loc_B305D1: FLdPr Me
  loc_B305D4: MemLdStr global_96
  loc_B305D7: FLdPr Me
  loc_B305DA: MemLdStr global_88
  loc_B305DD: Ary1LdPr
  loc_B305DE: MemLdStr global_40
  loc_B305E1: ConcatStr
  loc_B305E2: FStStrNoPop var_A8
  loc_B305E5: LitStr "</td>"
  loc_B305E8: ConcatStr
  loc_B305E9: CVarStr var_B8
  loc_B305EC: PopAdLdVar
  loc_B305ED: FLdPr Me
  loc_B305F0: MemLdRfVar from_stack_1.htmFile
  loc_B305F3: LdPrVar
  loc_B305F5: LateMemCall
  loc_B305FB: FFree1Str var_A8
  loc_B305FE: FFree1Var var_B8 = ""
  loc_B30601: LitStr "        <td>Tipo de compra:<br>"
  loc_B30604: FLdPr Me
  loc_B30607: MemLdStr global_96
  loc_B3060A: FLdPr Me
  loc_B3060D: MemLdStr global_88
  loc_B30610: Ary1LdPr
  loc_B30611: MemLdStr global_16
  loc_B30614: ConcatStr
  loc_B30615: FStStrNoPop var_A8
  loc_B30618: LitStr " - "
  loc_B3061B: ConcatStr
  loc_B3061C: FStStrNoPop var_BC
  loc_B3061F: FLdPr Me
  loc_B30622: MemLdStr global_96
  loc_B30625: FLdPr Me
  loc_B30628: MemLdStr global_88
  loc_B3062B: Ary1LdPr
  loc_B3062C: MemLdStr global_20
  loc_B3062F: ConcatStr
  loc_B30630: FStStrNoPop var_C0
  loc_B30633: LitStr "</td>"
  loc_B30636: ConcatStr
  loc_B30637: CVarStr var_B8
  loc_B3063A: PopAdLdVar
  loc_B3063B: FLdPr Me
  loc_B3063E: MemLdRfVar from_stack_1.htmFile
  loc_B30641: LdPrVar
  loc_B30643: LateMemCall
  loc_B30649: FFreeStr var_A8 = "": var_BC = ""
  loc_B30652: FFree1Var var_B8 = ""
  loc_B30655: LitStr "        <td>Expediente:<br>"
  loc_B30658: FLdPr Me
  loc_B3065B: MemLdStr global_96
  loc_B3065E: FLdPr Me
  loc_B30661: MemLdStr global_88
  loc_B30664: Ary1LdPr
  loc_B30665: MemLdStr global_32
  loc_B30668: ConcatStr
  loc_B30669: CVarStr var_F0
  loc_B3066C: LitVarStr var_A4, vbNullString
  loc_B30671: FStVarCopyObj var_D0
  loc_B30674: FLdRfVar var_D0
  loc_B30677: LitStr "<br>"
  loc_B3067A: FLdPr Me
  loc_B3067D: MemLdStr global_96
  loc_B30680: FLdPr Me
  loc_B30683: MemLdStr global_88
  loc_B30686: Ary1LdPr
  loc_B30687: MemLdStr global_36
  loc_B3068A: ConcatStr
  loc_B3068B: CVarStr var_B8
  loc_B3068E: FLdPr Me
  loc_B30691: MemLdStr global_96
  loc_B30694: FLdPr Me
  loc_B30697: MemLdStr global_88
  loc_B3069A: Ary1LdPr
  loc_B3069B: MemLdStr global_36
  loc_B3069E: LitStr vbNullString
  loc_B306A1: NeStr
  loc_B306A3: CVarBoolI2 var_94
  loc_B306A7: FLdRfVar var_E0
  loc_B306AA: ImpAdCallFPR4  = IIf(, , )
  loc_B306AF: FLdRfVar var_E0
  loc_B306B2: ConcatVar var_100
  loc_B306B6: LitVarStr var_110, "</td>"
  loc_B306BB: ConcatVar var_120
  loc_B306BF: PopAdLdVar
  loc_B306C0: FLdPr Me
  loc_B306C3: MemLdRfVar from_stack_1.htmFile
  loc_B306C6: LdPrVar
  loc_B306C8: LateMemCall
  loc_B306CE: FFreeVar var_94 = "": var_B8 = "": var_D0 = "": var_F0 = "": var_E0 = "": var_100 = ""
  loc_B306DF: LitStr "        <td>Nota de pedido:<br>"
  loc_B306E2: FLdPr Me
  loc_B306E5: MemLdStr global_96
  loc_B306E8: FLdPr Me
  loc_B306EB: MemLdStr global_88
  loc_B306EE: Ary1LdPr
  loc_B306EF: MemLdStr global_12
  loc_B306F2: ConcatStr
  loc_B306F3: FStStrNoPop var_A8
  loc_B306F6: LitStr "</td>"
  loc_B306F9: ConcatStr
  loc_B306FA: CVarStr var_B8
  loc_B306FD: PopAdLdVar
  loc_B306FE: FLdPr Me
  loc_B30701: MemLdRfVar from_stack_1.htmFile
  loc_B30704: LdPrVar
  loc_B30706: LateMemCall
  loc_B3070C: FFree1Str var_A8
  loc_B3070F: FFree1Var var_B8 = ""
  loc_B30712: LitStr "        <td>Usuario:<br>"
  loc_B30715: FLdPr Me
  loc_B30718: MemLdStr global_96
  loc_B3071B: FLdPr Me
  loc_B3071E: MemLdStr global_88
  loc_B30721: Ary1LdPr
  loc_B30722: MemLdStr global_56
  loc_B30725: ConcatStr
  loc_B30726: FStStrNoPop var_A8
  loc_B30729: LitStr "</td>"
  loc_B3072C: ConcatStr
  loc_B3072D: CVarStr var_B8
  loc_B30730: PopAdLdVar
  loc_B30731: FLdPr Me
  loc_B30734: MemLdRfVar from_stack_1.htmFile
  loc_B30737: LdPrVar
  loc_B30739: LateMemCall
  loc_B3073F: FFree1Str var_A8
  loc_B30742: FFree1Var var_B8 = ""
  loc_B30745: LitStr "        <td class=""Totales"">Total:<br>"
  loc_B30748: FLdPr Me
  loc_B3074B: MemLdStr global_96
  loc_B3074E: FLdPr Me
  loc_B30751: MemLdStr global_88
  loc_B30754: Ary1LdPr
  loc_B30755: MemLdStr bGenerado
  loc_B30758: ConcatStr
  loc_B30759: FStStrNoPop var_A8
  loc_B3075C: LitStr "</td>"
  loc_B3075F: ConcatStr
  loc_B30760: CVarStr var_B8
  loc_B30763: PopAdLdVar
  loc_B30764: FLdPr Me
  loc_B30767: MemLdRfVar from_stack_1.htmFile
  loc_B3076A: LdPrVar
  loc_B3076C: LateMemCall
  loc_B30772: FFree1Str var_A8
  loc_B30775: FFree1Var var_B8 = ""
  loc_B30778: LitVarStr var_94, "        </tr>"
  loc_B3077D: PopAdLdVar
  loc_B3077E: FLdPr Me
  loc_B30781: MemLdRfVar from_stack_1.htmFile
  loc_B30784: LdPrVar
  loc_B30786: LateMemCall
  loc_B3078C: LitVarStr var_94, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B30791: PopAdLdVar
  loc_B30792: FLdPr Me
  loc_B30795: MemLdRfVar from_stack_1.htmFile
  loc_B30798: LdPrVar
  loc_B3079A: LateMemCall
  loc_B307A0: LitStr "        <td colspan=""3"" rowspan=""2"">Proveedor: "
  loc_B307A3: FLdPr Me
  loc_B307A6: MemLdStr global_96
  loc_B307A9: FLdPr Me
  loc_B307AC: MemLdStr global_88
  loc_B307AF: Ary1LdPr
  loc_B307B0: MemLdStr global_24
  loc_B307B3: ConcatStr
  loc_B307B4: FStStrNoPop var_A8
  loc_B307B7: LitStr " - "
  loc_B307BA: ConcatStr
  loc_B307BB: FStStrNoPop var_BC
  loc_B307BE: FLdPr Me
  loc_B307C1: MemLdStr global_96
  loc_B307C4: FLdPr Me
  loc_B307C7: MemLdStr global_88
  loc_B307CA: Ary1LdPr
  loc_B307CB: MemLdStr global_28
  loc_B307CE: ConcatStr
  loc_B307CF: FStStrNoPop var_C0
  loc_B307D2: LitStr "</td>"
  loc_B307D5: ConcatStr
  loc_B307D6: CVarStr var_B8
  loc_B307D9: PopAdLdVar
  loc_B307DA: FLdPr Me
  loc_B307DD: MemLdRfVar from_stack_1.htmFile
  loc_B307E0: LdPrVar
  loc_B307E2: LateMemCall
  loc_B307E8: FFreeStr var_A8 = "": var_BC = ""
  loc_B307F1: FFree1Var var_B8 = ""
  loc_B307F4: LitVarStr var_94, "        </tr>"
  loc_B307F9: PopAdLdVar
  loc_B307FA: FLdPr Me
  loc_B307FD: MemLdRfVar from_stack_1.htmFile
  loc_B30800: LdPrVar
  loc_B30802: LateMemCall
  loc_B30808: LitVarStr var_94, "      "
  loc_B3080D: PopAdLdVar
  loc_B3080E: FLdPr Me
  loc_B30811: MemLdRfVar from_stack_1.htmFile
  loc_B30814: LdPrVar
  loc_B30816: LateMemCall
  loc_B3081C: LitVarStr var_94, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B30821: PopAdLdVar
  loc_B30822: FLdPr Me
  loc_B30825: MemLdRfVar from_stack_1.htmFile
  loc_B30828: LdPrVar
  loc_B3082A: LateMemCall
  loc_B30830: LitStr "        <td>Fecha Fact.:<br>"
  loc_B30833: FLdPr Me
  loc_B30836: MemLdStr global_96
  loc_B30839: FLdPr Me
  loc_B3083C: MemLdStr global_88
  loc_B3083F: Ary1LdPr
  loc_B30840: MemLdStr global_44
  loc_B30843: ConcatStr
  loc_B30844: FStStrNoPop var_A8
  loc_B30847: LitStr "</td>"
  loc_B3084A: ConcatStr
  loc_B3084B: CVarStr var_B8
  loc_B3084E: PopAdLdVar
  loc_B3084F: FLdPr Me
  loc_B30852: MemLdRfVar from_stack_1.htmFile
  loc_B30855: LdPrVar
  loc_B30857: LateMemCall
  loc_B3085D: FFree1Str var_A8
  loc_B30860: FFree1Var var_B8 = ""
  loc_B30863: LitStr "        <td colspan=""4"">Nº Factura:<br>"
  loc_B30866: FLdPr Me
  loc_B30869: MemLdStr global_96
  loc_B3086C: FLdPr Me
  loc_B3086F: MemLdStr global_88
  loc_B30872: Ary1LdPr
  loc_B30873: MemLdStr global_60
  loc_B30876: ConcatStr
  loc_B30877: FStStrNoPop var_A8
  loc_B3087A: LitStr "</td>"
  loc_B3087D: ConcatStr
  loc_B3087E: CVarStr var_B8
  loc_B30881: PopAdLdVar
  loc_B30882: FLdPr Me
  loc_B30885: MemLdRfVar from_stack_1.htmFile
  loc_B30888: LdPrVar
  loc_B3088A: LateMemCall
  loc_B30890: FFree1Str var_A8
  loc_B30893: FFree1Var var_B8 = ""
  loc_B30896: LitVarStr var_94, "        </tr>"
  loc_B3089B: PopAdLdVar
  loc_B3089C: FLdPr Me
  loc_B3089F: MemLdRfVar from_stack_1.htmFile
  loc_B308A2: LdPrVar
  loc_B308A4: LateMemCall
  loc_B308AA: LitVarStr var_94, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B308AF: PopAdLdVar
  loc_B308B0: FLdPr Me
  loc_B308B3: MemLdRfVar from_stack_1.htmFile
  loc_B308B6: LdPrVar
  loc_B308B8: LateMemCall
  loc_B308BE: LitStr "        <td colspan=""7"">Detalle: "
  loc_B308C1: FLdPr Me
  loc_B308C4: MemLdStr global_96
  loc_B308C7: FLdPr Me
  loc_B308CA: MemLdStr global_88
  loc_B308CD: Ary1LdPr
  loc_B308CE: MemLdStr global_8
  loc_B308D1: ConcatStr
  loc_B308D2: FStStrNoPop var_A8
  loc_B308D5: LitStr "</td>"
  loc_B308D8: ConcatStr
  loc_B308D9: CVarStr var_B8
  loc_B308DC: PopAdLdVar
  loc_B308DD: FLdPr Me
  loc_B308E0: MemLdRfVar from_stack_1.htmFile
  loc_B308E3: LdPrVar
  loc_B308E5: LateMemCall
  loc_B308EB: FFree1Str var_A8
  loc_B308EE: FFree1Var var_B8 = ""
  loc_B308F1: LitVarStr var_94, "      </tr>"
  loc_B308F6: PopAdLdVar
  loc_B308F7: FLdPr Me
  loc_B308FA: MemLdRfVar from_stack_1.htmFile
  loc_B308FD: LdPrVar
  loc_B308FF: LateMemCall
  loc_B30905: FLdPr Me
  loc_B30908: MemLdStr global_96
  loc_B3090B: FLdPr Me
  loc_B3090E: MemLdStr global_88
  loc_B30911: Ary1LdPr
  loc_B30912: MemLdStr global_48
  loc_B30915: LitStr vbNullString
  loc_B30918: NeStr
  loc_B3091A: BranchF loc_B30999
  loc_B3091D: LitVarStr var_94, "      <tr valign=""top"" class=""Encabezado"">"
  loc_B30922: PopAdLdVar
  loc_B30923: FLdPr Me
  loc_B30926: MemLdRfVar from_stack_1.htmFile
  loc_B30929: LdPrVar
  loc_B3092B: LateMemCall
  loc_B30931: LitStr "        <td colspan=""7"">ANULADA<br>Fecha: "
  loc_B30934: FLdPr Me
  loc_B30937: MemLdStr global_96
  loc_B3093A: FLdPr Me
  loc_B3093D: MemLdStr global_88
  loc_B30940: Ary1LdPr
  loc_B30941: MemLdStr global_48
  loc_B30944: ConcatStr
  loc_B30945: FStStrNoPop var_A8
  loc_B30948: LitStr "<br>Motivo: "
  loc_B3094B: ConcatStr
  loc_B3094C: FStStrNoPop var_BC
  loc_B3094F: FLdPr Me
  loc_B30952: MemLdStr global_96
  loc_B30955: FLdPr Me
  loc_B30958: MemLdStr global_88
  loc_B3095B: Ary1LdPr
  loc_B3095C: MemLdStr htmFile
  loc_B3095F: ConcatStr
  loc_B30960: FStStrNoPop var_C0
  loc_B30963: LitStr "</td>"
  loc_B30966: ConcatStr
  loc_B30967: CVarStr var_B8
  loc_B3096A: PopAdLdVar
  loc_B3096B: FLdPr Me
  loc_B3096E: MemLdRfVar from_stack_1.htmFile
  loc_B30971: LdPrVar
  loc_B30973: LateMemCall
  loc_B30979: FFreeStr var_A8 = "": var_BC = ""
  loc_B30982: FFree1Var var_B8 = ""
  loc_B30985: LitVarStr var_94, "      </tr>"
  loc_B3098A: PopAdLdVar
  loc_B3098B: FLdPr Me
  loc_B3098E: MemLdRfVar from_stack_1.htmFile
  loc_B30991: LdPrVar
  loc_B30993: LateMemCall
  loc_B30999: LitVarStr var_94, "    </table>"
  loc_B3099E: PopAdLdVar
  loc_B3099F: FLdPr Me
  loc_B309A2: MemLdRfVar from_stack_1.htmFile
  loc_B309A5: LdPrVar
  loc_B309A7: LateMemCall
  loc_B309AD: LitVarStr var_94, "  </tr>"
  loc_B309B2: PopAdLdVar
  loc_B309B3: FLdPr Me
  loc_B309B6: MemLdRfVar from_stack_1.htmFile
  loc_B309B9: LdPrVar
  loc_B309BB: LateMemCall
  loc_B309C1: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B309C6: PopAdLdVar
  loc_B309C7: FLdPr Me
  loc_B309CA: MemLdRfVar from_stack_1.htmFile
  loc_B309CD: LdPrVar
  loc_B309CF: LateMemCall
  loc_B309D5: LitVarStr var_94, "    <th>Item</th>"
  loc_B309DA: PopAdLdVar
  loc_B309DB: FLdPr Me
  loc_B309DE: MemLdRfVar from_stack_1.htmFile
  loc_B309E1: LdPrVar
  loc_B309E3: LateMemCall
  loc_B309E9: LitVarStr var_94, "    <th>Alt.</th>"
  loc_B309EE: PopAdLdVar
  loc_B309EF: FLdPr Me
  loc_B309F2: MemLdRfVar from_stack_1.htmFile
  loc_B309F5: LdPrVar
  loc_B309F7: LateMemCall
  loc_B309FD: LitVarStr var_94, "    <th>Cantidad</th>"
  loc_B30A02: PopAdLdVar
  loc_B30A03: FLdPr Me
  loc_B30A06: MemLdRfVar from_stack_1.htmFile
  loc_B30A09: LdPrVar
  loc_B30A0B: LateMemCall
  loc_B30A11: LitVarStr var_94, "    <th>Insumo</th>"
  loc_B30A16: PopAdLdVar
  loc_B30A17: FLdPr Me
  loc_B30A1A: MemLdRfVar from_stack_1.htmFile
  loc_B30A1D: LdPrVar
  loc_B30A1F: LateMemCall
  loc_B30A25: LitVarStr var_94, "    <th>Detalle</th>"
  loc_B30A2A: PopAdLdVar
  loc_B30A2B: FLdPr Me
  loc_B30A2E: MemLdRfVar from_stack_1.htmFile
  loc_B30A31: LdPrVar
  loc_B30A33: LateMemCall
  loc_B30A39: LitVarStr var_94, "    <th>Importe unitario</th>"
  loc_B30A3E: PopAdLdVar
  loc_B30A3F: FLdPr Me
  loc_B30A42: MemLdRfVar from_stack_1.htmFile
  loc_B30A45: LdPrVar
  loc_B30A47: LateMemCall
  loc_B30A4D: LitVarStr var_94, "    <th>Ajuste</th>"
  loc_B30A52: PopAdLdVar
  loc_B30A53: FLdPr Me
  loc_B30A56: MemLdRfVar from_stack_1.htmFile
  loc_B30A59: LdPrVar
  loc_B30A5B: LateMemCall
  loc_B30A61: LitVarStr var_94, "    <th>Total</th>"
  loc_B30A66: PopAdLdVar
  loc_B30A67: FLdPr Me
  loc_B30A6A: MemLdRfVar from_stack_1.htmFile
  loc_B30A6D: LdPrVar
  loc_B30A6F: LateMemCall
  loc_B30A75: LitVarStr var_94, "    <th>Saldo</th>"
  loc_B30A7A: PopAdLdVar
  loc_B30A7B: FLdPr Me
  loc_B30A7E: MemLdRfVar from_stack_1.htmFile
  loc_B30A81: LdPrVar
  loc_B30A83: LateMemCall
  loc_B30A89: LitVarStr var_94, "    <th>Partida</th>"
  loc_B30A8E: PopAdLdVar
  loc_B30A8F: FLdPr Me
  loc_B30A92: MemLdRfVar from_stack_1.htmFile
  loc_B30A95: LdPrVar
  loc_B30A97: LateMemCall
  loc_B30A9D: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_B30AA2: PopAdLdVar
  loc_B30AA3: FLdPr Me
  loc_B30AA6: MemLdRfVar from_stack_1.htmFile
  loc_B30AA9: LdPrVar
  loc_B30AAB: LateMemCall
  loc_B30AB1: LitVarStr var_94, "    <th>Finalidad</th>"
  loc_B30AB6: PopAdLdVar
  loc_B30AB7: FLdPr Me
  loc_B30ABA: MemLdRfVar from_stack_1.htmFile
  loc_B30ABD: LdPrVar
  loc_B30ABF: LateMemCall
  loc_B30AC5: LitVarStr var_94, "    <th>Imput.</th>"
  loc_B30ACA: PopAdLdVar
  loc_B30ACB: FLdPr Me
  loc_B30ACE: MemLdRfVar from_stack_1.htmFile
  loc_B30AD1: LdPrVar
  loc_B30AD3: LateMemCall
  loc_B30AD9: LitVarStr var_94, "  </tr>"
  loc_B30ADE: PopAdLdVar
  loc_B30ADF: FLdPr Me
  loc_B30AE2: MemLdRfVar from_stack_1.htmFile
  loc_B30AE5: LdPrVar
  loc_B30AE7: LateMemCall
  loc_B30AED: LitI4 1
  loc_B30AF2: FLdPr Me
  loc_B30AF5: MemLdRfVar from_stack_1.global_100
  loc_B30AF8: FLdPr Me
  loc_B30AFB: MemLdStr global_96
  loc_B30AFE: FLdPr Me
  loc_B30B01: MemLdStr global_88
  loc_B30B04: Ary1LdPr
  loc_B30B05: MemLdStr global_64
  loc_B30B08: LitI2_Byte 1
  loc_B30B0A: FnUBound
  loc_B30B0C: ForI4 var_138
  loc_B30B12: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B30B17: PopAdLdVar
  loc_B30B18: FLdPr Me
  loc_B30B1B: MemLdRfVar from_stack_1.htmFile
  loc_B30B1E: LdPrVar
  loc_B30B20: LateMemCall
  loc_B30B26: FLdPr Me
  loc_B30B29: MemLdStr global_100
  loc_B30B2C: FLdPr Me
  loc_B30B2F: MemLdStr global_96
  loc_B30B32: FLdPr Me
  loc_B30B35: MemLdStr global_88
  loc_B30B38: AryLock
  loc_B30B3B: Ary1LdPr
  loc_B30B3C: MemLdStr global_64
  loc_B30B3F: AryLock
  loc_B30B42: Ary1LdRf
  loc_B30B43: FStR4 var_144
  loc_B30B46: LitI4 0
  loc_B30B4B: LitI4 0
  loc_B30B50: LitI2_Byte 0
  loc_B30B52: LitStr "center"
  loc_B30B55: FMemLdR4 var_144(0)
  loc_B30B5A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30B5F: CVarStr var_B8
  loc_B30B62: PopAdLdVar
  loc_B30B63: FLdPr Me
  loc_B30B66: MemLdRfVar from_stack_1.htmFile
  loc_B30B69: LdPrVar
  loc_B30B6B: LateMemCall
  loc_B30B71: FFree1Var var_B8 = ""
  loc_B30B74: LitI4 0
  loc_B30B79: LitI4 0
  loc_B30B7E: LitI2_Byte 0
  loc_B30B80: LitStr "center"
  loc_B30B83: FMemLdR4 var_144(4)
  loc_B30B88: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30B8D: CVarStr var_B8
  loc_B30B90: PopAdLdVar
  loc_B30B91: FLdPr Me
  loc_B30B94: MemLdRfVar from_stack_1.htmFile
  loc_B30B97: LdPrVar
  loc_B30B99: LateMemCall
  loc_B30B9F: FFree1Var var_B8 = ""
  loc_B30BA2: LitI4 0
  loc_B30BA7: LitI4 0
  loc_B30BAC: LitI2_Byte 0
  loc_B30BAE: LitStr "right"
  loc_B30BB1: FMemLdR4 var_144(24)
  loc_B30BB6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30BBB: CVarStr var_B8
  loc_B30BBE: PopAdLdVar
  loc_B30BBF: FLdPr Me
  loc_B30BC2: MemLdRfVar from_stack_1.htmFile
  loc_B30BC5: LdPrVar
  loc_B30BC7: LateMemCall
  loc_B30BCD: FFree1Var var_B8 = ""
  loc_B30BD0: LitI4 0
  loc_B30BD5: LitI4 0
  loc_B30BDA: LitI2_Byte 0
  loc_B30BDC: LitStr "left"
  loc_B30BDF: FMemLdR4 var_144(16)
  loc_B30BE4: LitStr " - "
  loc_B30BE7: ConcatStr
  loc_B30BE8: FStStrNoPop var_A8
  loc_B30BEB: FMemLdR4 var_144(20)
  loc_B30BF0: ConcatStr
  loc_B30BF1: FStStrNoPop var_BC
  loc_B30BF4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30BF9: CVarStr var_B8
  loc_B30BFC: PopAdLdVar
  loc_B30BFD: FLdPr Me
  loc_B30C00: MemLdRfVar from_stack_1.htmFile
  loc_B30C03: LdPrVar
  loc_B30C05: LateMemCall
  loc_B30C0B: FFreeStr var_A8 = ""
  loc_B30C12: FFree1Var var_B8 = ""
  loc_B30C15: LitI4 0
  loc_B30C1A: LitI4 0
  loc_B30C1F: LitI2_Byte 0
  loc_B30C21: LitStr "left"
  loc_B30C24: FMemLdR4 var_144(8)
  loc_B30C29: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30C2E: CVarStr var_B8
  loc_B30C31: PopAdLdVar
  loc_B30C32: FLdPr Me
  loc_B30C35: MemLdRfVar from_stack_1.htmFile
  loc_B30C38: LdPrVar
  loc_B30C3A: LateMemCall
  loc_B30C40: FFree1Var var_B8 = ""
  loc_B30C43: LitI4 0
  loc_B30C48: LitI4 0
  loc_B30C4D: LitI2_Byte 0
  loc_B30C4F: LitStr "right"
  loc_B30C52: FMemLdR4 var_144(28)
  loc_B30C57: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30C5C: CVarStr var_B8
  loc_B30C5F: PopAdLdVar
  loc_B30C60: FLdPr Me
  loc_B30C63: MemLdRfVar from_stack_1.htmFile
  loc_B30C66: LdPrVar
  loc_B30C68: LateMemCall
  loc_B30C6E: FFree1Var var_B8 = ""
  loc_B30C71: LitI4 0
  loc_B30C76: LitI4 0
  loc_B30C7B: LitI2_Byte 0
  loc_B30C7D: LitStr "right"
  loc_B30C80: FMemLdR4 var_144(40)
  loc_B30C85: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30C8A: CVarStr var_B8
  loc_B30C8D: PopAdLdVar
  loc_B30C8E: FLdPr Me
  loc_B30C91: MemLdRfVar from_stack_1.htmFile
  loc_B30C94: LdPrVar
  loc_B30C96: LateMemCall
  loc_B30C9C: FFree1Var var_B8 = ""
  loc_B30C9F: LitI4 0
  loc_B30CA4: LitI4 0
  loc_B30CA9: LitI2_Byte 0
  loc_B30CAB: LitStr "right"
  loc_B30CAE: FMemLdR4 var_144(32)
  loc_B30CB3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30CB8: CVarStr var_B8
  loc_B30CBB: PopAdLdVar
  loc_B30CBC: FLdPr Me
  loc_B30CBF: MemLdRfVar from_stack_1.htmFile
  loc_B30CC2: LdPrVar
  loc_B30CC4: LateMemCall
  loc_B30CCA: FFree1Var var_B8 = ""
  loc_B30CCD: LitI4 0
  loc_B30CD2: LitI4 0
  loc_B30CD7: LitI2_Byte 0
  loc_B30CD9: LitStr "right"
  loc_B30CDC: FMemLdR4 var_144(36)
  loc_B30CE1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30CE6: CVarStr var_B8
  loc_B30CE9: PopAdLdVar
  loc_B30CEA: FLdPr Me
  loc_B30CED: MemLdRfVar from_stack_1.htmFile
  loc_B30CF0: LdPrVar
  loc_B30CF2: LateMemCall
  loc_B30CF8: FFree1Var var_B8 = ""
  loc_B30CFB: LitI4 0
  loc_B30D00: LitI4 0
  loc_B30D05: LitI2_Byte 0
  loc_B30D07: LitStr "left"
  loc_B30D0A: FMemLdR4 var_144(44)
  loc_B30D0F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30D14: CVarStr var_B8
  loc_B30D17: PopAdLdVar
  loc_B30D18: FLdPr Me
  loc_B30D1B: MemLdRfVar from_stack_1.htmFile
  loc_B30D1E: LdPrVar
  loc_B30D20: LateMemCall
  loc_B30D26: FFree1Var var_B8 = ""
  loc_B30D29: LitI4 0
  loc_B30D2E: LitI4 0
  loc_B30D33: LitI2_Byte 0
  loc_B30D35: LitStr "left"
  loc_B30D38: FMemLdR4 var_144(48)
  loc_B30D3D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30D42: CVarStr var_B8
  loc_B30D45: PopAdLdVar
  loc_B30D46: FLdPr Me
  loc_B30D49: MemLdRfVar from_stack_1.htmFile
  loc_B30D4C: LdPrVar
  loc_B30D4E: LateMemCall
  loc_B30D54: FFree1Var var_B8 = ""
  loc_B30D57: LitI4 0
  loc_B30D5C: LitI4 0
  loc_B30D61: LitI2_Byte 0
  loc_B30D63: LitStr "left"
  loc_B30D66: FMemLdR4 var_144(52)
  loc_B30D6B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30D70: CVarStr var_B8
  loc_B30D73: PopAdLdVar
  loc_B30D74: FLdPr Me
  loc_B30D77: MemLdRfVar from_stack_1.htmFile
  loc_B30D7A: LdPrVar
  loc_B30D7C: LateMemCall
  loc_B30D82: FFree1Var var_B8 = ""
  loc_B30D85: LitVarStr var_110, "Si"
  loc_B30D8A: FStVarCopyObj var_D0
  loc_B30D8D: FLdRfVar var_D0
  loc_B30D90: LitVarStr var_A4, "No"
  loc_B30D95: FStVarCopyObj var_B8
  loc_B30D98: FLdRfVar var_B8
  loc_B30D9B: FMemLdR4 var_144(56)
  loc_B30DA0: LitStr "0"
  loc_B30DA3: EqStr
  loc_B30DA5: CVarBoolI2 var_94
  loc_B30DA9: FLdRfVar var_E0
  loc_B30DAC: ImpAdCallFPR4  = IIf(, , )
  loc_B30DB1: LitI4 0
  loc_B30DB6: LitI4 0
  loc_B30DBB: LitI2_Byte 0
  loc_B30DBD: LitStr "left"
  loc_B30DC0: FLdRfVar var_E0
  loc_B30DC3: CStrVarVal var_A8
  loc_B30DC7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B30DCC: CVarStr var_F0
  loc_B30DCF: PopAdLdVar
  loc_B30DD0: FLdPr Me
  loc_B30DD3: MemLdRfVar from_stack_1.htmFile
  loc_B30DD6: LdPrVar
  loc_B30DD8: LateMemCall
  loc_B30DDE: FFree1Str var_A8
  loc_B30DE1: FFreeVar var_94 = "": var_B8 = "": var_D0 = "": var_E0 = ""
  loc_B30DEE: LitVarStr var_94, "  </tr>"
  loc_B30DF3: PopAdLdVar
  loc_B30DF4: FLdPr Me
  loc_B30DF7: MemLdRfVar from_stack_1.htmFile
  loc_B30DFA: LdPrVar
  loc_B30DFC: LateMemCall
  loc_B30E02: LitI4 0
  loc_B30E07: FStR4 var_144
  loc_B30E0A: AryUnlock
  loc_B30E0D: AryUnlock
  loc_B30E10: FLdPr Me
  loc_B30E13: MemLdRfVar from_stack_1.global_100
  loc_B30E16: NextI4 var_138, loc_B30B12
  loc_B30E1B: LitVarStr var_94, "</table>"
  loc_B30E20: PopAdLdVar
  loc_B30E21: FLdPr Me
  loc_B30E24: MemLdRfVar from_stack_1.htmFile
  loc_B30E27: LdPrVar
  loc_B30E29: LateMemCall
  loc_B30E2F: LitStr "Municipalidad de Guaymallén"
  loc_B30E32: LitStr "Municipalidad de General Alvear"
  loc_B30E35: EqStr
  loc_B30E37: BranchF loc_B30E6A
  loc_B30E3A: LitVarStr var_94, "<br>"
  loc_B30E3F: PopAdLdVar
  loc_B30E40: FLdPr Me
  loc_B30E43: MemLdRfVar from_stack_1.htmFile
  loc_B30E46: LdPrVar
  loc_B30E48: LateMemCall
  loc_B30E4E: LitStr "Pase a .................................................................. a sus efectos.- "
  loc_B30E51: ImpAdLdI4 MemVar_C3D03C
  loc_B30E54: ConcatStr
  loc_B30E55: CVarStr var_B8
  loc_B30E58: PopAdLdVar
  loc_B30E59: FLdPr Me
  loc_B30E5C: MemLdRfVar from_stack_1.htmFile
  loc_B30E5F: LdPrVar
  loc_B30E61: LateMemCall
  loc_B30E67: FFree1Var var_B8 = ""
  loc_B30E6A: LitVarStr var_94, "<p>&nbsp;</p>"
  loc_B30E6F: PopAdLdVar
  loc_B30E70: FLdPr Me
  loc_B30E73: MemLdRfVar from_stack_1.htmFile
  loc_B30E76: LdPrVar
  loc_B30E78: LateMemCall
  loc_B30E7E: ExitProcHresult
End Function

Private Function Proc_203_36_9F7160() '9F7160
  'Data Table: 4C93E8
  loc_9F701C: FLdPr Me
  loc_9F701F: MemLdStr global_88
  loc_9F7022: LitI2_Byte 1
  loc_9F7024: FnUBound
  loc_9F7026: LitI4 1
  loc_9F702B: GtI4
  loc_9F702C: BranchF loc_9F706C
  loc_9F702F: LitVarStr var_94, "<br>"
  loc_9F7034: PopAdLdVar
  loc_9F7035: FLdPr Me
  loc_9F7038: MemLdRfVar from_stack_1.htmFile
  loc_9F703B: LdPrVar
  loc_9F703D: LateMemCall
  loc_9F7043: LitStr "<p class=""Normal"">Total de las recepciones listadas: <span class=""Totales"">$ "
  loc_9F7046: FLdPr Me
  loc_9F7049: MemLdStr global_92
  loc_9F704C: ConcatStr
  loc_9F704D: FStStrNoPop var_A8
  loc_9F7050: LitStr "</span></p>"
  loc_9F7053: ConcatStr
  loc_9F7054: CVarStr var_B8
  loc_9F7057: PopAdLdVar
  loc_9F7058: FLdPr Me
  loc_9F705B: MemLdRfVar from_stack_1.htmFile
  loc_9F705E: LdPrVar
  loc_9F7060: LateMemCall
  loc_9F7066: FFree1Str var_A8
  loc_9F7069: FFree1Var var_B8 = ""
  loc_9F706C: FLdRfVar var_A8
  loc_9F706F: FLdPr Me
  loc_9F7072: VCallAd Control_ID_txtPie
  loc_9F7075: FStAdFunc var_BC
  loc_9F7078: FLdPr var_BC
  loc_9F707B:  = Me.Text
  loc_9F7080: ILdRf var_A8
  loc_9F7083: LitStr vbNullString
  loc_9F7086: NeStr
  loc_9F7088: FFree1Str var_A8
  loc_9F708B: FFree1Ad var_BC
  loc_9F708E: BranchF loc_9F7136
  loc_9F7091: LitVarStr var_94, "<br>"
  loc_9F7096: PopAdLdVar
  loc_9F7097: FLdPr Me
  loc_9F709A: MemLdRfVar from_stack_1.htmFile
  loc_9F709D: LdPrVar
  loc_9F709F: LateMemCall
  loc_9F70A5: LitVarStr var_94, "<table border=""0"" align=""left"" cellspacing=""20"" class=""Normal"">"
  loc_9F70AA: PopAdLdVar
  loc_9F70AB: FLdPr Me
  loc_9F70AE: MemLdRfVar from_stack_1.htmFile
  loc_9F70B1: LdPrVar
  loc_9F70B3: LateMemCall
  loc_9F70B9: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_9F70BE: PopAdLdVar
  loc_9F70BF: FLdPr Me
  loc_9F70C2: MemLdRfVar from_stack_1.htmFile
  loc_9F70C5: LdPrVar
  loc_9F70C7: LateMemCall
  loc_9F70CD: LitStr "    <td>"
  loc_9F70D0: FLdRfVar var_A8
  loc_9F70D3: FLdPr Me
  loc_9F70D6: VCallAd Control_ID_txtPie
  loc_9F70D9: FStAdFunc var_BC
  loc_9F70DC: FLdPr var_BC
  loc_9F70DF:  = Me.Text
  loc_9F70E4: ILdRf var_A8
  loc_9F70E7: ConcatStr
  loc_9F70E8: FStStrNoPop var_C0
  loc_9F70EB: LitStr "</td>"
  loc_9F70EE: ConcatStr
  loc_9F70EF: CVarStr var_B8
  loc_9F70F2: PopAdLdVar
  loc_9F70F3: FLdPr Me
  loc_9F70F6: MemLdRfVar from_stack_1.htmFile
  loc_9F70F9: LdPrVar
  loc_9F70FB: LateMemCall
  loc_9F7101: FFreeStr var_A8 = ""
  loc_9F7108: FFree1Ad var_BC
  loc_9F710B: FFree1Var var_B8 = ""
  loc_9F710E: LitVarStr var_94, "  </tr>"
  loc_9F7113: PopAdLdVar
  loc_9F7114: FLdPr Me
  loc_9F7117: MemLdRfVar from_stack_1.htmFile
  loc_9F711A: LdPrVar
  loc_9F711C: LateMemCall
  loc_9F7122: LitVarStr var_94, "</table>"
  loc_9F7127: PopAdLdVar
  loc_9F7128: FLdPr Me
  loc_9F712B: MemLdRfVar from_stack_1.htmFile
  loc_9F712E: LdPrVar
  loc_9F7130: LateMemCall
  loc_9F7136: LitVarStr var_94, "</body>"
  loc_9F713B: PopAdLdVar
  loc_9F713C: FLdPr Me
  loc_9F713F: MemLdRfVar from_stack_1.htmFile
  loc_9F7142: LdPrVar
  loc_9F7144: LateMemCall
  loc_9F714A: LitVarStr var_94, "</html>"
  loc_9F714F: PopAdLdVar
  loc_9F7150: FLdPr Me
  loc_9F7153: MemLdRfVar from_stack_1.htmFile
  loc_9F7156: LdPrVar
  loc_9F7158: LateMemCall
  loc_9F715E: ExitProcHresult
End Function
