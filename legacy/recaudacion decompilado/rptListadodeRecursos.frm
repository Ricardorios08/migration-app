VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeRecursos
  Caption = "Listado de Recursos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeRecursos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8760
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 8760
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptListadodeRecursos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7680
    Top = 1560
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptListadodeRecursos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeRecursos.frx":0B9C
    Left = 8280
    Top = 1320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1320
    Width = 3255
    Height = 1215
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 5
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
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
    Caption = "Imprimir"
    Left = 120
    Top = 1320
    Width = 4095
    Height = 1215
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
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
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1215
    TabIndex = 8
    Begin VB.CheckBox VerificaciondeUsoChk
      Caption = "Verificación de uso"
      Left = 3000
      Top = 480
      Width = 2415
      Height = 300
      TabIndex = 1
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
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
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 1560
      Top = 480
      Width = 735
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptListadodeRecursos.frx":0C00
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 480
      Top = 480
      Width = 870
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7800
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptListadodeRecursos.frx":0C90
  End
End

Attribute VB_Name = "rptListadodeRecursos"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub cmdPdf_Click() '9E08CC
  'Data Table: 460CB4
  loc_9E08B0: LitI2_Byte 0
  loc_9E08B2: PopTmpLdAd2 var_8A
  loc_9E08B5: ILdRf Me
  loc_9E08B8: CastAd
  loc_9E08BB: FStAdFunc var_88
  loc_9E08BE: FLdRfVar var_88
  loc_9E08C1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E08C6: FFree1Ad var_88
  loc_9E08C9: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A89B00
  'Data Table: 460CB4
  loc_A89A6C: LitI2_Byte 0
  loc_A89A6E: FLdPr Me
  loc_A89A71: MemStI2 bGenerado
  loc_A89A74: LitI2_Byte &HFF
  loc_A89A76: FLdPr Me
  loc_A89A79: MemStI2 bLogos
  loc_A89A7C: LitI2_Byte 0
  loc_A89A7E: ILdRf Me
  loc_A89A81: CastAd
  loc_A89A84: FStAdFunc var_88
  loc_A89A87: FLdRfVar var_88
  loc_A89A8A: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A89A8F: FFree1Ad var_88
  loc_A89A92: LitI2_Byte 0
  loc_A89A94: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A89A99: CVarDate var_A8
  loc_A89A9D: FLdRfVar var_B8
  loc_A89AA0: ImpAdCallFPR4  = Year()
  loc_A89AA5: FLdRfVar var_B8
  loc_A89AA8: CStrVarTmp
  loc_A89AA9: CVarStr var_C8
  loc_A89AAC: PopAdLdVar
  loc_A89AAD: FLdPr Me
  loc_A89AB0: VCallAd Control_ID_PeriInfoMsk
  loc_A89AB3: FStAdFunc var_88
  loc_A89AB6: FLdPr var_88
  loc_A89AB9: LateIdSt
  loc_A89ABE: FFree1Ad var_88
  loc_A89AC1: FFreeVar var_A8 = "": var_B8 = ""
  loc_A89ACA: LitI4 0
  loc_A89ACF: CI2I4
  loc_A89AD0: FLdPr Me
  loc_A89AD3: VCallAd Control_ID_VerificaciondeUsoChk
  loc_A89AD6: FStAdFunc var_88
  loc_A89AD9: FLdPr var_88
  loc_A89ADC: Me.Value = from_stack_1
  loc_A89AE1: FFree1Ad var_88
  loc_A89AE4: Call HabilitarCriterio()
  loc_A89AE9: ILdRf Me
  loc_A89AEC: CastAd
  loc_A89AEF: FStAdFunc var_88
  loc_A89AF2: FLdRfVar var_88
  loc_A89AF5: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A89AFA: FFree1Ad var_88
  loc_A89AFD: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E091C
  'Data Table: 460CB4
  loc_9E0900: LitI2_Byte &HFF
  loc_9E0902: LitI2_Byte 0
  loc_9E0904: ILdRf Me
  loc_9E0907: CastAd
  loc_9E090A: FStAdFunc var_88
  loc_9E090D: FLdRfVar var_88
  loc_9E0910: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E0915: FFree1Ad var_88
  loc_9E0918: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB2B8
  'Data Table: 460CB4
  loc_9CB2A0: ILdRf Me
  loc_9CB2A3: CastAd
  loc_9CB2A6: FStAdFunc var_88
  loc_9CB2A9: FLdRfVar var_88
  loc_9CB2AC: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB2B1: FFree1Ad var_88
  loc_9CB2B4: ExitProcHresult
End Sub

Private Sub Form_Load() '9E082C
  'Data Table: 460CB4
  loc_9E0810: ILdRf Me
  loc_9E0813: CastAd
  loc_9E0816: FStAdFunc var_88
  loc_9E0819: FLdRfVar var_88
  loc_9E081C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E0821: FFree1Ad var_88
  loc_9E0824: Call cmdNueva_Click()
  loc_9E0829: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CB564
  'Data Table: 460CB4
  loc_9CB54C: FLdPr Me
  loc_9CB54F: VCallAd Control_ID_wbbReporte
  loc_9CB552: FStAdFunc var_88
  loc_9CB555: FLdRfVar var_88
  loc_9CB558: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CB55D: FFree1Ad var_88
  loc_9CB560: ExitProcHresult
  loc_9CB561: FStStrCopy arg_6572
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9C5DB0
  'Data Table: 460CB4
  loc_9C5D9C: FLdPr Me
  loc_9C5D9F: VCallAd Control_ID_PeriInfoMsk
  loc_9C5DA2: CVarAd
  loc_9C5DA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5DAB: FFree1Var var_94 = ""
  loc_9C5DAE: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_8 'A705FC
  'Data Table: 460CB4
  loc_A70594: FLdPr Me
  loc_A70597: VCallAd Control_ID_PeriInfoMsk
  loc_A7059A: FStAdFunc var_88
  loc_A7059D: FLdPr var_88
  loc_A705A0: LateIdLdVar var_98 DispID_22 0
  loc_A705A7: PopAd
  loc_A705A9: LitI2_Byte 0
  loc_A705AB: LitI2_Byte 0
  loc_A705AD: FLdRfVar var_98
  loc_A705B0: CStrVarTmp
  loc_A705B1: FStStrNoPop var_9C
  loc_A705B4: LitStr "Periodo"
  loc_A705B7: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A705BC: FStStrNoPop var_A0
  loc_A705BF: FLdPr Me
  loc_A705C2: MemStStrCopy
  loc_A705C6: FFreeStr var_9C = ""
  loc_A705CD: FFree1Ad var_88
  loc_A705D0: FFree1Var var_98 = ""
  loc_A705D3: FLdPr Me
  loc_A705D6: VCallAd Control_ID_PeriInfoMsk
  loc_A705D9: FStAdFuncNoPop
  loc_A705DC: CastAd
  loc_A705DF: FStAdFunc var_A4
  loc_A705E2: FLdRfVar var_A4
  loc_A705E5: FLdPr Me
  loc_A705E8: MemLdStr global_88
  loc_A705EB: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A705F0: IStI2 Cancel
  loc_A705F3: FFreeAd var_88 = ""
  loc_A705FA: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CB304
  'Data Table: 460CB4
  loc_9CB2EC: LitI2_Byte 0
  loc_9CB2EE: ILdRf Me
  loc_9CB2F1: CastAd
  loc_9CB2F4: FStAdFunc var_88
  loc_9CB2F7: FLdRfVar var_88
  loc_9CB2FA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CB2FF: FFree1Ad var_88
  loc_9CB302: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A03C74
  'Data Table: 460CB4
  loc_A03C44: LitVarStr var_94, "Cerrando..."
  loc_A03C49: PopAdLdVar
  loc_A03C4A: FLdPr Me
  loc_A03C4D: VCallAd Control_ID_statusBar
  loc_A03C50: FStAdFunc var_A8
  loc_A03C53: FLdPr var_A8
  loc_A03C56: LateIdSt
  loc_A03C5B: FFree1Ad var_A8
  loc_A03C5E: ILdRf Me
  loc_A03C61: FStAdNoPop
  loc_A03C65: ImpAdLdRf MemVar_D9C5D8
  loc_A03C68: NewIfNullPr Global
  loc_A03C6B: Global.Unload from_stack_1
  loc_A03C70: FFree1Ad var_A8
  loc_A03C73: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13618
  'Data Table: 460CB4
  loc_A135E0: FLdPr Me
  loc_A135E3: VCallAd Control_ID_statusBar
  loc_A135E6: FStAdFunc var_88
  loc_A135E9: FLdPr var_88
  loc_A135EC: LateIdLdVar var_98 DispID_1 0
  loc_A135F3: CStrVarTmp
  loc_A135F4: CVarStr var_A8
  loc_A135F7: PopAdLdVar
  loc_A135F8: FLdPr Me
  loc_A135FB: VCallAd Control_ID_statusBar
  loc_A135FE: FStAdFunc var_BC
  loc_A13601: FLdPr var_BC
  loc_A13604: LateIdSt
  loc_A13609: FFreeAd var_88 = ""
  loc_A13610: FFreeVar var_98 = ""
  loc_A13617: ExitProcHresult
End Sub

Public Function bLogosGet() '461800
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '46180F
  bLogos = Value
End Sub

Public Function bGeneradoGet() '46181E
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46182D
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A41570
  'Data Table: 460CB4
  loc_A4152C: LitI4 0
  loc_A41531: LitI4 1
  loc_A41536: FLdRfVar var_88
  loc_A41539: Redim
  loc_A41543: FLdPr Me
  loc_A41546: VCallAd Control_ID_PeriInfoMsk
  loc_A41549: CVarAd
  loc_A4154D: ParmAry1St
  loc_A41553: FLdPr Me
  loc_A41556: VCallAd Control_ID_VerificaciondeUsoChk
  loc_A41559: CVarAd
  loc_A4155D: ParmAry1St
  loc_A41563: FLdRfVar var_88
  loc_A41566: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4156B: FLdRfVar var_88
  loc_A4156E: Erase
  loc_A4156F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BC1804
  'Data Table: 460CB4
  loc_BC11B4: FLdPr Me
  loc_BC11B7: MemLdI2 bGenerado
  loc_BC11BA: BranchF loc_BC11BE
  loc_BC11BD: ExitProcHresult
  loc_BC11BE: LitVarStr var_94, "Generando reporte..."
  loc_BC11C3: PopAdLdVar
  loc_BC11C4: FLdPr Me
  loc_BC11C7: VCallAd Control_ID_statusBar
  loc_BC11CA: FStAdFunc var_A8
  loc_BC11CD: FLdPr var_A8
  loc_BC11D0: LateIdSt
  loc_BC11D5: FFree1Ad var_A8
  loc_BC11D8: LitI4 &HB
  loc_BC11DD: CI2I4
  loc_BC11DE: FLdPr Me
  loc_BC11E1: Me.MousePointer = from_stack_1
  loc_BC11E6: FLdPr Me
  loc_BC11E9: MemLdRfVar from_stack_1.global_76
  loc_BC11EC: NewIfNullAd
  loc_BC11EF: FStAd var_AC 
  loc_BC11F3: FLdRfVar var_AE
  loc_BC11F6: FLdPr Me
  loc_BC11F9: VCallAd Control_ID_VerificaciondeUsoChk
  loc_BC11FC: FStAdFunc var_A8
  loc_BC11FF: FLdPr var_A8
  loc_BC1202:  = Me.Value
  loc_BC1207: FLdI2 var_AE
  loc_BC120A: CI4UI1
  loc_BC120B: LitI4 1
  loc_BC1210: EqI4
  loc_BC1211: FFree1Ad var_A8
  loc_BC1214: BranchF loc_BC13C5
  loc_BC1217: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_conc;"
  loc_BC121A: LitStr " CREATE TEMPORARY TABLE tmp_conc"
  loc_BC121D: ConcatStr
  loc_BC121E: FStStrNoPop var_B4
  loc_BC1221: LitStr " (SELECT PeriInfo, CodiConc, 0 as ctacte, 0 as histoctacte, 0 as detapago"
  loc_BC1224: ConcatStr
  loc_BC1225: FStStrNoPop var_B8
  loc_BC1228: LitStr " FROM concepto WHERE PeriInfo = "
  loc_BC122B: ConcatStr
  loc_BC122C: FStStrNoPop var_CC
  loc_BC122F: FLdPr Me
  loc_BC1232: VCallAd Control_ID_PeriInfoMsk
  loc_BC1235: FStAdFunc var_A8
  loc_BC1238: FLdPr var_A8
  loc_BC123B: LateIdLdVar var_C8 DispID_22 0
  loc_BC1242: CStrVarTmp
  loc_BC1243: FStStrNoPop var_D0
  loc_BC1246: ConcatStr
  loc_BC1247: FStStrNoPop var_D4
  loc_BC124A: LitStr ") UNION ALL"
  loc_BC124D: ConcatStr
  loc_BC124E: FStStrNoPop var_D8
  loc_BC1251: LitStr " (SELECT PeriInfo, CodiConc, 1 AS ctacte, 0 as histoctacte, 0 as detapago"
  loc_BC1254: ConcatStr
  loc_BC1255: FStStrNoPop var_DC
  loc_BC1258: LitStr " FROM ctacte WHERE PeriInfo = "
  loc_BC125B: ConcatStr
  loc_BC125C: FStStrNoPop var_F4
  loc_BC125F: FLdPr Me
  loc_BC1262: VCallAd Control_ID_PeriInfoMsk
  loc_BC1265: FStAdFunc var_E0
  loc_BC1268: FLdPr var_E0
  loc_BC126B: LateIdLdVar var_F0 DispID_22 0
  loc_BC1272: CStrVarTmp
  loc_BC1273: FStStrNoPop var_F8
  loc_BC1276: ConcatStr
  loc_BC1277: FStStrNoPop var_FC
  loc_BC127A: LitStr " GROUP BY PeriInfo, CodiConc) UNION ALL"
  loc_BC127D: ConcatStr
  loc_BC127E: FStStrNoPop var_100
  loc_BC1281: LitStr " (SELECT PeriInfo, CodiConc, 0 AS ctacte, 1 as histoctacte, 0 as detapago"
  loc_BC1284: ConcatStr
  loc_BC1285: FStStrNoPop var_104
  loc_BC1288: LitStr " FROM recahisto.histoctacte WHERE PeriInfo = "
  loc_BC128B: ConcatStr
  loc_BC128C: FStStrNoPop var_11C
  loc_BC128F: FLdPr Me
  loc_BC1292: VCallAd Control_ID_PeriInfoMsk
  loc_BC1295: FStAdFunc var_108
  loc_BC1298: FLdPr var_108
  loc_BC129B: LateIdLdVar var_118 DispID_22 0
  loc_BC12A2: CStrVarTmp
  loc_BC12A3: FStStrNoPop var_120
  loc_BC12A6: ConcatStr
  loc_BC12A7: FStStrNoPop var_124
  loc_BC12AA: LitStr " GROUP BY PeriInfo, CodiConc) UNION ALL"
  loc_BC12AD: ConcatStr
  loc_BC12AE: FStStrNoPop var_128
  loc_BC12B1: LitStr " (SELECT PeriInfo, CodiConc, 0 AS ctacte, 0 as histoctacte, 1 as detapago"
  loc_BC12B4: ConcatStr
  loc_BC12B5: FStStrNoPop var_12C
  loc_BC12B8: LitStr " FROM detapago WHERE PeriInfo = "
  loc_BC12BB: ConcatStr
  loc_BC12BC: FStStrNoPop var_144
  loc_BC12BF: FLdPr Me
  loc_BC12C2: VCallAd Control_ID_PeriInfoMsk
  loc_BC12C5: FStAdFunc var_130
  loc_BC12C8: FLdPr var_130
  loc_BC12CB: LateIdLdVar var_140 DispID_22 0
  loc_BC12D2: CStrVarTmp
  loc_BC12D3: FStStrNoPop var_148
  loc_BC12D6: ConcatStr
  loc_BC12D7: FStStrNoPop var_14C
  loc_BC12DA: LitStr " GROUP BY PeriInfo, CodiConc);"
  loc_BC12DD: ConcatStr
  loc_BC12DE: FStStrNoPop var_150
  loc_BC12E1: LitStr " DROP TEMPORARY TABLE IF EXISTS conc;"
  loc_BC12E4: ConcatStr
  loc_BC12E5: FStStrNoPop var_154
  loc_BC12E8: LitStr " CREATE TEMPORARY TABLE conc"
  loc_BC12EB: ConcatStr
  loc_BC12EC: FStStrNoPop var_158
  loc_BC12EF: LitStr " SELECT PeriInfo, CodiConc, sum(ctacte) as ctacte, sum(histoctacte) as histoctacte, sum(detapago) as detapago"
  loc_BC12F2: ConcatStr
  loc_BC12F3: FStStrNoPop var_15C
  loc_BC12F6: LitStr " FROM tmp_conc GROUP BY CodiConc;"
  loc_BC12F9: ConcatStr
  loc_BC12FA: FStStrNoPop var_160
  loc_BC12FD: LitStr " DROP TEMPORARY TABLE tmp_conc;"
  loc_BC1300: ConcatStr
  loc_BC1301: FStStrNoPop var_164
  loc_BC1304: FLdPr var_AC
  loc_BC1307: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_BC130C: FFreeStr var_B4 = "": var_B8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_BC1343: FFreeAd var_A8 = "": var_E0 = "": var_108 = ""
  loc_BC134E: FFreeVar var_C8 = "": var_F0 = "": var_118 = ""
  loc_BC1359: LitStr " SELECT concepto.*, ifnull(c1.DetaCuco,'') as DeinCuco, ifnull(c2.DetaCuco,'') as DeacCuco, ctacte, histoctacte, detapago"
  loc_BC135C: LitStr " FROM concepto"
  loc_BC135F: ConcatStr
  loc_BC1360: FStStrNoPop var_B4
  loc_BC1363: LitStr " LEFT JOIN conc ON conc.PeriInfo = concepto.PeriInfo AND conc.CodiConc = concepto.CodiConc"
  loc_BC1366: ConcatStr
  loc_BC1367: FStStrNoPop var_B8
  loc_BC136A: LitStr " LEFT JOIN infogov.cuentacontable as c1 ON c1.PeriInfo = concepto.PeriInfo AND c1.CodiCuco = concepto.IngrConc"
  loc_BC136D: ConcatStr
  loc_BC136E: FStStrNoPop var_CC
  loc_BC1371: LitStr " LEFT JOIN infogov.cuentacontable as c2 ON c2.PeriInfo = concepto.PeriInfo AND c2.CodiCuco = concepto.ActiConc"
  loc_BC1374: ConcatStr
  loc_BC1375: FStStrNoPop var_D0
  loc_BC1378: LitStr " WHERE concepto.PeriInfo = "
  loc_BC137B: ConcatStr
  loc_BC137C: FStStrNoPop var_D4
  loc_BC137F: FLdPr Me
  loc_BC1382: VCallAd Control_ID_PeriInfoMsk
  loc_BC1385: FStAdFunc var_A8
  loc_BC1388: FLdPr var_A8
  loc_BC138B: LateIdLdVar var_C8 DispID_22 0
  loc_BC1392: CStrVarTmp
  loc_BC1393: FStStrNoPop var_D8
  loc_BC1396: ConcatStr
  loc_BC1397: FStStrNoPop var_DC
  loc_BC139A: LitStr " ORDER BY CodiConc"
  loc_BC139D: ConcatStr
  loc_BC139E: FStStrNoPop var_F4
  loc_BC13A1: FLdPr var_AC
  loc_BC13A4: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_BC13A9: FFreeStr var_B4 = "": var_B8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_BC13BC: FFree1Ad var_A8
  loc_BC13BF: FFree1Var var_C8 = ""
  loc_BC13C2: Branch loc_BC1481
  loc_BC13C5: LitStr "Municipalidad de Guaymallén"
  loc_BC13C8: LitStr "Municipalidad de Guaymallén"
  loc_BC13CB: EqStr
  loc_BC13CD: BranchF loc_BC142A
  loc_BC13D0: LitStr "SELECT concepto.*, ifnull(c1.DetaCuco,'') as DeinCuco, ifnull(c2.DetaCuco,'') as DeacCuco FROM concepto"
  loc_BC13D3: LitStr " LEFT JOIN infogov.cuentacontable as c1 ON c1.PeriInfo = concepto.PeriInfo AND c1.CodiCuco = concepto.IngrConc"
  loc_BC13D6: ConcatStr
  loc_BC13D7: FStStrNoPop var_B4
  loc_BC13DA: LitStr " LEFT JOIN infogov.cuentacontable as c2 ON c2.PeriInfo = concepto.PeriInfo AND c2.CodiCuco = concepto.ActiConc"
  loc_BC13DD: ConcatStr
  loc_BC13DE: FStStrNoPop var_B8
  loc_BC13E1: LitStr " WHERE concepto.PeriInfo = "
  loc_BC13E4: ConcatStr
  loc_BC13E5: FStStrNoPop var_CC
  loc_BC13E8: FLdPr Me
  loc_BC13EB: VCallAd Control_ID_PeriInfoMsk
  loc_BC13EE: FStAdFunc var_A8
  loc_BC13F1: FLdPr var_A8
  loc_BC13F4: LateIdLdVar var_C8 DispID_22 0
  loc_BC13FB: CStrVarTmp
  loc_BC13FC: FStStrNoPop var_D0
  loc_BC13FF: ConcatStr
  loc_BC1400: FStStrNoPop var_D4
  loc_BC1403: LitStr " ORDER BY CodiConc"
  loc_BC1406: ConcatStr
  loc_BC1407: FStStrNoPop var_D8
  loc_BC140A: FLdPr var_AC
  loc_BC140D: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_BC1412: FFreeStr var_B4 = "": var_B8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BC1421: FFree1Ad var_A8
  loc_BC1424: FFree1Var var_C8 = ""
  loc_BC1427: Branch loc_BC1481
  loc_BC142A: LitStr "SELECT concepto.*, ifnull(c1.DetaCuco,'') as DeinCuco, ifnull(c2.DetaCuco,'') as DeacCuco FROM concepto"
  loc_BC142D: LitStr " LEFT JOIN infogov.cuentacontable as c1 ON c1.PeriInfo = concepto.PeriInfo AND c1.CodiCuco = concepto.IngrConc"
  loc_BC1430: ConcatStr
  loc_BC1431: FStStrNoPop var_B4
  loc_BC1434: LitStr " LEFT JOIN infogov.cuentacontable as c2 ON c2.PeriInfo = concepto.PeriInfo AND c2.CodiCuco = concepto.ActiConc"
  loc_BC1437: ConcatStr
  loc_BC1438: FStStrNoPop var_B8
  loc_BC143B: LitStr " WHERE concepto.PeriInfo = "
  loc_BC143E: ConcatStr
  loc_BC143F: FStStrNoPop var_CC
  loc_BC1442: FLdPr Me
  loc_BC1445: VCallAd Control_ID_PeriInfoMsk
  loc_BC1448: FStAdFunc var_A8
  loc_BC144B: FLdPr var_A8
  loc_BC144E: LateIdLdVar var_C8 DispID_22 0
  loc_BC1455: CStrVarTmp
  loc_BC1456: FStStrNoPop var_D0
  loc_BC1459: ConcatStr
  loc_BC145A: FStStrNoPop var_D4
  loc_BC145D: LitStr " ORDER BY CodiConc"
  loc_BC1460: ConcatStr
  loc_BC1461: FStStrNoPop var_D8
  loc_BC1464: FLdPr var_AC
  loc_BC1467: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_BC146C: FFreeStr var_B4 = "": var_B8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BC147B: FFree1Ad var_A8
  loc_BC147E: FFree1Var var_C8 = ""
  loc_BC1481: FLdRfVar var_168
  loc_BC1484: FLdPr var_AC
  loc_BC1487: from_stack_1 = clsconcepto.RecordCount
  loc_BC148C: ILdRf var_168
  loc_BC148F: LitI4 1
  loc_BC1494: LtI4
  loc_BC1495: BranchF loc_BC14A3
  loc_BC1498: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BC149B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC14A0: Branch loc_BC17D8
  loc_BC14A3: LitI4 0
  loc_BC14A8: FLdRfVar var_168
  loc_BC14AB: FLdPr var_AC
  loc_BC14AE: from_stack_1 = clsconcepto.RecordCount
  loc_BC14B3: ILdRf var_168
  loc_BC14B6: FLdPr Me
  loc_BC14B9: MemLdRfVar from_stack_1.global_80
  loc_BC14BC: Redim
  loc_BC14C6: FLdPr var_AC
  loc_BC14C9: Call clsconcepto.MoveFirst()
  loc_BC14CE: LitI2_Byte 1
  loc_BC14D0: FLdPr Me
  loc_BC14D3: MemLdRfVar from_stack_1.global_84
  loc_BC14D6: FLdPr Me
  loc_BC14D9: MemLdStr global_80
  loc_BC14DC: LitI2_Byte 1
  loc_BC14DE: FnUBound
  loc_BC14E0: CI2I4
  loc_BC14E1: ForI2 var_16C
  loc_BC14E7: FLdRfVar var_B4
  loc_BC14EA: FLdPr var_AC
  loc_BC14ED: from_stack_1 = clsconcepto.CodiConc
  loc_BC14F2: LitI2_Byte 0
  loc_BC14F4: LitVar_Missing var_F0
  loc_BC14F7: LitI2_Byte 0
  loc_BC14F9: FLdZeroAd var_B4
  loc_BC14FC: CVarStr var_C8
  loc_BC14FF: PopAdLdVar
  loc_BC1500: FLdPr Me
  loc_BC1503: MemLdI2 global_84
  loc_BC1506: CI4UI1
  loc_BC1507: FLdPr Me
  loc_BC150A: MemLdStr global_80
  loc_BC150D: AryLock
  loc_BC1510: Ary1LdPr
  loc_BC1511: MemLdRfVar from_stack_1.global_0
  loc_BC1514: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC1519: AryUnlock
  loc_BC151C: FFreeVar var_C8 = ""
  loc_BC1523: LitStr "Municipalidad de Guaymallén"
  loc_BC1526: LitStr "Municipalidad de Guaymallén"
  loc_BC1529: EqStr
  loc_BC152B: BranchF loc_BC1591
  loc_BC152E: FLdRfVar var_108
  loc_BC1531: LitVarStr var_94, "ConcViej"
  loc_BC1536: PopAdLdVar
  loc_BC1537: FLdRfVar var_E0
  loc_BC153A: FLdRfVar var_A8
  loc_BC153D: FLdPr var_AC
  loc_BC1540: from_stack_1v = clsconcepto.RsFrmGet()
  loc_BC1545: FLdPr var_A8
  loc_BC1548:  = Me.Fields
  loc_BC154D: FLdPr var_E0
  loc_BC1550: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1555: LitI2_Byte 0
  loc_BC1557: LitVar_Missing var_F0
  loc_BC155A: LitI2_Byte 0
  loc_BC155C: FLdZeroAd var_108
  loc_BC155F: CVarAd
  loc_BC1563: PopAdLdVar
  loc_BC1564: FLdPr Me
  loc_BC1567: MemLdI2 global_84
  loc_BC156A: CI4UI1
  loc_BC156B: FLdPr Me
  loc_BC156E: MemLdStr global_80
  loc_BC1571: AryLock
  loc_BC1574: Ary1LdPr
  loc_BC1575: MemLdRfVar from_stack_1.global_4
  loc_BC1578: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC157D: AryUnlock
  loc_BC1580: FFreeAd var_A8 = ""
  loc_BC1587: FFreeVar var_C8 = ""
  loc_BC158E: Branch loc_BC15BD
  loc_BC1591: LitI2_Byte 0
  loc_BC1593: LitVar_Missing var_C8
  loc_BC1596: LitI2_Byte 0
  loc_BC1598: LitVarStr var_94, vbNullString
  loc_BC159D: PopAdLdVar
  loc_BC159E: FLdPr Me
  loc_BC15A1: MemLdI2 global_84
  loc_BC15A4: CI4UI1
  loc_BC15A5: FLdPr Me
  loc_BC15A8: MemLdStr global_80
  loc_BC15AB: AryLock
  loc_BC15AE: Ary1LdPr
  loc_BC15AF: MemLdRfVar from_stack_1.global_4
  loc_BC15B2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC15B7: AryUnlock
  loc_BC15BA: FFree1Var var_C8 = ""
  loc_BC15BD: FLdRfVar var_B4
  loc_BC15C0: FLdPr var_AC
  loc_BC15C3: from_stack_1 = clsconcepto.DetaConc
  loc_BC15C8: LitI2_Byte 0
  loc_BC15CA: LitVar_Missing var_F0
  loc_BC15CD: LitI2_Byte 0
  loc_BC15CF: FLdZeroAd var_B4
  loc_BC15D2: CVarStr var_C8
  loc_BC15D5: PopAdLdVar
  loc_BC15D6: FLdPr Me
  loc_BC15D9: MemLdI2 global_84
  loc_BC15DC: CI4UI1
  loc_BC15DD: FLdPr Me
  loc_BC15E0: MemLdStr global_80
  loc_BC15E3: AryLock
  loc_BC15E6: Ary1LdPr
  loc_BC15E7: MemLdRfVar from_stack_1.global_8
  loc_BC15EA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC15EF: AryUnlock
  loc_BC15F2: FFreeVar var_C8 = ""
  loc_BC15F9: FLdRfVar var_B4
  loc_BC15FC: FLdPr var_AC
  loc_BC15FF: from_stack_1 = clsconcepto.IngrConc
  loc_BC1604: LitI2_Byte 0
  loc_BC1606: LitVar_Missing var_F0
  loc_BC1609: LitI2_Byte 0
  loc_BC160B: FLdZeroAd var_B4
  loc_BC160E: CVarStr var_C8
  loc_BC1611: PopAdLdVar
  loc_BC1612: FLdPr Me
  loc_BC1615: MemLdI2 global_84
  loc_BC1618: CI4UI1
  loc_BC1619: FLdPr Me
  loc_BC161C: MemLdStr global_80
  loc_BC161F: AryLock
  loc_BC1622: Ary1LdPr
  loc_BC1623: MemLdRfVar from_stack_1.global_12
  loc_BC1626: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC162B: AryUnlock
  loc_BC162E: FFreeVar var_C8 = ""
  loc_BC1635: FLdRfVar var_C8
  loc_BC1638: FLdPr var_AC
  loc_BC163B: from_stack_1 = clsconcepto.DeinCuco
  loc_BC1640: LitI2_Byte 0
  loc_BC1642: LitVar_Missing var_F0
  loc_BC1645: LitI2_Byte 0
  loc_BC1647: FLdVar var_C8
  loc_BC164B: FLdPr Me
  loc_BC164E: MemLdI2 global_84
  loc_BC1651: CI4UI1
  loc_BC1652: FLdPr Me
  loc_BC1655: MemLdStr global_80
  loc_BC1658: AryLock
  loc_BC165B: Ary1LdPr
  loc_BC165C: MemLdRfVar from_stack_1.global_16
  loc_BC165F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC1664: AryUnlock
  loc_BC1667: FFreeVar var_C8 = ""
  loc_BC166E: FLdRfVar var_B4
  loc_BC1671: FLdPr var_AC
  loc_BC1674: from_stack_1 = clsconcepto.ActiConc
  loc_BC1679: LitI2_Byte 0
  loc_BC167B: LitVar_Missing var_F0
  loc_BC167E: LitI2_Byte 0
  loc_BC1680: FLdZeroAd var_B4
  loc_BC1683: CVarStr var_C8
  loc_BC1686: PopAdLdVar
  loc_BC1687: FLdPr Me
  loc_BC168A: MemLdI2 global_84
  loc_BC168D: CI4UI1
  loc_BC168E: FLdPr Me
  loc_BC1691: MemLdStr global_80
  loc_BC1694: AryLock
  loc_BC1697: Ary1LdPr
  loc_BC1698: MemLdRfVar from_stack_1.global_20
  loc_BC169B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC16A0: AryUnlock
  loc_BC16A3: FFreeVar var_C8 = ""
  loc_BC16AA: FLdRfVar var_C8
  loc_BC16AD: FLdPr var_AC
  loc_BC16B0: from_stack_1 = clsconcepto.DeacCuco
  loc_BC16B5: LitI2_Byte 0
  loc_BC16B7: LitVar_Missing var_F0
  loc_BC16BA: LitI2_Byte 0
  loc_BC16BC: FLdVar var_C8
  loc_BC16C0: FLdPr Me
  loc_BC16C3: MemLdI2 global_84
  loc_BC16C6: CI4UI1
  loc_BC16C7: FLdPr Me
  loc_BC16CA: MemLdStr global_80
  loc_BC16CD: AryLock
  loc_BC16D0: Ary1LdPr
  loc_BC16D1: MemLdRfVar from_stack_1.global_24
  loc_BC16D4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC16D9: AryUnlock
  loc_BC16DC: FFreeVar var_C8 = ""
  loc_BC16E3: FLdRfVar var_AE
  loc_BC16E6: FLdPr Me
  loc_BC16E9: VCallAd Control_ID_VerificaciondeUsoChk
  loc_BC16EC: FStAdFunc var_A8
  loc_BC16EF: FLdPr var_A8
  loc_BC16F2:  = Me.Value
  loc_BC16F7: FLdI2 var_AE
  loc_BC16FA: CI4UI1
  loc_BC16FB: LitI4 1
  loc_BC1700: EqI4
  loc_BC1701: FFree1Ad var_A8
  loc_BC1704: BranchF loc_BC17B2
  loc_BC1707: FLdRfVar var_C8
  loc_BC170A: FLdPr var_AC
  loc_BC170D: from_stack_1 = clsconcepto.CtaCte
  loc_BC1712: LitI2_Byte 0
  loc_BC1714: LitVar_Missing var_F0
  loc_BC1717: LitI2_Byte 0
  loc_BC1719: FLdVar var_C8
  loc_BC171D: FLdPr Me
  loc_BC1720: MemLdI2 global_84
  loc_BC1723: CI4UI1
  loc_BC1724: FLdPr Me
  loc_BC1727: MemLdStr global_80
  loc_BC172A: AryLock
  loc_BC172D: Ary1LdPr
  loc_BC172E: MemLdRfVar from_stack_1.global_28
  loc_BC1731: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC1736: AryUnlock
  loc_BC1739: FFreeVar var_C8 = ""
  loc_BC1740: FLdRfVar var_C8
  loc_BC1743: FLdPr var_AC
  loc_BC1746: from_stack_1 = clsconcepto.histoctacte
  loc_BC174B: LitI2_Byte 0
  loc_BC174D: LitVar_Missing var_F0
  loc_BC1750: LitI2_Byte 0
  loc_BC1752: FLdVar var_C8
  loc_BC1756: FLdPr Me
  loc_BC1759: MemLdI2 global_84
  loc_BC175C: CI4UI1
  loc_BC175D: FLdPr Me
  loc_BC1760: MemLdStr global_80
  loc_BC1763: AryLock
  loc_BC1766: Ary1LdPr
  loc_BC1767: MemLdRfVar from_stack_1.global_32
  loc_BC176A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC176F: AryUnlock
  loc_BC1772: FFreeVar var_C8 = ""
  loc_BC1779: FLdRfVar var_C8
  loc_BC177C: FLdPr var_AC
  loc_BC177F: from_stack_1 = clsconcepto.detapago
  loc_BC1784: LitI2_Byte 0
  loc_BC1786: LitVar_Missing var_F0
  loc_BC1789: LitI2_Byte 0
  loc_BC178B: FLdVar var_C8
  loc_BC178F: FLdPr Me
  loc_BC1792: MemLdI2 global_84
  loc_BC1795: CI4UI1
  loc_BC1796: FLdPr Me
  loc_BC1799: MemLdStr global_80
  loc_BC179C: AryLock
  loc_BC179F: Ary1LdPr
  loc_BC17A0: MemLdRfVar from_stack_1.global_36
  loc_BC17A3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BC17A8: AryUnlock
  loc_BC17AB: FFreeVar var_C8 = ""
  loc_BC17B2: LitI2_Byte 1
  loc_BC17B4: PopTmpLdAd2 var_AE
  loc_BC17B7: FLdPr var_AC
  loc_BC17BA: Call clsconcepto.Move(from_stack_1v)
  loc_BC17BF: FLdPr Me
  loc_BC17C2: MemLdRfVar from_stack_1.global_84
  loc_BC17C5: NextI2 var_16C, loc_BC14E7
  loc_BC17CA: LitNothing
  loc_BC17CC: FStAd var_AC 
  loc_BC17D0: LitI2_Byte &HFF
  loc_BC17D2: FLdPr Me
  loc_BC17D5: MemStI2 bGenerado
  loc_BC17D8: LitI4 0
  loc_BC17DD: CI2I4
  loc_BC17DE: FLdPr Me
  loc_BC17E1: Me.MousePointer = from_stack_1
  loc_BC17E6: LitVarStr var_94, vbNullString
  loc_BC17EB: PopAdLdVar
  loc_BC17EC: FLdPr Me
  loc_BC17EF: VCallAd Control_ID_statusBar
  loc_BC17F2: FStAdFunc var_A8
  loc_BC17F5: FLdPr var_A8
  loc_BC17F8: LateIdSt
  loc_BC17FD: FFree1Ad var_A8
  loc_BC1800: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B3362C
  'Data Table: 460CB4
  loc_B33340: FLdRfVar var_88
  loc_B33343: LitI2_Byte 0
  loc_B33345: LitI2_Byte &HFF
  loc_B33347: ImpAdLdI4 MemVar_D93C84
  loc_B3334A: FLdPr Me
  loc_B3334D: MemLdRfVar from_stack_1.global_56
  loc_B33350: NewIfNullPr IFileSystem3
  loc_B33353: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B33358: ILdRf var_88
  loc_B3335B: FLdPr Me
  loc_B3335E: MemStVarAd
  loc_B33362: FFree1Ad var_88
  loc_B33365: LitI2_Byte &HFF
  loc_B33367: ImpAdStI2 MemVar_D93C8A
  loc_B3336A: Call Proc_123_19_BE3718()
  loc_B3336F: LitI2_Byte 1
  loc_B33371: FLdPr Me
  loc_B33374: MemLdRfVar from_stack_1.global_84
  loc_B33377: FLdPr Me
  loc_B3337A: MemLdStr global_80
  loc_B3337D: LitI2_Byte 1
  loc_B3337F: FnUBound
  loc_B33381: CI2I4
  loc_B33382: ForI2 var_8C
  loc_B33388: FLdPr Me
  loc_B3338B: MemLdI2 global_84
  loc_B3338E: CI4UI1
  loc_B3338F: FLdPr Me
  loc_B33392: MemLdStr global_80
  loc_B33395: AryLock
  loc_B33398: Ary1LdRf
  loc_B33399: FStR4 var_94
  loc_B3339C: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B333A1: PopAdLdVar
  loc_B333A2: FLdPr Me
  loc_B333A5: MemLdRfVar from_stack_1.global_60
  loc_B333A8: LdPrVar
  loc_B333AA: LateMemCall
  loc_B333B0: LitStr vbNullString
  loc_B333B3: LitI2_Byte 0
  loc_B333B5: LitI2_Byte 0
  loc_B333B7: LitI2_Byte 0
  loc_B333B9: LitStr "right"
  loc_B333BC: FMemLdR4 var_94(0)
  loc_B333C1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B333C6: CVarStr var_C4
  loc_B333C9: PopAdLdVar
  loc_B333CA: FLdPr Me
  loc_B333CD: MemLdRfVar from_stack_1.global_60
  loc_B333D0: LdPrVar
  loc_B333D2: LateMemCall
  loc_B333D8: FFree1Var var_C4 = ""
  loc_B333DB: LitStr vbNullString
  loc_B333DE: LitI2_Byte 0
  loc_B333E0: LitI2_Byte 0
  loc_B333E2: LitI2_Byte 0
  loc_B333E4: LitStr "right"
  loc_B333E7: FMemLdR4 var_94(4)
  loc_B333EC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B333F1: CVarStr var_C4
  loc_B333F4: PopAdLdVar
  loc_B333F5: FLdPr Me
  loc_B333F8: MemLdRfVar from_stack_1.global_60
  loc_B333FB: LdPrVar
  loc_B333FD: LateMemCall
  loc_B33403: FFree1Var var_C4 = ""
  loc_B33406: LitStr vbNullString
  loc_B33409: LitI2_Byte 0
  loc_B3340B: LitI2_Byte 0
  loc_B3340D: LitI2_Byte 0
  loc_B3340F: LitStr "left"
  loc_B33412: FMemLdR4 var_94(8)
  loc_B33417: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3341C: CVarStr var_C4
  loc_B3341F: PopAdLdVar
  loc_B33420: FLdPr Me
  loc_B33423: MemLdRfVar from_stack_1.global_60
  loc_B33426: LdPrVar
  loc_B33428: LateMemCall
  loc_B3342E: FFree1Var var_C4 = ""
  loc_B33431: LitStr vbNullString
  loc_B33434: LitI2_Byte 0
  loc_B33436: LitI2_Byte 0
  loc_B33438: LitI2_Byte 0
  loc_B3343A: LitStr "left"
  loc_B3343D: FMemLdR4 var_94(12)
  loc_B33442: LitStr " - "
  loc_B33445: ConcatStr
  loc_B33446: FStStrNoPop var_C8
  loc_B33449: FMemLdR4 var_94(16)
  loc_B3344E: ConcatStr
  loc_B3344F: FStStrNoPop var_CC
  loc_B33452: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33457: CVarStr var_C4
  loc_B3345A: PopAdLdVar
  loc_B3345B: FLdPr Me
  loc_B3345E: MemLdRfVar from_stack_1.global_60
  loc_B33461: LdPrVar
  loc_B33463: LateMemCall
  loc_B33469: FFreeStr var_C8 = ""
  loc_B33470: FFree1Var var_C4 = ""
  loc_B33473: LitStr vbNullString
  loc_B33476: LitI2_Byte 0
  loc_B33478: LitI2_Byte 0
  loc_B3347A: LitI2_Byte 0
  loc_B3347C: LitStr "left"
  loc_B3347F: FMemLdR4 var_94(20)
  loc_B33484: LitStr " - "
  loc_B33487: ConcatStr
  loc_B33488: FStStrNoPop var_C8
  loc_B3348B: FMemLdR4 var_94(24)
  loc_B33490: ConcatStr
  loc_B33491: FStStrNoPop var_CC
  loc_B33494: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33499: CVarStr var_C4
  loc_B3349C: PopAdLdVar
  loc_B3349D: FLdPr Me
  loc_B334A0: MemLdRfVar from_stack_1.global_60
  loc_B334A3: LdPrVar
  loc_B334A5: LateMemCall
  loc_B334AB: FFreeStr var_C8 = ""
  loc_B334B2: FFree1Var var_C4 = ""
  loc_B334B5: FLdRfVar var_CE
  loc_B334B8: FLdPr Me
  loc_B334BB: VCallAd Control_ID_VerificaciondeUsoChk
  loc_B334BE: FStAdFunc var_88
  loc_B334C1: FLdPr var_88
  loc_B334C4:  = Me.Value
  loc_B334C9: FLdI2 var_CE
  loc_B334CC: CI4UI1
  loc_B334CD: LitI4 1
  loc_B334D2: EqI4
  loc_B334D3: FFree1Ad var_88
  loc_B334D6: BranchF loc_B335E4
  loc_B334D9: LitVarStr var_110, "    <td class=""Tilde"" align=""center"">"
  loc_B334DE: LitVarStr var_E0, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_B334E3: FStVarCopyObj var_F0
  loc_B334E6: FLdRfVar var_F0
  loc_B334E9: LitVarStr var_B4, "&thorn;"
  loc_B334EE: FStVarCopyObj var_C4
  loc_B334F1: FLdRfVar var_C4
  loc_B334F4: FMemLdRf ext_4010C4
  loc_B334F9: CVarRef
  loc_B334FE: FLdRfVar var_100
  loc_B33501: ImpAdCallFPR4  = IIf(, , )
  loc_B33506: FLdRfVar var_100
  loc_B33509: ConcatVar var_120
  loc_B3350D: LitVarStr var_130, "</td>"
  loc_B33512: ConcatVar var_140
  loc_B33516: PopAdLdVar
  loc_B33517: FLdPr Me
  loc_B3351A: MemLdRfVar from_stack_1.global_60
  loc_B3351D: LdPrVar
  loc_B3351F: LateMemCall
  loc_B33525: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_120 = ""
  loc_B33532: LitVarStr var_110, "    <td class=""Tilde"" align=""center"">"
  loc_B33537: LitVarStr var_E0, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_B3353C: FStVarCopyObj var_F0
  loc_B3353F: FLdRfVar var_F0
  loc_B33542: LitVarStr var_B4, "&thorn;"
  loc_B33547: FStVarCopyObj var_C4
  loc_B3354A: FLdRfVar var_C4
  loc_B3354D: FMemLdRf ext_4010C4
  loc_B33552: CVarRef
  loc_B33557: FLdRfVar var_100
  loc_B3355A: ImpAdCallFPR4  = IIf(, , )
  loc_B3355F: FLdRfVar var_100
  loc_B33562: ConcatVar var_120
  loc_B33566: LitVarStr var_130, "</td>"
  loc_B3356B: ConcatVar var_140
  loc_B3356F: PopAdLdVar
  loc_B33570: FLdPr Me
  loc_B33573: MemLdRfVar from_stack_1.global_60
  loc_B33576: LdPrVar
  loc_B33578: LateMemCall
  loc_B3357E: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_120 = ""
  loc_B3358B: LitVarStr var_110, "    <td class=""Tilde"" align=""center"">"
  loc_B33590: LitVarStr var_E0, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_B33595: FStVarCopyObj var_F0
  loc_B33598: FLdRfVar var_F0
  loc_B3359B: LitVarStr var_B4, "&thorn;"
  loc_B335A0: FStVarCopyObj var_C4
  loc_B335A3: FLdRfVar var_C4
  loc_B335A6: FMemLdRf ext_4010C4
  loc_B335AB: CVarRef
  loc_B335B0: FLdRfVar var_100
  loc_B335B3: ImpAdCallFPR4  = IIf(, , )
  loc_B335B8: FLdRfVar var_100
  loc_B335BB: ConcatVar var_120
  loc_B335BF: LitVarStr var_130, "</td>"
  loc_B335C4: ConcatVar var_140
  loc_B335C8: PopAdLdVar
  loc_B335C9: FLdPr Me
  loc_B335CC: MemLdRfVar from_stack_1.global_60
  loc_B335CF: LdPrVar
  loc_B335D1: LateMemCall
  loc_B335D7: FFreeVar var_C4 = "": var_F0 = "": var_100 = "": var_120 = ""
  loc_B335E4: LitVarStr var_A4, "     </tr>"
  loc_B335E9: PopAdLdVar
  loc_B335EA: FLdPr Me
  loc_B335ED: MemLdRfVar from_stack_1.global_60
  loc_B335F0: LdPrVar
  loc_B335F2: LateMemCall
  loc_B335F8: LitI4 0
  loc_B335FD: FStR4 var_94
  loc_B33600: AryUnlock
  loc_B33603: FLdPr Me
  loc_B33606: MemLdRfVar from_stack_1.global_84
  loc_B33609: NextI2 var_8C, loc_B33388
  loc_B3360E: Call Proc_123_20_A0F708()
  loc_B33613: FLdPr Me
  loc_B33616: MemLdRfVar from_stack_1.global_60
  loc_B33619: LdPrVar
  loc_B3361B: LateMemCall
  loc_B33621: LitStr vbNullString
  loc_B33624: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B33629: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C5D6C
  'Data Table: 460CB4
  loc_9C5D54: LitI2_Byte 0
  loc_9C5D56: FLdPr Me
  loc_9C5D59: MemStI2 bLogos
  loc_9C5D5C: Call GeneraHTML()
  loc_9C5D61: LitI2_Byte &HFF
  loc_9C5D63: FLdPr Me
  loc_9C5D66: MemStI2 bLogos
  loc_9C5D69: ExitProcHresult
End Sub

Private Function Proc_123_19_BE3718() 'BE3718
  'Data Table: 460CB4
  loc_BE2F5C: LitVarStr var_94, "<html>"
  loc_BE2F61: PopAdLdVar
  loc_BE2F62: FLdPr Me
  loc_BE2F65: MemLdRfVar from_stack_1.global_60
  loc_BE2F68: LdPrVar
  loc_BE2F6A: LateMemCall
  loc_BE2F70: LitVarStr var_94, "<head>"
  loc_BE2F75: PopAdLdVar
  loc_BE2F76: FLdPr Me
  loc_BE2F79: MemLdRfVar from_stack_1.global_60
  loc_BE2F7C: LdPrVar
  loc_BE2F7E: LateMemCall
  loc_BE2F84: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BE2F89: PopAdLdVar
  loc_BE2F8A: FLdPr Me
  loc_BE2F8D: MemLdRfVar from_stack_1.global_60
  loc_BE2F90: LdPrVar
  loc_BE2F92: LateMemCall
  loc_BE2F98: LitStr "<title>"
  loc_BE2F9B: FLdRfVar var_A8
  loc_BE2F9E: FLdPr Me
  loc_BE2FA1:  = Me.Caption
  loc_BE2FA6: ILdRf var_A8
  loc_BE2FA9: ConcatStr
  loc_BE2FAA: FStStrNoPop var_AC
  loc_BE2FAD: LitStr "</title>"
  loc_BE2FB0: ConcatStr
  loc_BE2FB1: CVarStr var_BC
  loc_BE2FB4: PopAdLdVar
  loc_BE2FB5: FLdPr Me
  loc_BE2FB8: MemLdRfVar from_stack_1.global_60
  loc_BE2FBB: LdPrVar
  loc_BE2FBD: LateMemCall
  loc_BE2FC3: FFreeStr var_A8 = ""
  loc_BE2FCA: FFree1Var var_BC = ""
  loc_BE2FCD: LitVarStr var_94, "<style type=""text/css"">"
  loc_BE2FD2: PopAdLdVar
  loc_BE2FD3: FLdPr Me
  loc_BE2FD6: MemLdRfVar from_stack_1.global_60
  loc_BE2FD9: LdPrVar
  loc_BE2FDB: LateMemCall
  loc_BE2FE1: LitVarStr var_94, ".Titulo1 {"
  loc_BE2FE6: PopAdLdVar
  loc_BE2FE7: FLdPr Me
  loc_BE2FEA: MemLdRfVar from_stack_1.global_60
  loc_BE2FED: LdPrVar
  loc_BE2FEF: LateMemCall
  loc_BE2FF5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE2FFA: PopAdLdVar
  loc_BE2FFB: FLdPr Me
  loc_BE2FFE: MemLdRfVar from_stack_1.global_60
  loc_BE3001: LdPrVar
  loc_BE3003: LateMemCall
  loc_BE3009: LitVarStr var_94, " font-size: 18px;"
  loc_BE300E: PopAdLdVar
  loc_BE300F: FLdPr Me
  loc_BE3012: MemLdRfVar from_stack_1.global_60
  loc_BE3015: LdPrVar
  loc_BE3017: LateMemCall
  loc_BE301D: LitVarStr var_94, " font-weight: bold;"
  loc_BE3022: PopAdLdVar
  loc_BE3023: FLdPr Me
  loc_BE3026: MemLdRfVar from_stack_1.global_60
  loc_BE3029: LdPrVar
  loc_BE302B: LateMemCall
  loc_BE3031: LitVarStr var_94, "}"
  loc_BE3036: PopAdLdVar
  loc_BE3037: FLdPr Me
  loc_BE303A: MemLdRfVar from_stack_1.global_60
  loc_BE303D: LdPrVar
  loc_BE303F: LateMemCall
  loc_BE3045: LitVarStr var_94, ".Titulo2 {"
  loc_BE304A: PopAdLdVar
  loc_BE304B: FLdPr Me
  loc_BE304E: MemLdRfVar from_stack_1.global_60
  loc_BE3051: LdPrVar
  loc_BE3053: LateMemCall
  loc_BE3059: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE305E: PopAdLdVar
  loc_BE305F: FLdPr Me
  loc_BE3062: MemLdRfVar from_stack_1.global_60
  loc_BE3065: LdPrVar
  loc_BE3067: LateMemCall
  loc_BE306D: LitVarStr var_94, " font-size: 14px;"
  loc_BE3072: PopAdLdVar
  loc_BE3073: FLdPr Me
  loc_BE3076: MemLdRfVar from_stack_1.global_60
  loc_BE3079: LdPrVar
  loc_BE307B: LateMemCall
  loc_BE3081: LitVarStr var_94, " font-weight: bold;"
  loc_BE3086: PopAdLdVar
  loc_BE3087: FLdPr Me
  loc_BE308A: MemLdRfVar from_stack_1.global_60
  loc_BE308D: LdPrVar
  loc_BE308F: LateMemCall
  loc_BE3095: LitVarStr var_94, "}"
  loc_BE309A: PopAdLdVar
  loc_BE309B: FLdPr Me
  loc_BE309E: MemLdRfVar from_stack_1.global_60
  loc_BE30A1: LdPrVar
  loc_BE30A3: LateMemCall
  loc_BE30A9: LitVarStr var_94, ".Normal {"
  loc_BE30AE: PopAdLdVar
  loc_BE30AF: FLdPr Me
  loc_BE30B2: MemLdRfVar from_stack_1.global_60
  loc_BE30B5: LdPrVar
  loc_BE30B7: LateMemCall
  loc_BE30BD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE30C2: PopAdLdVar
  loc_BE30C3: FLdPr Me
  loc_BE30C6: MemLdRfVar from_stack_1.global_60
  loc_BE30C9: LdPrVar
  loc_BE30CB: LateMemCall
  loc_BE30D1: LitVarStr var_94, " font-size: 12px;"
  loc_BE30D6: PopAdLdVar
  loc_BE30D7: FLdPr Me
  loc_BE30DA: MemLdRfVar from_stack_1.global_60
  loc_BE30DD: LdPrVar
  loc_BE30DF: LateMemCall
  loc_BE30E5: LitVarStr var_94, " font-style: normal;"
  loc_BE30EA: PopAdLdVar
  loc_BE30EB: FLdPr Me
  loc_BE30EE: MemLdRfVar from_stack_1.global_60
  loc_BE30F1: LdPrVar
  loc_BE30F3: LateMemCall
  loc_BE30F9: LitVarStr var_94, " font-weight: normal;"
  loc_BE30FE: PopAdLdVar
  loc_BE30FF: FLdPr Me
  loc_BE3102: MemLdRfVar from_stack_1.global_60
  loc_BE3105: LdPrVar
  loc_BE3107: LateMemCall
  loc_BE310D: LitVarStr var_94, " font-variant: normal;"
  loc_BE3112: PopAdLdVar
  loc_BE3113: FLdPr Me
  loc_BE3116: MemLdRfVar from_stack_1.global_60
  loc_BE3119: LdPrVar
  loc_BE311B: LateMemCall
  loc_BE3121: LitVarStr var_94, "}"
  loc_BE3126: PopAdLdVar
  loc_BE3127: FLdPr Me
  loc_BE312A: MemLdRfVar from_stack_1.global_60
  loc_BE312D: LdPrVar
  loc_BE312F: LateMemCall
  loc_BE3135: LitVarStr var_94, ".Encabezado {"
  loc_BE313A: PopAdLdVar
  loc_BE313B: FLdPr Me
  loc_BE313E: MemLdRfVar from_stack_1.global_60
  loc_BE3141: LdPrVar
  loc_BE3143: LateMemCall
  loc_BE3149: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BE314E: PopAdLdVar
  loc_BE314F: FLdPr Me
  loc_BE3152: MemLdRfVar from_stack_1.global_60
  loc_BE3155: LdPrVar
  loc_BE3157: LateMemCall
  loc_BE315D: LitVarStr var_94, " font-size: 11px;"
  loc_BE3162: PopAdLdVar
  loc_BE3163: FLdPr Me
  loc_BE3166: MemLdRfVar from_stack_1.global_60
  loc_BE3169: LdPrVar
  loc_BE316B: LateMemCall
  loc_BE3171: LitVarStr var_94, " font-weight: bold;"
  loc_BE3176: PopAdLdVar
  loc_BE3177: FLdPr Me
  loc_BE317A: MemLdRfVar from_stack_1.global_60
  loc_BE317D: LdPrVar
  loc_BE317F: LateMemCall
  loc_BE3185: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BE318A: PopAdLdVar
  loc_BE318B: FLdPr Me
  loc_BE318E: MemLdRfVar from_stack_1.global_60
  loc_BE3191: LdPrVar
  loc_BE3193: LateMemCall
  loc_BE3199: LitVarStr var_94, "}"
  loc_BE319E: PopAdLdVar
  loc_BE319F: FLdPr Me
  loc_BE31A2: MemLdRfVar from_stack_1.global_60
  loc_BE31A5: LdPrVar
  loc_BE31A7: LateMemCall
  loc_BE31AD: LitVarStr var_94, ".LineaDato {"
  loc_BE31B2: PopAdLdVar
  loc_BE31B3: FLdPr Me
  loc_BE31B6: MemLdRfVar from_stack_1.global_60
  loc_BE31B9: LdPrVar
  loc_BE31BB: LateMemCall
  loc_BE31C1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE31C6: PopAdLdVar
  loc_BE31C7: FLdPr Me
  loc_BE31CA: MemLdRfVar from_stack_1.global_60
  loc_BE31CD: LdPrVar
  loc_BE31CF: LateMemCall
  loc_BE31D5: LitVarStr var_94, " font-size: 10px;"
  loc_BE31DA: PopAdLdVar
  loc_BE31DB: FLdPr Me
  loc_BE31DE: MemLdRfVar from_stack_1.global_60
  loc_BE31E1: LdPrVar
  loc_BE31E3: LateMemCall
  loc_BE31E9: LitVarStr var_94, "}"
  loc_BE31EE: PopAdLdVar
  loc_BE31EF: FLdPr Me
  loc_BE31F2: MemLdRfVar from_stack_1.global_60
  loc_BE31F5: LdPrVar
  loc_BE31F7: LateMemCall
  loc_BE31FD: LitVarStr var_94, ".Totales {"
  loc_BE3202: PopAdLdVar
  loc_BE3203: FLdPr Me
  loc_BE3206: MemLdRfVar from_stack_1.global_60
  loc_BE3209: LdPrVar
  loc_BE320B: LateMemCall
  loc_BE3211: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE3216: PopAdLdVar
  loc_BE3217: FLdPr Me
  loc_BE321A: MemLdRfVar from_stack_1.global_60
  loc_BE321D: LdPrVar
  loc_BE321F: LateMemCall
  loc_BE3225: LitVarStr var_94, " font-size: 12px;"
  loc_BE322A: PopAdLdVar
  loc_BE322B: FLdPr Me
  loc_BE322E: MemLdRfVar from_stack_1.global_60
  loc_BE3231: LdPrVar
  loc_BE3233: LateMemCall
  loc_BE3239: LitVarStr var_94, " font-weight: bold;"
  loc_BE323E: PopAdLdVar
  loc_BE323F: FLdPr Me
  loc_BE3242: MemLdRfVar from_stack_1.global_60
  loc_BE3245: LdPrVar
  loc_BE3247: LateMemCall
  loc_BE324D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE3252: PopAdLdVar
  loc_BE3253: FLdPr Me
  loc_BE3256: MemLdRfVar from_stack_1.global_60
  loc_BE3259: LdPrVar
  loc_BE325B: LateMemCall
  loc_BE3261: LitVarStr var_94, "}"
  loc_BE3266: PopAdLdVar
  loc_BE3267: FLdPr Me
  loc_BE326A: MemLdRfVar from_stack_1.global_60
  loc_BE326D: LdPrVar
  loc_BE326F: LateMemCall
  loc_BE3275: LitVarStr var_94, ".SubTotales {"
  loc_BE327A: PopAdLdVar
  loc_BE327B: FLdPr Me
  loc_BE327E: MemLdRfVar from_stack_1.global_60
  loc_BE3281: LdPrVar
  loc_BE3283: LateMemCall
  loc_BE3289: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE328E: PopAdLdVar
  loc_BE328F: FLdPr Me
  loc_BE3292: MemLdRfVar from_stack_1.global_60
  loc_BE3295: LdPrVar
  loc_BE3297: LateMemCall
  loc_BE329D: LitVarStr var_94, " font-size: 10px;"
  loc_BE32A2: PopAdLdVar
  loc_BE32A3: FLdPr Me
  loc_BE32A6: MemLdRfVar from_stack_1.global_60
  loc_BE32A9: LdPrVar
  loc_BE32AB: LateMemCall
  loc_BE32B1: LitVarStr var_94, " font-weight: bold;"
  loc_BE32B6: PopAdLdVar
  loc_BE32B7: FLdPr Me
  loc_BE32BA: MemLdRfVar from_stack_1.global_60
  loc_BE32BD: LdPrVar
  loc_BE32BF: LateMemCall
  loc_BE32C5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE32CA: PopAdLdVar
  loc_BE32CB: FLdPr Me
  loc_BE32CE: MemLdRfVar from_stack_1.global_60
  loc_BE32D1: LdPrVar
  loc_BE32D3: LateMemCall
  loc_BE32D9: LitVarStr var_94, "}"
  loc_BE32DE: PopAdLdVar
  loc_BE32DF: FLdPr Me
  loc_BE32E2: MemLdRfVar from_stack_1.global_60
  loc_BE32E5: LdPrVar
  loc_BE32E7: LateMemCall
  loc_BE32ED: LitVarStr var_94, ".Tilde {"
  loc_BE32F2: PopAdLdVar
  loc_BE32F3: FLdPr Me
  loc_BE32F6: MemLdRfVar from_stack_1.global_60
  loc_BE32F9: LdPrVar
  loc_BE32FB: LateMemCall
  loc_BE3301: LitVarStr var_94, " font-family: Wingdings;"
  loc_BE3306: PopAdLdVar
  loc_BE3307: FLdPr Me
  loc_BE330A: MemLdRfVar from_stack_1.global_60
  loc_BE330D: LdPrVar
  loc_BE330F: LateMemCall
  loc_BE3315: LitVarStr var_94, " font-size: 16px;"
  loc_BE331A: PopAdLdVar
  loc_BE331B: FLdPr Me
  loc_BE331E: MemLdRfVar from_stack_1.global_60
  loc_BE3321: LdPrVar
  loc_BE3323: LateMemCall
  loc_BE3329: LitVarStr var_94, "}"
  loc_BE332E: PopAdLdVar
  loc_BE332F: FLdPr Me
  loc_BE3332: MemLdRfVar from_stack_1.global_60
  loc_BE3335: LdPrVar
  loc_BE3337: LateMemCall
  loc_BE333D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BE3342: PopAdLdVar
  loc_BE3343: FLdPr Me
  loc_BE3346: MemLdRfVar from_stack_1.global_60
  loc_BE3349: LdPrVar
  loc_BE334B: LateMemCall
  loc_BE3351: LitVarStr var_94, "</style>"
  loc_BE3356: PopAdLdVar
  loc_BE3357: FLdPr Me
  loc_BE335A: MemLdRfVar from_stack_1.global_60
  loc_BE335D: LdPrVar
  loc_BE335F: LateMemCall
  loc_BE3365: LitI4 0
  loc_BE336A: FStStrCopy var_AC
  loc_BE336D: FLdRfVar var_AC
  loc_BE3370: LitI4 0
  loc_BE3375: FStStrCopy var_A8
  loc_BE3378: FLdRfVar var_A8
  loc_BE337B: LitI2_Byte 0
  loc_BE337D: PopTmpLdAd2 var_BE
  loc_BE3380: FLdPr Me
  loc_BE3383: MemLdRfVar from_stack_1.global_60
  loc_BE3386: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BE338B: FFreeStr var_A8 = ""
  loc_BE3392: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BE3397: PopAdLdVar
  loc_BE3398: FLdPr Me
  loc_BE339B: MemLdRfVar from_stack_1.global_60
  loc_BE339E: LdPrVar
  loc_BE33A0: LateMemCall
  loc_BE33A6: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BE33AB: PopAdLdVar
  loc_BE33AC: FLdPr Me
  loc_BE33AF: MemLdRfVar from_stack_1.global_60
  loc_BE33B2: LdPrVar
  loc_BE33B4: LateMemCall
  loc_BE33BA: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BE33BF: PopAdLdVar
  loc_BE33C0: FLdPr Me
  loc_BE33C3: MemLdRfVar from_stack_1.global_60
  loc_BE33C6: LdPrVar
  loc_BE33C8: LateMemCall
  loc_BE33CE: FLdPr Me
  loc_BE33D1: MemLdI2 bLogos
  loc_BE33D4: BranchF loc_BE341D
  loc_BE33D7: LitStr "     <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE33DA: LitI2_Byte &H5F
  loc_BE33DC: CStrUI1
  loc_BE33DE: FStStrNoPop var_A8
  loc_BE33E1: ConcatStr
  loc_BE33E2: FStStrNoPop var_AC
  loc_BE33E5: LitStr """ height="""
  loc_BE33E8: ConcatStr
  loc_BE33E9: FStStrNoPop var_C4
  loc_BE33EC: LitI2_Byte &H3C
  loc_BE33EE: CStrUI1
  loc_BE33F0: FStStrNoPop var_C8
  loc_BE33F3: ConcatStr
  loc_BE33F4: FStStrNoPop var_CC
  loc_BE33F7: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BE33FA: ConcatStr
  loc_BE33FB: CVarStr var_BC
  loc_BE33FE: PopAdLdVar
  loc_BE33FF: FLdPr Me
  loc_BE3402: MemLdRfVar from_stack_1.global_60
  loc_BE3405: LdPrVar
  loc_BE3407: LateMemCall
  loc_BE340D: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BE341A: FFree1Var var_BC = ""
  loc_BE341D: LitStr "     <br>"
  loc_BE3420: LitStr "Municipalidad de Guaymallén"
  loc_BE3423: ConcatStr
  loc_BE3424: FStStrNoPop var_A8
  loc_BE3427: LitStr "</p>"
  loc_BE342A: ConcatStr
  loc_BE342B: CVarStr var_BC
  loc_BE342E: PopAdLdVar
  loc_BE342F: FLdPr Me
  loc_BE3432: MemLdRfVar from_stack_1.global_60
  loc_BE3435: LdPrVar
  loc_BE3437: LateMemCall
  loc_BE343D: FFree1Str var_A8
  loc_BE3440: FFree1Var var_BC = ""
  loc_BE3443: LitStr "    <p>"
  loc_BE3446: FLdRfVar var_A8
  loc_BE3449: FLdPr Me
  loc_BE344C:  = Me.Caption
  loc_BE3451: ILdRf var_A8
  loc_BE3454: ConcatStr
  loc_BE3455: FStStrNoPop var_AC
  loc_BE3458: LitStr "</p></th>"
  loc_BE345B: ConcatStr
  loc_BE345C: CVarStr var_BC
  loc_BE345F: PopAdLdVar
  loc_BE3460: FLdPr Me
  loc_BE3463: MemLdRfVar from_stack_1.global_60
  loc_BE3466: LdPrVar
  loc_BE3468: LateMemCall
  loc_BE346E: FFreeStr var_A8 = ""
  loc_BE3475: FFree1Var var_BC = ""
  loc_BE3478: LitVarStr var_94, "  </tr>"
  loc_BE347D: PopAdLdVar
  loc_BE347E: FLdPr Me
  loc_BE3481: MemLdRfVar from_stack_1.global_60
  loc_BE3484: LdPrVar
  loc_BE3486: LateMemCall
  loc_BE348C: LitVarStr var_94, "  <tr>"
  loc_BE3491: PopAdLdVar
  loc_BE3492: FLdPr Me
  loc_BE3495: MemLdRfVar from_stack_1.global_60
  loc_BE3498: LdPrVar
  loc_BE349A: LateMemCall
  loc_BE34A0: LitVarStr var_94, "    <th><hr></th>"
  loc_BE34A5: PopAdLdVar
  loc_BE34A6: FLdPr Me
  loc_BE34A9: MemLdRfVar from_stack_1.global_60
  loc_BE34AC: LdPrVar
  loc_BE34AE: LateMemCall
  loc_BE34B4: LitVarStr var_94, "  </tr align=""left"">"
  loc_BE34B9: PopAdLdVar
  loc_BE34BA: FLdPr Me
  loc_BE34BD: MemLdRfVar from_stack_1.global_60
  loc_BE34C0: LdPrVar
  loc_BE34C2: LateMemCall
  loc_BE34C8: LitStr "    <th>Periodo: "
  loc_BE34CB: FLdPr Me
  loc_BE34CE: VCallAd Control_ID_PeriInfoMsk
  loc_BE34D1: FStAdFunc var_D0
  loc_BE34D4: FLdPr var_D0
  loc_BE34D7: LateIdLdVar var_BC DispID_22 0
  loc_BE34DE: CStrVarTmp
  loc_BE34DF: FStStrNoPop var_A8
  loc_BE34E2: ConcatStr
  loc_BE34E3: FStStrNoPop var_AC
  loc_BE34E6: LitStr "</th>"
  loc_BE34E9: ConcatStr
  loc_BE34EA: CVarStr var_E0
  loc_BE34ED: PopAdLdVar
  loc_BE34EE: FLdPr Me
  loc_BE34F1: MemLdRfVar from_stack_1.global_60
  loc_BE34F4: LdPrVar
  loc_BE34F6: LateMemCall
  loc_BE34FC: FFreeStr var_A8 = ""
  loc_BE3503: FFree1Ad var_D0
  loc_BE3506: FFreeVar var_BC = ""
  loc_BE350D: LitVarStr var_94, "</table>"
  loc_BE3512: PopAdLdVar
  loc_BE3513: FLdPr Me
  loc_BE3516: MemLdRfVar from_stack_1.global_60
  loc_BE3519: LdPrVar
  loc_BE351B: LateMemCall
  loc_BE3521: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE3526: PopAdLdVar
  loc_BE3527: FLdPr Me
  loc_BE352A: MemLdRfVar from_stack_1.global_60
  loc_BE352D: LdPrVar
  loc_BE352F: LateMemCall
  loc_BE3535: LitVarStr var_94, "  <thead>"
  loc_BE353A: PopAdLdVar
  loc_BE353B: FLdPr Me
  loc_BE353E: MemLdRfVar from_stack_1.global_60
  loc_BE3541: LdPrVar
  loc_BE3543: LateMemCall
  loc_BE3549: FLdRfVar var_BE
  loc_BE354C: FLdPr Me
  loc_BE354F: VCallAd Control_ID_VerificaciondeUsoChk
  loc_BE3552: FStAdFunc var_D0
  loc_BE3555: FLdPr var_D0
  loc_BE3558:  = Me.Value
  loc_BE355D: FLdI2 var_BE
  loc_BE3560: CI4UI1
  loc_BE3561: LitI4 1
  loc_BE3566: EqI4
  loc_BE3567: FFree1Ad var_D0
  loc_BE356A: BranchF loc_BE3665
  loc_BE356D: LitI2_Byte &HFF
  loc_BE356F: ImpAdStI2 MemVar_D93C88
  loc_BE3572: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE3577: PopAdLdVar
  loc_BE3578: FLdPr Me
  loc_BE357B: MemLdRfVar from_stack_1.global_60
  loc_BE357E: LdPrVar
  loc_BE3580: LateMemCall
  loc_BE3586: LitVarStr var_94, "    <th rowspan=""2"">Código</th>"
  loc_BE358B: PopAdLdVar
  loc_BE358C: FLdPr Me
  loc_BE358F: MemLdRfVar from_stack_1.global_60
  loc_BE3592: LdPrVar
  loc_BE3594: LateMemCall
  loc_BE359A: LitVarStr var_94, "    <th rowspan=""2"">Detalle</th>"
  loc_BE359F: PopAdLdVar
  loc_BE35A0: FLdPr Me
  loc_BE35A3: MemLdRfVar from_stack_1.global_60
  loc_BE35A6: LdPrVar
  loc_BE35A8: LateMemCall
  loc_BE35AE: LitVarStr var_94, "    <th rowspan=""2"">Cuenta Ingreso</th>"
  loc_BE35B3: PopAdLdVar
  loc_BE35B4: FLdPr Me
  loc_BE35B7: MemLdRfVar from_stack_1.global_60
  loc_BE35BA: LdPrVar
  loc_BE35BC: LateMemCall
  loc_BE35C2: LitVarStr var_94, "    <th rowspan=""2"">Cuenta Activo</th>"
  loc_BE35C7: PopAdLdVar
  loc_BE35C8: FLdPr Me
  loc_BE35CB: MemLdRfVar from_stack_1.global_60
  loc_BE35CE: LdPrVar
  loc_BE35D0: LateMemCall
  loc_BE35D6: LitVarStr var_94, "    <th colspan=""3"">Usado en</th>"
  loc_BE35DB: PopAdLdVar
  loc_BE35DC: FLdPr Me
  loc_BE35DF: MemLdRfVar from_stack_1.global_60
  loc_BE35E2: LdPrVar
  loc_BE35E4: LateMemCall
  loc_BE35EA: LitVarStr var_94, "  </tr>"
  loc_BE35EF: PopAdLdVar
  loc_BE35F0: FLdPr Me
  loc_BE35F3: MemLdRfVar from_stack_1.global_60
  loc_BE35F6: LdPrVar
  loc_BE35F8: LateMemCall
  loc_BE35FE: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE3603: PopAdLdVar
  loc_BE3604: FLdPr Me
  loc_BE3607: MemLdRfVar from_stack_1.global_60
  loc_BE360A: LdPrVar
  loc_BE360C: LateMemCall
  loc_BE3612: LitVarStr var_94, "    <th>Cta. Cte.</th>"
  loc_BE3617: PopAdLdVar
  loc_BE3618: FLdPr Me
  loc_BE361B: MemLdRfVar from_stack_1.global_60
  loc_BE361E: LdPrVar
  loc_BE3620: LateMemCall
  loc_BE3626: LitVarStr var_94, "    <th>Histórico</th>"
  loc_BE362B: PopAdLdVar
  loc_BE362C: FLdPr Me
  loc_BE362F: MemLdRfVar from_stack_1.global_60
  loc_BE3632: LdPrVar
  loc_BE3634: LateMemCall
  loc_BE363A: LitVarStr var_94, "    <th>Pagos</th>"
  loc_BE363F: PopAdLdVar
  loc_BE3640: FLdPr Me
  loc_BE3643: MemLdRfVar from_stack_1.global_60
  loc_BE3646: LdPrVar
  loc_BE3648: LateMemCall
  loc_BE364E: LitVarStr var_94, "  </tr>"
  loc_BE3653: PopAdLdVar
  loc_BE3654: FLdPr Me
  loc_BE3657: MemLdRfVar from_stack_1.global_60
  loc_BE365A: LdPrVar
  loc_BE365C: LateMemCall
  loc_BE3662: Branch loc_BE3701
  loc_BE3665: LitI2_Byte 0
  loc_BE3667: ImpAdStI2 MemVar_D93C88
  loc_BE366A: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE366F: PopAdLdVar
  loc_BE3670: FLdPr Me
  loc_BE3673: MemLdRfVar from_stack_1.global_60
  loc_BE3676: LdPrVar
  loc_BE3678: LateMemCall
  loc_BE367E: LitVarStr var_94, "    <th>Código</th>"
  loc_BE3683: PopAdLdVar
  loc_BE3684: FLdPr Me
  loc_BE3687: MemLdRfVar from_stack_1.global_60
  loc_BE368A: LdPrVar
  loc_BE368C: LateMemCall
  loc_BE3692: LitStr "Municipalidad de Guaymallén"
  loc_BE3695: LitStr "Municipalidad de Guaymallén"
  loc_BE3698: EqStr
  loc_BE369A: BranchF loc_BE36B1
  loc_BE369D: LitVarStr var_94, "    <th>Cód. Viejo</th>"
  loc_BE36A2: PopAdLdVar
  loc_BE36A3: FLdPr Me
  loc_BE36A6: MemLdRfVar from_stack_1.global_60
  loc_BE36A9: LdPrVar
  loc_BE36AB: LateMemCall
  loc_BE36B1: LitVarStr var_94, "    <th>Detalle</th>"
  loc_BE36B6: PopAdLdVar
  loc_BE36B7: FLdPr Me
  loc_BE36BA: MemLdRfVar from_stack_1.global_60
  loc_BE36BD: LdPrVar
  loc_BE36BF: LateMemCall
  loc_BE36C5: LitVarStr var_94, "    <th>Cuenta Ingreso</th>"
  loc_BE36CA: PopAdLdVar
  loc_BE36CB: FLdPr Me
  loc_BE36CE: MemLdRfVar from_stack_1.global_60
  loc_BE36D1: LdPrVar
  loc_BE36D3: LateMemCall
  loc_BE36D9: LitVarStr var_94, "    <th>Cuenta Activo</th>"
  loc_BE36DE: PopAdLdVar
  loc_BE36DF: FLdPr Me
  loc_BE36E2: MemLdRfVar from_stack_1.global_60
  loc_BE36E5: LdPrVar
  loc_BE36E7: LateMemCall
  loc_BE36ED: LitVarStr var_94, "  </tr>"
  loc_BE36F2: PopAdLdVar
  loc_BE36F3: FLdPr Me
  loc_BE36F6: MemLdRfVar from_stack_1.global_60
  loc_BE36F9: LdPrVar
  loc_BE36FB: LateMemCall
  loc_BE3701: LitVarStr var_94, "  </thead>"
  loc_BE3706: PopAdLdVar
  loc_BE3707: FLdPr Me
  loc_BE370A: MemLdRfVar from_stack_1.global_60
  loc_BE370D: LdPrVar
  loc_BE370F: LateMemCall
  loc_BE3715: ExitProcHresult
  loc_BE3716: CopyBytes
End Function

Private Function Proc_123_20_A0F708() 'A0F708
  'Data Table: 460CB4
  loc_A0F6C8: LitVarStr var_94, "</table>"
  loc_A0F6CD: PopAdLdVar
  loc_A0F6CE: FLdPr Me
  loc_A0F6D1: MemLdRfVar from_stack_1.global_60
  loc_A0F6D4: LdPrVar
  loc_A0F6D6: LateMemCall
  loc_A0F6DC: LitVarStr var_94, "</body>"
  loc_A0F6E1: PopAdLdVar
  loc_A0F6E2: FLdPr Me
  loc_A0F6E5: MemLdRfVar from_stack_1.global_60
  loc_A0F6E8: LdPrVar
  loc_A0F6EA: LateMemCall
  loc_A0F6F0: LitVarStr var_94, "</html>"
  loc_A0F6F5: PopAdLdVar
  loc_A0F6F6: FLdPr Me
  loc_A0F6F9: MemLdRfVar from_stack_1.global_60
  loc_A0F6FC: LdPrVar
  loc_A0F6FE: LateMemCall
  loc_A0F704: ExitProcHresult
  loc_A0F705: Ary1StVar
End Function
