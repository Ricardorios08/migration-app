VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeUnidadesdeGasto
  Caption = "Listado de Unidades de Gasto"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeUnidadesdeGasto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7695
  ClientHeight = 3480
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3225
    Width = 7695
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptListadodeUnidadesdeGasto.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6240
    Top = 2280
    Width = 735
    Height = 615
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptListadodeUnidadesdeGasto.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeUnidadesdeGasto.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2040
    Width = 1815
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 3015
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1935
    TabIndex = 9
    Begin VB.TextBox DetaUngaTxt
      Left = 2160
      Top = 1320
      Width = 5055
      Height = 315
      TabIndex = 3
      MaxLength = 25
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 3240
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 2
      Picture = "rptListadodeUnidadesdeGasto.frx":0C00
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2160
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 0
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 7
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2160
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 1
      OleObjectBlob = "rptListadodeUnidadesdeGasto.frx":0CFA
    End
    Begin VB.Label Label1
      Caption = "Unidad de Gasto contiene:"
      Left = 120
      Top = 1320
      Width = 1905
      Height = 195
      TabIndex = 17
      Alignment = 1 'Right Justify
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3720
      Top = 840
      Width = 3495
      Height = 315
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 1050
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 11
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 1440
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 10
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6360
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptListadodeUnidadesdeGasto.frx":0D6E
  End
End

Attribute VB_Name = "rptListadodeUnidadesdeGasto"

Public bGenerado As Boolean

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005F18B4
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub CodiOrgaMsk_UnknownEvent_0 '950DF0
  'Data Table: 45F4A0
  loc_950DDC: FLdPr Me
  loc_950DDF: VCallAd Control_ID_CodiOrgaMsk
  loc_950DE2: CVarAd
  loc_950DE6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950DEB: FFree1Var var_94 = ""
  loc_950DEE: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A0F774
  'Data Table: 45F4A0
  loc_A0F61C: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A0F61F: FLdRfVar var_8C
  loc_A0F622: FLdPr Me
  loc_A0F625: VCallAd Control_ID_cboPeriodo
  loc_A0F628: FStAdFunc var_88
  loc_A0F62B: FLdPr var_88
  loc_A0F62E:  = Me.Text
  loc_A0F633: ILdRf var_8C
  loc_A0F636: ConcatStr
  loc_A0F637: FStStrNoPop var_90
  loc_A0F63A: LitStr " AND CodiOrga LIKE '"
  loc_A0F63D: ConcatStr
  loc_A0F63E: FStStrNoPop var_A8
  loc_A0F641: FLdPr Me
  loc_A0F644: VCallAd Control_ID_CodiOrgaMsk
  loc_A0F647: FStAdFunc var_94
  loc_A0F64A: FLdPr var_94
  loc_A0F64D: LateIdLdVar var_A4 DispID_22 0
  loc_A0F654: CStrVarTmp
  loc_A0F655: FStStrNoPop var_AC
  loc_A0F658: ConcatStr
  loc_A0F659: FStStrNoPop var_B0
  loc_A0F65C: LitStr Chr(37) & "'"
  loc_A0F65F: ConcatStr
  loc_A0F660: FStStrNoPop var_B4
  loc_A0F663: FLdPr Me
  loc_A0F666: MemLdRfVar from_stack_1.global_60
  loc_A0F669: NewIfNullPr clsorganigrama
  loc_A0F66C: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0F671: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0F680: FFreeAd var_88 = ""
  loc_A0F687: FFree1Var var_A4 = ""
  loc_A0F68A: FLdRfVar var_B8
  loc_A0F68D: FLdPr Me
  loc_A0F690: MemLdRfVar from_stack_1.global_60
  loc_A0F693: NewIfNullPr clsorganigrama
  loc_A0F696: from_stack_1 = clsorganigrama.RecordCount
  loc_A0F69B: ILdRf var_B8
  loc_A0F69E: FStR4 var_BC
  loc_A0F6A1: ILdRf var_BC
  loc_A0F6A4: LitI4 0
  loc_A0F6A9: EqI4
  loc_A0F6AA: BranchF loc_A0F6C7
  loc_A0F6AD: LitStr "0 registros encontrados"
  loc_A0F6B0: FLdPr Me
  loc_A0F6B3: VCallAd Control_ID_CodiOrgaLbl
  loc_A0F6B6: FStAdFunc var_88
  loc_A0F6B9: FLdPr var_88
  loc_A0F6BC: Me.Caption = from_stack_1
  loc_A0F6C1: FFree1Ad var_88
  loc_A0F6C4: Branch loc_A0F772
  loc_A0F6C7: ILdRf var_BC
  loc_A0F6CA: LitI4 1
  loc_A0F6CF: EqI4
  loc_A0F6D0: BranchF loc_A0F737
  loc_A0F6D3: FLdRfVar var_A4
  loc_A0F6D6: FLdRfVar var_D0
  loc_A0F6D9: LitVarStr var_CC, "DetaOrga"
  loc_A0F6DE: PopAdLdVar
  loc_A0F6DF: FLdRfVar var_94
  loc_A0F6E2: FLdRfVar var_88
  loc_A0F6E5: FLdPr Me
  loc_A0F6E8: MemLdRfVar from_stack_1.global_60
  loc_A0F6EB: NewIfNullPr clsorganigrama
  loc_A0F6EE: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0F6F3: FLdPr var_88
  loc_A0F6F6:  = Me.Fields
  loc_A0F6FB: FLdPr var_94
  loc_A0F6FE: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F703: FLdPr var_D0
  loc_A0F706:  = Me.Value
  loc_A0F70B: FLdRfVar var_A4
  loc_A0F70E: CStrVarTmp
  loc_A0F70F: FStStrNoPop var_8C
  loc_A0F712: FLdPr Me
  loc_A0F715: VCallAd Control_ID_CodiOrgaLbl
  loc_A0F718: FStAdFunc var_D4
  loc_A0F71B: FLdPr var_D4
  loc_A0F71E: Me.Caption = from_stack_1
  loc_A0F723: FFree1Str var_8C
  loc_A0F726: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0F731: FFree1Var var_A4 = ""
  loc_A0F734: Branch loc_A0F772
  loc_A0F737: FLdRfVar var_B8
  loc_A0F73A: FLdPr Me
  loc_A0F73D: MemLdRfVar from_stack_1.global_60
  loc_A0F740: NewIfNullPr clsorganigrama
  loc_A0F743: from_stack_1 = clsorganigrama.RecordCount
  loc_A0F748: ILdRf var_B8
  loc_A0F74B: CStrI4
  loc_A0F74D: FStStrNoPop var_8C
  loc_A0F750: LitStr " organigramas encontrados"
  loc_A0F753: ConcatStr
  loc_A0F754: FStStrNoPop var_90
  loc_A0F757: FLdPr Me
  loc_A0F75A: VCallAd Control_ID_CodiOrgaLbl
  loc_A0F75D: FStAdFunc var_88
  loc_A0F760: FLdPr var_88
  loc_A0F763: Me.Caption = from_stack_1
  loc_A0F768: FFreeStr var_8C = ""
  loc_A0F76F: FFree1Ad var_88
  loc_A0F772: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9649CC
  'Data Table: 45F4A0
  loc_9649B4: LitI2_Byte 0
  loc_9649B6: ILdRf Me
  loc_9649B9: CastAd
  loc_9649BC: FStAdFunc var_88
  loc_9649BF: FLdRfVar var_88
  loc_9649C2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9649C7: FFree1Ad var_88
  loc_9649CA: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A694
  'Data Table: 45F4A0
  loc_98A65C: FLdPr Me
  loc_98A65F: VCallAd Control_ID_statusBar
  loc_98A662: FStAdFunc var_88
  loc_98A665: FLdPr var_88
  loc_98A668: LateIdLdVar var_98 DispID_1 0
  loc_98A66F: CStrVarTmp
  loc_98A670: CVarStr var_A8
  loc_98A673: PopAdLdVar
  loc_98A674: FLdPr Me
  loc_98A677: VCallAd Control_ID_statusBar
  loc_98A67A: FStAdFunc var_BC
  loc_98A67D: FLdPr var_BC
  loc_98A680: LateIdSt
  loc_98A685: FFreeAd var_88 = ""
  loc_98A68C: FFreeVar var_98 = ""
  loc_98A693: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A77C4
  'Data Table: 45F4A0
  loc_9A7734: LitI2_Byte 0
  loc_9A7736: FLdPr Me
  loc_9A7739: MemStI2 bGenerado
  loc_9A773C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A7741: ImpAdLdI2 MemVar_C3D064
  loc_9A7744: CStrUI1
  loc_9A7746: FStStrNoPop var_88
  loc_9A7749: FLdPr Me
  loc_9A774C: VCallAd Control_ID_cboPeriodo
  loc_9A774F: FStAdFunc var_8C
  loc_9A7752: FLdPr var_8C
  loc_9A7755: Me.Text = from_stack_1
  loc_9A775A: FFree1Str var_88
  loc_9A775D: FFree1Ad var_8C
  loc_9A7760: LitVarStr var_9C, vbNullString
  loc_9A7765: PopAdLdVar
  loc_9A7766: FLdPr Me
  loc_9A7769: VCallAd Control_ID_CodiOrgaMsk
  loc_9A776C: FStAdFunc var_8C
  loc_9A776F: FLdPr var_8C
  loc_9A7772: LateIdSt
  loc_9A7777: FFree1Ad var_8C
  loc_9A777A: LitStr vbNullString
  loc_9A777D: FLdPr Me
  loc_9A7780: VCallAd Control_ID_CodiOrgaLbl
  loc_9A7783: FStAdFunc var_8C
  loc_9A7786: FLdPr var_8C
  loc_9A7789: Me.Caption = from_stack_1
  loc_9A778E: FFree1Ad var_8C
  loc_9A7791: LitStr vbNullString
  loc_9A7794: FLdPr Me
  loc_9A7797: VCallAd Control_ID_DetaUngaTxt
  loc_9A779A: FStAdFunc var_8C
  loc_9A779D: FLdPr var_8C
  loc_9A77A0: Me.Text = from_stack_1
  loc_9A77A5: FFree1Ad var_8C
  loc_9A77A8: Call HabilitarCriterio()
  loc_9A77AD: ILdRf Me
  loc_9A77B0: CastAd
  loc_9A77B3: FStAdFunc var_8C
  loc_9A77B6: FLdRfVar var_8C
  loc_9A77B9: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A77BE: FFree1Ad var_8C
  loc_9A77C1: ExitProcHresult
  loc_9A77C2: CStrVarTmp
End Sub

Private Sub cmdSalir_Click() '97ACBC
  'Data Table: 45F4A0
  loc_97AC8C: LitVarStr var_94, "Cerrando..."
  loc_97AC91: PopAdLdVar
  loc_97AC92: FLdPr Me
  loc_97AC95: VCallAd Control_ID_statusBar
  loc_97AC98: FStAdFunc var_A8
  loc_97AC9B: FLdPr var_A8
  loc_97AC9E: LateIdSt
  loc_97ACA3: FFree1Ad var_A8
  loc_97ACA6: ILdRf Me
  loc_97ACA9: FStAdNoPop
  loc_97ACAD: ImpAdLdRf MemVar_C44F9C
  loc_97ACB0: NewIfNullPr Me
  loc_97ACB3: Me.Global.Unload from_stack_1
  loc_97ACB8: FFree1Ad var_A8
  loc_97ACBB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9648E8
  'Data Table: 45F4A0
  loc_9648D0: ILdRf Me
  loc_9648D3: CastAd
  loc_9648D6: FStAdFunc var_88
  loc_9648D9: FLdRfVar var_88
  loc_9648DC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9648E1: FFree1Ad var_88
  loc_9648E4: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '964934
  'Data Table: 45F4A0
  loc_96491C: ILdRf Me
  loc_96491F: CastAd
  loc_964922: FStAdFunc var_88
  loc_964925: FLdRfVar var_88
  loc_964928: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_96492D: FFree1Ad var_88
  loc_964930: ExitProcHresult
  loc_964931: FLdPrThis
  loc_964932: Erase
End Sub

Private Sub DetaUngaTxt_GotFocus() '950E38
  'Data Table: 45F4A0
  loc_950E24: FLdPr Me
  loc_950E27: VCallAd Control_ID_DetaUngaTxt
  loc_950E2A: CVarAd
  loc_950E2E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950E33: FFree1Var var_94 = ""
  loc_950E36: ExitProcHresult
End Sub

Private Sub DetaUngaTxt_Validate(Cancel As Boolean) '9B5160
  'Data Table: 45F4A0
  loc_9B50BC: FLdRfVar var_8C
  loc_9B50BF: FLdPr Me
  loc_9B50C2: VCallAd Control_ID_DetaUngaTxt
  loc_9B50C5: FStAdFunc var_88
  loc_9B50C8: FLdPr var_88
  loc_9B50CB:  = Me.Text
  loc_9B50D0: ILdRf var_8C
  loc_9B50D3: LitStr vbNullString
  loc_9B50D6: NeStr
  loc_9B50D8: FFree1Str var_8C
  loc_9B50DB: FFree1Ad var_88
  loc_9B50DE: BranchF loc_9B515F
  loc_9B50E1: FLdRfVar var_8C
  loc_9B50E4: FLdPr Me
  loc_9B50E7: VCallAd Control_ID_DetaUngaTxt
  loc_9B50EA: FStAdFunc var_88
  loc_9B50ED: FLdPr var_88
  loc_9B50F0:  = Me.Text
  loc_9B50F5: LitI2_Byte 0
  loc_9B50F7: PopTmpLdAd2 var_92
  loc_9B50FA: LitI2_Byte 0
  loc_9B50FC: PopTmpLdAd2 var_90
  loc_9B50FF: LitI2_Byte 0
  loc_9B5101: PopTmpLdAd2 var_8E
  loc_9B5104: ILdRf var_8C
  loc_9B5107: LitStr "Detalle de Unidad de Gasto"
  loc_9B510A: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9B510F: FStStrNoPop var_98
  loc_9B5112: FLdPr Me
  loc_9B5115: MemStStrCopy
  loc_9B5119: FFreeStr var_8C = ""
  loc_9B5120: FFree1Ad var_88
  loc_9B5123: FLdPr Me
  loc_9B5126: VCallAd Control_ID_DetaUngaTxt
  loc_9B5129: FStAdFunc var_A4
  loc_9B512C: LitNothing
  loc_9B512E: CastAd
  loc_9B5131: FStAdFunc var_A0
  loc_9B5134: FLdRfVar var_A0
  loc_9B5137: FLdZeroAd var_A4
  loc_9B513A: FStAdFuncNoPop
  loc_9B513D: CastAd
  loc_9B5140: FStAdFunc var_9C
  loc_9B5143: FLdRfVar var_9C
  loc_9B5146: FLdPr Me
  loc_9B5149: MemLdRfVar from_stack_1.global_92
  loc_9B514C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B5151: IStI2 Cancel
  loc_9B5154: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9B515F: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9F9C40
  'Data Table: 45F4A0
  loc_9F9B04: LitI2_Byte &HFF
  loc_9F9B06: ImpAdLdRf MemVar_C3D710
  loc_9F9B09: NewIfNullPr bscOrganigrama
  loc_9F9B0C: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9F9B11: LitNothing
  loc_9F9B13: CastAd
  loc_9F9B16: FStAdFuncNoPop
  loc_9F9B19: ImpAdLdRf MemVar_C3D710
  loc_9F9B1C: NewIfNullPr bscOrganigrama
  loc_9F9B1F: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9F9B24: FFree1Ad var_88
  loc_9F9B27: LitVar_Missing var_A8
  loc_9F9B2A: PopAdLdVar
  loc_9F9B2B: LitVarI4
  loc_9F9B33: PopAdLdVar
  loc_9F9B34: ImpAdLdRf MemVar_C3D710
  loc_9F9B37: NewIfNullPr bscOrganigrama
  loc_9F9B3A: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9F9B3F: FLdRfVar var_AC
  loc_9F9B42: FLdRfVar var_88
  loc_9F9B45: ImpAdLdRf MemVar_C3D710
  loc_9F9B48: NewIfNullPr bscOrganigrama
  loc_9F9B4B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9B50: FLdPr var_88
  loc_9F9B53: from_stack_1 = clsbase.RecordCount
  loc_9F9B58: ILdRf var_AC
  loc_9F9B5B: LitI4 0
  loc_9F9B60: GtI4
  loc_9F9B61: FFree1Ad var_88
  loc_9F9B64: BranchF loc_9F9C3F
  loc_9F9B67: FLdRfVar var_C8
  loc_9F9B6A: FLdRfVar var_B8
  loc_9F9B6D: LitVarStr var_98, "CodiOrga"
  loc_9F9B72: PopAdLdVar
  loc_9F9B73: FLdRfVar var_B4
  loc_9F9B76: FLdRfVar var_B0
  loc_9F9B79: FLdRfVar var_88
  loc_9F9B7C: ImpAdLdRf MemVar_C3D710
  loc_9F9B7F: NewIfNullPr bscOrganigrama
  loc_9F9B82: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9B87: FLdPr var_88
  loc_9F9B8A: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9B8F: FLdPr var_B0
  loc_9F9B92:  = Me.Fields
  loc_9F9B97: FLdPr var_B4
  loc_9F9B9A: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9B9F: FLdPr var_B8
  loc_9F9BA2:  = Me.Value
  loc_9F9BA7: FLdRfVar var_C8
  loc_9F9BAA: CStrVarTmp
  loc_9F9BAB: CVarStr var_D8
  loc_9F9BAE: PopAdLdVar
  loc_9F9BAF: FLdPr Me
  loc_9F9BB2: VCallAd Control_ID_CodiOrgaMsk
  loc_9F9BB5: FStAdFunc var_DC
  loc_9F9BB8: FLdPr var_DC
  loc_9F9BBB: LateIdSt
  loc_9F9BC0: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9BCD: FFreeVar var_C8 = ""
  loc_9F9BD4: FLdRfVar var_C8
  loc_9F9BD7: FLdRfVar var_B8
  loc_9F9BDA: LitVarStr var_98, "DetaOrga"
  loc_9F9BDF: PopAdLdVar
  loc_9F9BE0: FLdRfVar var_B4
  loc_9F9BE3: FLdRfVar var_B0
  loc_9F9BE6: FLdRfVar var_88
  loc_9F9BE9: ImpAdLdRf MemVar_C3D710
  loc_9F9BEC: NewIfNullPr bscOrganigrama
  loc_9F9BEF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9BF4: FLdPr var_88
  loc_9F9BF7: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9BFC: FLdPr var_B0
  loc_9F9BFF:  = Me.Fields
  loc_9F9C04: FLdPr var_B4
  loc_9F9C07: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9C0C: FLdPr var_B8
  loc_9F9C0F:  = Me.Value
  loc_9F9C14: FLdRfVar var_C8
  loc_9F9C17: CStrVarTmp
  loc_9F9C18: FStStrNoPop var_E0
  loc_9F9C1B: FLdPr Me
  loc_9F9C1E: VCallAd Control_ID_CodiOrgaLbl
  loc_9F9C21: FStAdFunc var_DC
  loc_9F9C24: FLdPr var_DC
  loc_9F9C27: Me.Caption = from_stack_1
  loc_9F9C2C: FFree1Str var_E0
  loc_9F9C2F: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9C3C: FFree1Var var_C8 = ""
  loc_9F9C3F: ExitProcHresult
End Sub

Private Sub Form_Load() '9DA6B0
  'Data Table: 45F4A0
  loc_9DA5C0: LitVarStr var_94, "######"
  loc_9DA5C5: PopAdLdVar
  loc_9DA5C6: FLdPr Me
  loc_9DA5C9: VCallAd Control_ID_CodiOrgaMsk
  loc_9DA5CC: FStAdFunc var_A8
  loc_9DA5CF: FLdPr var_A8
  loc_9DA5D2: LateIdSt
  loc_9DA5D7: FFree1Ad var_A8
  loc_9DA5DA: LitI2_Byte &HFF
  loc_9DA5DC: ImpAdStI2 MemVar_C3D840
  loc_9DA5DF: ILdRf Me
  loc_9DA5E2: CastAd
  loc_9DA5E5: FStAdFunc var_A8
  loc_9DA5E8: FLdRfVar var_A8
  loc_9DA5EB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9DA5F0: FFree1Ad var_A8
  loc_9DA5F3: FLdRfVar var_AC
  loc_9DA5F6: NewIfNullAd
  loc_9DA5F9: FStAd var_B0 
  loc_9DA5FD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9DA600: FLdPr var_B0
  loc_9DA603: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9DA608: FLdRfVar var_B4
  loc_9DA60B: FLdPr var_B0
  loc_9DA60E: from_stack_1 = clsperiodo.RecordCount
  loc_9DA613: ILdRf var_B4
  loc_9DA616: LitI4 0
  loc_9DA61B: GtI4
  loc_9DA61C: BranchF loc_9DA6A3
  loc_9DA61F: FLdPr var_B0
  loc_9DA622: Call clsperiodo.MoveFirst()
  loc_9DA627: FLdRfVar var_B6
  loc_9DA62A: FLdPr var_B0
  loc_9DA62D: from_stack_1 = clsperiodo.EOF
  loc_9DA632: FLdI2 var_B6
  loc_9DA635: NotI4
  loc_9DA636: BranchF loc_9DA6A3
  loc_9DA639: LitVar_Missing var_A4
  loc_9DA63C: PopAdLdVar
  loc_9DA63D: FLdRfVar var_D0
  loc_9DA640: FLdRfVar var_C0
  loc_9DA643: LitVarStr var_94, "PeriInfo"
  loc_9DA648: PopAdLdVar
  loc_9DA649: FLdRfVar var_BC
  loc_9DA64C: FLdRfVar var_A8
  loc_9DA64F: FLdPr var_B0
  loc_9DA652: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9DA657: FLdPr var_A8
  loc_9DA65A:  = Me.Fields
  loc_9DA65F: FLdPr var_BC
  loc_9DA662: from_stack_2 = Me.Item(from_stack_1)
  loc_9DA667: FLdPr var_C0
  loc_9DA66A:  = Me.Value
  loc_9DA66F: FLdRfVar var_D0
  loc_9DA672: CStrVarTmp
  loc_9DA673: FStStrNoPop var_D4
  loc_9DA676: FLdPr Me
  loc_9DA679: VCallAd Control_ID_cboPeriodo
  loc_9DA67C: FStAdFunc var_D8
  loc_9DA67F: FLdPr var_D8
  loc_9DA682: Me.AddItem from_stack_1, from_stack_2
  loc_9DA687: FFree1Str var_D4
  loc_9DA68A: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_9DA695: FFree1Var var_D0 = ""
  loc_9DA698: FLdPr var_B0
  loc_9DA69B: Call clsperiodo.MoveSiguiente()
  loc_9DA6A0: Branch loc_9DA627
  loc_9DA6A3: LitNothing
  loc_9DA6A5: FStAd var_B0 
  loc_9DA6A9: Call cmdNueva_Click()
  loc_9DA6AE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '964A64
  'Data Table: 45F4A0
  loc_964A4C: FLdPr Me
  loc_964A4F: VCallAd Control_ID_wbbReporte
  loc_964A52: FStAdFunc var_88
  loc_964A55: FLdRfVar var_88
  loc_964A58: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_964A5D: FFree1Ad var_88
  loc_964A60: ExitProcHresult
End Sub

Public Function bGeneradoGet() '460228
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '460237
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A143C
  'Data Table: 45F4A0
  loc_9A13D8: LitI4 0
  loc_9A13DD: LitI4 3
  loc_9A13E2: FLdRfVar var_88
  loc_9A13E5: Redim
  loc_9A13EF: FLdPr Me
  loc_9A13F2: VCallAd Control_ID_cboPeriodo
  loc_9A13F5: CVarAd
  loc_9A13F9: ParmAry1St
  loc_9A13FF: FLdPr Me
  loc_9A1402: VCallAd Control_ID_CodiOrgaMsk
  loc_9A1405: CVarAd
  loc_9A1409: ParmAry1St
  loc_9A140F: FLdPr Me
  loc_9A1412: VCallAd Control_ID_cmdCodiOrga
  loc_9A1415: CVarAd
  loc_9A1419: ParmAry1St
  loc_9A141F: FLdPr Me
  loc_9A1422: VCallAd Control_ID_DetaUngaTxt
  loc_9A1425: CVarAd
  loc_9A1429: ParmAry1St
  loc_9A142F: FLdRfVar var_88
  loc_9A1432: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1437: FLdRfVar var_88
  loc_9A143A: Erase
  loc_9A143B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A68A48
  'Data Table: 45F4A0
  loc_A68710: OnErrorGoto loc_A689E2
  loc_A68713: FLdPr Me
  loc_A68716: MemLdI2 bGenerado
  loc_A68719: BranchF loc_A6871D
  loc_A6871C: ExitProcHresult
  loc_A6871D: LitVarStr var_9C, "Generando reporte..."
  loc_A68722: PopAdLdVar
  loc_A68723: FLdPr Me
  loc_A68726: VCallAd Control_ID_statusBar
  loc_A68729: FStAdFunc var_B0
  loc_A6872C: FLdPr var_B0
  loc_A6872F: LateIdSt
  loc_A68734: FFree1Ad var_B0
  loc_A68737: LitI4 &HB
  loc_A6873C: CI2I4
  loc_A6873D: FLdPr Me
  loc_A68740: Me.MousePointer = from_stack_1
  loc_A68745: LitI2_Byte 0
  loc_A68747: PopTmpLdAd2 var_B2
  loc_A6874A: Call CodiOrgaMsk_UnknownEvent_8()
  loc_A6874F: LitI2_Byte 0
  loc_A68751: PopTmpLdAd2 var_B2
  loc_A68754: Call DetaUngaTxt_Validate(from_stack_1v)
  loc_A68759: FLdPr Me
  loc_A6875C: MemLdStr global_92
  loc_A6875F: LitStr vbNullString
  loc_A68762: NeStr
  loc_A68764: BranchF loc_A6876A
  loc_A68767: Branch loc_A689B9
  loc_A6876A: FLdPr Me
  loc_A6876D: VCallAd Control_ID_CodiOrgaMsk
  loc_A68770: FStAdFunc var_B0
  loc_A68773: FLdPr var_B0
  loc_A68776: LateIdLdVar var_C4 DispID_22 0
  loc_A6877D: PopAd
  loc_A6877F: FLdPr Me
  loc_A68782: VCallAd Control_ID_CodiOrgaMsk
  loc_A68785: FStAdFunc var_CC
  loc_A68788: FLdPr var_CC
  loc_A6878B: LateIdLdVar var_DC DispID_22 0
  loc_A68792: PopAd
  loc_A68794: LitVarStr var_AC, vbNullString
  loc_A68799: FStVarCopyObj var_104
  loc_A6879C: FLdRfVar var_104
  loc_A6879F: LitStr " AND u.CodiOrga LIKE '"
  loc_A687A2: FLdRfVar var_DC
  loc_A687A5: CStrVarTmp
  loc_A687A6: FStStrNoPop var_E0
  loc_A687A9: ConcatStr
  loc_A687AA: FStStrNoPop var_E4
  loc_A687AD: LitStr Chr(37) & "'"
  loc_A687B0: ConcatStr
  loc_A687B1: CVarStr var_F4
  loc_A687B4: FLdRfVar var_C4
  loc_A687B7: CStrVarTmp
  loc_A687B8: FStStrNoPop var_C8
  loc_A687BB: LitStr vbNullString
  loc_A687BE: NeStr
  loc_A687C0: CVarBoolI2 var_9C
  loc_A687C4: FLdRfVar var_114
  loc_A687C7: ImpAdCallFPR4  = IIf(, , )
  loc_A687CC: FLdRfVar var_114
  loc_A687CF: CStrVarTmp
  loc_A687D0: FStStr var_88
  loc_A687D3: FFreeStr var_C8 = "": var_E0 = ""
  loc_A687DC: FFreeAd var_B0 = ""
  loc_A687E3: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F4 = "": var_104 = ""
  loc_A687F2: FLdRfVar var_C8
  loc_A687F5: FLdPr Me
  loc_A687F8: VCallAd Control_ID_DetaUngaTxt
  loc_A687FB: FStAdFunc var_B0
  loc_A687FE: FLdPr var_B0
  loc_A68801:  = Me.Text
  loc_A68806: FLdRfVar var_E0
  loc_A68809: FLdPr Me
  loc_A6880C: VCallAd Control_ID_DetaUngaTxt
  loc_A6880F: FStAdFunc var_CC
  loc_A68812: FLdPr var_CC
  loc_A68815:  = Me.Text
  loc_A6881A: LitVarStr var_AC, vbNullString
  loc_A6881F: FStVarCopyObj var_DC
  loc_A68822: FLdRfVar var_DC
  loc_A68825: LitStr " AND DetaUnga LIKE '" & Chr(37)
  loc_A68828: ILdRf var_E0
  loc_A6882B: ConcatStr
  loc_A6882C: FStStrNoPop var_E4
  loc_A6882F: LitStr Chr(37) & "'"
  loc_A68832: ConcatStr
  loc_A68833: CVarStr var_C4
  loc_A68836: ILdRf var_C8
  loc_A68839: LitStr vbNullString
  loc_A6883C: NeStr
  loc_A6883E: CVarBoolI2 var_9C
  loc_A68842: FLdRfVar var_F4
  loc_A68845: ImpAdCallFPR4  = IIf(, , )
  loc_A6884A: FLdRfVar var_F4
  loc_A6884D: CStrVarTmp
  loc_A6884E: FStStr var_8C
  loc_A68851: FFreeStr var_C8 = "": var_E0 = ""
  loc_A6885A: FFreeAd var_B0 = ""
  loc_A68861: FFreeVar var_9C = "": var_C4 = "": var_DC = ""
  loc_A6886C: FLdPr Me
  loc_A6886F: MemLdRfVar from_stack_1.global_56
  loc_A68872: NewIfNullAd
  loc_A68875: FStAd var_118 
  loc_A68879: LitStr "SELECT u.CodiOrga, DetaOrga, CodiUnga, DetaUnga FROM unidadgasto as u"
  loc_A6887C: LitStr " LEFT JOIN infogov.organigrama as o ON o.PeriInfo = u.PeriInfo AND o.CodiOrga = u.CodiOrga"
  loc_A6887F: ConcatStr
  loc_A68880: FStStrNoPop var_C8
  loc_A68883: LitStr " WHERE u.PeriInfo = "
  loc_A68886: ConcatStr
  loc_A68887: FStStrNoPop var_E4
  loc_A6888A: FLdRfVar var_E0
  loc_A6888D: FLdPr Me
  loc_A68890: VCallAd Control_ID_cboPeriodo
  loc_A68893: FStAdFunc var_B0
  loc_A68896: FLdPr var_B0
  loc_A68899:  = Me.Text
  loc_A6889E: ILdRf var_E0
  loc_A688A1: ConcatStr
  loc_A688A2: FStStrNoPop var_11C
  loc_A688A5: ILdRf var_88
  loc_A688A8: ConcatStr
  loc_A688A9: FStStrNoPop var_120
  loc_A688AC: ILdRf var_8C
  loc_A688AF: ConcatStr
  loc_A688B0: FStStrNoPop var_124
  loc_A688B3: LitStr " ORDER BY u.CodiOrga, CodiUnga"
  loc_A688B6: ConcatStr
  loc_A688B7: FStStrNoPop var_128
  loc_A688BA: FLdPr var_118
  loc_A688BD: Call clsunidadgasto.RedefineRS(from_stack_1v)
  loc_A688C2: FFreeStr var_C8 = "": var_E4 = "": var_E0 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A688D3: FFree1Ad var_B0
  loc_A688D6: FLdRfVar var_12C
  loc_A688D9: FLdPr var_118
  loc_A688DC: from_stack_1 = clsunidadgasto.RecordCount
  loc_A688E1: ILdRf var_12C
  loc_A688E4: LitI4 0
  loc_A688E9: EqI4
  loc_A688EA: BranchF loc_A688FD
  loc_A688ED: LitI4 0
  loc_A688F2: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A688F5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A688FA: Branch loc_A689B9
  loc_A688FD: LitI2_Byte 0
  loc_A688FF: FLdPr Me
  loc_A68902: MemStI2 global_88
  loc_A68905: LitI4 0
  loc_A6890A: FLdPr Me
  loc_A6890D: MemLdI2 global_88
  loc_A68910: CI4UI1
  loc_A68911: FLdPr Me
  loc_A68914: MemLdRfVar from_stack_1.global_84
  loc_A68917: Redim
  loc_A68921: FLdPr var_118
  loc_A68924: Call clsunidadgasto.MoveFirst()
  loc_A68929: Call Proc_207_18_9E1424()
  loc_A6892E: FLdRfVar var_B2
  loc_A68931: FLdPr var_118
  loc_A68934: from_stack_1 = clsunidadgasto.EOF
  loc_A68939: FLdI2 var_B2
  loc_A6893C: NotI4
  loc_A6893D: BranchF loc_A689AB
  loc_A68940: FLdRfVar var_C4
  loc_A68943: FLdRfVar var_130
  loc_A68946: LitVarStr var_9C, "CodiOrga"
  loc_A6894B: PopAdLdVar
  loc_A6894C: FLdRfVar var_CC
  loc_A6894F: FLdRfVar var_B0
  loc_A68952: FLdPr var_118
  loc_A68955: from_stack_1v = clsunidadgasto.RsFrmGet()
  loc_A6895A: FLdPr var_B0
  loc_A6895D:  = Me.Fields
  loc_A68962: FLdPr var_CC
  loc_A68965: from_stack_2 = Me.Item(from_stack_1)
  loc_A6896A: FLdPr var_130
  loc_A6896D:  = Me.Value
  loc_A68972: FLdRfVar var_C4
  loc_A68975: FLdPr Me
  loc_A68978: MemLdI2 global_88
  loc_A6897B: CI4UI1
  loc_A6897C: FLdPr Me
  loc_A6897F: MemLdStr global_84
  loc_A68982: Ary1LdPr
  loc_A68983: MemLdStr global_0
  loc_A68986: CVarStr var_AC
  loc_A68989: HardType
  loc_A6898A: NeVarBool
  loc_A6898C: FFreeAd var_B0 = "": var_CC = ""
  loc_A68995: FFree1Var var_C4 = ""
  loc_A68998: BranchF loc_A689A3
  loc_A6899B: Call Proc_207_18_9E1424()
  loc_A689A0: Branch loc_A689A8
  loc_A689A3: Call Proc_207_19_A47154()
  loc_A689A8: Branch loc_A6892E
  loc_A689AB: LitNothing
  loc_A689AD: FStAd var_118 
  loc_A689B1: LitI2_Byte &HFF
  loc_A689B3: FLdPr Me
  loc_A689B6: MemStI2 bGenerado
  loc_A689B9: LitI4 0
  loc_A689BE: CI2I4
  loc_A689BF: FLdPr Me
  loc_A689C2: Me.MousePointer = from_stack_1
  loc_A689C7: LitVarStr var_9C, vbNullString
  loc_A689CC: PopAdLdVar
  loc_A689CD: FLdPr Me
  loc_A689D0: VCallAd Control_ID_statusBar
  loc_A689D3: FStAdFunc var_B0
  loc_A689D6: FLdPr var_B0
  loc_A689D9: LateIdSt
  loc_A689DE: FFree1Ad var_B0
  loc_A689E1: ExitProcHresult
  loc_A689E2: LitI4 0
  loc_A689E7: LitStr "Error "
  loc_A689EA: FLdRfVar var_12C
  loc_A689ED: ImpAdCallI2 Err 'rtcErrObj
  loc_A689F2: FStAdFunc var_B0
  loc_A689F5: FLdPr var_B0
  loc_A689F8:  = Err.Number
  loc_A689FD: ILdRf var_12C
  loc_A68A00: CStrI4
  loc_A68A02: FStStrNoPop var_C8
  loc_A68A05: ConcatStr
  loc_A68A06: FStStrNoPop var_E0
  loc_A68A09: LitStr ": "
  loc_A68A0C: ConcatStr
  loc_A68A0D: FStStrNoPop var_11C
  loc_A68A10: FLdRfVar var_E4
  loc_A68A13: ImpAdCallI2 Err 'rtcErrObj
  loc_A68A18: FStAdFunc var_CC
  loc_A68A1B: FLdPr var_CC
  loc_A68A1E:  = Err.Description
  loc_A68A23: ILdRf var_E4
  loc_A68A26: ConcatStr
  loc_A68A27: FStStrNoPop var_120
  loc_A68A2A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A68A2F: FFreeStr var_C8 = "": var_E0 = "": var_11C = "": var_E4 = ""
  loc_A68A3C: FFreeAd var_B0 = ""
  loc_A68A43: ExitProcHresult
  loc_A68A44: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A2507C
  'Data Table: 45F4A0
  loc_A24ED0: FLdRfVar var_88
  loc_A24ED3: LitI2_Byte 0
  loc_A24ED5: LitI2_Byte &HFF
  loc_A24ED7: ImpAdLdI4 MemVar_C3D83C
  loc_A24EDA: FLdPr Me
  loc_A24EDD: MemLdRfVar from_stack_1.global_64
  loc_A24EE0: NewIfNullPr IFileSystem3
  loc_A24EE3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A24EE8: ILdRf var_88
  loc_A24EEB: FLdPr Me
  loc_A24EEE: MemStVarAd
  loc_A24EF2: FFree1Ad var_88
  loc_A24EF5: Call Proc_207_20_AEB274()
  loc_A24EFA: LitI2_Byte 1
  loc_A24EFC: FLdPr Me
  loc_A24EFF: MemLdRfVar from_stack_1.global_88
  loc_A24F02: FLdPr Me
  loc_A24F05: MemLdStr global_84
  loc_A24F08: LitI2_Byte 1
  loc_A24F0A: FnUBound
  loc_A24F0C: CI2I4
  loc_A24F0D: ForI2 var_8C
  loc_A24F13: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A24F18: PopAdLdVar
  loc_A24F19: FLdPr Me
  loc_A24F1C: MemLdRfVar from_stack_1.global_68
  loc_A24F1F: LdPrVar
  loc_A24F21: LateMemCall
  loc_A24F27: FLdPr Me
  loc_A24F2A: MemLdI2 global_88
  loc_A24F2D: CI4UI1
  loc_A24F2E: FLdPr Me
  loc_A24F31: MemLdStr global_84
  loc_A24F34: AryLock
  loc_A24F37: Ary1LdRf
  loc_A24F38: FStR4 var_B4
  loc_A24F3B: LitStr "  <td rowspan="""
  loc_A24F3E: FMemLdR4 var_B4(8)
  loc_A24F43: LitI2_Byte 1
  loc_A24F45: FnUBound
  loc_A24F47: CStrI4
  loc_A24F49: FStStrNoPop var_B8
  loc_A24F4C: ConcatStr
  loc_A24F4D: FStStrNoPop var_BC
  loc_A24F50: LitStr """ align=""left"">"
  loc_A24F53: ConcatStr
  loc_A24F54: FStStrNoPop var_C0
  loc_A24F57: FMemLdR4 var_B4(0)
  loc_A24F5C: ConcatStr
  loc_A24F5D: FStStrNoPop var_C4
  loc_A24F60: LitStr " - "
  loc_A24F63: ConcatStr
  loc_A24F64: FStStrNoPop var_C8
  loc_A24F67: FMemLdR4 var_B4(4)
  loc_A24F6C: ConcatStr
  loc_A24F6D: FStStrNoPop var_CC
  loc_A24F70: LitStr "</td>"
  loc_A24F73: ConcatStr
  loc_A24F74: CVarStr var_DC
  loc_A24F77: PopAdLdVar
  loc_A24F78: FLdPr Me
  loc_A24F7B: MemLdRfVar from_stack_1.global_68
  loc_A24F7E: LdPrVar
  loc_A24F80: LateMemCall
  loc_A24F86: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_A24F95: FFree1Var var_DC = ""
  loc_A24F98: LitI2_Byte 1
  loc_A24F9A: FLdPr Me
  loc_A24F9D: MemLdRfVar from_stack_1.global_90
  loc_A24FA0: FMemLdR4 var_B4(8)
  loc_A24FA5: LitI2_Byte 1
  loc_A24FA7: FnUBound
  loc_A24FA9: CI2I4
  loc_A24FAA: ForI2 var_E0
  loc_A24FB0: FLdPr Me
  loc_A24FB3: MemLdI2 global_90
  loc_A24FB6: LitI2_Byte 1
  loc_A24FB8: GtI2
  loc_A24FB9: BranchF loc_A24FD0
  loc_A24FBC: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A24FC1: PopAdLdVar
  loc_A24FC2: FLdPr Me
  loc_A24FC5: MemLdRfVar from_stack_1.global_68
  loc_A24FC8: LdPrVar
  loc_A24FCA: LateMemCall
  loc_A24FD0: LitI4 0
  loc_A24FD5: LitI4 0
  loc_A24FDA: LitI2_Byte 0
  loc_A24FDC: LitStr "left"
  loc_A24FDF: FLdPr Me
  loc_A24FE2: MemLdI2 global_90
  loc_A24FE5: CI4UI1
  loc_A24FE6: FMemLdR4 var_B4(8)
  loc_A24FEB: Ary1LdPr
  loc_A24FEC: MemLdStr global_0
  loc_A24FEF: LitStr " - "
  loc_A24FF2: ConcatStr
  loc_A24FF3: FStStrNoPop var_B8
  loc_A24FF6: FLdPr Me
  loc_A24FF9: MemLdI2 global_90
  loc_A24FFC: CI4UI1
  loc_A24FFD: FMemLdR4 var_B4(8)
  loc_A25002: Ary1LdPr
  loc_A25003: MemLdStr global_4
  loc_A25006: ConcatStr
  loc_A25007: FStStrNoPop var_BC
  loc_A2500A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2500F: CVarStr var_DC
  loc_A25012: PopAdLdVar
  loc_A25013: FLdPr Me
  loc_A25016: MemLdRfVar from_stack_1.global_68
  loc_A25019: LdPrVar
  loc_A2501B: LateMemCall
  loc_A25021: FFreeStr var_B8 = ""
  loc_A25028: FFree1Var var_DC = ""
  loc_A2502B: FLdPr Me
  loc_A2502E: MemLdRfVar from_stack_1.global_90
  loc_A25031: NextI2 var_E0, loc_A24FB0
  loc_A25036: LitI4 0
  loc_A2503B: FStR4 var_B4
  loc_A2503E: AryUnlock
  loc_A25041: LitVarStr var_9C, "     </tr>"
  loc_A25046: PopAdLdVar
  loc_A25047: FLdPr Me
  loc_A2504A: MemLdRfVar from_stack_1.global_68
  loc_A2504D: LdPrVar
  loc_A2504F: LateMemCall
  loc_A25055: FLdPr Me
  loc_A25058: MemLdRfVar from_stack_1.global_88
  loc_A2505B: NextI2 var_8C, loc_A24F13
  loc_A25060: Call Proc_207_21_983D50()
  loc_A25065: FLdPr Me
  loc_A25068: MemLdRfVar from_stack_1.global_68
  loc_A2506B: LdPrVar
  loc_A2506D: LateMemCall
  loc_A25073: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A25078: ExitProcHresult
  loc_A25079: GtCyR8
  loc_A2507A: ExitProcR8
End Sub

Private Function Proc_207_18_9E1424(arg_28) '9E1424
  'Data Table: 45F4A0
  loc_9E131C: FLdPr Me
  loc_9E131F: MemLdI2 global_88
  loc_9E1322: LitI2_Byte 1
  loc_9E1324: AddI2
  loc_9E1325: FLdPr Me
  loc_9E1328: MemStI2 global_88
  loc_9E132B: LitI2_Byte 0
  loc_9E132D: FLdPr Me
  loc_9E1330: MemStI2 global_90
  loc_9E1333: LitI4 0
  loc_9E1338: FLdPr Me
  loc_9E133B: MemLdI2 global_88
  loc_9E133E: CI4UI1
  loc_9E133F: FLdPr Me
  loc_9E1342: MemLdRfVar from_stack_1.global_84
  loc_9E1345: RedimPreserve
  loc_9E134F: FLdRfVar var_A0
  loc_9E1352: LitVarStr var_9C, "CodiOrga"
  loc_9E1357: PopAdLdVar
  loc_9E1358: FLdRfVar var_8C
  loc_9E135B: FLdRfVar var_88
  loc_9E135E: FLdPr Me
  loc_9E1361: MemLdRfVar from_stack_1.global_56
  loc_9E1364: NewIfNullPr clsunidadgasto
  loc_9E1367: from_stack_1v = clsunidadgasto.RsFrmGet()
  loc_9E136C: FLdPr var_88
  loc_9E136F:  = Me.Fields
  loc_9E1374: FLdPr var_8C
  loc_9E1377: from_stack_2 = Me.Item(from_stack_1)
  loc_9E137C: LitI2_Byte 0
  loc_9E137E: LitVar_Missing var_D4
  loc_9E1381: LitI2_Byte 0
  loc_9E1383: FLdZeroAd var_A0
  loc_9E1386: CVarAd
  loc_9E138A: PopAdLdVar
  loc_9E138B: FLdPr Me
  loc_9E138E: MemLdI2 global_88
  loc_9E1391: CI4UI1
  loc_9E1392: FLdPr Me
  loc_9E1395: MemLdStr global_84
  loc_9E1398: AryLock
  loc_9E139B: Ary1LdPr
  loc_9E139C: MemLdRfVar from_stack_1.global_0
  loc_9E139F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E13A4: AryUnlock
  loc_9E13A7: FFreeAd var_88 = ""
  loc_9E13AE: FFreeVar var_B4 = ""
  loc_9E13B5: FLdRfVar var_A0
  loc_9E13B8: LitVarStr var_9C, "DetaOrga"
  loc_9E13BD: PopAdLdVar
  loc_9E13BE: FLdRfVar var_8C
  loc_9E13C1: FLdRfVar var_88
  loc_9E13C4: FLdPr Me
  loc_9E13C7: MemLdRfVar from_stack_1.global_56
  loc_9E13CA: NewIfNullPr clsunidadgasto
  loc_9E13CD: from_stack_1v = clsunidadgasto.RsFrmGet()
  loc_9E13D2: FLdPr var_88
  loc_9E13D5:  = Me.Fields
  loc_9E13DA: FLdPr var_8C
  loc_9E13DD: from_stack_2 = Me.Item(from_stack_1)
  loc_9E13E2: LitI2_Byte 0
  loc_9E13E4: LitVar_Missing var_D4
  loc_9E13E7: LitI2_Byte 0
  loc_9E13E9: FLdZeroAd var_A0
  loc_9E13EC: CVarAd
  loc_9E13F0: PopAdLdVar
  loc_9E13F1: FLdPr Me
  loc_9E13F4: MemLdI2 global_88
  loc_9E13F7: CI4UI1
  loc_9E13F8: FLdPr Me
  loc_9E13FB: MemLdStr global_84
  loc_9E13FE: AryLock
  loc_9E1401: Ary1LdPr
  loc_9E1402: MemLdRfVar from_stack_1.global_4
  loc_9E1405: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E140A: AryUnlock
  loc_9E140D: FFreeAd var_88 = ""
  loc_9E1414: FFreeVar var_B4 = ""
  loc_9E141B: Call Proc_207_19_A47154()
  loc_9E1420: ExitProcHresult
  loc_9E1421: SubI2
  loc_9E1422: FLdFPR8 arg_2805
End Function

Private Function Proc_207_19_A47154() 'A47154
  'Data Table: 45F4A0
  loc_A46F00: FLdPr Me
  loc_A46F03: MemLdI2 global_90
  loc_A46F06: LitI2_Byte 1
  loc_A46F08: AddI2
  loc_A46F09: FLdPr Me
  loc_A46F0C: MemStI2 global_90
  loc_A46F0F: LitI4 0
  loc_A46F14: FLdPr Me
  loc_A46F17: MemLdI2 global_90
  loc_A46F1A: CI4UI1
  loc_A46F1B: FLdPr Me
  loc_A46F1E: MemLdI2 global_88
  loc_A46F21: CI4UI1
  loc_A46F22: FLdPr Me
  loc_A46F25: MemLdStr global_84
  loc_A46F28: Ary1LdPr
  loc_A46F29: MemLdRfVar from_stack_1.global_8
  loc_A46F2C: RedimPreserve
  loc_A46F36: FLdRfVar var_A0
  loc_A46F39: LitVarStr var_9C, "CodiUnga"
  loc_A46F3E: PopAdLdVar
  loc_A46F3F: FLdRfVar var_8C
  loc_A46F42: FLdRfVar var_88
  loc_A46F45: FLdPr Me
  loc_A46F48: MemLdRfVar from_stack_1.global_56
  loc_A46F4B: NewIfNullPr clsunidadgasto
  loc_A46F4E: from_stack_1v = clsunidadgasto.RsFrmGet()
  loc_A46F53: FLdPr var_88
  loc_A46F56:  = Me.Fields
  loc_A46F5B: FLdPr var_8C
  loc_A46F5E: from_stack_2 = Me.Item(from_stack_1)
  loc_A46F63: LitI2_Byte 0
  loc_A46F65: LitVar_Missing var_D8
  loc_A46F68: LitI2_Byte 0
  loc_A46F6A: FLdZeroAd var_A0
  loc_A46F6D: CVarAd
  loc_A46F71: PopAdLdVar
  loc_A46F72: FLdPr Me
  loc_A46F75: MemLdI2 global_90
  loc_A46F78: CI4UI1
  loc_A46F79: FLdPr Me
  loc_A46F7C: MemLdI2 global_88
  loc_A46F7F: CI4UI1
  loc_A46F80: FLdPr Me
  loc_A46F83: MemLdStr global_84
  loc_A46F86: AryLock
  loc_A46F89: Ary1LdPr
  loc_A46F8A: MemLdStr global_8
  loc_A46F8D: AryLock
  loc_A46F90: Ary1LdPr
  loc_A46F91: MemLdRfVar from_stack_1.global_0
  loc_A46F94: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A46F99: AryUnlock
  loc_A46F9C: AryUnlock
  loc_A46F9F: FFreeAd var_88 = ""
  loc_A46FA6: FFreeVar var_B8 = ""
  loc_A46FAD: FLdRfVar var_DC
  loc_A46FB0: FLdPr Me
  loc_A46FB3: VCallAd Control_ID_DetaUngaTxt
  loc_A46FB6: FStAdFunc var_88
  loc_A46FB9: FLdPr var_88
  loc_A46FBC:  = Me.Text
  loc_A46FC1: ILdRf var_DC
  loc_A46FC4: LitStr vbNullString
  loc_A46FC7: NeStr
  loc_A46FC9: FFree1Str var_DC
  loc_A46FCC: FFree1Ad var_88
  loc_A46FCF: BranchF loc_A470C7
  loc_A46FD2: FLdRfVar var_B8
  loc_A46FD5: FLdRfVar var_A0
  loc_A46FD8: LitVarStr var_9C, "DetaUnga"
  loc_A46FDD: PopAdLdVar
  loc_A46FDE: FLdRfVar var_8C
  loc_A46FE1: FLdRfVar var_88
  loc_A46FE4: FLdPr Me
  loc_A46FE7: MemLdRfVar from_stack_1.global_56
  loc_A46FEA: NewIfNullPr clsunidadgasto
  loc_A46FED: from_stack_1v = clsunidadgasto.RsFrmGet()
  loc_A46FF2: FLdPr var_88
  loc_A46FF5:  = Me.Fields
  loc_A46FFA: FLdPr var_8C
  loc_A46FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A47002: FLdPr var_A0
  loc_A47005:  = Me.Value
  loc_A4700A: FLdRfVar var_DC
  loc_A4700D: FLdPr Me
  loc_A47010: VCallAd Control_ID_DetaUngaTxt
  loc_A47013: FStAdFunc var_E0
  loc_A47016: FLdPr var_E0
  loc_A47019:  = Me.Text
  loc_A4701E: FLdRfVar var_E8
  loc_A47021: FLdPr Me
  loc_A47024: VCallAd Control_ID_DetaUngaTxt
  loc_A47027: FStAdFunc var_E4
  loc_A4702A: FLdPr var_E4
  loc_A4702D:  = Me.Text
  loc_A47032: LitI4 0
  loc_A47037: LitI4 -1
  loc_A4703C: LitI4 1
  loc_A47041: LitStr "<span class=""Marcado"">"
  loc_A47044: ILdRf var_E8
  loc_A47047: ConcatStr
  loc_A47048: FStStrNoPop var_EC
  loc_A4704B: LitStr "</span>"
  loc_A4704E: ConcatStr
  loc_A4704F: FStStrNoPop var_F4
  loc_A47052: ILdRf var_DC
  loc_A47055: FLdRfVar var_B8
  loc_A47058: CStrVarTmp
  loc_A47059: FStStrNoPop var_F0
  loc_A4705C: ImpAdCallI2 Replace(, , , , , )
  loc_A47061: FStStr var_108
  loc_A47064: LitI2_Byte 0
  loc_A47066: LitVar_Missing var_104
  loc_A47069: LitI2_Byte 0
  loc_A4706B: FLdZeroAd var_108
  loc_A4706E: CVarStr var_D8
  loc_A47071: PopAdLdVar
  loc_A47072: FLdPr Me
  loc_A47075: MemLdI2 global_90
  loc_A47078: CI4UI1
  loc_A47079: FLdPr Me
  loc_A4707C: MemLdI2 global_88
  loc_A4707F: CI4UI1
  loc_A47080: FLdPr Me
  loc_A47083: MemLdStr global_84
  loc_A47086: AryLock
  loc_A47089: Ary1LdPr
  loc_A4708A: MemLdStr global_8
  loc_A4708D: AryLock
  loc_A47090: Ary1LdPr
  loc_A47091: MemLdRfVar from_stack_1.global_4
  loc_A47094: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A47099: AryUnlock
  loc_A4709C: AryUnlock
  loc_A4709F: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_DC = "": var_F4 = ""
  loc_A470AE: FFreeAd var_88 = "": var_8C = "": var_E0 = "": var_E4 = ""
  loc_A470BB: FFreeVar var_B8 = "": var_D8 = ""
  loc_A470C4: Branch loc_A4713E
  loc_A470C7: FLdRfVar var_A0
  loc_A470CA: LitVarStr var_9C, "DetaUnga"
  loc_A470CF: PopAdLdVar
  loc_A470D0: FLdRfVar var_8C
  loc_A470D3: FLdRfVar var_88
  loc_A470D6: FLdPr Me
  loc_A470D9: MemLdRfVar from_stack_1.global_56
  loc_A470DC: NewIfNullPr clsunidadgasto
  loc_A470DF: from_stack_1v = clsunidadgasto.RsFrmGet()
  loc_A470E4: FLdPr var_88
  loc_A470E7:  = Me.Fields
  loc_A470EC: FLdPr var_8C
  loc_A470EF: from_stack_2 = Me.Item(from_stack_1)
  loc_A470F4: LitI2_Byte 0
  loc_A470F6: LitVar_Missing var_D8
  loc_A470F9: LitI2_Byte 0
  loc_A470FB: FLdZeroAd var_A0
  loc_A470FE: CVarAd
  loc_A47102: PopAdLdVar
  loc_A47103: FLdPr Me
  loc_A47106: MemLdI2 global_90
  loc_A47109: CI4UI1
  loc_A4710A: FLdPr Me
  loc_A4710D: MemLdI2 global_88
  loc_A47110: CI4UI1
  loc_A47111: FLdPr Me
  loc_A47114: MemLdStr global_84
  loc_A47117: AryLock
  loc_A4711A: Ary1LdPr
  loc_A4711B: MemLdStr global_8
  loc_A4711E: AryLock
  loc_A47121: Ary1LdPr
  loc_A47122: MemLdRfVar from_stack_1.global_4
  loc_A47125: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4712A: AryUnlock
  loc_A4712D: AryUnlock
  loc_A47130: FFreeAd var_88 = ""
  loc_A47137: FFreeVar var_B8 = ""
  loc_A4713E: LitI2_Byte 1
  loc_A47140: PopTmpLdAd2 var_10A
  loc_A47143: FLdPr Me
  loc_A47146: MemLdRfVar from_stack_1.global_56
  loc_A47149: NewIfNullPr clsunidadgasto
  loc_A4714C: Call clsunidadgasto.Move(from_stack_1v)
  loc_A47151: ExitProcHresult
End Function

Private Function Proc_207_20_AEB274() 'AEB274
  'Data Table: 45F4A0
  loc_AEAB5C: FLdPr Me
  loc_AEAB5F: VCallAd Control_ID_CodiOrgaMsk
  loc_AEAB62: FStAdFunc var_8C
  loc_AEAB65: FLdPr var_8C
  loc_AEAB68: LateIdLdVar var_9C DispID_22 0
  loc_AEAB6F: CStrVarTmp
  loc_AEAB70: FStStrNoPop var_A0
  loc_AEAB73: FnLenStr
  loc_AEAB74: FStR4 var_A4
  loc_AEAB77: FFree1Str var_A0
  loc_AEAB7A: FFree1Ad var_8C
  loc_AEAB7D: FFree1Var var_9C = ""
  loc_AEAB80: ILdRf var_A4
  loc_AEAB83: LitI4 0
  loc_AEAB88: EqI4
  loc_AEAB89: BranchF loc_AEAB95
  loc_AEAB8C: LitStr "Todos"
  loc_AEAB8F: FStStrCopy var_88
  loc_AEAB92: Branch loc_AEAC2E
  loc_AEAB95: ILdRf var_A4
  loc_AEAB98: LitI4 6
  loc_AEAB9D: LtI4
  loc_AEAB9E: BranchF loc_AEABD6
  loc_AEABA1: LitStr "Comenzando con '"
  loc_AEABA4: FLdPr Me
  loc_AEABA7: VCallAd Control_ID_CodiOrgaMsk
  loc_AEABAA: FStAdFunc var_8C
  loc_AEABAD: FLdPr var_8C
  loc_AEABB0: LateIdLdVar var_9C DispID_22 0
  loc_AEABB7: CStrVarTmp
  loc_AEABB8: FStStrNoPop var_A0
  loc_AEABBB: ConcatStr
  loc_AEABBC: FStStrNoPop var_A8
  loc_AEABBF: LitStr "'"
  loc_AEABC2: ConcatStr
  loc_AEABC3: FStStr var_88
  loc_AEABC6: FFreeStr var_A0 = ""
  loc_AEABCD: FFree1Ad var_8C
  loc_AEABD0: FFree1Var var_9C = ""
  loc_AEABD3: Branch loc_AEAC2E
  loc_AEABD6: ILdRf var_A4
  loc_AEABD9: LitI4 6
  loc_AEABDE: EqI4
  loc_AEABDF: BranchF loc_AEAC2E
  loc_AEABE2: FLdPr Me
  loc_AEABE5: VCallAd Control_ID_CodiOrgaMsk
  loc_AEABE8: FStAdFunc var_8C
  loc_AEABEB: FLdPr var_8C
  loc_AEABEE: LateIdLdVar var_9C DispID_0 0
  loc_AEABF5: CStrVarTmp
  loc_AEABF6: FStStrNoPop var_A0
  loc_AEABF9: LitStr " - "
  loc_AEABFC: ConcatStr
  loc_AEABFD: FStStrNoPop var_B0
  loc_AEAC00: FLdRfVar var_A8
  loc_AEAC03: FLdPr Me
  loc_AEAC06: VCallAd Control_ID_CodiOrgaLbl
  loc_AEAC09: FStAdFunc var_AC
  loc_AEAC0C: FLdPr var_AC
  loc_AEAC0F:  = Me.Caption
  loc_AEAC14: ILdRf var_A8
  loc_AEAC17: ConcatStr
  loc_AEAC18: FStStr var_88
  loc_AEAC1B: FFreeStr var_A0 = "": var_B0 = ""
  loc_AEAC24: FFreeAd var_8C = ""
  loc_AEAC2B: FFree1Var var_9C = ""
  loc_AEAC2E: LitVarStr var_C0, "<html>"
  loc_AEAC33: PopAdLdVar
  loc_AEAC34: FLdPr Me
  loc_AEAC37: MemLdRfVar from_stack_1.global_68
  loc_AEAC3A: LdPrVar
  loc_AEAC3C: LateMemCall
  loc_AEAC42: LitVarStr var_C0, "<head>"
  loc_AEAC47: PopAdLdVar
  loc_AEAC48: FLdPr Me
  loc_AEAC4B: MemLdRfVar from_stack_1.global_68
  loc_AEAC4E: LdPrVar
  loc_AEAC50: LateMemCall
  loc_AEAC56: LitVarStr var_C0, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AEAC5B: PopAdLdVar
  loc_AEAC5C: FLdPr Me
  loc_AEAC5F: MemLdRfVar from_stack_1.global_68
  loc_AEAC62: LdPrVar
  loc_AEAC64: LateMemCall
  loc_AEAC6A: LitStr "<title>"
  loc_AEAC6D: FLdRfVar var_A0
  loc_AEAC70: FLdPr Me
  loc_AEAC73:  = Me.Caption
  loc_AEAC78: ILdRf var_A0
  loc_AEAC7B: ConcatStr
  loc_AEAC7C: FStStrNoPop var_A8
  loc_AEAC7F: LitStr "</title>"
  loc_AEAC82: ConcatStr
  loc_AEAC83: CVarStr var_9C
  loc_AEAC86: PopAdLdVar
  loc_AEAC87: FLdPr Me
  loc_AEAC8A: MemLdRfVar from_stack_1.global_68
  loc_AEAC8D: LdPrVar
  loc_AEAC8F: LateMemCall
  loc_AEAC95: FFreeStr var_A0 = ""
  loc_AEAC9C: FFree1Var var_9C = ""
  loc_AEAC9F: LitVarStr var_C0, "<style type=""text/css"">"
  loc_AEACA4: PopAdLdVar
  loc_AEACA5: FLdPr Me
  loc_AEACA8: MemLdRfVar from_stack_1.global_68
  loc_AEACAB: LdPrVar
  loc_AEACAD: LateMemCall
  loc_AEACB3: LitVarStr var_C0, ".Titulo1 {"
  loc_AEACB8: PopAdLdVar
  loc_AEACB9: FLdPr Me
  loc_AEACBC: MemLdRfVar from_stack_1.global_68
  loc_AEACBF: LdPrVar
  loc_AEACC1: LateMemCall
  loc_AEACC7: LitVarStr var_C0, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AEACCC: PopAdLdVar
  loc_AEACCD: FLdPr Me
  loc_AEACD0: MemLdRfVar from_stack_1.global_68
  loc_AEACD3: LdPrVar
  loc_AEACD5: LateMemCall
  loc_AEACDB: LitVarStr var_C0, " font-size: 18px;"
  loc_AEACE0: PopAdLdVar
  loc_AEACE1: FLdPr Me
  loc_AEACE4: MemLdRfVar from_stack_1.global_68
  loc_AEACE7: LdPrVar
  loc_AEACE9: LateMemCall
  loc_AEACEF: LitVarStr var_C0, " font-weight: bold;"
  loc_AEACF4: PopAdLdVar
  loc_AEACF5: FLdPr Me
  loc_AEACF8: MemLdRfVar from_stack_1.global_68
  loc_AEACFB: LdPrVar
  loc_AEACFD: LateMemCall
  loc_AEAD03: LitVarStr var_C0, "}"
  loc_AEAD08: PopAdLdVar
  loc_AEAD09: FLdPr Me
  loc_AEAD0C: MemLdRfVar from_stack_1.global_68
  loc_AEAD0F: LdPrVar
  loc_AEAD11: LateMemCall
  loc_AEAD17: LitVarStr var_C0, ".Titulo2 {"
  loc_AEAD1C: PopAdLdVar
  loc_AEAD1D: FLdPr Me
  loc_AEAD20: MemLdRfVar from_stack_1.global_68
  loc_AEAD23: LdPrVar
  loc_AEAD25: LateMemCall
  loc_AEAD2B: LitVarStr var_C0, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AEAD30: PopAdLdVar
  loc_AEAD31: FLdPr Me
  loc_AEAD34: MemLdRfVar from_stack_1.global_68
  loc_AEAD37: LdPrVar
  loc_AEAD39: LateMemCall
  loc_AEAD3F: LitVarStr var_C0, " font-size: 14px;"
  loc_AEAD44: PopAdLdVar
  loc_AEAD45: FLdPr Me
  loc_AEAD48: MemLdRfVar from_stack_1.global_68
  loc_AEAD4B: LdPrVar
  loc_AEAD4D: LateMemCall
  loc_AEAD53: LitVarStr var_C0, " font-weight: bold;"
  loc_AEAD58: PopAdLdVar
  loc_AEAD59: FLdPr Me
  loc_AEAD5C: MemLdRfVar from_stack_1.global_68
  loc_AEAD5F: LdPrVar
  loc_AEAD61: LateMemCall
  loc_AEAD67: LitVarStr var_C0, "}"
  loc_AEAD6C: PopAdLdVar
  loc_AEAD6D: FLdPr Me
  loc_AEAD70: MemLdRfVar from_stack_1.global_68
  loc_AEAD73: LdPrVar
  loc_AEAD75: LateMemCall
  loc_AEAD7B: LitVarStr var_C0, ".Normal {"
  loc_AEAD80: PopAdLdVar
  loc_AEAD81: FLdPr Me
  loc_AEAD84: MemLdRfVar from_stack_1.global_68
  loc_AEAD87: LdPrVar
  loc_AEAD89: LateMemCall
  loc_AEAD8F: LitVarStr var_C0, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AEAD94: PopAdLdVar
  loc_AEAD95: FLdPr Me
  loc_AEAD98: MemLdRfVar from_stack_1.global_68
  loc_AEAD9B: LdPrVar
  loc_AEAD9D: LateMemCall
  loc_AEADA3: LitVarStr var_C0, " font-size: 14px;"
  loc_AEADA8: PopAdLdVar
  loc_AEADA9: FLdPr Me
  loc_AEADAC: MemLdRfVar from_stack_1.global_68
  loc_AEADAF: LdPrVar
  loc_AEADB1: LateMemCall
  loc_AEADB7: LitVarStr var_C0, " font-style: normal;"
  loc_AEADBC: PopAdLdVar
  loc_AEADBD: FLdPr Me
  loc_AEADC0: MemLdRfVar from_stack_1.global_68
  loc_AEADC3: LdPrVar
  loc_AEADC5: LateMemCall
  loc_AEADCB: LitVarStr var_C0, " font-weight: normal;"
  loc_AEADD0: PopAdLdVar
  loc_AEADD1: FLdPr Me
  loc_AEADD4: MemLdRfVar from_stack_1.global_68
  loc_AEADD7: LdPrVar
  loc_AEADD9: LateMemCall
  loc_AEADDF: LitVarStr var_C0, " font-variant: normal;"
  loc_AEADE4: PopAdLdVar
  loc_AEADE5: FLdPr Me
  loc_AEADE8: MemLdRfVar from_stack_1.global_68
  loc_AEADEB: LdPrVar
  loc_AEADED: LateMemCall
  loc_AEADF3: LitVarStr var_C0, "}"
  loc_AEADF8: PopAdLdVar
  loc_AEADF9: FLdPr Me
  loc_AEADFC: MemLdRfVar from_stack_1.global_68
  loc_AEADFF: LdPrVar
  loc_AEAE01: LateMemCall
  loc_AEAE07: LitVarStr var_C0, ".Encabezado {"
  loc_AEAE0C: PopAdLdVar
  loc_AEAE0D: FLdPr Me
  loc_AEAE10: MemLdRfVar from_stack_1.global_68
  loc_AEAE13: LdPrVar
  loc_AEAE15: LateMemCall
  loc_AEAE1B: LitVarStr var_C0, " font-family: ""Times New Roman"", Times, serif;"
  loc_AEAE20: PopAdLdVar
  loc_AEAE21: FLdPr Me
  loc_AEAE24: MemLdRfVar from_stack_1.global_68
  loc_AEAE27: LdPrVar
  loc_AEAE29: LateMemCall
  loc_AEAE2F: LitVarStr var_C0, " font-size: 13px;"
  loc_AEAE34: PopAdLdVar
  loc_AEAE35: FLdPr Me
  loc_AEAE38: MemLdRfVar from_stack_1.global_68
  loc_AEAE3B: LdPrVar
  loc_AEAE3D: LateMemCall
  loc_AEAE43: LitVarStr var_C0, " font-weight: bold;"
  loc_AEAE48: PopAdLdVar
  loc_AEAE49: FLdPr Me
  loc_AEAE4C: MemLdRfVar from_stack_1.global_68
  loc_AEAE4F: LdPrVar
  loc_AEAE51: LateMemCall
  loc_AEAE57: LitVarStr var_C0, " background-color: #D3D3D3;"
  loc_AEAE5C: PopAdLdVar
  loc_AEAE5D: FLdPr Me
  loc_AEAE60: MemLdRfVar from_stack_1.global_68
  loc_AEAE63: LdPrVar
  loc_AEAE65: LateMemCall
  loc_AEAE6B: LitVarStr var_C0, "}"
  loc_AEAE70: PopAdLdVar
  loc_AEAE71: FLdPr Me
  loc_AEAE74: MemLdRfVar from_stack_1.global_68
  loc_AEAE77: LdPrVar
  loc_AEAE79: LateMemCall
  loc_AEAE7F: LitVarStr var_C0, ".LineaDato {"
  loc_AEAE84: PopAdLdVar
  loc_AEAE85: FLdPr Me
  loc_AEAE88: MemLdRfVar from_stack_1.global_68
  loc_AEAE8B: LdPrVar
  loc_AEAE8D: LateMemCall
  loc_AEAE93: LitVarStr var_C0, " font-family: ""Courier New"", Courier, monospace;"
  loc_AEAE98: PopAdLdVar
  loc_AEAE99: FLdPr Me
  loc_AEAE9C: MemLdRfVar from_stack_1.global_68
  loc_AEAE9F: LdPrVar
  loc_AEAEA1: LateMemCall
  loc_AEAEA7: LitVarStr var_C0, " font-size: 10px;"
  loc_AEAEAC: PopAdLdVar
  loc_AEAEAD: FLdPr Me
  loc_AEAEB0: MemLdRfVar from_stack_1.global_68
  loc_AEAEB3: LdPrVar
  loc_AEAEB5: LateMemCall
  loc_AEAEBB: LitVarStr var_C0, "}"
  loc_AEAEC0: PopAdLdVar
  loc_AEAEC1: FLdPr Me
  loc_AEAEC4: MemLdRfVar from_stack_1.global_68
  loc_AEAEC7: LdPrVar
  loc_AEAEC9: LateMemCall
  loc_AEAECF: LitVarStr var_C0, ".Totales {"
  loc_AEAED4: PopAdLdVar
  loc_AEAED5: FLdPr Me
  loc_AEAED8: MemLdRfVar from_stack_1.global_68
  loc_AEAEDB: LdPrVar
  loc_AEAEDD: LateMemCall
  loc_AEAEE3: LitVarStr var_C0, " font-family: ""Courier New"", Courier, monospace;"
  loc_AEAEE8: PopAdLdVar
  loc_AEAEE9: FLdPr Me
  loc_AEAEEC: MemLdRfVar from_stack_1.global_68
  loc_AEAEEF: LdPrVar
  loc_AEAEF1: LateMemCall
  loc_AEAEF7: LitVarStr var_C0, " font-size: 12px;"
  loc_AEAEFC: PopAdLdVar
  loc_AEAEFD: FLdPr Me
  loc_AEAF00: MemLdRfVar from_stack_1.global_68
  loc_AEAF03: LdPrVar
  loc_AEAF05: LateMemCall
  loc_AEAF0B: LitVarStr var_C0, " font-weight: bold;"
  loc_AEAF10: PopAdLdVar
  loc_AEAF11: FLdPr Me
  loc_AEAF14: MemLdRfVar from_stack_1.global_68
  loc_AEAF17: LdPrVar
  loc_AEAF19: LateMemCall
  loc_AEAF1F: LitVarStr var_C0, " background-color: #7DC3E7;"
  loc_AEAF24: PopAdLdVar
  loc_AEAF25: FLdPr Me
  loc_AEAF28: MemLdRfVar from_stack_1.global_68
  loc_AEAF2B: LdPrVar
  loc_AEAF2D: LateMemCall
  loc_AEAF33: LitVarStr var_C0, "}"
  loc_AEAF38: PopAdLdVar
  loc_AEAF39: FLdPr Me
  loc_AEAF3C: MemLdRfVar from_stack_1.global_68
  loc_AEAF3F: LdPrVar
  loc_AEAF41: LateMemCall
  loc_AEAF47: LitVarStr var_C0, ".Marcado {color: #009900}"
  loc_AEAF4C: PopAdLdVar
  loc_AEAF4D: FLdPr Me
  loc_AEAF50: MemLdRfVar from_stack_1.global_68
  loc_AEAF53: LdPrVar
  loc_AEAF55: LateMemCall
  loc_AEAF5B: LitVarStr var_C0, "THEAD { display: table-header-group; }"
  loc_AEAF60: PopAdLdVar
  loc_AEAF61: FLdPr Me
  loc_AEAF64: MemLdRfVar from_stack_1.global_68
  loc_AEAF67: LdPrVar
  loc_AEAF69: LateMemCall
  loc_AEAF6F: LitVarStr var_C0, "</style>"
  loc_AEAF74: PopAdLdVar
  loc_AEAF75: FLdPr Me
  loc_AEAF78: MemLdRfVar from_stack_1.global_68
  loc_AEAF7B: LdPrVar
  loc_AEAF7D: LateMemCall
  loc_AEAF83: LitI4 0
  loc_AEAF88: FStStrCopy var_A8
  loc_AEAF8B: FLdRfVar var_A8
  loc_AEAF8E: LitI4 0
  loc_AEAF93: FStStrCopy var_A0
  loc_AEAF96: FLdRfVar var_A0
  loc_AEAF99: LitI2_Byte 0
  loc_AEAF9B: PopTmpLdAd2 var_D2
  loc_AEAF9E: FLdPr Me
  loc_AEAFA1: MemLdRfVar from_stack_1.global_68
  loc_AEAFA4: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AEAFA9: FFreeStr var_A0 = ""
  loc_AEAFB0: LitVarStr var_C0, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AEAFB5: PopAdLdVar
  loc_AEAFB6: FLdPr Me
  loc_AEAFB9: MemLdRfVar from_stack_1.global_68
  loc_AEAFBC: LdPrVar
  loc_AEAFBE: LateMemCall
  loc_AEAFC4: LitVarStr var_C0, "  <tr valign=""middle"">"
  loc_AEAFC9: PopAdLdVar
  loc_AEAFCA: FLdPr Me
  loc_AEAFCD: MemLdRfVar from_stack_1.global_68
  loc_AEAFD0: LdPrVar
  loc_AEAFD2: LateMemCall
  loc_AEAFD8: LitVarStr var_D0, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_AEAFDD: LitVarStr var_C0, "Municipalidad de Guaymallén"
  loc_AEAFE2: FStVarCopyObj var_9C
  loc_AEAFE5: FLdRfVar var_9C
  loc_AEAFE8: FLdRfVar var_E4
  loc_AEAFEB: ImpAdCallFPR4  = Ucase()
  loc_AEAFF0: FLdRfVar var_E4
  loc_AEAFF3: ConcatVar var_F4
  loc_AEAFF7: LitVarStr var_104, "</p>"
  loc_AEAFFC: ConcatVar var_114
  loc_AEB000: PopAdLdVar
  loc_AEB001: FLdPr Me
  loc_AEB004: MemLdRfVar from_stack_1.global_68
  loc_AEB007: LdPrVar
  loc_AEB009: LateMemCall
  loc_AEB00F: FFreeVar var_9C = "": var_E4 = "": var_F4 = ""
  loc_AEB01A: LitStr "    <p>"
  loc_AEB01D: FLdRfVar var_A0
  loc_AEB020: FLdPr Me
  loc_AEB023:  = Me.Caption
  loc_AEB028: ILdRf var_A0
  loc_AEB02B: ConcatStr
  loc_AEB02C: FStStrNoPop var_A8
  loc_AEB02F: LitStr "</p></th>"
  loc_AEB032: ConcatStr
  loc_AEB033: CVarStr var_9C
  loc_AEB036: PopAdLdVar
  loc_AEB037: FLdPr Me
  loc_AEB03A: MemLdRfVar from_stack_1.global_68
  loc_AEB03D: LdPrVar
  loc_AEB03F: LateMemCall
  loc_AEB045: FFreeStr var_A0 = ""
  loc_AEB04C: FFree1Var var_9C = ""
  loc_AEB04F: LitVarStr var_C0, "  </tr>"
  loc_AEB054: PopAdLdVar
  loc_AEB055: FLdPr Me
  loc_AEB058: MemLdRfVar from_stack_1.global_68
  loc_AEB05B: LdPrVar
  loc_AEB05D: LateMemCall
  loc_AEB063: LitVarStr var_C0, "  <tr>"
  loc_AEB068: PopAdLdVar
  loc_AEB069: FLdPr Me
  loc_AEB06C: MemLdRfVar from_stack_1.global_68
  loc_AEB06F: LdPrVar
  loc_AEB071: LateMemCall
  loc_AEB077: LitVarStr var_C0, "    <th colspan=""3"" align=""left"" valign=""middle""><hr></th>"
  loc_AEB07C: PopAdLdVar
  loc_AEB07D: FLdPr Me
  loc_AEB080: MemLdRfVar from_stack_1.global_68
  loc_AEB083: LdPrVar
  loc_AEB085: LateMemCall
  loc_AEB08B: LitVarStr var_C0, "  </tr>"
  loc_AEB090: PopAdLdVar
  loc_AEB091: FLdPr Me
  loc_AEB094: MemLdRfVar from_stack_1.global_68
  loc_AEB097: LdPrVar
  loc_AEB099: LateMemCall
  loc_AEB09F: LitVarStr var_C0, "  <tr valign=""middle"">"
  loc_AEB0A4: PopAdLdVar
  loc_AEB0A5: FLdPr Me
  loc_AEB0A8: MemLdRfVar from_stack_1.global_68
  loc_AEB0AB: LdPrVar
  loc_AEB0AD: LateMemCall
  loc_AEB0B3: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_AEB0B6: FLdRfVar var_A0
  loc_AEB0B9: FLdPr Me
  loc_AEB0BC: VCallAd Control_ID_cboPeriodo
  loc_AEB0BF: FStAdFunc var_8C
  loc_AEB0C2: FLdPr var_8C
  loc_AEB0C5:  = Me.Text
  loc_AEB0CA: ILdRf var_A0
  loc_AEB0CD: ConcatStr
  loc_AEB0CE: FStStrNoPop var_A8
  loc_AEB0D1: LitStr "</span></th>"
  loc_AEB0D4: ConcatStr
  loc_AEB0D5: CVarStr var_9C
  loc_AEB0D8: PopAdLdVar
  loc_AEB0D9: FLdPr Me
  loc_AEB0DC: MemLdRfVar from_stack_1.global_68
  loc_AEB0DF: LdPrVar
  loc_AEB0E1: LateMemCall
  loc_AEB0E7: FFreeStr var_A0 = ""
  loc_AEB0EE: FFree1Ad var_8C
  loc_AEB0F1: FFree1Var var_9C = ""
  loc_AEB0F4: LitStr "    <th align=""center"">Organigrama: <span class=""Normal"">"
  loc_AEB0F7: ILdRf var_88
  loc_AEB0FA: ConcatStr
  loc_AEB0FB: FStStrNoPop var_A0
  loc_AEB0FE: LitStr "</span></th>"
  loc_AEB101: ConcatStr
  loc_AEB102: CVarStr var_9C
  loc_AEB105: PopAdLdVar
  loc_AEB106: FLdPr Me
  loc_AEB109: MemLdRfVar from_stack_1.global_68
  loc_AEB10C: LdPrVar
  loc_AEB10E: LateMemCall
  loc_AEB114: FFree1Str var_A0
  loc_AEB117: FFree1Var var_9C = ""
  loc_AEB11A: LitVarStr var_C0, "    <th align=""right"">"
  loc_AEB11F: PopAdLdVar
  loc_AEB120: FLdPr Me
  loc_AEB123: MemLdRfVar from_stack_1.global_68
  loc_AEB126: LdPrVar
  loc_AEB128: LateMemCall
  loc_AEB12E: FLdRfVar var_A0
  loc_AEB131: FLdPr Me
  loc_AEB134: VCallAd Control_ID_DetaUngaTxt
  loc_AEB137: FStAdFunc var_8C
  loc_AEB13A: FLdPr var_8C
  loc_AEB13D:  = Me.Text
  loc_AEB142: ILdRf var_A0
  loc_AEB145: LitStr vbNullString
  loc_AEB148: NeStr
  loc_AEB14A: FFree1Str var_A0
  loc_AEB14D: FFree1Ad var_8C
  loc_AEB150: BranchF loc_AEB197
  loc_AEB153: LitStr "      Unidad de Gasto contiene: <span class=""Normal"">"
  loc_AEB156: FLdRfVar var_A0
  loc_AEB159: FLdPr Me
  loc_AEB15C: VCallAd Control_ID_DetaUngaTxt
  loc_AEB15F: FStAdFunc var_8C
  loc_AEB162: FLdPr var_8C
  loc_AEB165:  = Me.Text
  loc_AEB16A: ILdRf var_A0
  loc_AEB16D: ConcatStr
  loc_AEB16E: FStStrNoPop var_A8
  loc_AEB171: LitStr "</span>"
  loc_AEB174: ConcatStr
  loc_AEB175: CVarStr var_9C
  loc_AEB178: PopAdLdVar
  loc_AEB179: FLdPr Me
  loc_AEB17C: MemLdRfVar from_stack_1.global_68
  loc_AEB17F: LdPrVar
  loc_AEB181: LateMemCall
  loc_AEB187: FFreeStr var_A0 = ""
  loc_AEB18E: FFree1Ad var_8C
  loc_AEB191: FFree1Var var_9C = ""
  loc_AEB194: Branch loc_AEB1AB
  loc_AEB197: LitVarStr var_C0, "&nbsp;"
  loc_AEB19C: PopAdLdVar
  loc_AEB19D: FLdPr Me
  loc_AEB1A0: MemLdRfVar from_stack_1.global_68
  loc_AEB1A3: LdPrVar
  loc_AEB1A5: LateMemCall
  loc_AEB1AB: LitVarStr var_C0, "    </th>"
  loc_AEB1B0: PopAdLdVar
  loc_AEB1B1: FLdPr Me
  loc_AEB1B4: MemLdRfVar from_stack_1.global_68
  loc_AEB1B7: LdPrVar
  loc_AEB1B9: LateMemCall
  loc_AEB1BF: LitVarStr var_C0, "  </tr>"
  loc_AEB1C4: PopAdLdVar
  loc_AEB1C5: FLdPr Me
  loc_AEB1C8: MemLdRfVar from_stack_1.global_68
  loc_AEB1CB: LdPrVar
  loc_AEB1CD: LateMemCall
  loc_AEB1D3: LitVarStr var_C0, "</table>"
  loc_AEB1D8: PopAdLdVar
  loc_AEB1D9: FLdPr Me
  loc_AEB1DC: MemLdRfVar from_stack_1.global_68
  loc_AEB1DF: LdPrVar
  loc_AEB1E1: LateMemCall
  loc_AEB1E7: LitVarStr var_C0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEB1EC: PopAdLdVar
  loc_AEB1ED: FLdPr Me
  loc_AEB1F0: MemLdRfVar from_stack_1.global_68
  loc_AEB1F3: LdPrVar
  loc_AEB1F5: LateMemCall
  loc_AEB1FB: LitVarStr var_C0, "  <THEAD>"
  loc_AEB200: PopAdLdVar
  loc_AEB201: FLdPr Me
  loc_AEB204: MemLdRfVar from_stack_1.global_68
  loc_AEB207: LdPrVar
  loc_AEB209: LateMemCall
  loc_AEB20F: LitVarStr var_C0, "  <tr class=""Encabezado"" align=""center"">"
  loc_AEB214: PopAdLdVar
  loc_AEB215: FLdPr Me
  loc_AEB218: MemLdRfVar from_stack_1.global_68
  loc_AEB21B: LdPrVar
  loc_AEB21D: LateMemCall
  loc_AEB223: LitVarStr var_C0, "    <th>Organigrama</th>"
  loc_AEB228: PopAdLdVar
  loc_AEB229: FLdPr Me
  loc_AEB22C: MemLdRfVar from_stack_1.global_68
  loc_AEB22F: LdPrVar
  loc_AEB231: LateMemCall
  loc_AEB237: LitVarStr var_C0, "    <th>Unidad de Gasto</th>"
  loc_AEB23C: PopAdLdVar
  loc_AEB23D: FLdPr Me
  loc_AEB240: MemLdRfVar from_stack_1.global_68
  loc_AEB243: LdPrVar
  loc_AEB245: LateMemCall
  loc_AEB24B: LitVarStr var_C0, "  </tr>"
  loc_AEB250: PopAdLdVar
  loc_AEB251: FLdPr Me
  loc_AEB254: MemLdRfVar from_stack_1.global_68
  loc_AEB257: LdPrVar
  loc_AEB259: LateMemCall
  loc_AEB25F: LitVarStr var_C0, "  </THEAD>"
  loc_AEB264: PopAdLdVar
  loc_AEB265: FLdPr Me
  loc_AEB268: MemLdRfVar from_stack_1.global_68
  loc_AEB26B: LdPrVar
  loc_AEB26D: LateMemCall
  loc_AEB273: ExitProcHresult
End Function

Private Function Proc_207_21_983D50() '983D50
  'Data Table: 45F4A0
  loc_983D10: LitVarStr var_94, "</table>"
  loc_983D15: PopAdLdVar
  loc_983D16: FLdPr Me
  loc_983D19: MemLdRfVar from_stack_1.global_68
  loc_983D1C: LdPrVar
  loc_983D1E: LateMemCall
  loc_983D24: LitVarStr var_94, "</body>"
  loc_983D29: PopAdLdVar
  loc_983D2A: FLdPr Me
  loc_983D2D: MemLdRfVar from_stack_1.global_68
  loc_983D30: LdPrVar
  loc_983D32: LateMemCall
  loc_983D38: LitVarStr var_94, "</html>"
  loc_983D3D: PopAdLdVar
  loc_983D3E: FLdPr Me
  loc_983D41: MemLdRfVar from_stack_1.global_68
  loc_983D44: LdPrVar
  loc_983D46: LateMemCall
  loc_983D4C: ExitProcHresult
End Function
