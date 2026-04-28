VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptPlanillaComparativa
  Caption = "Planilla Comparativa"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPlanillaComparativa.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7695
  ClientHeight = 3075
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2820
    Width = 7695
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptPlanillaComparativa.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptPlanillaComparativa.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPlanillaComparativa.frx":0B9C
    Left = 6720
    Top = 1800
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 3255
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1455
    TabIndex = 0
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2160
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox CodiNopeMsk
      Left = 2160
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptPlanillaComparativa.frx":0C00
    End
    Begin VB.Label Label2
      Caption = "Nota de pedido Nº:"
      Left = 660
      Top = 840
      Width = 1365
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1440
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptPlanillaComparativa.frx":0C70
  End
End

Attribute VB_Name = "rptPlanillaComparativa"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_0059F730
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_2_005F818C
  bStruc(4) As Byte ' String fields: 1
End Type

Private Type UDT_3_005F7FA0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_4_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type


Private Sub cmdPrevia_Click() '96580C
  'Data Table: 454C08
  loc_9657F4: ILdRf Me
  loc_9657F7: CastAd
  loc_9657FA: FStAdFunc var_88
  loc_9657FD: FLdRfVar var_88
  loc_965800: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_965805: FFree1Ad var_88
  loc_965808: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '967CFC
  'Data Table: 454C08
  loc_967CE0: LitI2_Byte &HFF
  loc_967CE2: LitI2_Byte 0
  loc_967CE4: ILdRf Me
  loc_967CE7: CastAd
  loc_967CEA: FStAdFunc var_88
  loc_967CED: FLdRfVar var_88
  loc_967CF0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_967CF5: FFree1Ad var_88
  loc_967CF8: ExitProcHresult
End Sub

Private Sub Form_Load() '9D5CB4
  'Data Table: 454C08
  loc_9D5BC8: LitI2_Byte &HFF
  loc_9D5BCA: ImpAdStI2 MemVar_C3D840
  loc_9D5BCD: ILdRf Me
  loc_9D5BD0: CastAd
  loc_9D5BD3: FStAdFunc var_88
  loc_9D5BD6: FLdRfVar var_88
  loc_9D5BD9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D5BDE: FFree1Ad var_88
  loc_9D5BE1: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D5BE4: FLdPr Me
  loc_9D5BE7: MemLdRfVar from_stack_1.global_72
  loc_9D5BEA: NewIfNullPr clsbase
  loc_9D5BED: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D5BF2: FLdRfVar var_8C
  loc_9D5BF5: FLdPr Me
  loc_9D5BF8: MemLdRfVar from_stack_1.global_72
  loc_9D5BFB: NewIfNullPr clsbase
  loc_9D5BFE: from_stack_1 = clsbase.RecordCount
  loc_9D5C03: ILdRf var_8C
  loc_9D5C06: LitI4 0
  loc_9D5C0B: GtI4
  loc_9D5C0C: BranchF loc_9D5CAB
  loc_9D5C0F: FLdPr Me
  loc_9D5C12: MemLdRfVar from_stack_1.global_72
  loc_9D5C15: NewIfNullPr clsbase
  loc_9D5C18: Call clsbase.MoveFirst()
  loc_9D5C1D: FLdRfVar var_8E
  loc_9D5C20: FLdPr Me
  loc_9D5C23: MemLdRfVar from_stack_1.global_72
  loc_9D5C26: NewIfNullPr clsbase
  loc_9D5C29: from_stack_1 = clsbase.EOF
  loc_9D5C2E: FLdI2 var_8E
  loc_9D5C31: NotI4
  loc_9D5C32: BranchF loc_9D5CAB
  loc_9D5C35: LitVar_Missing var_CC
  loc_9D5C38: PopAdLdVar
  loc_9D5C39: FLdRfVar var_B8
  loc_9D5C3C: FLdRfVar var_A8
  loc_9D5C3F: LitVarStr var_A4, "PeriInfo"
  loc_9D5C44: PopAdLdVar
  loc_9D5C45: FLdRfVar var_94
  loc_9D5C48: FLdRfVar var_88
  loc_9D5C4B: FLdPr Me
  loc_9D5C4E: MemLdRfVar from_stack_1.global_72
  loc_9D5C51: NewIfNullPr clsbase
  loc_9D5C54: from_stack_1v = clsbase.RsFrmGet()
  loc_9D5C59: FLdPr var_88
  loc_9D5C5C:  = Me.Fields
  loc_9D5C61: FLdPr var_94
  loc_9D5C64: from_stack_2 = Me.Item(from_stack_1)
  loc_9D5C69: FLdPr var_A8
  loc_9D5C6C:  = Me.Value
  loc_9D5C71: FLdRfVar var_B8
  loc_9D5C74: CStrVarTmp
  loc_9D5C75: FStStrNoPop var_BC
  loc_9D5C78: FLdPr Me
  loc_9D5C7B: VCallAd Control_ID_cboPeriodo
  loc_9D5C7E: FStAdFunc var_D0
  loc_9D5C81: FLdPr var_D0
  loc_9D5C84: Me.AddItem from_stack_1, from_stack_2
  loc_9D5C89: FFree1Str var_BC
  loc_9D5C8C: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D5C97: FFree1Var var_B8 = ""
  loc_9D5C9A: FLdPr Me
  loc_9D5C9D: MemLdRfVar from_stack_1.global_72
  loc_9D5CA0: NewIfNullPr clsbase
  loc_9D5CA3: Call clsbase.MoveSiguiente()
  loc_9D5CA8: Branch loc_9D5C1D
  loc_9D5CAB: Call cmdNueva_Click()
  loc_9D5CB0: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '965CCC
  'Data Table: 454C08
  loc_965CB4: FLdPr Me
  loc_965CB7: VCallAd Control_ID_wbbReporte
  loc_965CBA: FStAdFunc var_88
  loc_965CBD: FLdRfVar var_88
  loc_965CC0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_965CC5: FFree1Ad var_88
  loc_965CC8: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C5FC
  'Data Table: 454C08
  loc_98C5C4: FLdPr Me
  loc_98C5C7: VCallAd Control_ID_statusBar
  loc_98C5CA: FStAdFunc var_88
  loc_98C5CD: FLdPr var_88
  loc_98C5D0: LateIdLdVar var_98 DispID_1 0
  loc_98C5D7: CStrVarTmp
  loc_98C5D8: CVarStr var_A8
  loc_98C5DB: PopAdLdVar
  loc_98C5DC: FLdPr Me
  loc_98C5DF: VCallAd Control_ID_statusBar
  loc_98C5E2: FStAdFunc var_BC
  loc_98C5E5: FLdPr var_BC
  loc_98C5E8: LateIdSt
  loc_98C5ED: FFreeAd var_88 = ""
  loc_98C5F4: FFreeVar var_98 = ""
  loc_98C5FB: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B48C
  'Data Table: 454C08
  loc_97B45C: LitVarStr var_94, "Cerrando..."
  loc_97B461: PopAdLdVar
  loc_97B462: FLdPr Me
  loc_97B465: VCallAd Control_ID_statusBar
  loc_97B468: FStAdFunc var_A8
  loc_97B46B: FLdPr var_A8
  loc_97B46E: LateIdSt
  loc_97B473: FFree1Ad var_A8
  loc_97B476: ILdRf Me
  loc_97B479: FStAdNoPop
  loc_97B47D: ImpAdLdRf MemVar_C44F9C
  loc_97B480: NewIfNullPr Me
  loc_97B483: Me.Global.Unload from_stack_1
  loc_97B488: FFree1Ad var_A8
  loc_97B48B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9658A4
  'Data Table: 454C08
  loc_96588C: ILdRf Me
  loc_96588F: CastAd
  loc_965892: FStAdFunc var_88
  loc_965895: FLdRfVar var_88
  loc_965898: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_96589D: FFree1Ad var_88
  loc_9658A0: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '992044
  'Data Table: 454C08
  loc_991FF4: LitI2_Byte 0
  loc_991FF6: FLdPr Me
  loc_991FF9: MemStI2 bGenerado
  loc_991FFC: LitI2_Byte &HFF
  loc_991FFE: FLdPr Me
  loc_992001: MemStI2 bLogos
  loc_992004: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_992009: ImpAdLdI2 MemVar_C3D064
  loc_99200C: CStrUI1
  loc_99200E: FStStrNoPop var_88
  loc_992011: FLdPr Me
  loc_992014: VCallAd Control_ID_cboPeriodo
  loc_992017: FStAdFunc var_8C
  loc_99201A: FLdPr var_8C
  loc_99201D: Me.Text = from_stack_1
  loc_992022: FFree1Str var_88
  loc_992025: FFree1Ad var_8C
  loc_992028: Call HabilitarCriterio()
  loc_99202D: ILdRf Me
  loc_992030: CastAd
  loc_992033: FStAdFunc var_8C
  loc_992036: FLdRfVar var_8C
  loc_992039: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_99203E: FFree1Ad var_8C
  loc_992041: ExitProcHresult
  loc_992042: CRec2Ansi var_7000
End Sub

Private Sub CodiNopeMsk_UnknownEvent_0 '950A00
  'Data Table: 454C08
  loc_9509EC: FLdPr Me
  loc_9509EF: VCallAd Control_ID_CodiNopeMsk
  loc_9509F2: CVarAd
  loc_9509F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9509FB: FFree1Var var_94 = ""
  loc_9509FE: ExitProcHresult
End Sub

Private Function CodiNopeMsk_UnknownEvent_8(arg_C) '9A8430
  'Data Table: 454C08
  loc_9A83B4: FLdPr Me
  loc_9A83B7: VCallAd Control_ID_CodiNopeMsk
  loc_9A83BA: FStAdFunc var_88
  loc_9A83BD: FLdPr var_88
  loc_9A83C0: LateIdLdVar var_98 DispID_0 0
  loc_9A83C7: PopAd
  loc_9A83C9: LitI2_Byte 0
  loc_9A83CB: LitI2_Byte 0
  loc_9A83CD: FLdRfVar var_98
  loc_9A83D0: CStrVarTmp
  loc_9A83D1: FStStrNoPop var_9C
  loc_9A83D4: LitStr "Nota de pedido"
  loc_9A83D7: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A83DC: FStStrNoPop var_A0
  loc_9A83DF: FLdPr Me
  loc_9A83E2: MemStStrCopy
  loc_9A83E6: FFreeStr var_9C = ""
  loc_9A83ED: FFree1Ad var_88
  loc_9A83F0: FFree1Var var_98 = ""
  loc_9A83F3: FLdPr Me
  loc_9A83F6: VCallAd Control_ID_CodiNopeMsk
  loc_9A83F9: FStAdFunc var_AC
  loc_9A83FC: LitNothing
  loc_9A83FE: CastAd
  loc_9A8401: FStAdFunc var_A8
  loc_9A8404: FLdRfVar var_A8
  loc_9A8407: FLdZeroAd var_AC
  loc_9A840A: FStAdFuncNoPop
  loc_9A840D: CastAd
  loc_9A8410: FStAdFunc var_A4
  loc_9A8413: FLdRfVar var_A4
  loc_9A8416: FLdPr Me
  loc_9A8419: MemLdRfVar from_stack_1.global_152
  loc_9A841C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A8421: IStI2 arg_C
  loc_9A8424: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A842F: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '96593C
  'Data Table: 454C08
  loc_965924: LitI2_Byte 0
  loc_965926: ILdRf Me
  loc_965929: CastAd
  loc_96592C: FStAdFunc var_88
  loc_96592F: FLdRfVar var_88
  loc_965932: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_965937: FFree1Ad var_88
  loc_96593A: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D68C0
  'Data Table: 454C08
  loc_9D67E0: FLdPr Me
  loc_9D67E3: MemLdRfVar from_stack_1.global_76
  loc_9D67E6: NewIfNullAd
  loc_9D67E9: FStAd var_88 
  loc_9D67ED: LitStr "SELECT CodiNope FROM cotizacion WHERE PeriInfo = "
  loc_9D67F0: FLdRfVar var_90
  loc_9D67F3: FLdPr Me
  loc_9D67F6: VCallAd Control_ID_cboPeriodo
  loc_9D67F9: FStAdFunc var_8C
  loc_9D67FC: FLdPr var_8C
  loc_9D67FF:  = Me.Text
  loc_9D6804: ILdRf var_90
  loc_9D6807: ConcatStr
  loc_9D6808: FStStrNoPop var_94
  loc_9D680B: LitStr " ORDER BY CodiNope DESC LIMIT 1"
  loc_9D680E: ConcatStr
  loc_9D680F: FStStrNoPop var_98
  loc_9D6812: FLdPr var_88
  loc_9D6815: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D681A: FFreeStr var_90 = "": var_94 = ""
  loc_9D6823: FFree1Ad var_8C
  loc_9D6826: FLdRfVar var_9C
  loc_9D6829: FLdPr var_88
  loc_9D682C: from_stack_1 = clsbase.RecordCount
  loc_9D6831: ILdRf var_9C
  loc_9D6834: LitI4 0
  loc_9D6839: GtI4
  loc_9D683A: BranchF loc_9D689D
  loc_9D683D: FLdRfVar var_C4
  loc_9D6840: FLdRfVar var_B4
  loc_9D6843: LitVarStr var_B0, "CodiNope"
  loc_9D6848: PopAdLdVar
  loc_9D6849: FLdRfVar var_A0
  loc_9D684C: FLdRfVar var_8C
  loc_9D684F: FLdPr var_88
  loc_9D6852: from_stack_1v = clsbase.RsFrmGet()
  loc_9D6857: FLdPr var_8C
  loc_9D685A:  = Me.Fields
  loc_9D685F: FLdPr var_A0
  loc_9D6862: from_stack_2 = Me.Item(from_stack_1)
  loc_9D6867: FLdPr var_B4
  loc_9D686A:  = Me.Value
  loc_9D686F: FLdRfVar var_C4
  loc_9D6872: CStrVarTmp
  loc_9D6873: CVarStr var_D4
  loc_9D6876: PopAdLdVar
  loc_9D6877: FLdPr Me
  loc_9D687A: VCallAd Control_ID_CodiNopeMsk
  loc_9D687D: FStAdFunc var_E8
  loc_9D6880: FLdPr var_E8
  loc_9D6883: LateIdSt
  loc_9D6888: FFreeAd var_8C = "": var_A0 = "": var_B4 = ""
  loc_9D6893: FFreeVar var_C4 = ""
  loc_9D689A: Branch loc_9D68B7
  loc_9D689D: LitVarStr var_B0, "1"
  loc_9D68A2: PopAdLdVar
  loc_9D68A3: FLdPr Me
  loc_9D68A6: VCallAd Control_ID_CodiNopeMsk
  loc_9D68A9: FStAdFunc var_8C
  loc_9D68AC: FLdPr var_8C
  loc_9D68AF: LateIdSt
  loc_9D68B4: FFree1Ad var_8C
  loc_9D68B7: LitNothing
  loc_9D68B9: FStAd var_88 
  loc_9D68BD: ExitProcHresult
  loc_9D68BE: CRec2Uni var_7000
End Sub

Public Function htmFileGet() '455888
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '455897
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4558A6
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4558B5
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4558C4
  bGenerado = Value
End Sub

Public Function bLogosGet() '4558D3
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4558E2
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '991D08
  'Data Table: 454C08
  loc_991CC4: LitI4 0
  loc_991CC9: LitI4 1
  loc_991CCE: FLdRfVar var_88
  loc_991CD1: Redim
  loc_991CDB: FLdPr Me
  loc_991CDE: VCallAd Control_ID_cboPeriodo
  loc_991CE1: CVarAd
  loc_991CE5: ParmAry1St
  loc_991CEB: FLdPr Me
  loc_991CEE: VCallAd Control_ID_CodiNopeMsk
  loc_991CF1: CVarAd
  loc_991CF5: ParmAry1St
  loc_991CFB: FLdRfVar var_88
  loc_991CFE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_991D03: FLdRfVar var_88
  loc_991D06: Erase
  loc_991D07: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BCB864
  'Data Table: 454C08
  loc_BCA524: FLdPr Me
  loc_BCA527: MemLdI2 bGenerado
  loc_BCA52A: BranchF loc_BCA52E
  loc_BCA52D: ExitProcHresult
  loc_BCA52E: LitVarStr var_9C, "Generando reporte..."
  loc_BCA533: PopAdLdVar
  loc_BCA534: FLdPr Me
  loc_BCA537: VCallAd Control_ID_statusBar
  loc_BCA53A: FStAdFunc var_B0
  loc_BCA53D: FLdPr var_B0
  loc_BCA540: LateIdSt
  loc_BCA545: FFree1Ad var_B0
  loc_BCA548: LitI4 &HB
  loc_BCA54D: CI2I4
  loc_BCA54E: FLdPr Me
  loc_BCA551: Me.MousePointer = from_stack_1
  loc_BCA556: LitI2_Byte 0
  loc_BCA558: PopTmpLdAd2 var_B2
  loc_BCA55B: from_stack_2v = CodiNopeMsk_UnknownEvent_8(from_stack_1v)
  loc_BCA560: FLdPr Me
  loc_BCA563: MemLdStr global_152
  loc_BCA566: LitStr vbNullString
  loc_BCA569: NeStr
  loc_BCA56B: BranchF loc_BCA583
  loc_BCA56E: FLdPr Me
  loc_BCA571: VCallAd Control_ID_CodiNopeMsk
  loc_BCA574: CVarAd
  loc_BCA578: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BCA57D: FFree1Var var_C4 = ""
  loc_BCA580: Branch loc_BCB838
  loc_BCA583: FLdPr Me
  loc_BCA586: MemLdRfVar from_stack_1.global_76
  loc_BCA589: NewIfNullAd
  loc_BCA58C: FStAd var_C8 
  loc_BCA590: LitStr "SELECT c.*, DetaNope, DetaProv, DetaTico, FechNope, FechCoti, np.CodiOrga, DetaOrga, np.CodiTico, np.ExpeImpu"
  loc_BCA593: LitStr " FROM cotizacion c"
  loc_BCA596: ConcatStr
  loc_BCA597: FStStrNoPop var_CC
  loc_BCA59A: LitStr " INNER JOIN notapedido np ON np.PeriInfo = c.PeriInfo AND np.CodiNope = c.CodiNope"
  loc_BCA59D: ConcatStr
  loc_BCA59E: FStStrNoPop var_D0
  loc_BCA5A1: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = np.PeriInfo AND o.CodiOrga = np.CodiOrga"
  loc_BCA5A4: ConcatStr
  loc_BCA5A5: FStStrNoPop var_D4
  loc_BCA5A8: LitStr " INNER JOIN proveedor p ON p.CucuPers = c.CucuPers"
  loc_BCA5AB: ConcatStr
  loc_BCA5AC: FStStrNoPop var_D8
  loc_BCA5AF: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_BCA5B2: ConcatStr
  loc_BCA5B3: FStStrNoPop var_DC
  loc_BCA5B6: LitStr " WHERE c.PeriInfo = "
  loc_BCA5B9: ConcatStr
  loc_BCA5BA: FStStrNoPop var_E4
  loc_BCA5BD: FLdRfVar var_E0
  loc_BCA5C0: FLdPr Me
  loc_BCA5C3: VCallAd Control_ID_cboPeriodo
  loc_BCA5C6: FStAdFunc var_B0
  loc_BCA5C9: FLdPr var_B0
  loc_BCA5CC:  = Me.Text
  loc_BCA5D1: ILdRf var_E0
  loc_BCA5D4: ConcatStr
  loc_BCA5D5: FStStrNoPop var_E8
  loc_BCA5D8: LitStr " AND c.CodiNope = "
  loc_BCA5DB: ConcatStr
  loc_BCA5DC: FStStrNoPop var_F0
  loc_BCA5DF: FLdPr Me
  loc_BCA5E2: VCallAd Control_ID_CodiNopeMsk
  loc_BCA5E5: FStAdFunc var_EC
  loc_BCA5E8: FLdPr var_EC
  loc_BCA5EB: LateIdLdVar var_C4 DispID_22 0
  loc_BCA5F2: CStrVarTmp
  loc_BCA5F3: FStStrNoPop var_F4
  loc_BCA5F6: ConcatStr
  loc_BCA5F7: FStStrNoPop var_F8
  loc_BCA5FA: LitStr " AND c.BajaUsua = ''"
  loc_BCA5FD: ConcatStr
  loc_BCA5FE: FStStrNoPop var_FC
  loc_BCA601: LitStr " ORDER BY c.CodiNope, c.CucuPers;"
  loc_BCA604: ConcatStr
  loc_BCA605: FStStrNoPop var_100
  loc_BCA608: FLdPr var_C8
  loc_BCA60B: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCA610: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E0 = "": var_E8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BCA62D: FFreeAd var_B0 = ""
  loc_BCA634: FFree1Var var_C4 = ""
  loc_BCA637: FLdRfVar var_104
  loc_BCA63A: FLdPr var_C8
  loc_BCA63D: from_stack_1 = clsbase.RecordCount
  loc_BCA642: ILdRf var_104
  loc_BCA645: LitI4 0
  loc_BCA64A: EqI4
  loc_BCA64B: BranchF loc_BCA65E
  loc_BCA64E: LitI4 0
  loc_BCA653: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BCA656: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCA65B: Branch loc_BCB838
  loc_BCA65E: LitI4 1
  loc_BCA663: FLdRfVar var_104
  loc_BCA666: FLdPr var_C8
  loc_BCA669: from_stack_1 = clsbase.RecordCount
  loc_BCA66E: ILdRf var_104
  loc_BCA671: FLdPr Me
  loc_BCA674: MemLdRfVar from_stack_1.global_132
  loc_BCA677: Redim
  loc_BCA681: FLdPr Me
  loc_BCA684: MemLdStr global_132
  loc_BCA687: LitI2_Byte 1
  loc_BCA689: FnUBound
  loc_BCA68B: LitI4 3
  loc_BCA690: LtI4
  loc_BCA691: BranchF loc_BCA6A4
  loc_BCA694: LitI2_Byte 0
  loc_BCA696: FLdPr Me
  loc_BCA699: MemStI2 global_148
  loc_BCA69C: LitI2_Byte &HFF
  loc_BCA69E: ImpAdStI2 MemVar_C3D840
  loc_BCA6A1: Branch loc_BCA6B1
  loc_BCA6A4: LitI2_Byte &HFF
  loc_BCA6A6: FLdPr Me
  loc_BCA6A9: MemStI2 global_148
  loc_BCA6AC: LitI2_Byte &HFF
  loc_BCA6AE: ImpAdStI2 MemVar_C3D840
  loc_BCA6B1: LitStr "SELECT itn.CodiItno, itn.DetaItno, itn.CaraItno, itn.CantItno"
  loc_BCA6B4: LitStr " FROM itemnota itn"
  loc_BCA6B7: ConcatStr
  loc_BCA6B8: FStStrNoPop var_CC
  loc_BCA6BB: LitStr " WHERE itn.PeriInfo = "
  loc_BCA6BE: ConcatStr
  loc_BCA6BF: FStStrNoPop var_D4
  loc_BCA6C2: FLdRfVar var_D0
  loc_BCA6C5: FLdPr Me
  loc_BCA6C8: VCallAd Control_ID_cboPeriodo
  loc_BCA6CB: FStAdFunc var_B0
  loc_BCA6CE: FLdPr var_B0
  loc_BCA6D1:  = Me.Text
  loc_BCA6D6: ILdRf var_D0
  loc_BCA6D9: ConcatStr
  loc_BCA6DA: FStStrNoPop var_D8
  loc_BCA6DD: LitStr " AND itn.CodiNope = "
  loc_BCA6E0: ConcatStr
  loc_BCA6E1: FStStrNoPop var_DC
  loc_BCA6E4: FLdPr Me
  loc_BCA6E7: VCallAd Control_ID_CodiNopeMsk
  loc_BCA6EA: FStAdFunc var_EC
  loc_BCA6ED: FLdPr var_EC
  loc_BCA6F0: LateIdLdVar var_C4 DispID_22 0
  loc_BCA6F7: CStrVarTmp
  loc_BCA6F8: FStStrNoPop var_E0
  loc_BCA6FB: ConcatStr
  loc_BCA6FC: FStStrNoPop var_E4
  loc_BCA6FF: LitStr " ORDER BY itn.CodiItno;"
  loc_BCA702: ConcatStr
  loc_BCA703: FStStrNoPop var_E8
  loc_BCA706: FLdRfVar var_108
  loc_BCA709: NewIfNullPr clsbase
  loc_BCA70C: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCA711: FFreeStr var_CC = "": var_D4 = "": var_D0 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_BCA724: FFreeAd var_B0 = ""
  loc_BCA72B: FFree1Var var_C4 = ""
  loc_BCA72E: FLdRfVar var_104
  loc_BCA731: FLdRfVar var_108
  loc_BCA734: NewIfNullPr clsbase
  loc_BCA737: from_stack_1 = clsbase.RecordCount
  loc_BCA73C: ILdRf var_104
  loc_BCA73F: LitI4 0
  loc_BCA744: GtI4
  loc_BCA745: BranchF loc_BCAA07
  loc_BCA748: FLdRfVar var_108
  loc_BCA74B: NewIfNullPr clsbase
  loc_BCA74E: Call clsbase.MoveLast()
  loc_BCA753: LitI4 1
  loc_BCA758: FLdRfVar var_C4
  loc_BCA75B: FLdRfVar var_10C
  loc_BCA75E: LitVarStr var_9C, "CodiItno"
  loc_BCA763: PopAdLdVar
  loc_BCA764: FLdRfVar var_EC
  loc_BCA767: FLdRfVar var_B0
  loc_BCA76A: FLdRfVar var_108
  loc_BCA76D: NewIfNullPr clsbase
  loc_BCA770: from_stack_1v = clsbase.RsFrmGet()
  loc_BCA775: FLdPr var_B0
  loc_BCA778:  = Me.Fields
  loc_BCA77D: FLdPr var_EC
  loc_BCA780: from_stack_2 = Me.Item(from_stack_1)
  loc_BCA785: FLdPr var_10C
  loc_BCA788:  = Me.Value
  loc_BCA78D: FLdRfVar var_C4
  loc_BCA790: CI4Var
  loc_BCA792: FLdPr Me
  loc_BCA795: MemLdRfVar from_stack_1.global_136
  loc_BCA798: Redim
  loc_BCA7A2: FFreeAd var_B0 = "": var_EC = ""
  loc_BCA7AB: FFree1Var var_C4 = ""
  loc_BCA7AE: FLdRfVar var_108
  loc_BCA7B1: NewIfNullPr clsbase
  loc_BCA7B4: Call clsbase.MoveFirst()
  loc_BCA7B9: LitI2_Byte 1
  loc_BCA7BB: FLdPr Me
  loc_BCA7BE: MemLdRfVar from_stack_1.global_142
  loc_BCA7C1: FLdPr Me
  loc_BCA7C4: MemLdStr global_136
  loc_BCA7C7: LitI2_Byte 1
  loc_BCA7C9: FnUBound
  loc_BCA7CB: CI2I4
  loc_BCA7CC: ForI2 var_110
  loc_BCA7D2: FLdRfVar var_C4
  loc_BCA7D5: FLdRfVar var_10C
  loc_BCA7D8: LitVarStr var_9C, "CodiItno"
  loc_BCA7DD: PopAdLdVar
  loc_BCA7DE: FLdRfVar var_EC
  loc_BCA7E1: FLdRfVar var_B0
  loc_BCA7E4: FLdRfVar var_108
  loc_BCA7E7: NewIfNullPr clsbase
  loc_BCA7EA: from_stack_1v = clsbase.RsFrmGet()
  loc_BCA7EF: FLdPr var_B0
  loc_BCA7F2:  = Me.Fields
  loc_BCA7F7: FLdPr var_EC
  loc_BCA7FA: from_stack_2 = Me.Item(from_stack_1)
  loc_BCA7FF: FLdPr var_10C
  loc_BCA802:  = Me.Value
  loc_BCA807: FLdRfVar var_C4
  loc_BCA80A: FnCIntVar
  loc_BCA80C: FLdPr Me
  loc_BCA80F: MemLdI2 global_142
  loc_BCA812: EqI2
  loc_BCA813: FFreeAd var_B0 = "": var_EC = ""
  loc_BCA81C: FFree1Var var_C4 = ""
  loc_BCA81F: BranchF loc_BCA9F9
  loc_BCA822: FLdRfVar var_C4
  loc_BCA825: FLdRfVar var_10C
  loc_BCA828: LitVarStr var_9C, "CodiItno"
  loc_BCA82D: PopAdLdVar
  loc_BCA82E: FLdRfVar var_EC
  loc_BCA831: FLdRfVar var_B0
  loc_BCA834: FLdRfVar var_108
  loc_BCA837: NewIfNullPr clsbase
  loc_BCA83A: from_stack_1v = clsbase.RsFrmGet()
  loc_BCA83F: FLdPr var_B0
  loc_BCA842:  = Me.Fields
  loc_BCA847: FLdPr var_EC
  loc_BCA84A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCA84F: FLdPr var_10C
  loc_BCA852:  = Me.Value
  loc_BCA857: FLdRfVar var_C4
  loc_BCA85A: CStrVarTmp
  loc_BCA85B: FStStrNoPop var_CC
  loc_BCA85E: FLdPr Me
  loc_BCA861: MemLdI2 global_142
  loc_BCA864: CI4UI1
  loc_BCA865: FLdPr Me
  loc_BCA868: MemLdStr global_136
  loc_BCA86B: Ary1LdPr
  loc_BCA86C: MemStStrCopy
  loc_BCA870: FFree1Str var_CC
  loc_BCA873: FFreeAd var_B0 = "": var_EC = ""
  loc_BCA87C: FFree1Var var_C4 = ""
  loc_BCA87F: FLdRfVar var_C4
  loc_BCA882: FLdRfVar var_10C
  loc_BCA885: LitVarStr var_9C, "DetaItno"
  loc_BCA88A: PopAdLdVar
  loc_BCA88B: FLdRfVar var_EC
  loc_BCA88E: FLdRfVar var_B0
  loc_BCA891: FLdRfVar var_108
  loc_BCA894: NewIfNullPr clsbase
  loc_BCA897: from_stack_1v = clsbase.RsFrmGet()
  loc_BCA89C: FLdPr var_B0
  loc_BCA89F:  = Me.Fields
  loc_BCA8A4: FLdPr var_EC
  loc_BCA8A7: from_stack_2 = Me.Item(from_stack_1)
  loc_BCA8AC: FLdPr var_10C
  loc_BCA8AF:  = Me.Value
  loc_BCA8B4: FLdRfVar var_C4
  loc_BCA8B7: CStrVarTmp
  loc_BCA8B8: FStStrNoPop var_CC
  loc_BCA8BB: FLdPr Me
  loc_BCA8BE: MemLdI2 global_142
  loc_BCA8C1: CI4UI1
  loc_BCA8C2: FLdPr Me
  loc_BCA8C5: MemLdStr global_136
  loc_BCA8C8: Ary1LdPr
  loc_BCA8C9: MemStStrCopy
  loc_BCA8CD: FFree1Str var_CC
  loc_BCA8D0: FFreeAd var_B0 = "": var_EC = ""
  loc_BCA8D9: FFree1Var var_C4 = ""
  loc_BCA8DC: FLdRfVar var_C4
  loc_BCA8DF: FLdRfVar var_10C
  loc_BCA8E2: LitVarStr var_9C, "CaraItno"
  loc_BCA8E7: PopAdLdVar
  loc_BCA8E8: FLdRfVar var_EC
  loc_BCA8EB: FLdRfVar var_B0
  loc_BCA8EE: FLdRfVar var_108
  loc_BCA8F1: NewIfNullPr clsbase
  loc_BCA8F4: from_stack_1v = clsbase.RsFrmGet()
  loc_BCA8F9: FLdPr var_B0
  loc_BCA8FC:  = Me.Fields
  loc_BCA901: FLdPr var_EC
  loc_BCA904: from_stack_2 = Me.Item(from_stack_1)
  loc_BCA909: FLdPr var_10C
  loc_BCA90C:  = Me.Value
  loc_BCA911: FLdRfVar var_C4
  loc_BCA914: CStrVarTmp
  loc_BCA915: FStStrNoPop var_CC
  loc_BCA918: FLdPr Me
  loc_BCA91B: MemLdI2 global_142
  loc_BCA91E: CI4UI1
  loc_BCA91F: FLdPr Me
  loc_BCA922: MemLdStr global_136
  loc_BCA925: Ary1LdPr
  loc_BCA926: MemStStrCopy
  loc_BCA92A: FFree1Str var_CC
  loc_BCA92D: FFreeAd var_B0 = "": var_EC = ""
  loc_BCA936: FFree1Var var_C4 = ""
  loc_BCA939: FLdRfVar var_C4
  loc_BCA93C: FLdRfVar var_10C
  loc_BCA93F: LitVarStr var_9C, "CantItno"
  loc_BCA944: PopAdLdVar
  loc_BCA945: FLdRfVar var_EC
  loc_BCA948: FLdRfVar var_B0
  loc_BCA94B: FLdRfVar var_108
  loc_BCA94E: NewIfNullPr clsbase
  loc_BCA951: from_stack_1v = clsbase.RsFrmGet()
  loc_BCA956: FLdPr var_B0
  loc_BCA959:  = Me.Fields
  loc_BCA95E: FLdPr var_EC
  loc_BCA961: from_stack_2 = Me.Item(from_stack_1)
  loc_BCA966: FLdPr var_10C
  loc_BCA969:  = Me.Value
  loc_BCA96E: FLdRfVar var_C4
  loc_BCA971: CStrVarTmp
  loc_BCA972: FStStrNoPop var_CC
  loc_BCA975: FLdPr Me
  loc_BCA978: MemLdI2 global_142
  loc_BCA97B: CI4UI1
  loc_BCA97C: FLdPr Me
  loc_BCA97F: MemLdStr global_136
  loc_BCA982: Ary1LdPr
  loc_BCA983: MemStStrCopy
  loc_BCA987: FFree1Str var_CC
  loc_BCA98A: FFreeAd var_B0 = "": var_EC = ""
  loc_BCA993: FFree1Var var_C4 = ""
  loc_BCA996: LitI4 1
  loc_BCA99B: LitI4 1
  loc_BCA9A0: FLdPr Me
  loc_BCA9A3: MemLdI2 global_142
  loc_BCA9A6: CI4UI1
  loc_BCA9A7: FLdPr Me
  loc_BCA9AA: MemLdStr global_136
  loc_BCA9AD: Ary1LdPr
  loc_BCA9AE: MemLdRfVar from_stack_1.global_16
  loc_BCA9B1: Redim
  loc_BCA9BB: LitI4 1
  loc_BCA9C0: FLdPr Me
  loc_BCA9C3: MemLdStr global_132
  loc_BCA9C6: LitI2_Byte 1
  loc_BCA9C8: FnUBound
  loc_BCA9CA: LitI4 1
  loc_BCA9CF: FLdPr Me
  loc_BCA9D2: MemLdI2 global_142
  loc_BCA9D5: CI4UI1
  loc_BCA9D6: FLdPr Me
  loc_BCA9D9: MemLdStr global_136
  loc_BCA9DC: Ary1LdPr
  loc_BCA9DD: MemLdStr global_16
  loc_BCA9E0: Ary1LdPr
  loc_BCA9E1: MemLdRfVar from_stack_1.global_0
  loc_BCA9E4: Redim
  loc_BCA9EE: FLdRfVar var_108
  loc_BCA9F1: NewIfNullPr clsbase
  loc_BCA9F4: Call clsbase.MoveSiguiente()
  loc_BCA9F9: FLdPr Me
  loc_BCA9FC: MemLdRfVar from_stack_1.global_142
  loc_BCA9FF: NextI2 var_110, loc_BCA7D2
  loc_BCAA04: Branch loc_BCAA51
  loc_BCAA07: LitI4 0
  loc_BCAA0C: LitStr "No concuerdan los items de la nota de pedido: "
  loc_BCAA0F: FLdPr Me
  loc_BCAA12: VCallAd Control_ID_CodiNopeMsk
  loc_BCAA15: FStAdFunc var_B0
  loc_BCAA18: FLdPr var_B0
  loc_BCAA1B: LateIdLdVar var_C4 DispID_22 0
  loc_BCAA22: CStrVarTmp
  loc_BCAA23: FStStrNoPop var_CC
  loc_BCAA26: ConcatStr
  loc_BCAA27: FStStrNoPop var_D0
  loc_BCAA2A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCAA2F: FFreeStr var_CC = ""
  loc_BCAA36: FFree1Ad var_B0
  loc_BCAA39: FFree1Var var_C4 = ""
  loc_BCAA3C: ILdRf Me
  loc_BCAA3F: FStAdNoPop
  loc_BCAA43: ImpAdLdRf MemVar_C44F9C
  loc_BCAA46: NewIfNullPr Me
  loc_BCAA49: Me.Global.Unload from_stack_1
  loc_BCAA4E: FFree1Ad var_B0
  loc_BCAA51: LitNothing
  loc_BCAA53: CastAd
  loc_BCAA56: FStAdFunc var_108
  loc_BCAA59: FLdPr var_C8
  loc_BCAA5C: Call clsbase.MoveFirst()
  loc_BCAA61: FLdRfVar var_10C
  loc_BCAA64: LitVarStr var_9C, "CodiNope"
  loc_BCAA69: PopAdLdVar
  loc_BCAA6A: FLdRfVar var_EC
  loc_BCAA6D: FLdRfVar var_B0
  loc_BCAA70: FLdPr var_C8
  loc_BCAA73: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAA78: FLdPr var_B0
  loc_BCAA7B:  = Me.Fields
  loc_BCAA80: FLdPr var_EC
  loc_BCAA83: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAA88: LitI2_Byte 0
  loc_BCAA8A: LitVar_Missing var_120
  loc_BCAA8D: LitI2_Byte 0
  loc_BCAA8F: FLdZeroAd var_10C
  loc_BCAA92: CVarAd
  loc_BCAA96: PopAdLdVar
  loc_BCAA97: FLdPr Me
  loc_BCAA9A: MemLdRfVar from_stack_1.global_88
  loc_BCAA9D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAAA2: FFreeAd var_B0 = ""
  loc_BCAAA9: FFreeVar var_C4 = ""
  loc_BCAAB0: FLdRfVar var_10C
  loc_BCAAB3: LitVarStr var_9C, "DetaNope"
  loc_BCAAB8: PopAdLdVar
  loc_BCAAB9: FLdRfVar var_EC
  loc_BCAABC: FLdRfVar var_B0
  loc_BCAABF: FLdPr var_C8
  loc_BCAAC2: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAAC7: FLdPr var_B0
  loc_BCAACA:  = Me.Fields
  loc_BCAACF: FLdPr var_EC
  loc_BCAAD2: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAAD7: LitI2_Byte 0
  loc_BCAAD9: LitVar_Missing var_120
  loc_BCAADC: LitI2_Byte 0
  loc_BCAADE: FLdZeroAd var_10C
  loc_BCAAE1: CVarAd
  loc_BCAAE5: PopAdLdVar
  loc_BCAAE6: FLdPr Me
  loc_BCAAE9: MemLdRfVar from_stack_1.global_92
  loc_BCAAEC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAAF1: FFreeAd var_B0 = ""
  loc_BCAAF8: FFreeVar var_C4 = ""
  loc_BCAAFF: FLdRfVar var_10C
  loc_BCAB02: LitVarStr var_9C, "CodiOrga"
  loc_BCAB07: PopAdLdVar
  loc_BCAB08: FLdRfVar var_EC
  loc_BCAB0B: FLdRfVar var_B0
  loc_BCAB0E: FLdPr var_C8
  loc_BCAB11: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAB16: FLdPr var_B0
  loc_BCAB19:  = Me.Fields
  loc_BCAB1E: FLdPr var_EC
  loc_BCAB21: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAB26: LitI2_Byte 0
  loc_BCAB28: LitVar_Missing var_120
  loc_BCAB2B: LitI2_Byte 0
  loc_BCAB2D: FLdZeroAd var_10C
  loc_BCAB30: CVarAd
  loc_BCAB34: PopAdLdVar
  loc_BCAB35: FLdPr Me
  loc_BCAB38: MemLdRfVar from_stack_1.global_96
  loc_BCAB3B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAB40: FFreeAd var_B0 = ""
  loc_BCAB47: FFreeVar var_C4 = ""
  loc_BCAB4E: FLdRfVar var_10C
  loc_BCAB51: LitVarStr var_9C, "DetaOrga"
  loc_BCAB56: PopAdLdVar
  loc_BCAB57: FLdRfVar var_EC
  loc_BCAB5A: FLdRfVar var_B0
  loc_BCAB5D: FLdPr var_C8
  loc_BCAB60: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAB65: FLdPr var_B0
  loc_BCAB68:  = Me.Fields
  loc_BCAB6D: FLdPr var_EC
  loc_BCAB70: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAB75: LitI2_Byte 0
  loc_BCAB77: LitVar_Missing var_120
  loc_BCAB7A: LitI2_Byte 0
  loc_BCAB7C: FLdZeroAd var_10C
  loc_BCAB7F: CVarAd
  loc_BCAB83: PopAdLdVar
  loc_BCAB84: FLdPr Me
  loc_BCAB87: MemLdRfVar from_stack_1.global_100
  loc_BCAB8A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAB8F: FFreeAd var_B0 = ""
  loc_BCAB96: FFreeVar var_C4 = ""
  loc_BCAB9D: FLdRfVar var_10C
  loc_BCABA0: LitVarStr var_9C, "CodiTico"
  loc_BCABA5: PopAdLdVar
  loc_BCABA6: FLdRfVar var_EC
  loc_BCABA9: FLdRfVar var_B0
  loc_BCABAC: FLdPr var_C8
  loc_BCABAF: from_stack_1v = clsbase.RsFrmGet()
  loc_BCABB4: FLdPr var_B0
  loc_BCABB7:  = Me.Fields
  loc_BCABBC: FLdPr var_EC
  loc_BCABBF: from_stack_2 = Me.Item(from_stack_1)
  loc_BCABC4: LitI2_Byte 0
  loc_BCABC6: LitVar_Missing var_120
  loc_BCABC9: LitI2_Byte 0
  loc_BCABCB: FLdZeroAd var_10C
  loc_BCABCE: CVarAd
  loc_BCABD2: PopAdLdVar
  loc_BCABD3: FLdPr Me
  loc_BCABD6: MemLdRfVar from_stack_1.global_104
  loc_BCABD9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCABDE: FFreeAd var_B0 = ""
  loc_BCABE5: FFreeVar var_C4 = ""
  loc_BCABEC: FLdRfVar var_10C
  loc_BCABEF: LitVarStr var_9C, "DetaTico"
  loc_BCABF4: PopAdLdVar
  loc_BCABF5: FLdRfVar var_EC
  loc_BCABF8: FLdRfVar var_B0
  loc_BCABFB: FLdPr var_C8
  loc_BCABFE: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAC03: FLdPr var_B0
  loc_BCAC06:  = Me.Fields
  loc_BCAC0B: FLdPr var_EC
  loc_BCAC0E: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAC13: LitI2_Byte 0
  loc_BCAC15: LitVar_Missing var_120
  loc_BCAC18: LitI2_Byte 0
  loc_BCAC1A: FLdZeroAd var_10C
  loc_BCAC1D: CVarAd
  loc_BCAC21: PopAdLdVar
  loc_BCAC22: FLdPr Me
  loc_BCAC25: MemLdRfVar from_stack_1.global_108
  loc_BCAC28: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAC2D: FFreeAd var_B0 = ""
  loc_BCAC34: FFreeVar var_C4 = ""
  loc_BCAC3B: FLdRfVar var_10C
  loc_BCAC3E: LitVarStr var_9C, "ExpeImpu"
  loc_BCAC43: PopAdLdVar
  loc_BCAC44: FLdRfVar var_EC
  loc_BCAC47: FLdRfVar var_B0
  loc_BCAC4A: FLdPr var_C8
  loc_BCAC4D: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAC52: FLdPr var_B0
  loc_BCAC55:  = Me.Fields
  loc_BCAC5A: FLdPr var_EC
  loc_BCAC5D: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAC62: LitI2_Byte 0
  loc_BCAC64: LitVar_Missing var_120
  loc_BCAC67: LitI2_Byte 0
  loc_BCAC69: FLdZeroAd var_10C
  loc_BCAC6C: CVarAd
  loc_BCAC70: PopAdLdVar
  loc_BCAC71: FLdPr Me
  loc_BCAC74: MemLdRfVar from_stack_1.global_112
  loc_BCAC77: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAC7C: FFreeAd var_B0 = ""
  loc_BCAC83: FFreeVar var_C4 = ""
  loc_BCAC8A: FLdRfVar var_10C
  loc_BCAC8D: LitVarStr var_9C, "FechNope"
  loc_BCAC92: PopAdLdVar
  loc_BCAC93: FLdRfVar var_EC
  loc_BCAC96: FLdRfVar var_B0
  loc_BCAC99: FLdPr var_C8
  loc_BCAC9C: from_stack_1v = clsbase.RsFrmGet()
  loc_BCACA1: FLdPr var_B0
  loc_BCACA4:  = Me.Fields
  loc_BCACA9: FLdPr var_EC
  loc_BCACAC: from_stack_2 = Me.Item(from_stack_1)
  loc_BCACB1: LitI2_Byte 0
  loc_BCACB3: LitVar_Missing var_120
  loc_BCACB6: LitI2_Byte 0
  loc_BCACB8: FLdZeroAd var_10C
  loc_BCACBB: CVarAd
  loc_BCACBF: PopAdLdVar
  loc_BCACC0: FLdPr Me
  loc_BCACC3: MemLdRfVar from_stack_1.global_116
  loc_BCACC6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCACCB: FFreeAd var_B0 = ""
  loc_BCACD2: FFreeVar var_C4 = ""
  loc_BCACD9: FLdRfVar var_10C
  loc_BCACDC: LitVarStr var_9C, "FechCoti"
  loc_BCACE1: PopAdLdVar
  loc_BCACE2: FLdRfVar var_EC
  loc_BCACE5: FLdRfVar var_B0
  loc_BCACE8: FLdPr var_C8
  loc_BCACEB: from_stack_1v = clsbase.RsFrmGet()
  loc_BCACF0: FLdPr var_B0
  loc_BCACF3:  = Me.Fields
  loc_BCACF8: FLdPr var_EC
  loc_BCACFB: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAD00: LitI2_Byte 0
  loc_BCAD02: LitVar_Missing var_120
  loc_BCAD05: LitI2_Byte 0
  loc_BCAD07: FLdZeroAd var_10C
  loc_BCAD0A: CVarAd
  loc_BCAD0E: PopAdLdVar
  loc_BCAD0F: FLdPr Me
  loc_BCAD12: MemLdRfVar from_stack_1.global_120
  loc_BCAD15: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAD1A: FFreeAd var_B0 = ""
  loc_BCAD21: FFreeVar var_C4 = ""
  loc_BCAD28: FLdRfVar var_10C
  loc_BCAD2B: LitVarStr var_9C, "FeanCoti"
  loc_BCAD30: PopAdLdVar
  loc_BCAD31: FLdRfVar var_EC
  loc_BCAD34: FLdRfVar var_B0
  loc_BCAD37: FLdPr var_C8
  loc_BCAD3A: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAD3F: FLdPr var_B0
  loc_BCAD42:  = Me.Fields
  loc_BCAD47: FLdPr var_EC
  loc_BCAD4A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAD4F: LitI2_Byte 0
  loc_BCAD51: LitVar_Missing var_120
  loc_BCAD54: LitI2_Byte 0
  loc_BCAD56: FLdZeroAd var_10C
  loc_BCAD59: CVarAd
  loc_BCAD5D: PopAdLdVar
  loc_BCAD5E: FLdPr Me
  loc_BCAD61: MemLdRfVar from_stack_1.global_124
  loc_BCAD64: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAD69: FFreeAd var_B0 = ""
  loc_BCAD70: FFreeVar var_C4 = ""
  loc_BCAD77: FLdRfVar var_10C
  loc_BCAD7A: LitVarStr var_9C, "BajaMoti"
  loc_BCAD7F: PopAdLdVar
  loc_BCAD80: FLdRfVar var_EC
  loc_BCAD83: FLdRfVar var_B0
  loc_BCAD86: FLdPr var_C8
  loc_BCAD89: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAD8E: FLdPr var_B0
  loc_BCAD91:  = Me.Fields
  loc_BCAD96: FLdPr var_EC
  loc_BCAD99: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAD9E: LitI2_Byte 0
  loc_BCADA0: LitVar_Missing var_120
  loc_BCADA3: LitI2_Byte 0
  loc_BCADA5: FLdZeroAd var_10C
  loc_BCADA8: CVarAd
  loc_BCADAC: PopAdLdVar
  loc_BCADAD: FLdPr Me
  loc_BCADB0: MemLdRfVar from_stack_1.global_128
  loc_BCADB3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCADB8: FFreeAd var_B0 = ""
  loc_BCADBF: FFreeVar var_C4 = ""
  loc_BCADC6: LitI2_Byte 1
  loc_BCADC8: FLdPr Me
  loc_BCADCB: MemLdRfVar from_stack_1.global_140
  loc_BCADCE: FLdPr Me
  loc_BCADD1: MemLdStr global_132
  loc_BCADD4: LitI2_Byte 1
  loc_BCADD6: FnUBound
  loc_BCADD8: CI2I4
  loc_BCADD9: ForI2 var_124
  loc_BCADDF: FLdRfVar var_10C
  loc_BCADE2: LitVarStr var_9C, "IdCoti"
  loc_BCADE7: PopAdLdVar
  loc_BCADE8: FLdRfVar var_EC
  loc_BCADEB: FLdRfVar var_B0
  loc_BCADEE: FLdPr var_C8
  loc_BCADF1: from_stack_1v = clsbase.RsFrmGet()
  loc_BCADF6: FLdPr var_B0
  loc_BCADF9:  = Me.Fields
  loc_BCADFE: FLdPr var_EC
  loc_BCAE01: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAE06: LitI2_Byte 0
  loc_BCAE08: LitVar_Missing var_120
  loc_BCAE0B: LitI2_Byte 0
  loc_BCAE0D: FLdZeroAd var_10C
  loc_BCAE10: CVarAd
  loc_BCAE14: PopAdLdVar
  loc_BCAE15: FLdPr Me
  loc_BCAE18: MemLdI2 global_140
  loc_BCAE1B: CI4UI1
  loc_BCAE1C: FLdPr Me
  loc_BCAE1F: MemLdStr global_132
  loc_BCAE22: AryLock
  loc_BCAE25: Ary1LdPr
  loc_BCAE26: MemLdRfVar from_stack_1.global_0
  loc_BCAE29: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAE2E: AryUnlock
  loc_BCAE31: FFreeAd var_B0 = ""
  loc_BCAE38: FFreeVar var_C4 = ""
  loc_BCAE3F: FLdRfVar var_10C
  loc_BCAE42: LitVarStr var_9C, "CucuPers"
  loc_BCAE47: PopAdLdVar
  loc_BCAE48: FLdRfVar var_EC
  loc_BCAE4B: FLdRfVar var_B0
  loc_BCAE4E: FLdPr var_C8
  loc_BCAE51: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAE56: FLdPr var_B0
  loc_BCAE59:  = Me.Fields
  loc_BCAE5E: FLdPr var_EC
  loc_BCAE61: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAE66: LitI2_Byte 0
  loc_BCAE68: LitVar_Missing var_120
  loc_BCAE6B: LitI2_Byte 0
  loc_BCAE6D: FLdZeroAd var_10C
  loc_BCAE70: CVarAd
  loc_BCAE74: PopAdLdVar
  loc_BCAE75: FLdPr Me
  loc_BCAE78: MemLdI2 global_140
  loc_BCAE7B: CI4UI1
  loc_BCAE7C: FLdPr Me
  loc_BCAE7F: MemLdStr global_132
  loc_BCAE82: AryLock
  loc_BCAE85: Ary1LdPr
  loc_BCAE86: MemLdRfVar from_stack_1.global_4
  loc_BCAE89: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAE8E: AryUnlock
  loc_BCAE91: FFreeAd var_B0 = ""
  loc_BCAE98: FFreeVar var_C4 = ""
  loc_BCAE9F: FLdRfVar var_10C
  loc_BCAEA2: LitVarStr var_9C, "DetaProv"
  loc_BCAEA7: PopAdLdVar
  loc_BCAEA8: FLdRfVar var_EC
  loc_BCAEAB: FLdRfVar var_B0
  loc_BCAEAE: FLdPr var_C8
  loc_BCAEB1: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAEB6: FLdPr var_B0
  loc_BCAEB9:  = Me.Fields
  loc_BCAEBE: FLdPr var_EC
  loc_BCAEC1: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAEC6: LitI2_Byte 0
  loc_BCAEC8: LitVar_Missing var_120
  loc_BCAECB: LitI2_Byte 0
  loc_BCAECD: FLdZeroAd var_10C
  loc_BCAED0: CVarAd
  loc_BCAED4: PopAdLdVar
  loc_BCAED5: FLdPr Me
  loc_BCAED8: MemLdI2 global_140
  loc_BCAEDB: CI4UI1
  loc_BCAEDC: FLdPr Me
  loc_BCAEDF: MemLdStr global_132
  loc_BCAEE2: AryLock
  loc_BCAEE5: Ary1LdPr
  loc_BCAEE6: MemLdRfVar from_stack_1.global_8
  loc_BCAEE9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAEEE: AryUnlock
  loc_BCAEF1: FFreeAd var_B0 = ""
  loc_BCAEF8: FFreeVar var_C4 = ""
  loc_BCAEFF: FLdRfVar var_10C
  loc_BCAF02: LitVarStr var_9C, "FechCoti"
  loc_BCAF07: PopAdLdVar
  loc_BCAF08: FLdRfVar var_EC
  loc_BCAF0B: FLdRfVar var_B0
  loc_BCAF0E: FLdPr var_C8
  loc_BCAF11: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAF16: FLdPr var_B0
  loc_BCAF19:  = Me.Fields
  loc_BCAF1E: FLdPr var_EC
  loc_BCAF21: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAF26: LitI2_Byte 0
  loc_BCAF28: LitVar_Missing var_120
  loc_BCAF2B: LitI2_Byte 0
  loc_BCAF2D: FLdZeroAd var_10C
  loc_BCAF30: CVarAd
  loc_BCAF34: PopAdLdVar
  loc_BCAF35: FLdPr Me
  loc_BCAF38: MemLdI2 global_140
  loc_BCAF3B: CI4UI1
  loc_BCAF3C: FLdPr Me
  loc_BCAF3F: MemLdStr global_132
  loc_BCAF42: AryLock
  loc_BCAF45: Ary1LdPr
  loc_BCAF46: MemLdRfVar from_stack_1.global_12
  loc_BCAF49: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAF4E: AryUnlock
  loc_BCAF51: FFreeAd var_B0 = ""
  loc_BCAF58: FFreeVar var_C4 = ""
  loc_BCAF5F: FLdRfVar var_10C
  loc_BCAF62: LitVarStr var_9C, "PlenCoti"
  loc_BCAF67: PopAdLdVar
  loc_BCAF68: FLdRfVar var_EC
  loc_BCAF6B: FLdRfVar var_B0
  loc_BCAF6E: FLdPr var_C8
  loc_BCAF71: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAF76: FLdPr var_B0
  loc_BCAF79:  = Me.Fields
  loc_BCAF7E: FLdPr var_EC
  loc_BCAF81: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAF86: LitI2_Byte 0
  loc_BCAF88: LitVar_Missing var_120
  loc_BCAF8B: LitI2_Byte 0
  loc_BCAF8D: FLdZeroAd var_10C
  loc_BCAF90: CVarAd
  loc_BCAF94: PopAdLdVar
  loc_BCAF95: FLdPr Me
  loc_BCAF98: MemLdI2 global_140
  loc_BCAF9B: CI4UI1
  loc_BCAF9C: FLdPr Me
  loc_BCAF9F: MemLdStr global_132
  loc_BCAFA2: AryLock
  loc_BCAFA5: Ary1LdPr
  loc_BCAFA6: MemLdRfVar from_stack_1.global_16
  loc_BCAFA9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCAFAE: AryUnlock
  loc_BCAFB1: FFreeAd var_B0 = ""
  loc_BCAFB8: FFreeVar var_C4 = ""
  loc_BCAFBF: FLdRfVar var_10C
  loc_BCAFC2: LitVarStr var_9C, "MaofCoti"
  loc_BCAFC7: PopAdLdVar
  loc_BCAFC8: FLdRfVar var_EC
  loc_BCAFCB: FLdRfVar var_B0
  loc_BCAFCE: FLdPr var_C8
  loc_BCAFD1: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAFD6: FLdPr var_B0
  loc_BCAFD9:  = Me.Fields
  loc_BCAFDE: FLdPr var_EC
  loc_BCAFE1: from_stack_2 = Me.Item(from_stack_1)
  loc_BCAFE6: LitI2_Byte 0
  loc_BCAFE8: LitVar_Missing var_120
  loc_BCAFEB: LitI2_Byte 0
  loc_BCAFED: FLdZeroAd var_10C
  loc_BCAFF0: CVarAd
  loc_BCAFF4: PopAdLdVar
  loc_BCAFF5: FLdPr Me
  loc_BCAFF8: MemLdI2 global_140
  loc_BCAFFB: CI4UI1
  loc_BCAFFC: FLdPr Me
  loc_BCAFFF: MemLdStr global_132
  loc_BCB002: AryLock
  loc_BCB005: Ary1LdPr
  loc_BCB006: MemLdRfVar from_stack_1.global_20
  loc_BCB009: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB00E: AryUnlock
  loc_BCB011: FFreeAd var_B0 = ""
  loc_BCB018: FFreeVar var_C4 = ""
  loc_BCB01F: FLdRfVar var_10C
  loc_BCB022: LitVarStr var_9C, "ObseCoti"
  loc_BCB027: PopAdLdVar
  loc_BCB028: FLdRfVar var_EC
  loc_BCB02B: FLdRfVar var_B0
  loc_BCB02E: FLdPr var_C8
  loc_BCB031: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB036: FLdPr var_B0
  loc_BCB039:  = Me.Fields
  loc_BCB03E: FLdPr var_EC
  loc_BCB041: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB046: LitI2_Byte 0
  loc_BCB048: LitVar_Missing var_120
  loc_BCB04B: LitI2_Byte 0
  loc_BCB04D: FLdZeroAd var_10C
  loc_BCB050: CVarAd
  loc_BCB054: PopAdLdVar
  loc_BCB055: FLdPr Me
  loc_BCB058: MemLdI2 global_140
  loc_BCB05B: CI4UI1
  loc_BCB05C: FLdPr Me
  loc_BCB05F: MemLdStr global_132
  loc_BCB062: AryLock
  loc_BCB065: Ary1LdPr
  loc_BCB066: MemLdRfVar from_stack_1.global_24
  loc_BCB069: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB06E: AryUnlock
  loc_BCB071: FFreeAd var_B0 = ""
  loc_BCB078: FFreeVar var_C4 = ""
  loc_BCB07F: FLdRfVar var_10C
  loc_BCB082: LitVarStr var_9C, "AltaUsua"
  loc_BCB087: PopAdLdVar
  loc_BCB088: FLdRfVar var_EC
  loc_BCB08B: FLdRfVar var_B0
  loc_BCB08E: FLdPr var_C8
  loc_BCB091: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB096: FLdPr var_B0
  loc_BCB099:  = Me.Fields
  loc_BCB09E: FLdPr var_EC
  loc_BCB0A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB0A6: LitI2_Byte 0
  loc_BCB0A8: LitVar_Missing var_120
  loc_BCB0AB: LitI2_Byte 0
  loc_BCB0AD: FLdZeroAd var_10C
  loc_BCB0B0: CVarAd
  loc_BCB0B4: PopAdLdVar
  loc_BCB0B5: FLdPr Me
  loc_BCB0B8: MemLdI2 global_140
  loc_BCB0BB: CI4UI1
  loc_BCB0BC: FLdPr Me
  loc_BCB0BF: MemLdStr global_132
  loc_BCB0C2: AryLock
  loc_BCB0C5: Ary1LdPr
  loc_BCB0C6: MemLdRfVar from_stack_1.global_28
  loc_BCB0C9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB0CE: AryUnlock
  loc_BCB0D1: FFreeAd var_B0 = ""
  loc_BCB0D8: FFreeVar var_C4 = ""
  loc_BCB0DF: LitI2_Byte 0
  loc_BCB0E1: LitVar_Missing var_C4
  loc_BCB0E4: LitI2_Byte &HFF
  loc_BCB0E6: LitVarI2 var_9C, 0
  loc_BCB0EB: PopAdLdVar
  loc_BCB0EC: FLdPr Me
  loc_BCB0EF: MemLdI2 global_140
  loc_BCB0F2: CI4UI1
  loc_BCB0F3: FLdPr Me
  loc_BCB0F6: MemLdStr global_132
  loc_BCB0F9: AryLock
  loc_BCB0FC: Ary1LdPr
  loc_BCB0FD: MemLdRfVar from_stack_1.global_32
  loc_BCB100: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB105: AryUnlock
  loc_BCB108: FFree1Var var_C4 = ""
  loc_BCB10B: FLdRfVar var_C4
  loc_BCB10E: FLdRfVar var_10C
  loc_BCB111: LitVarStr var_9C, "FechCoti"
  loc_BCB116: PopAdLdVar
  loc_BCB117: FLdRfVar var_EC
  loc_BCB11A: FLdRfVar var_B0
  loc_BCB11D: FLdPr var_C8
  loc_BCB120: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB125: FLdPr var_B0
  loc_BCB128:  = Me.Fields
  loc_BCB12D: FLdPr var_EC
  loc_BCB130: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB135: FLdPr var_10C
  loc_BCB138:  = Me.Value
  loc_BCB13D: FLdRfVar var_C4
  loc_BCB140: FnCDateVar
  loc_BCB142: FLdPr Me
  loc_BCB145: MemLdStr global_120
  loc_BCB148: CDateStr
  loc_BCB14A: GtR4
  loc_BCB14B: FFreeAd var_B0 = "": var_EC = ""
  loc_BCB154: FFree1Var var_C4 = ""
  loc_BCB157: BranchF loc_BCB1A9
  loc_BCB15A: FLdRfVar var_10C
  loc_BCB15D: LitVarStr var_9C, "FechCoti"
  loc_BCB162: PopAdLdVar
  loc_BCB163: FLdRfVar var_EC
  loc_BCB166: FLdRfVar var_B0
  loc_BCB169: FLdPr var_C8
  loc_BCB16C: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB171: FLdPr var_B0
  loc_BCB174:  = Me.Fields
  loc_BCB179: FLdPr var_EC
  loc_BCB17C: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB181: LitI2_Byte 0
  loc_BCB183: LitVar_Missing var_120
  loc_BCB186: LitI2_Byte 0
  loc_BCB188: FLdZeroAd var_10C
  loc_BCB18B: CVarAd
  loc_BCB18F: PopAdLdVar
  loc_BCB190: FLdPr Me
  loc_BCB193: MemLdRfVar from_stack_1.global_120
  loc_BCB196: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB19B: FFreeAd var_B0 = ""
  loc_BCB1A2: FFreeVar var_C4 = ""
  loc_BCB1A9: FLdPr var_C8
  loc_BCB1AC: Call clsbase.MoveSiguiente()
  loc_BCB1B1: FLdPr Me
  loc_BCB1B4: MemLdRfVar from_stack_1.global_140
  loc_BCB1B7: NextI2 var_124, loc_BCADDF
  loc_BCB1BC: LitNothing
  loc_BCB1BE: FStAd var_C8 
  loc_BCB1C2: FLdPr Me
  loc_BCB1C5: MemLdRfVar from_stack_1.global_80
  loc_BCB1C8: NewIfNullAd
  loc_BCB1CB: FStAd var_12C 
  loc_BCB1CF: LitI2_Byte 1
  loc_BCB1D1: FLdPr Me
  loc_BCB1D4: MemLdRfVar from_stack_1.global_142
  loc_BCB1D7: FLdPr Me
  loc_BCB1DA: MemLdStr global_136
  loc_BCB1DD: LitI2_Byte 1
  loc_BCB1DF: FnUBound
  loc_BCB1E1: CI2I4
  loc_BCB1E2: ForI2 var_130
  loc_BCB1E8: FLdPr Me
  loc_BCB1EB: MemLdI2 global_142
  loc_BCB1EE: CI4UI1
  loc_BCB1EF: FLdPr Me
  loc_BCB1F2: MemLdStr global_136
  loc_BCB1F5: Ary1LdPr
  loc_BCB1F6: MemLdStr global_0
  loc_BCB1F9: LitStr vbNullString
  loc_BCB1FC: NeStr
  loc_BCB1FE: BranchF loc_BCB81F
  loc_BCB201: LitI2_Byte 1
  loc_BCB203: FLdPr Me
  loc_BCB206: MemLdRfVar from_stack_1.global_140
  loc_BCB209: FLdPr Me
  loc_BCB20C: MemLdStr global_132
  loc_BCB20F: LitI2_Byte 1
  loc_BCB211: FnUBound
  loc_BCB213: CI2I4
  loc_BCB214: ForI2 var_134
  loc_BCB21A: LitStr "SELECT itc.PeriInfo, itc.CodiItco, itc.AlteItco, itc.CantItco, itc.DetaItco, itc.CaraItco, itc.MarcaItco"
  loc_BCB21D: LitStr ", IF(FecoNope<Now() || FecoNope IS NULL,itc.ImunItco,0) ImunItco, IF(FecoNope<Now() || FecoNope IS NULL,(CantItco * ImunItco),0) ImpoItco"
  loc_BCB220: ConcatStr
  loc_BCB221: FStStrNoPop var_CC
  loc_BCB224: LitStr " FROM cotizacion c"
  loc_BCB227: ConcatStr
  loc_BCB228: FStStrNoPop var_D0
  loc_BCB22B: LitStr " INNER JOIN itemcotizacion itc ON itc.IdCoti = c.IdCoti"
  loc_BCB22E: ConcatStr
  loc_BCB22F: FStStrNoPop var_D4
  loc_BCB232: LitStr " AND itc.IdCoti = "
  loc_BCB235: ConcatStr
  loc_BCB236: FStStrNoPop var_D8
  loc_BCB239: FLdPr Me
  loc_BCB23C: MemLdI2 global_140
  loc_BCB23F: CI4UI1
  loc_BCB240: FLdPr Me
  loc_BCB243: MemLdStr global_132
  loc_BCB246: Ary1LdPr
  loc_BCB247: MemLdStr global_0
  loc_BCB24A: ConcatStr
  loc_BCB24B: FStStrNoPop var_DC
  loc_BCB24E: LitStr " INNER JOIN notapedido np ON np.PeriInfo = itc.PeriInfo AND np.CodiNope = itc.CodiNope"
  loc_BCB251: ConcatStr
  loc_BCB252: FStStrNoPop var_E0
  loc_BCB255: LitStr " WHERE c.PeriInfo = "
  loc_BCB258: ConcatStr
  loc_BCB259: FStStrNoPop var_E8
  loc_BCB25C: FLdRfVar var_E4
  loc_BCB25F: FLdPr Me
  loc_BCB262: VCallAd Control_ID_cboPeriodo
  loc_BCB265: FStAdFunc var_B0
  loc_BCB268: FLdPr var_B0
  loc_BCB26B:  = Me.Text
  loc_BCB270: ILdRf var_E4
  loc_BCB273: ConcatStr
  loc_BCB274: FStStrNoPop var_F0
  loc_BCB277: LitStr " AND c.CodiNope = "
  loc_BCB27A: ConcatStr
  loc_BCB27B: FStStrNoPop var_F4
  loc_BCB27E: FLdPr Me
  loc_BCB281: MemLdStr global_88
  loc_BCB284: ConcatStr
  loc_BCB285: FStStrNoPop var_F8
  loc_BCB288: LitStr " AND c.CucuPers = '"
  loc_BCB28B: ConcatStr
  loc_BCB28C: FStStrNoPop var_FC
  loc_BCB28F: FLdPr Me
  loc_BCB292: MemLdI2 global_140
  loc_BCB295: CI4UI1
  loc_BCB296: FLdPr Me
  loc_BCB299: MemLdStr global_132
  loc_BCB29C: Ary1LdPr
  loc_BCB29D: MemLdStr global_4
  loc_BCB2A0: ConcatStr
  loc_BCB2A1: FStStrNoPop var_100
  loc_BCB2A4: LitStr "' AND CodiItco = "
  loc_BCB2A7: ConcatStr
  loc_BCB2A8: FStStrNoPop var_138
  loc_BCB2AB: FLdPr Me
  loc_BCB2AE: MemLdI2 global_142
  loc_BCB2B1: CI4UI1
  loc_BCB2B2: FLdPr Me
  loc_BCB2B5: MemLdStr global_136
  loc_BCB2B8: Ary1LdPr
  loc_BCB2B9: MemLdStr global_0
  loc_BCB2BC: ConcatStr
  loc_BCB2BD: FStStrNoPop var_13C
  loc_BCB2C0: LitStr " ORDER BY AlteItco DESC;"
  loc_BCB2C3: ConcatStr
  loc_BCB2C4: FStStrNoPop var_140
  loc_BCB2C7: FLdPr var_12C
  loc_BCB2CA: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCB2CF: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E8 = "": var_E4 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_138 = "": var_13C = ""
  loc_BCB2F2: FFree1Ad var_B0
  loc_BCB2F5: FLdRfVar var_104
  loc_BCB2F8: FLdPr var_12C
  loc_BCB2FB: from_stack_1 = clsbase.RecordCount
  loc_BCB300: ILdRf var_104
  loc_BCB303: LitI4 0
  loc_BCB308: GtI4
  loc_BCB309: BranchF loc_BCB814
  loc_BCB30C: FLdRfVar var_C4
  loc_BCB30F: FLdRfVar var_10C
  loc_BCB312: LitVarStr var_9C, "AlteItco"
  loc_BCB317: PopAdLdVar
  loc_BCB318: FLdRfVar var_EC
  loc_BCB31B: FLdRfVar var_B0
  loc_BCB31E: FLdPr var_12C
  loc_BCB321: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB326: FLdPr var_B0
  loc_BCB329:  = Me.Fields
  loc_BCB32E: FLdPr var_EC
  loc_BCB331: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB336: FLdPr var_10C
  loc_BCB339:  = Me.Value
  loc_BCB33E: FLdRfVar var_C4
  loc_BCB341: LitVarI2 var_AC, 1
  loc_BCB346: AddVar var_120
  loc_BCB34A: FnCIntVar
  loc_BCB34C: FStI2 var_86
  loc_BCB34F: FFreeAd var_B0 = "": var_EC = ""
  loc_BCB358: FFreeVar var_C4 = "": var_120 = ""
  loc_BCB361: FLdI2 var_86
  loc_BCB364: CI4UI1
  loc_BCB365: FLdPr Me
  loc_BCB368: MemLdI2 global_142
  loc_BCB36B: CI4UI1
  loc_BCB36C: FLdPr Me
  loc_BCB36F: MemLdStr global_136
  loc_BCB372: Ary1LdPr
  loc_BCB373: MemLdStr global_16
  loc_BCB376: LitI2_Byte 1
  loc_BCB378: FnUBound
  loc_BCB37A: GtI4
  loc_BCB37B: BranchF loc_BCB40A
  loc_BCB37E: FLdPr Me
  loc_BCB381: MemLdI2 global_142
  loc_BCB384: CI4UI1
  loc_BCB385: FLdPr Me
  loc_BCB388: MemLdStr global_136
  loc_BCB38B: Ary1LdPr
  loc_BCB38C: MemLdStr global_16
  loc_BCB38F: LitI2_Byte 1
  loc_BCB391: FnUBound
  loc_BCB393: LitI4 1
  loc_BCB398: AddI4
  loc_BCB399: CI2I4
  loc_BCB39A: FStI2 var_88
  loc_BCB39D: LitI4 1
  loc_BCB3A2: FLdI2 var_86
  loc_BCB3A5: CI4UI1
  loc_BCB3A6: FLdPr Me
  loc_BCB3A9: MemLdI2 global_142
  loc_BCB3AC: CI4UI1
  loc_BCB3AD: FLdPr Me
  loc_BCB3B0: MemLdStr global_136
  loc_BCB3B3: Ary1LdPr
  loc_BCB3B4: MemLdRfVar from_stack_1.global_16
  loc_BCB3B7: RedimPreserve
  loc_BCB3C1: FLdI2 var_88
  loc_BCB3C4: FLdRfVar var_88
  loc_BCB3C7: FLdI2 var_86
  loc_BCB3CA: ForI2 var_144
  loc_BCB3D0: LitI4 1
  loc_BCB3D5: FLdPr Me
  loc_BCB3D8: MemLdStr global_132
  loc_BCB3DB: LitI2_Byte 1
  loc_BCB3DD: FnUBound
  loc_BCB3DF: FLdI2 var_88
  loc_BCB3E2: CI4UI1
  loc_BCB3E3: FLdPr Me
  loc_BCB3E6: MemLdI2 global_142
  loc_BCB3E9: CI4UI1
  loc_BCB3EA: FLdPr Me
  loc_BCB3ED: MemLdStr global_136
  loc_BCB3F0: Ary1LdPr
  loc_BCB3F1: MemLdStr global_16
  loc_BCB3F4: Ary1LdPr
  loc_BCB3F5: MemLdRfVar from_stack_1.global_0
  loc_BCB3F8: RedimPreserve
  loc_BCB402: FLdRfVar var_88
  loc_BCB405: NextI2 var_144, loc_BCB3D0
  loc_BCB40A: LitI2_Byte 1
  loc_BCB40C: FLdPr Me
  loc_BCB40F: MemLdRfVar from_stack_1.global_144
  loc_BCB412: FLdI2 var_86
  loc_BCB415: ForI2 var_148
  loc_BCB41B: LitStr "AlteItco = "
  loc_BCB41E: FLdPr Me
  loc_BCB421: MemLdI2 global_144
  loc_BCB424: LitI2_Byte 1
  loc_BCB426: SubI2
  loc_BCB427: CStrUI1
  loc_BCB429: FStStrNoPop var_CC
  loc_BCB42C: ConcatStr
  loc_BCB42D: PopTmpLdAdStr
  loc_BCB431: FLdPr var_12C
  loc_BCB434: Call clsbase.Filter(from_stack_1v)
  loc_BCB439: FFreeStr var_CC = ""
  loc_BCB440: FLdRfVar var_104
  loc_BCB443: FLdPr var_12C
  loc_BCB446: from_stack_1 = clsbase.RecordCount
  loc_BCB44B: ILdRf var_104
  loc_BCB44E: LitI4 0
  loc_BCB453: GtI4
  loc_BCB454: BranchF loc_BCB809
  loc_BCB457: FLdRfVar var_10C
  loc_BCB45A: LitVarStr var_9C, "CantItco"
  loc_BCB45F: PopAdLdVar
  loc_BCB460: FLdRfVar var_EC
  loc_BCB463: FLdRfVar var_B0
  loc_BCB466: FLdPr var_12C
  loc_BCB469: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB46E: FLdPr var_B0
  loc_BCB471:  = Me.Fields
  loc_BCB476: FLdPr var_EC
  loc_BCB479: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB47E: LitI2_Byte 0
  loc_BCB480: LitVar_Missing var_120
  loc_BCB483: LitI2_Byte 0
  loc_BCB485: FLdZeroAd var_10C
  loc_BCB488: CVarAd
  loc_BCB48C: PopAdLdVar
  loc_BCB48D: FLdPr Me
  loc_BCB490: MemLdI2 global_140
  loc_BCB493: CI4UI1
  loc_BCB494: FLdPr Me
  loc_BCB497: MemLdI2 global_144
  loc_BCB49A: CI4UI1
  loc_BCB49B: FLdPr Me
  loc_BCB49E: MemLdI2 global_142
  loc_BCB4A1: CI4UI1
  loc_BCB4A2: FLdPr Me
  loc_BCB4A5: MemLdStr global_136
  loc_BCB4A8: AryLock
  loc_BCB4AB: Ary1LdPr
  loc_BCB4AC: MemLdStr global_16
  loc_BCB4AF: AryLock
  loc_BCB4B2: Ary1LdPr
  loc_BCB4B3: MemLdStr global_0
  loc_BCB4B6: AryLock
  loc_BCB4B9: Ary1LdPr
  loc_BCB4BA: MemLdRfVar from_stack_1.global_0
  loc_BCB4BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB4C2: AryUnlock
  loc_BCB4C5: AryUnlock
  loc_BCB4C8: AryUnlock
  loc_BCB4CB: FFreeAd var_B0 = ""
  loc_BCB4D2: FFreeVar var_C4 = ""
  loc_BCB4D9: FLdRfVar var_10C
  loc_BCB4DC: LitVarStr var_9C, "DetaItco"
  loc_BCB4E1: PopAdLdVar
  loc_BCB4E2: FLdRfVar var_EC
  loc_BCB4E5: FLdRfVar var_B0
  loc_BCB4E8: FLdPr var_12C
  loc_BCB4EB: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB4F0: FLdPr var_B0
  loc_BCB4F3:  = Me.Fields
  loc_BCB4F8: FLdPr var_EC
  loc_BCB4FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB500: LitI2_Byte 0
  loc_BCB502: LitVar_Missing var_120
  loc_BCB505: LitI2_Byte 0
  loc_BCB507: FLdZeroAd var_10C
  loc_BCB50A: CVarAd
  loc_BCB50E: PopAdLdVar
  loc_BCB50F: FLdPr Me
  loc_BCB512: MemLdI2 global_140
  loc_BCB515: CI4UI1
  loc_BCB516: FLdPr Me
  loc_BCB519: MemLdI2 global_144
  loc_BCB51C: CI4UI1
  loc_BCB51D: FLdPr Me
  loc_BCB520: MemLdI2 global_142
  loc_BCB523: CI4UI1
  loc_BCB524: FLdPr Me
  loc_BCB527: MemLdStr global_136
  loc_BCB52A: AryLock
  loc_BCB52D: Ary1LdPr
  loc_BCB52E: MemLdStr global_16
  loc_BCB531: AryLock
  loc_BCB534: Ary1LdPr
  loc_BCB535: MemLdStr global_0
  loc_BCB538: AryLock
  loc_BCB53B: Ary1LdPr
  loc_BCB53C: MemLdRfVar from_stack_1.global_12
  loc_BCB53F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB544: AryUnlock
  loc_BCB547: AryUnlock
  loc_BCB54A: AryUnlock
  loc_BCB54D: FFreeAd var_B0 = ""
  loc_BCB554: FFreeVar var_C4 = ""
  loc_BCB55B: FLdRfVar var_10C
  loc_BCB55E: LitVarStr var_9C, "CaraItco"
  loc_BCB563: PopAdLdVar
  loc_BCB564: FLdRfVar var_EC
  loc_BCB567: FLdRfVar var_B0
  loc_BCB56A: FLdPr var_12C
  loc_BCB56D: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB572: FLdPr var_B0
  loc_BCB575:  = Me.Fields
  loc_BCB57A: FLdPr var_EC
  loc_BCB57D: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB582: LitI2_Byte 0
  loc_BCB584: LitVar_Missing var_120
  loc_BCB587: LitI2_Byte 0
  loc_BCB589: FLdZeroAd var_10C
  loc_BCB58C: CVarAd
  loc_BCB590: PopAdLdVar
  loc_BCB591: FLdPr Me
  loc_BCB594: MemLdI2 global_140
  loc_BCB597: CI4UI1
  loc_BCB598: FLdPr Me
  loc_BCB59B: MemLdI2 global_144
  loc_BCB59E: CI4UI1
  loc_BCB59F: FLdPr Me
  loc_BCB5A2: MemLdI2 global_142
  loc_BCB5A5: CI4UI1
  loc_BCB5A6: FLdPr Me
  loc_BCB5A9: MemLdStr global_136
  loc_BCB5AC: AryLock
  loc_BCB5AF: Ary1LdPr
  loc_BCB5B0: MemLdStr global_16
  loc_BCB5B3: AryLock
  loc_BCB5B6: Ary1LdPr
  loc_BCB5B7: MemLdStr global_0
  loc_BCB5BA: AryLock
  loc_BCB5BD: Ary1LdPr
  loc_BCB5BE: MemLdRfVar from_stack_1.global_16
  loc_BCB5C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB5C6: AryUnlock
  loc_BCB5C9: AryUnlock
  loc_BCB5CC: AryUnlock
  loc_BCB5CF: FFreeAd var_B0 = ""
  loc_BCB5D6: FFreeVar var_C4 = ""
  loc_BCB5DD: FLdRfVar var_10C
  loc_BCB5E0: LitVarStr var_9C, "MarcaItco"
  loc_BCB5E5: PopAdLdVar
  loc_BCB5E6: FLdRfVar var_EC
  loc_BCB5E9: FLdRfVar var_B0
  loc_BCB5EC: FLdPr var_12C
  loc_BCB5EF: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB5F4: FLdPr var_B0
  loc_BCB5F7:  = Me.Fields
  loc_BCB5FC: FLdPr var_EC
  loc_BCB5FF: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB604: LitI2_Byte 0
  loc_BCB606: LitVar_Missing var_120
  loc_BCB609: LitI2_Byte 0
  loc_BCB60B: FLdZeroAd var_10C
  loc_BCB60E: CVarAd
  loc_BCB612: PopAdLdVar
  loc_BCB613: FLdPr Me
  loc_BCB616: MemLdI2 global_140
  loc_BCB619: CI4UI1
  loc_BCB61A: FLdPr Me
  loc_BCB61D: MemLdI2 global_144
  loc_BCB620: CI4UI1
  loc_BCB621: FLdPr Me
  loc_BCB624: MemLdI2 global_142
  loc_BCB627: CI4UI1
  loc_BCB628: FLdPr Me
  loc_BCB62B: MemLdStr global_136
  loc_BCB62E: AryLock
  loc_BCB631: Ary1LdPr
  loc_BCB632: MemLdStr global_16
  loc_BCB635: AryLock
  loc_BCB638: Ary1LdPr
  loc_BCB639: MemLdStr global_0
  loc_BCB63C: AryLock
  loc_BCB63F: Ary1LdPr
  loc_BCB640: MemLdRfVar from_stack_1.global_20
  loc_BCB643: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB648: AryUnlock
  loc_BCB64B: AryUnlock
  loc_BCB64E: AryUnlock
  loc_BCB651: FFreeAd var_B0 = ""
  loc_BCB658: FFreeVar var_C4 = ""
  loc_BCB65F: FLdRfVar var_10C
  loc_BCB662: LitVarStr var_9C, "ImunItco"
  loc_BCB667: PopAdLdVar
  loc_BCB668: FLdRfVar var_EC
  loc_BCB66B: FLdRfVar var_B0
  loc_BCB66E: FLdPr var_12C
  loc_BCB671: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB676: FLdPr var_B0
  loc_BCB679:  = Me.Fields
  loc_BCB67E: FLdPr var_EC
  loc_BCB681: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB686: LitI2_Byte 0
  loc_BCB688: LitVar_Missing var_120
  loc_BCB68B: LitI2_Byte &HFF
  loc_BCB68D: FLdZeroAd var_10C
  loc_BCB690: CVarAd
  loc_BCB694: PopAdLdVar
  loc_BCB695: FLdPr Me
  loc_BCB698: MemLdI2 global_140
  loc_BCB69B: CI4UI1
  loc_BCB69C: FLdPr Me
  loc_BCB69F: MemLdI2 global_144
  loc_BCB6A2: CI4UI1
  loc_BCB6A3: FLdPr Me
  loc_BCB6A6: MemLdI2 global_142
  loc_BCB6A9: CI4UI1
  loc_BCB6AA: FLdPr Me
  loc_BCB6AD: MemLdStr global_136
  loc_BCB6B0: AryLock
  loc_BCB6B3: Ary1LdPr
  loc_BCB6B4: MemLdStr global_16
  loc_BCB6B7: AryLock
  loc_BCB6BA: Ary1LdPr
  loc_BCB6BB: MemLdStr global_0
  loc_BCB6BE: AryLock
  loc_BCB6C1: Ary1LdPr
  loc_BCB6C2: MemLdRfVar from_stack_1.global_4
  loc_BCB6C5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB6CA: AryUnlock
  loc_BCB6CD: AryUnlock
  loc_BCB6D0: AryUnlock
  loc_BCB6D3: FFreeAd var_B0 = ""
  loc_BCB6DA: FFreeVar var_C4 = ""
  loc_BCB6E1: FLdPr Me
  loc_BCB6E4: MemLdI2 global_144
  loc_BCB6E7: LitI2_Byte 1
  loc_BCB6E9: EqI2
  loc_BCB6EA: BranchF loc_BCB787
  loc_BCB6ED: FLdRfVar var_10C
  loc_BCB6F0: LitVarStr var_9C, "ImpoItco"
  loc_BCB6F5: PopAdLdVar
  loc_BCB6F6: FLdRfVar var_EC
  loc_BCB6F9: FLdRfVar var_B0
  loc_BCB6FC: FLdPr var_12C
  loc_BCB6FF: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB704: FLdPr var_B0
  loc_BCB707:  = Me.Fields
  loc_BCB70C: FLdPr var_EC
  loc_BCB70F: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB714: LitI2_Byte 0
  loc_BCB716: FLdPr Me
  loc_BCB719: MemLdI2 global_140
  loc_BCB71C: CI4UI1
  loc_BCB71D: FLdPr Me
  loc_BCB720: MemLdStr global_132
  loc_BCB723: AryLock
  loc_BCB726: Ary1LdPr
  loc_BCB727: MemLdRfVar from_stack_1.global_32
  loc_BCB72A: CVarRef
  loc_BCB72F: LitI2_Byte &HFF
  loc_BCB731: FLdZeroAd var_10C
  loc_BCB734: CVarAd
  loc_BCB738: PopAdLdVar
  loc_BCB739: FLdPr Me
  loc_BCB73C: MemLdI2 global_140
  loc_BCB73F: CI4UI1
  loc_BCB740: FLdPr Me
  loc_BCB743: MemLdI2 global_144
  loc_BCB746: CI4UI1
  loc_BCB747: FLdPr Me
  loc_BCB74A: MemLdI2 global_142
  loc_BCB74D: CI4UI1
  loc_BCB74E: FLdPr Me
  loc_BCB751: MemLdStr global_136
  loc_BCB754: AryLock
  loc_BCB757: Ary1LdPr
  loc_BCB758: MemLdStr global_16
  loc_BCB75B: AryLock
  loc_BCB75E: Ary1LdPr
  loc_BCB75F: MemLdStr global_0
  loc_BCB762: AryLock
  loc_BCB765: Ary1LdPr
  loc_BCB766: MemLdRfVar from_stack_1.global_8
  loc_BCB769: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB76E: AryUnlock
  loc_BCB771: AryUnlock
  loc_BCB774: AryUnlock
  loc_BCB777: AryUnlock
  loc_BCB77A: FFreeAd var_B0 = ""
  loc_BCB781: FFree1Var var_C4 = ""
  loc_BCB784: Branch loc_BCB809
  loc_BCB787: FLdRfVar var_10C
  loc_BCB78A: LitVarStr var_9C, "ImpoItco"
  loc_BCB78F: PopAdLdVar
  loc_BCB790: FLdRfVar var_EC
  loc_BCB793: FLdRfVar var_B0
  loc_BCB796: FLdPr var_12C
  loc_BCB799: from_stack_1v = clsbase.RsFrmGet()
  loc_BCB79E: FLdPr var_B0
  loc_BCB7A1:  = Me.Fields
  loc_BCB7A6: FLdPr var_EC
  loc_BCB7A9: from_stack_2 = Me.Item(from_stack_1)
  loc_BCB7AE: LitI2_Byte 0
  loc_BCB7B0: LitVar_Missing var_120
  loc_BCB7B3: LitI2_Byte &HFF
  loc_BCB7B5: FLdZeroAd var_10C
  loc_BCB7B8: CVarAd
  loc_BCB7BC: PopAdLdVar
  loc_BCB7BD: FLdPr Me
  loc_BCB7C0: MemLdI2 global_140
  loc_BCB7C3: CI4UI1
  loc_BCB7C4: FLdPr Me
  loc_BCB7C7: MemLdI2 global_144
  loc_BCB7CA: CI4UI1
  loc_BCB7CB: FLdPr Me
  loc_BCB7CE: MemLdI2 global_142
  loc_BCB7D1: CI4UI1
  loc_BCB7D2: FLdPr Me
  loc_BCB7D5: MemLdStr global_136
  loc_BCB7D8: AryLock
  loc_BCB7DB: Ary1LdPr
  loc_BCB7DC: MemLdStr global_16
  loc_BCB7DF: AryLock
  loc_BCB7E2: Ary1LdPr
  loc_BCB7E3: MemLdStr global_0
  loc_BCB7E6: AryLock
  loc_BCB7E9: Ary1LdPr
  loc_BCB7EA: MemLdRfVar from_stack_1.global_8
  loc_BCB7ED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BCB7F2: AryUnlock
  loc_BCB7F5: AryUnlock
  loc_BCB7F8: AryUnlock
  loc_BCB7FB: FFreeAd var_B0 = ""
  loc_BCB802: FFreeVar var_C4 = ""
  loc_BCB809: FLdPr Me
  loc_BCB80C: MemLdRfVar from_stack_1.global_144
  loc_BCB80F: NextI2 var_148, loc_BCB41B
  loc_BCB814: FLdPr Me
  loc_BCB817: MemLdRfVar from_stack_1.global_140
  loc_BCB81A: NextI2 var_134, loc_BCB21A
  loc_BCB81F: FLdPr Me
  loc_BCB822: MemLdRfVar from_stack_1.global_142
  loc_BCB825: NextI2 var_130, loc_BCB1E8
  loc_BCB82A: LitNothing
  loc_BCB82C: FStAd var_12C 
  loc_BCB830: LitI2_Byte &HFF
  loc_BCB832: FLdPr Me
  loc_BCB835: MemStI2 bGenerado
  loc_BCB838: LitI4 0
  loc_BCB83D: CI2I4
  loc_BCB83E: FLdPr Me
  loc_BCB841: Me.MousePointer = from_stack_1
  loc_BCB846: LitVarStr var_9C, vbNullString
  loc_BCB84B: PopAdLdVar
  loc_BCB84C: FLdPr Me
  loc_BCB84F: VCallAd Control_ID_statusBar
  loc_BCB852: FStAdFunc var_B0
  loc_BCB855: FLdPr var_B0
  loc_BCB858: LateIdSt
  loc_BCB85D: FFree1Ad var_B0
  loc_BCB860: ExitProcHresult
End Sub

Public Sub GeneraXLS() '96D524
  'Data Table: 454C08
  loc_96D4FC: LitI2_Byte &HFF
  loc_96D4FE: FLdPr Me
  loc_96D501: MemStI2 global_156
  loc_96D504: LitI2_Byte 0
  loc_96D506: FLdPr Me
  loc_96D509: MemStI2 bLogos
  loc_96D50C: Call GeneraHTML()
  loc_96D511: LitI2_Byte &HFF
  loc_96D513: FLdPr Me
  loc_96D516: MemStI2 bLogos
  loc_96D519: LitI2_Byte 0
  loc_96D51B: FLdPr Me
  loc_96D51E: MemStI2 global_156
  loc_96D521: ExitProcHresult
  loc_96D522: GeI2
End Sub

Public Sub GeneraHTML() '990848
  'Data Table: 454C08
  loc_9907F8: FLdRfVar var_88
  loc_9907FB: LitI2_Byte 0
  loc_9907FD: LitI2_Byte &HFF
  loc_9907FF: ImpAdLdI4 MemVar_C3D83C
  loc_990802: FLdPr Me
  loc_990805: MemLdRfVar from_stack_1.global_84
  loc_990808: NewIfNullPr IFileSystem3
  loc_99080B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_990810: ILdRf var_88
  loc_990813: FLdPr Me
  loc_990816: MemStVarAd
  loc_99081A: FFree1Ad var_88
  loc_99081D: Call Proc_212_23_9B95EC()
  loc_990822: Call Proc_212_24_A1E518()
  loc_990827: Call Proc_212_25_B907C8()
  loc_99082C: Call Proc_212_26_97121C()
  loc_990831: FLdPr Me
  loc_990834: MemLdRfVar from_stack_1.htmFile
  loc_990837: LdPrVar
  loc_990839: LateMemCall
  loc_99083F: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_990844: ExitProcHresult
  loc_990845: SubI2
  loc_990846: LeI4
End Sub

Private Function Proc_212_23_9B95EC() '9B95EC
  'Data Table: 454C08
  loc_9B9534: LitVarStr var_94, "<html>"
  loc_9B9539: PopAdLdVar
  loc_9B953A: FLdPr Me
  loc_9B953D: MemLdRfVar from_stack_1.htmFile
  loc_9B9540: LdPrVar
  loc_9B9542: LateMemCall
  loc_9B9548: LitVarStr var_94, "<head>"
  loc_9B954D: PopAdLdVar
  loc_9B954E: FLdPr Me
  loc_9B9551: MemLdRfVar from_stack_1.htmFile
  loc_9B9554: LdPrVar
  loc_9B9556: LateMemCall
  loc_9B955C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9B9561: PopAdLdVar
  loc_9B9562: FLdPr Me
  loc_9B9565: MemLdRfVar from_stack_1.htmFile
  loc_9B9568: LdPrVar
  loc_9B956A: LateMemCall
  loc_9B9570: LitStr "<title>"
  loc_9B9573: FLdRfVar var_A8
  loc_9B9576: FLdPr Me
  loc_9B9579:  = Me.Caption
  loc_9B957E: ILdRf var_A8
  loc_9B9581: ConcatStr
  loc_9B9582: FStStrNoPop var_AC
  loc_9B9585: LitStr "</title>"
  loc_9B9588: ConcatStr
  loc_9B9589: CVarStr var_BC
  loc_9B958C: PopAdLdVar
  loc_9B958D: FLdPr Me
  loc_9B9590: MemLdRfVar from_stack_1.htmFile
  loc_9B9593: LdPrVar
  loc_9B9595: LateMemCall
  loc_9B959B: FFreeStr var_A8 = ""
  loc_9B95A2: FFree1Var var_BC = ""
  loc_9B95A5: LitStr vbNullString
  loc_9B95A8: ILdRf Me
  loc_9B95AB: CastAd
  loc_9B95AE: FStAdFunc var_C0
  loc_9B95B1: FLdRfVar var_C0
  loc_9B95B4: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9B95B9: FFree1Ad var_C0
  loc_9B95BC: LitI4 0
  loc_9B95C1: FStStrCopy var_AC
  loc_9B95C4: FLdRfVar var_AC
  loc_9B95C7: LitI4 0
  loc_9B95CC: FStStrCopy var_A8
  loc_9B95CF: FLdRfVar var_A8
  loc_9B95D2: FLdPr Me
  loc_9B95D5: MemLdRfVar from_stack_1.global_148
  loc_9B95D8: FLdPr Me
  loc_9B95DB: MemLdRfVar from_stack_1.htmFile
  loc_9B95DE: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9B95E3: FFreeStr var_A8 = ""
  loc_9B95EA: ExitProcHresult
End Function

Private Function Proc_212_24_A1E518() 'A1E518
  'Data Table: 454C08
  loc_A1E378: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A1E37D: PopAdLdVar
  loc_A1E37E: FLdPr Me
  loc_A1E381: MemLdRfVar from_stack_1.htmFile
  loc_A1E384: LdPrVar
  loc_A1E386: LateMemCall
  loc_A1E38C: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A1E391: PopAdLdVar
  loc_A1E392: FLdPr Me
  loc_A1E395: MemLdRfVar from_stack_1.htmFile
  loc_A1E398: LdPrVar
  loc_A1E39A: LateMemCall
  loc_A1E3A0: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A1E3A5: PopAdLdVar
  loc_A1E3A6: FLdPr Me
  loc_A1E3A9: MemLdRfVar from_stack_1.htmFile
  loc_A1E3AC: LdPrVar
  loc_A1E3AE: LateMemCall
  loc_A1E3B4: FLdPr Me
  loc_A1E3B7: MemLdI2 bLogos
  loc_A1E3BA: BranchF loc_A1E3D1
  loc_A1E3BD: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A1E3C2: PopAdLdVar
  loc_A1E3C3: FLdPr Me
  loc_A1E3C6: MemLdRfVar from_stack_1.htmFile
  loc_A1E3C9: LdPrVar
  loc_A1E3CB: LateMemCall
  loc_A1E3D1: LitVarStr var_A4, "    <br><br>"
  loc_A1E3D6: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A1E3DB: FStVarCopyObj var_B4
  loc_A1E3DE: FLdRfVar var_B4
  loc_A1E3E1: FLdRfVar var_C4
  loc_A1E3E4: ImpAdCallFPR4  = Ucase()
  loc_A1E3E9: FLdRfVar var_C4
  loc_A1E3EC: ConcatVar var_D4
  loc_A1E3F0: LitVarStr var_E4, "</p>"
  loc_A1E3F5: ConcatVar var_F4
  loc_A1E3F9: PopAdLdVar
  loc_A1E3FA: FLdPr Me
  loc_A1E3FD: MemLdRfVar from_stack_1.htmFile
  loc_A1E400: LdPrVar
  loc_A1E402: LateMemCall
  loc_A1E408: FFreeVar var_B4 = "": var_C4 = "": var_D4 = ""
  loc_A1E413: LitStr "    <p>"
  loc_A1E416: FLdRfVar var_108
  loc_A1E419: FLdPr Me
  loc_A1E41C:  = Me.Caption
  loc_A1E421: ILdRf var_108
  loc_A1E424: ConcatStr
  loc_A1E425: FStStrNoPop var_10C
  loc_A1E428: LitStr "</p></th>"
  loc_A1E42B: ConcatStr
  loc_A1E42C: CVarStr var_B4
  loc_A1E42F: PopAdLdVar
  loc_A1E430: FLdPr Me
  loc_A1E433: MemLdRfVar from_stack_1.htmFile
  loc_A1E436: LdPrVar
  loc_A1E438: LateMemCall
  loc_A1E43E: FFreeStr var_108 = ""
  loc_A1E445: FFree1Var var_B4 = ""
  loc_A1E448: LitVarStr var_94, "  </tr>"
  loc_A1E44D: PopAdLdVar
  loc_A1E44E: FLdPr Me
  loc_A1E451: MemLdRfVar from_stack_1.htmFile
  loc_A1E454: LdPrVar
  loc_A1E456: LateMemCall
  loc_A1E45C: LitVarStr var_94, "  <tr>"
  loc_A1E461: PopAdLdVar
  loc_A1E462: FLdPr Me
  loc_A1E465: MemLdRfVar from_stack_1.htmFile
  loc_A1E468: LdPrVar
  loc_A1E46A: LateMemCall
  loc_A1E470: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A1E475: PopAdLdVar
  loc_A1E476: FLdPr Me
  loc_A1E479: MemLdRfVar from_stack_1.htmFile
  loc_A1E47C: LdPrVar
  loc_A1E47E: LateMemCall
  loc_A1E484: LitVarStr var_94, "  </tr>"
  loc_A1E489: PopAdLdVar
  loc_A1E48A: FLdPr Me
  loc_A1E48D: MemLdRfVar from_stack_1.htmFile
  loc_A1E490: LdPrVar
  loc_A1E492: LateMemCall
  loc_A1E498: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A1E49D: PopAdLdVar
  loc_A1E49E: FLdPr Me
  loc_A1E4A1: MemLdRfVar from_stack_1.htmFile
  loc_A1E4A4: LdPrVar
  loc_A1E4A6: LateMemCall
  loc_A1E4AC: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A1E4AF: FLdRfVar var_108
  loc_A1E4B2: FLdPr Me
  loc_A1E4B5: VCallAd Control_ID_cboPeriodo
  loc_A1E4B8: FStAdFunc var_110
  loc_A1E4BB: FLdPr var_110
  loc_A1E4BE:  = Me.Text
  loc_A1E4C3: ILdRf var_108
  loc_A1E4C6: ConcatStr
  loc_A1E4C7: FStStrNoPop var_10C
  loc_A1E4CA: LitStr "</span></th>"
  loc_A1E4CD: ConcatStr
  loc_A1E4CE: CVarStr var_B4
  loc_A1E4D1: PopAdLdVar
  loc_A1E4D2: FLdPr Me
  loc_A1E4D5: MemLdRfVar from_stack_1.htmFile
  loc_A1E4D8: LdPrVar
  loc_A1E4DA: LateMemCall
  loc_A1E4E0: FFreeStr var_108 = ""
  loc_A1E4E7: FFree1Ad var_110
  loc_A1E4EA: FFree1Var var_B4 = ""
  loc_A1E4ED: LitVarStr var_94, "  </tr>"
  loc_A1E4F2: PopAdLdVar
  loc_A1E4F3: FLdPr Me
  loc_A1E4F6: MemLdRfVar from_stack_1.htmFile
  loc_A1E4F9: LdPrVar
  loc_A1E4FB: LateMemCall
  loc_A1E501: LitVarStr var_94, "</table>"
  loc_A1E506: PopAdLdVar
  loc_A1E507: FLdPr Me
  loc_A1E50A: MemLdRfVar from_stack_1.htmFile
  loc_A1E50D: LdPrVar
  loc_A1E50F: LateMemCall
  loc_A1E515: ExitProcHresult
  loc_A1E516: LeR8
End Function

Private Function Proc_212_25_B907C8() 'B907C8
  'Data Table: 454C08
  loc_B8F954: LitVarStr var_A4, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B8F959: PopAdLdVar
  loc_B8F95A: FLdPr Me
  loc_B8F95D: MemLdRfVar from_stack_1.htmFile
  loc_B8F960: LdPrVar
  loc_B8F962: LateMemCall
  loc_B8F968: LitVarStr var_A4, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_B8F96D: PopAdLdVar
  loc_B8F96E: FLdPr Me
  loc_B8F971: MemLdRfVar from_stack_1.htmFile
  loc_B8F974: LdPrVar
  loc_B8F976: LateMemCall
  loc_B8F97C: LitStr "    <th colspan="""
  loc_B8F97F: LitI4 6
  loc_B8F984: FLdPr Me
  loc_B8F987: MemLdStr global_132
  loc_B8F98A: LitI2_Byte 1
  loc_B8F98C: FnUBound
  loc_B8F98E: LitI4 2
  loc_B8F993: MulI4
  loc_B8F994: AddI4
  loc_B8F995: CStrI4
  loc_B8F997: FStStrNoPop var_B8
  loc_B8F99A: ConcatStr
  loc_B8F99B: FStStrNoPop var_BC
  loc_B8F99E: LitStr """ class=""LineaDato"" >"
  loc_B8F9A1: ConcatStr
  loc_B8F9A2: CVarStr var_CC
  loc_B8F9A5: PopAdLdVar
  loc_B8F9A6: FLdPr Me
  loc_B8F9A9: MemLdRfVar from_stack_1.htmFile
  loc_B8F9AC: LdPrVar
  loc_B8F9AE: LateMemCall
  loc_B8F9B4: FFreeStr var_B8 = ""
  loc_B8F9BB: FFree1Var var_CC = ""
  loc_B8F9BE: LitVarStr var_A4, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_B8F9C3: PopAdLdVar
  loc_B8F9C4: FLdPr Me
  loc_B8F9C7: MemLdRfVar from_stack_1.htmFile
  loc_B8F9CA: LdPrVar
  loc_B8F9CC: LateMemCall
  loc_B8F9D2: LitVarStr var_A4, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B8F9D7: PopAdLdVar
  loc_B8F9D8: FLdPr Me
  loc_B8F9DB: MemLdRfVar from_stack_1.htmFile
  loc_B8F9DE: LdPrVar
  loc_B8F9E0: LateMemCall
  loc_B8F9E6: LitStr "        <td align=""center"" rowspan=""2"" class=""Encabezado"">Nota de Pedido N&ordm;<br>"
  loc_B8F9E9: FLdPr Me
  loc_B8F9EC: MemLdStr global_88
  loc_B8F9EF: ConcatStr
  loc_B8F9F0: FStStrNoPop var_B8
  loc_B8F9F3: LitStr "</td>"
  loc_B8F9F6: ConcatStr
  loc_B8F9F7: CVarStr var_CC
  loc_B8F9FA: PopAdLdVar
  loc_B8F9FB: FLdPr Me
  loc_B8F9FE: MemLdRfVar from_stack_1.htmFile
  loc_B8FA01: LdPrVar
  loc_B8FA03: LateMemCall
  loc_B8FA09: FFree1Str var_B8
  loc_B8FA0C: FFree1Var var_CC = ""
  loc_B8FA0F: LitVarStr var_A4, "        <td colspan=""2"" align=""center"">Fecha de</td>"
  loc_B8FA14: PopAdLdVar
  loc_B8FA15: FLdPr Me
  loc_B8FA18: MemLdRfVar from_stack_1.htmFile
  loc_B8FA1B: LdPrVar
  loc_B8FA1D: LateMemCall
  loc_B8FA23: LitStr "        <td rowspan=""2"">Tipo de compra:<br>"
  loc_B8FA26: FLdPr Me
  loc_B8FA29: MemLdStr global_104
  loc_B8FA2C: ConcatStr
  loc_B8FA2D: FStStrNoPop var_B8
  loc_B8FA30: LitStr " - "
  loc_B8FA33: ConcatStr
  loc_B8FA34: FStStrNoPop var_BC
  loc_B8FA37: FLdPr Me
  loc_B8FA3A: MemLdStr global_108
  loc_B8FA3D: ConcatStr
  loc_B8FA3E: FStStrNoPop var_D0
  loc_B8FA41: LitStr "</td>"
  loc_B8FA44: ConcatStr
  loc_B8FA45: CVarStr var_CC
  loc_B8FA48: PopAdLdVar
  loc_B8FA49: FLdPr Me
  loc_B8FA4C: MemLdRfVar from_stack_1.htmFile
  loc_B8FA4F: LdPrVar
  loc_B8FA51: LateMemCall
  loc_B8FA57: FFreeStr var_B8 = "": var_BC = ""
  loc_B8FA60: FFree1Var var_CC = ""
  loc_B8FA63: LitStr "        <td rowspan=""2"">Expediente:<br>"
  loc_B8FA66: FLdPr Me
  loc_B8FA69: MemLdStr global_112
  loc_B8FA6C: ConcatStr
  loc_B8FA6D: FStStrNoPop var_B8
  loc_B8FA70: LitStr "</td>"
  loc_B8FA73: ConcatStr
  loc_B8FA74: CVarStr var_CC
  loc_B8FA77: PopAdLdVar
  loc_B8FA78: FLdPr Me
  loc_B8FA7B: MemLdRfVar from_stack_1.htmFile
  loc_B8FA7E: LdPrVar
  loc_B8FA80: LateMemCall
  loc_B8FA86: FFree1Str var_B8
  loc_B8FA89: FFree1Var var_CC = ""
  loc_B8FA8C: LitVarStr var_A4, "      </tr>"
  loc_B8FA91: PopAdLdVar
  loc_B8FA92: FLdPr Me
  loc_B8FA95: MemLdRfVar from_stack_1.htmFile
  loc_B8FA98: LdPrVar
  loc_B8FA9A: LateMemCall
  loc_B8FAA0: LitVarStr var_A4, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B8FAA5: PopAdLdVar
  loc_B8FAA6: FLdPr Me
  loc_B8FAA9: MemLdRfVar from_stack_1.htmFile
  loc_B8FAAC: LdPrVar
  loc_B8FAAE: LateMemCall
  loc_B8FAB4: LitStr "        <td>Emisión:<br>"
  loc_B8FAB7: FLdPr Me
  loc_B8FABA: MemLdStr global_116
  loc_B8FABD: ConcatStr
  loc_B8FABE: FStStrNoPop var_B8
  loc_B8FAC1: LitStr "</td>"
  loc_B8FAC4: ConcatStr
  loc_B8FAC5: CVarStr var_CC
  loc_B8FAC8: PopAdLdVar
  loc_B8FAC9: FLdPr Me
  loc_B8FACC: MemLdRfVar from_stack_1.htmFile
  loc_B8FACF: LdPrVar
  loc_B8FAD1: LateMemCall
  loc_B8FAD7: FFree1Str var_B8
  loc_B8FADA: FFree1Var var_CC = ""
  loc_B8FADD: LitStr "        <td>Comparativa:<br>"
  loc_B8FAE0: FLdPr Me
  loc_B8FAE3: MemLdStr global_120
  loc_B8FAE6: ConcatStr
  loc_B8FAE7: FStStrNoPop var_B8
  loc_B8FAEA: LitStr "</td>"
  loc_B8FAED: ConcatStr
  loc_B8FAEE: CVarStr var_CC
  loc_B8FAF1: PopAdLdVar
  loc_B8FAF2: FLdPr Me
  loc_B8FAF5: MemLdRfVar from_stack_1.htmFile
  loc_B8FAF8: LdPrVar
  loc_B8FAFA: LateMemCall
  loc_B8FB00: FFree1Str var_B8
  loc_B8FB03: FFree1Var var_CC = ""
  loc_B8FB06: LitVarStr var_A4, "        </tr>"
  loc_B8FB0B: PopAdLdVar
  loc_B8FB0C: FLdPr Me
  loc_B8FB0F: MemLdRfVar from_stack_1.htmFile
  loc_B8FB12: LdPrVar
  loc_B8FB14: LateMemCall
  loc_B8FB1A: LitVarStr var_A4, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B8FB1F: PopAdLdVar
  loc_B8FB20: FLdPr Me
  loc_B8FB23: MemLdRfVar from_stack_1.htmFile
  loc_B8FB26: LdPrVar
  loc_B8FB28: LateMemCall
  loc_B8FB2E: LitStr "        <td colspan=""10"">Detalle: "
  loc_B8FB31: FLdPr Me
  loc_B8FB34: MemLdStr global_92
  loc_B8FB37: ConcatStr
  loc_B8FB38: FStStrNoPop var_B8
  loc_B8FB3B: LitStr "</td>"
  loc_B8FB3E: ConcatStr
  loc_B8FB3F: CVarStr var_CC
  loc_B8FB42: PopAdLdVar
  loc_B8FB43: FLdPr Me
  loc_B8FB46: MemLdRfVar from_stack_1.htmFile
  loc_B8FB49: LdPrVar
  loc_B8FB4B: LateMemCall
  loc_B8FB51: FFree1Str var_B8
  loc_B8FB54: FFree1Var var_CC = ""
  loc_B8FB57: LitVarStr var_A4, "      </tr>"
  loc_B8FB5C: PopAdLdVar
  loc_B8FB5D: FLdPr Me
  loc_B8FB60: MemLdRfVar from_stack_1.htmFile
  loc_B8FB63: LdPrVar
  loc_B8FB65: LateMemCall
  loc_B8FB6B: LitVarStr var_A4, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B8FB70: PopAdLdVar
  loc_B8FB71: FLdPr Me
  loc_B8FB74: MemLdRfVar from_stack_1.htmFile
  loc_B8FB77: LdPrVar
  loc_B8FB79: LateMemCall
  loc_B8FB7F: LitStr "        <td colspan=""10"">Organigrama Solicitante: "
  loc_B8FB82: FLdPr Me
  loc_B8FB85: MemLdStr global_96
  loc_B8FB88: ConcatStr
  loc_B8FB89: FStStrNoPop var_B8
  loc_B8FB8C: LitStr " - "
  loc_B8FB8F: ConcatStr
  loc_B8FB90: FStStrNoPop var_BC
  loc_B8FB93: FLdPr Me
  loc_B8FB96: MemLdStr global_100
  loc_B8FB99: ConcatStr
  loc_B8FB9A: FStStrNoPop var_D0
  loc_B8FB9D: LitStr "</td>"
  loc_B8FBA0: ConcatStr
  loc_B8FBA1: CVarStr var_CC
  loc_B8FBA4: PopAdLdVar
  loc_B8FBA5: FLdPr Me
  loc_B8FBA8: MemLdRfVar from_stack_1.htmFile
  loc_B8FBAB: LdPrVar
  loc_B8FBAD: LateMemCall
  loc_B8FBB3: FFreeStr var_B8 = "": var_BC = ""
  loc_B8FBBC: FFree1Var var_CC = ""
  loc_B8FBBF: LitVarStr var_A4, "      </tr>"
  loc_B8FBC4: PopAdLdVar
  loc_B8FBC5: FLdPr Me
  loc_B8FBC8: MemLdRfVar from_stack_1.htmFile
  loc_B8FBCB: LdPrVar
  loc_B8FBCD: LateMemCall
  loc_B8FBD3: FLdPr Me
  loc_B8FBD6: MemLdStr global_124
  loc_B8FBD9: LitStr vbNullString
  loc_B8FBDC: NeStr
  loc_B8FBDE: BranchF loc_B8FC49
  loc_B8FBE1: LitVarStr var_A4, "      <tr valign=""top"" class=""Encabezado"">"
  loc_B8FBE6: PopAdLdVar
  loc_B8FBE7: FLdPr Me
  loc_B8FBEA: MemLdRfVar from_stack_1.htmFile
  loc_B8FBED: LdPrVar
  loc_B8FBEF: LateMemCall
  loc_B8FBF5: LitStr "        <td colspan=""10"">ANULADA<br>Fecha: "
  loc_B8FBF8: FLdPr Me
  loc_B8FBFB: MemLdStr global_124
  loc_B8FBFE: ConcatStr
  loc_B8FBFF: FStStrNoPop var_B8
  loc_B8FC02: LitStr "<br>Motivo: "
  loc_B8FC05: ConcatStr
  loc_B8FC06: FStStrNoPop var_BC
  loc_B8FC09: FLdPr Me
  loc_B8FC0C: MemLdStr global_128
  loc_B8FC0F: ConcatStr
  loc_B8FC10: FStStrNoPop var_D0
  loc_B8FC13: LitStr "</td>"
  loc_B8FC16: ConcatStr
  loc_B8FC17: CVarStr var_CC
  loc_B8FC1A: PopAdLdVar
  loc_B8FC1B: FLdPr Me
  loc_B8FC1E: MemLdRfVar from_stack_1.htmFile
  loc_B8FC21: LdPrVar
  loc_B8FC23: LateMemCall
  loc_B8FC29: FFreeStr var_B8 = "": var_BC = ""
  loc_B8FC32: FFree1Var var_CC = ""
  loc_B8FC35: LitVarStr var_A4, "      </tr>"
  loc_B8FC3A: PopAdLdVar
  loc_B8FC3B: FLdPr Me
  loc_B8FC3E: MemLdRfVar from_stack_1.htmFile
  loc_B8FC41: LdPrVar
  loc_B8FC43: LateMemCall
  loc_B8FC49: LitVarStr var_A4, "    </table></th>"
  loc_B8FC4E: PopAdLdVar
  loc_B8FC4F: FLdPr Me
  loc_B8FC52: MemLdRfVar from_stack_1.htmFile
  loc_B8FC55: LdPrVar
  loc_B8FC57: LateMemCall
  loc_B8FC5D: LitVarStr var_A4, "  </tr>"
  loc_B8FC62: PopAdLdVar
  loc_B8FC63: FLdPr Me
  loc_B8FC66: MemLdRfVar from_stack_1.htmFile
  loc_B8FC69: LdPrVar
  loc_B8FC6B: LateMemCall
  loc_B8FC71: LitVarStr var_A4, "  <tr align=""center"" valign=""top"" class=""Encabezado"">"
  loc_B8FC76: PopAdLdVar
  loc_B8FC77: FLdPr Me
  loc_B8FC7A: MemLdRfVar from_stack_1.htmFile
  loc_B8FC7D: LdPrVar
  loc_B8FC7F: LateMemCall
  loc_B8FC85: LitVarStr var_A4, "    <th rowspan=""2"">Item</th>"
  loc_B8FC8A: PopAdLdVar
  loc_B8FC8B: FLdPr Me
  loc_B8FC8E: MemLdRfVar from_stack_1.htmFile
  loc_B8FC91: LdPrVar
  loc_B8FC93: LateMemCall
  loc_B8FC99: LitVarStr var_A4, "    <th rowspan=""2"">Alt.</th>"
  loc_B8FC9E: PopAdLdVar
  loc_B8FC9F: FLdPr Me
  loc_B8FCA2: MemLdRfVar from_stack_1.htmFile
  loc_B8FCA5: LdPrVar
  loc_B8FCA7: LateMemCall
  loc_B8FCAD: LitVarStr var_A4, "    <th rowspan=""2"">Detalle<br>Características</th>"
  loc_B8FCB2: PopAdLdVar
  loc_B8FCB3: FLdPr Me
  loc_B8FCB6: MemLdRfVar from_stack_1.htmFile
  loc_B8FCB9: LdPrVar
  loc_B8FCBB: LateMemCall
  loc_B8FCC1: LitVarStr var_A4, "    <th rowspan=""2"">Cant.<br>Nota<br>Pedido</th>"
  loc_B8FCC6: PopAdLdVar
  loc_B8FCC7: FLdPr Me
  loc_B8FCCA: MemLdRfVar from_stack_1.htmFile
  loc_B8FCCD: LdPrVar
  loc_B8FCCF: LateMemCall
  loc_B8FCD5: LitI2_Byte 1
  loc_B8FCD7: FLdPr Me
  loc_B8FCDA: MemLdRfVar from_stack_1.global_140
  loc_B8FCDD: FLdPr Me
  loc_B8FCE0: MemLdStr global_132
  loc_B8FCE3: LitI2_Byte 1
  loc_B8FCE5: FnUBound
  loc_B8FCE7: CI2I4
  loc_B8FCE8: ForI2 var_D4
  loc_B8FCEE: LitStr "    <th colspan=""3"">"
  loc_B8FCF1: FLdPr Me
  loc_B8FCF4: MemLdI2 global_140
  loc_B8FCF7: CI4UI1
  loc_B8FCF8: FLdPr Me
  loc_B8FCFB: MemLdStr global_132
  loc_B8FCFE: Ary1LdPr
  loc_B8FCFF: MemLdStr global_8
  loc_B8FD02: ConcatStr
  loc_B8FD03: FStStrNoPop var_B8
  loc_B8FD06: LitStr "<br>"
  loc_B8FD09: ConcatStr
  loc_B8FD0A: FStStrNoPop var_BC
  loc_B8FD0D: FLdPr Me
  loc_B8FD10: MemLdI2 global_140
  loc_B8FD13: CI4UI1
  loc_B8FD14: FLdPr Me
  loc_B8FD17: MemLdStr global_132
  loc_B8FD1A: Ary1LdPr
  loc_B8FD1B: MemLdStr global_4
  loc_B8FD1E: ConcatStr
  loc_B8FD1F: FStStrNoPop var_D0
  loc_B8FD22: LitStr "</th>"
  loc_B8FD25: ConcatStr
  loc_B8FD26: CVarStr var_CC
  loc_B8FD29: PopAdLdVar
  loc_B8FD2A: FLdPr Me
  loc_B8FD2D: MemLdRfVar from_stack_1.htmFile
  loc_B8FD30: LdPrVar
  loc_B8FD32: LateMemCall
  loc_B8FD38: FFreeStr var_B8 = "": var_BC = ""
  loc_B8FD41: FFree1Var var_CC = ""
  loc_B8FD44: FLdPr Me
  loc_B8FD47: MemLdRfVar from_stack_1.global_140
  loc_B8FD4A: NextI2 var_D4, loc_B8FCEE
  loc_B8FD4F: LitVarStr var_A4, "  </tr>"
  loc_B8FD54: PopAdLdVar
  loc_B8FD55: FLdPr Me
  loc_B8FD58: MemLdRfVar from_stack_1.htmFile
  loc_B8FD5B: LdPrVar
  loc_B8FD5D: LateMemCall
  loc_B8FD63: LitVarStr var_A4, "  <tr align=""center"" valign=""top"" class=""Encabezado"">"
  loc_B8FD68: PopAdLdVar
  loc_B8FD69: FLdPr Me
  loc_B8FD6C: MemLdRfVar from_stack_1.htmFile
  loc_B8FD6F: LdPrVar
  loc_B8FD71: LateMemCall
  loc_B8FD77: LitI2_Byte 1
  loc_B8FD79: FLdPr Me
  loc_B8FD7C: MemLdRfVar from_stack_1.global_140
  loc_B8FD7F: FLdPr Me
  loc_B8FD82: MemLdStr global_132
  loc_B8FD85: LitI2_Byte 1
  loc_B8FD87: FnUBound
  loc_B8FD89: CI2I4
  loc_B8FD8A: ForI2 var_D8
  loc_B8FD90: LitVarStr var_A4, "    <th>unit.</th>"
  loc_B8FD95: PopAdLdVar
  loc_B8FD96: FLdPr Me
  loc_B8FD99: MemLdRfVar from_stack_1.htmFile
  loc_B8FD9C: LdPrVar
  loc_B8FD9E: LateMemCall
  loc_B8FDA4: LitVarStr var_A4, "    <th>total</th>"
  loc_B8FDA9: PopAdLdVar
  loc_B8FDAA: FLdPr Me
  loc_B8FDAD: MemLdRfVar from_stack_1.htmFile
  loc_B8FDB0: LdPrVar
  loc_B8FDB2: LateMemCall
  loc_B8FDB8: LitVarStr var_A4, "    <th>Detalle<br>Caract.</th>"
  loc_B8FDBD: PopAdLdVar
  loc_B8FDBE: FLdPr Me
  loc_B8FDC1: MemLdRfVar from_stack_1.htmFile
  loc_B8FDC4: LdPrVar
  loc_B8FDC6: LateMemCall
  loc_B8FDCC: FLdPr Me
  loc_B8FDCF: MemLdRfVar from_stack_1.global_140
  loc_B8FDD2: NextI2 var_D8, loc_B8FD90
  loc_B8FDD7: LitVarStr var_A4, "  </tr>"
  loc_B8FDDC: PopAdLdVar
  loc_B8FDDD: FLdPr Me
  loc_B8FDE0: MemLdRfVar from_stack_1.htmFile
  loc_B8FDE3: LdPrVar
  loc_B8FDE5: LateMemCall
  loc_B8FDEB: LitI2_Byte 1
  loc_B8FDED: FLdPr Me
  loc_B8FDF0: MemLdRfVar from_stack_1.global_142
  loc_B8FDF3: FLdPr Me
  loc_B8FDF6: MemLdStr global_136
  loc_B8FDF9: LitI2_Byte 1
  loc_B8FDFB: FnUBound
  loc_B8FDFD: CI2I4
  loc_B8FDFE: ForI2 var_DC
  loc_B8FE04: FLdPr Me
  loc_B8FE07: MemLdI2 global_142
  loc_B8FE0A: CI4UI1
  loc_B8FE0B: FLdPr Me
  loc_B8FE0E: MemLdStr global_136
  loc_B8FE11: Ary1LdPr
  loc_B8FE12: MemLdStr global_0
  loc_B8FE15: LitStr vbNullString
  loc_B8FE18: NeStr
  loc_B8FE1A: BranchF loc_B90472
  loc_B8FE1D: LitI2_Byte 1
  loc_B8FE1F: FLdPr Me
  loc_B8FE22: MemLdRfVar from_stack_1.global_144
  loc_B8FE25: FLdPr Me
  loc_B8FE28: MemLdI2 global_142
  loc_B8FE2B: CI4UI1
  loc_B8FE2C: FLdPr Me
  loc_B8FE2F: MemLdStr global_136
  loc_B8FE32: Ary1LdPr
  loc_B8FE33: MemLdStr global_16
  loc_B8FE36: LitI2_Byte 1
  loc_B8FE38: FnUBound
  loc_B8FE3A: CI2I4
  loc_B8FE3B: ForI2 var_E0
  loc_B8FE41: LitVarStr var_F0, "<em>"
  loc_B8FE46: FStVarCopyObj var_100
  loc_B8FE49: FLdRfVar var_100
  loc_B8FE4C: LitVarStr var_B4, vbNullString
  loc_B8FE51: FStVarCopyObj var_CC
  loc_B8FE54: FLdRfVar var_CC
  loc_B8FE57: FLdPr Me
  loc_B8FE5A: MemLdI2 global_144
  loc_B8FE5D: LitI2_Byte 1
  loc_B8FE5F: EqI2
  loc_B8FE60: CVarBoolI2 var_A4
  loc_B8FE64: FLdRfVar var_110
  loc_B8FE67: ImpAdCallFPR4  = IIf(, , )
  loc_B8FE6C: FLdRfVar var_110
  loc_B8FE6F: CStrVarTmp
  loc_B8FE70: FStStr var_88
  loc_B8FE73: FFreeVar var_A4 = "": var_CC = "": var_100 = ""
  loc_B8FE7E: LitVarStr var_F0, "</em>"
  loc_B8FE83: FStVarCopyObj var_100
  loc_B8FE86: FLdRfVar var_100
  loc_B8FE89: LitVarStr var_B4, vbNullString
  loc_B8FE8E: FStVarCopyObj var_CC
  loc_B8FE91: FLdRfVar var_CC
  loc_B8FE94: FLdPr Me
  loc_B8FE97: MemLdI2 global_144
  loc_B8FE9A: LitI2_Byte 1
  loc_B8FE9C: EqI2
  loc_B8FE9D: CVarBoolI2 var_A4
  loc_B8FEA1: FLdRfVar var_110
  loc_B8FEA4: ImpAdCallFPR4  = IIf(, , )
  loc_B8FEA9: FLdRfVar var_110
  loc_B8FEAC: CStrVarTmp
  loc_B8FEAD: FStStr var_8C
  loc_B8FEB0: FFreeVar var_A4 = "": var_CC = "": var_100 = ""
  loc_B8FEBB: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B8FEC0: PopAdLdVar
  loc_B8FEC1: FLdPr Me
  loc_B8FEC4: MemLdRfVar from_stack_1.htmFile
  loc_B8FEC7: LdPrVar
  loc_B8FEC9: LateMemCall
  loc_B8FECF: LitI4 0
  loc_B8FED4: LitI4 0
  loc_B8FED9: LitI2_Byte 0
  loc_B8FEDB: LitStr "center"
  loc_B8FEDE: FLdPr Me
  loc_B8FEE1: MemLdI2 global_142
  loc_B8FEE4: CI4UI1
  loc_B8FEE5: FLdPr Me
  loc_B8FEE8: MemLdStr global_136
  loc_B8FEEB: Ary1LdPr
  loc_B8FEEC: MemLdStr global_0
  loc_B8FEEF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B8FEF4: CVarStr var_CC
  loc_B8FEF7: PopAdLdVar
  loc_B8FEF8: FLdPr Me
  loc_B8FEFB: MemLdRfVar from_stack_1.htmFile
  loc_B8FEFE: LdPrVar
  loc_B8FF00: LateMemCall
  loc_B8FF06: FFree1Var var_CC = ""
  loc_B8FF09: LitI4 0
  loc_B8FF0E: LitI4 0
  loc_B8FF13: LitI2_Byte 0
  loc_B8FF15: LitStr "center"
  loc_B8FF18: FLdPr Me
  loc_B8FF1B: MemLdI2 global_144
  loc_B8FF1E: LitI2_Byte 1
  loc_B8FF20: SubI2
  loc_B8FF21: CStrUI1
  loc_B8FF23: FStStrNoPop var_B8
  loc_B8FF26: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B8FF2B: CVarStr var_CC
  loc_B8FF2E: PopAdLdVar
  loc_B8FF2F: FLdPr Me
  loc_B8FF32: MemLdRfVar from_stack_1.htmFile
  loc_B8FF35: LdPrVar
  loc_B8FF37: LateMemCall
  loc_B8FF3D: FFree1Str var_B8
  loc_B8FF40: FFree1Var var_CC = ""
  loc_B8FF43: FLdPr Me
  loc_B8FF46: MemLdI2 global_144
  loc_B8FF49: LitI2_Byte 1
  loc_B8FF4B: EqI2
  loc_B8FF4C: BranchF loc_B8FFAF
  loc_B8FF4F: LitI4 0
  loc_B8FF54: LitI4 0
  loc_B8FF59: LitI2_Byte 0
  loc_B8FF5B: LitStr "left"
  loc_B8FF5E: FLdPr Me
  loc_B8FF61: MemLdI2 global_142
  loc_B8FF64: CI4UI1
  loc_B8FF65: FLdPr Me
  loc_B8FF68: MemLdStr global_136
  loc_B8FF6B: Ary1LdPr
  loc_B8FF6C: MemLdStr global_4
  loc_B8FF6F: LitStr "<br>"
  loc_B8FF72: ConcatStr
  loc_B8FF73: FStStrNoPop var_B8
  loc_B8FF76: FLdPr Me
  loc_B8FF79: MemLdI2 global_142
  loc_B8FF7C: CI4UI1
  loc_B8FF7D: FLdPr Me
  loc_B8FF80: MemLdStr global_136
  loc_B8FF83: Ary1LdPr
  loc_B8FF84: MemLdStr global_8
  loc_B8FF87: ConcatStr
  loc_B8FF88: FStStrNoPop var_BC
  loc_B8FF8B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B8FF90: CVarStr var_CC
  loc_B8FF93: PopAdLdVar
  loc_B8FF94: FLdPr Me
  loc_B8FF97: MemLdRfVar from_stack_1.htmFile
  loc_B8FF9A: LdPrVar
  loc_B8FF9C: LateMemCall
  loc_B8FFA2: FFreeStr var_B8 = ""
  loc_B8FFA9: FFree1Var var_CC = ""
  loc_B8FFAC: Branch loc_B8FFDD
  loc_B8FFAF: LitI4 0
  loc_B8FFB4: LitI4 0
  loc_B8FFB9: LitI2_Byte 0
  loc_B8FFBB: LitI4 0
  loc_B8FFC0: LitStr "&nbsp;"
  loc_B8FFC3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B8FFC8: CVarStr var_CC
  loc_B8FFCB: PopAdLdVar
  loc_B8FFCC: FLdPr Me
  loc_B8FFCF: MemLdRfVar from_stack_1.htmFile
  loc_B8FFD2: LdPrVar
  loc_B8FFD4: LateMemCall
  loc_B8FFDA: FFree1Var var_CC = ""
  loc_B8FFDD: LitI4 0
  loc_B8FFE2: LitI4 0
  loc_B8FFE7: LitI2_Byte 0
  loc_B8FFE9: LitStr "right"
  loc_B8FFEC: FLdPr Me
  loc_B8FFEF: MemLdI2 global_142
  loc_B8FFF2: CI4UI1
  loc_B8FFF3: FLdPr Me
  loc_B8FFF6: MemLdStr global_136
  loc_B8FFF9: Ary1LdPr
  loc_B8FFFA: MemLdStr global_12
  loc_B8FFFD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B90002: CVarStr var_CC
  loc_B90005: PopAdLdVar
  loc_B90006: FLdPr Me
  loc_B90009: MemLdRfVar from_stack_1.htmFile
  loc_B9000C: LdPrVar
  loc_B9000E: LateMemCall
  loc_B90014: FFree1Var var_CC = ""
  loc_B90017: LitStr vbNullString
  loc_B9001A: FStStrCopy var_90
  loc_B9001D: LitI2_Byte 1
  loc_B9001F: FLdPr Me
  loc_B90022: MemLdRfVar from_stack_1.global_140
  loc_B90025: FLdPr Me
  loc_B90028: MemLdStr global_132
  loc_B9002B: LitI2_Byte 1
  loc_B9002D: FnUBound
  loc_B9002F: CI2I4
  loc_B90030: ForI2 var_114
  loc_B90036: FLdPr Me
  loc_B90039: MemLdI2 global_140
  loc_B9003C: CI4UI1
  loc_B9003D: FLdPr Me
  loc_B90040: MemLdI2 global_144
  loc_B90043: CI4UI1
  loc_B90044: FLdPr Me
  loc_B90047: MemLdI2 global_142
  loc_B9004A: CI4UI1
  loc_B9004B: FLdPr Me
  loc_B9004E: MemLdStr global_136
  loc_B90051: Ary1LdPr
  loc_B90052: MemLdStr global_16
  loc_B90055: Ary1LdPr
  loc_B90056: MemLdStr global_0
  loc_B90059: Ary1LdPr
  loc_B9005A: MemLdStr global_0
  loc_B9005D: LitStr vbNullString
  loc_B90060: NeStr
  loc_B90062: BranchF loc_B9040C
  loc_B90065: LitStr "   <td align=""right"">"
  loc_B90068: ILdRf var_88
  loc_B9006B: ConcatStr
  loc_B9006C: FStStrNoPop var_B8
  loc_B9006F: FLdPr Me
  loc_B90072: MemLdI2 global_140
  loc_B90075: CI4UI1
  loc_B90076: FLdPr Me
  loc_B90079: MemLdI2 global_144
  loc_B9007C: CI4UI1
  loc_B9007D: FLdPr Me
  loc_B90080: MemLdI2 global_142
  loc_B90083: CI4UI1
  loc_B90084: FLdPr Me
  loc_B90087: MemLdStr global_136
  loc_B9008A: Ary1LdPr
  loc_B9008B: MemLdStr global_16
  loc_B9008E: Ary1LdPr
  loc_B9008F: MemLdStr global_0
  loc_B90092: Ary1LdPr
  loc_B90093: MemLdStr global_4
  loc_B90096: ConcatStr
  loc_B90097: FStStrNoPop var_BC
  loc_B9009A: ILdRf var_8C
  loc_B9009D: ConcatStr
  loc_B9009E: FStStrNoPop var_D0
  loc_B900A1: LitStr "</td>"
  loc_B900A4: ConcatStr
  loc_B900A5: CVarStr var_CC
  loc_B900A8: PopAdLdVar
  loc_B900A9: FLdPr Me
  loc_B900AC: MemLdRfVar from_stack_1.htmFile
  loc_B900AF: LdPrVar
  loc_B900B1: LateMemCall
  loc_B900B7: FFreeStr var_B8 = "": var_BC = ""
  loc_B900C0: FFree1Var var_CC = ""
  loc_B900C3: LitStr "   <td align=""right"">"
  loc_B900C6: ILdRf var_88
  loc_B900C9: ConcatStr
  loc_B900CA: FStStrNoPop var_B8
  loc_B900CD: FLdPr Me
  loc_B900D0: MemLdI2 global_140
  loc_B900D3: CI4UI1
  loc_B900D4: FLdPr Me
  loc_B900D7: MemLdI2 global_144
  loc_B900DA: CI4UI1
  loc_B900DB: FLdPr Me
  loc_B900DE: MemLdI2 global_142
  loc_B900E1: CI4UI1
  loc_B900E2: FLdPr Me
  loc_B900E5: MemLdStr global_136
  loc_B900E8: Ary1LdPr
  loc_B900E9: MemLdStr global_16
  loc_B900EC: Ary1LdPr
  loc_B900ED: MemLdStr global_0
  loc_B900F0: Ary1LdPr
  loc_B900F1: MemLdStr global_8
  loc_B900F4: ConcatStr
  loc_B900F5: FStStrNoPop var_BC
  loc_B900F8: ILdRf var_8C
  loc_B900FB: ConcatStr
  loc_B900FC: FStStrNoPop var_D0
  loc_B900FF: LitStr "</td>"
  loc_B90102: ConcatStr
  loc_B90103: CVarStr var_CC
  loc_B90106: PopAdLdVar
  loc_B90107: FLdPr Me
  loc_B9010A: MemLdRfVar from_stack_1.htmFile
  loc_B9010D: LdPrVar
  loc_B9010F: LateMemCall
  loc_B90115: FFreeStr var_B8 = "": var_BC = ""
  loc_B9011E: FFree1Var var_CC = ""
  loc_B90121: FLdPr Me
  loc_B90124: MemLdI2 global_140
  loc_B90127: CI4UI1
  loc_B90128: FLdPr Me
  loc_B9012B: MemLdI2 global_144
  loc_B9012E: CI4UI1
  loc_B9012F: FLdPr Me
  loc_B90132: MemLdI2 global_142
  loc_B90135: CI4UI1
  loc_B90136: FLdPr Me
  loc_B90139: MemLdStr global_136
  loc_B9013C: Ary1LdPr
  loc_B9013D: MemLdStr global_16
  loc_B90140: Ary1LdPr
  loc_B90141: MemLdStr global_0
  loc_B90144: Ary1LdPr
  loc_B90145: MemLdStr global_0
  loc_B90148: FLdPr Me
  loc_B9014B: MemLdI2 global_142
  loc_B9014E: CI4UI1
  loc_B9014F: FLdPr Me
  loc_B90152: MemLdStr global_136
  loc_B90155: Ary1LdPr
  loc_B90156: MemLdStr global_12
  loc_B90159: NeStr
  loc_B9015B: BranchF loc_B90199
  loc_B9015E: LitStr "Cantidad: "
  loc_B90161: FLdPr Me
  loc_B90164: MemLdI2 global_140
  loc_B90167: CI4UI1
  loc_B90168: FLdPr Me
  loc_B9016B: MemLdI2 global_144
  loc_B9016E: CI4UI1
  loc_B9016F: FLdPr Me
  loc_B90172: MemLdI2 global_142
  loc_B90175: CI4UI1
  loc_B90176: FLdPr Me
  loc_B90179: MemLdStr global_136
  loc_B9017C: Ary1LdPr
  loc_B9017D: MemLdStr global_16
  loc_B90180: Ary1LdPr
  loc_B90181: MemLdStr global_0
  loc_B90184: Ary1LdPr
  loc_B90185: MemLdStr global_0
  loc_B90188: ConcatStr
  loc_B90189: FStStrNoPop var_B8
  loc_B9018C: LitStr "<br>"
  loc_B9018F: ConcatStr
  loc_B90190: FStStr var_90
  loc_B90193: FFree1Str var_B8
  loc_B90196: Branch loc_B9019F
  loc_B90199: LitStr "&nbsp;"
  loc_B9019C: FStStrCopy var_90
  loc_B9019F: FLdPr Me
  loc_B901A2: MemLdI2 global_140
  loc_B901A5: CI4UI1
  loc_B901A6: FLdPr Me
  loc_B901A9: MemLdI2 global_144
  loc_B901AC: CI4UI1
  loc_B901AD: FLdPr Me
  loc_B901B0: MemLdI2 global_142
  loc_B901B3: CI4UI1
  loc_B901B4: FLdPr Me
  loc_B901B7: MemLdStr global_136
  loc_B901BA: Ary1LdPr
  loc_B901BB: MemLdStr global_16
  loc_B901BE: Ary1LdPr
  loc_B901BF: MemLdStr global_0
  loc_B901C2: Ary1LdPr
  loc_B901C3: MemLdStr global_12
  loc_B901C6: FLdPr Me
  loc_B901C9: MemLdI2 global_142
  loc_B901CC: CI4UI1
  loc_B901CD: FLdPr Me
  loc_B901D0: MemLdStr global_136
  loc_B901D3: Ary1LdPr
  loc_B901D4: MemLdStr global_4
  loc_B901D7: NeStr
  loc_B901D9: BranchF loc_B90217
  loc_B901DC: ILdRf var_90
  loc_B901DF: FLdPr Me
  loc_B901E2: MemLdI2 global_140
  loc_B901E5: CI4UI1
  loc_B901E6: FLdPr Me
  loc_B901E9: MemLdI2 global_144
  loc_B901EC: CI4UI1
  loc_B901ED: FLdPr Me
  loc_B901F0: MemLdI2 global_142
  loc_B901F3: CI4UI1
  loc_B901F4: FLdPr Me
  loc_B901F7: MemLdStr global_136
  loc_B901FA: Ary1LdPr
  loc_B901FB: MemLdStr global_16
  loc_B901FE: Ary1LdPr
  loc_B901FF: MemLdStr global_0
  loc_B90202: Ary1LdPr
  loc_B90203: MemLdStr global_12
  loc_B90206: ConcatStr
  loc_B90207: FStStrNoPop var_B8
  loc_B9020A: LitStr "<br>"
  loc_B9020D: ConcatStr
  loc_B9020E: FStStr var_90
  loc_B90211: FFree1Str var_B8
  loc_B90214: Branch loc_B90221
  loc_B90217: ILdRf var_90
  loc_B9021A: LitStr "&nbsp;"
  loc_B9021D: ConcatStr
  loc_B9021E: FStStr var_90
  loc_B90221: FLdPr Me
  loc_B90224: MemLdI2 global_140
  loc_B90227: CI4UI1
  loc_B90228: FLdPr Me
  loc_B9022B: MemLdI2 global_144
  loc_B9022E: CI4UI1
  loc_B9022F: FLdPr Me
  loc_B90232: MemLdI2 global_142
  loc_B90235: CI4UI1
  loc_B90236: FLdPr Me
  loc_B90239: MemLdStr global_136
  loc_B9023C: Ary1LdPr
  loc_B9023D: MemLdStr global_16
  loc_B90240: Ary1LdPr
  loc_B90241: MemLdStr global_0
  loc_B90244: Ary1LdPr
  loc_B90245: MemLdStr global_16
  loc_B90248: FLdPr Me
  loc_B9024B: MemLdI2 global_142
  loc_B9024E: CI4UI1
  loc_B9024F: FLdPr Me
  loc_B90252: MemLdStr global_136
  loc_B90255: Ary1LdPr
  loc_B90256: MemLdStr global_8
  loc_B90259: NeStr
  loc_B9025B: BranchF loc_B9032F
  loc_B9025E: ILdRf var_90
  loc_B90261: FLdPr Me
  loc_B90264: MemLdI2 global_140
  loc_B90267: CI4UI1
  loc_B90268: FLdPr Me
  loc_B9026B: MemLdI2 global_144
  loc_B9026E: CI4UI1
  loc_B9026F: FLdPr Me
  loc_B90272: MemLdI2 global_142
  loc_B90275: CI4UI1
  loc_B90276: FLdPr Me
  loc_B90279: MemLdStr global_136
  loc_B9027C: Ary1LdPr
  loc_B9027D: MemLdStr global_16
  loc_B90280: Ary1LdPr
  loc_B90281: MemLdStr global_0
  loc_B90284: Ary1LdPr
  loc_B90285: MemLdStr global_16
  loc_B90288: ConcatStr
  loc_B90289: FStStrNoPop var_B8
  loc_B9028C: LitStr "<br>"
  loc_B9028F: ConcatStr
  loc_B90290: CVarStr var_124
  loc_B90293: LitVarStr var_B4, vbNullString
  loc_B90298: FStVarCopyObj var_100
  loc_B9029B: FLdRfVar var_100
  loc_B9029E: LitStr "Marca: "
  loc_B902A1: FLdPr Me
  loc_B902A4: MemLdI2 global_140
  loc_B902A7: CI4UI1
  loc_B902A8: FLdPr Me
  loc_B902AB: MemLdI2 global_144
  loc_B902AE: CI4UI1
  loc_B902AF: FLdPr Me
  loc_B902B2: MemLdI2 global_142
  loc_B902B5: CI4UI1
  loc_B902B6: FLdPr Me
  loc_B902B9: MemLdStr global_136
  loc_B902BC: Ary1LdPr
  loc_B902BD: MemLdStr global_16
  loc_B902C0: Ary1LdPr
  loc_B902C1: MemLdStr global_0
  loc_B902C4: Ary1LdPr
  loc_B902C5: MemLdStr global_20
  loc_B902C8: ConcatStr
  loc_B902C9: CVarStr var_CC
  loc_B902CC: FLdPr Me
  loc_B902CF: MemLdI2 global_140
  loc_B902D2: CI4UI1
  loc_B902D3: FLdPr Me
  loc_B902D6: MemLdI2 global_144
  loc_B902D9: CI4UI1
  loc_B902DA: FLdPr Me
  loc_B902DD: MemLdI2 global_142
  loc_B902E0: CI4UI1
  loc_B902E1: FLdPr Me
  loc_B902E4: MemLdStr global_136
  loc_B902E7: Ary1LdPr
  loc_B902E8: MemLdStr global_16
  loc_B902EB: Ary1LdPr
  loc_B902EC: MemLdStr global_0
  loc_B902EF: Ary1LdPr
  loc_B902F0: MemLdStr global_20
  loc_B902F3: LitStr vbNullString
  loc_B902F6: NeStr
  loc_B902F8: CVarBoolI2 var_A4
  loc_B902FC: FLdRfVar var_110
  loc_B902FF: ImpAdCallFPR4  = IIf(, , )
  loc_B90304: FLdRfVar var_110
  loc_B90307: ConcatVar var_134
  loc_B9030B: LitVarStr var_F0, "<br>"
  loc_B90310: ConcatVar var_144
  loc_B90314: CStrVarTmp
  loc_B90315: FStStr var_90
  loc_B90318: FFree1Str var_B8
  loc_B9031B: FFreeVar var_A4 = "": var_CC = "": var_100 = "": var_124 = "": var_110 = "": var_134 = ""
  loc_B9032C: Branch loc_B903CF
  loc_B9032F: ILdRf var_90
  loc_B90332: LitStr "&nbsp;"
  loc_B90335: ConcatStr
  loc_B90336: CVarStr var_124
  loc_B90339: LitVarStr var_B4, vbNullString
  loc_B9033E: FStVarCopyObj var_100
  loc_B90341: FLdRfVar var_100
  loc_B90344: LitStr "Marca: "
  loc_B90347: FLdPr Me
  loc_B9034A: MemLdI2 global_140
  loc_B9034D: CI4UI1
  loc_B9034E: FLdPr Me
  loc_B90351: MemLdI2 global_144
  loc_B90354: CI4UI1
  loc_B90355: FLdPr Me
  loc_B90358: MemLdI2 global_142
  loc_B9035B: CI4UI1
  loc_B9035C: FLdPr Me
  loc_B9035F: MemLdStr global_136
  loc_B90362: Ary1LdPr
  loc_B90363: MemLdStr global_16
  loc_B90366: Ary1LdPr
  loc_B90367: MemLdStr global_0
  loc_B9036A: Ary1LdPr
  loc_B9036B: MemLdStr global_20
  loc_B9036E: ConcatStr
  loc_B9036F: CVarStr var_CC
  loc_B90372: FLdPr Me
  loc_B90375: MemLdI2 global_140
  loc_B90378: CI4UI1
  loc_B90379: FLdPr Me
  loc_B9037C: MemLdI2 global_144
  loc_B9037F: CI4UI1
  loc_B90380: FLdPr Me
  loc_B90383: MemLdI2 global_142
  loc_B90386: CI4UI1
  loc_B90387: FLdPr Me
  loc_B9038A: MemLdStr global_136
  loc_B9038D: Ary1LdPr
  loc_B9038E: MemLdStr global_16
  loc_B90391: Ary1LdPr
  loc_B90392: MemLdStr global_0
  loc_B90395: Ary1LdPr
  loc_B90396: MemLdStr global_20
  loc_B90399: LitStr vbNullString
  loc_B9039C: NeStr
  loc_B9039E: CVarBoolI2 var_A4
  loc_B903A2: FLdRfVar var_110
  loc_B903A5: ImpAdCallFPR4  = IIf(, , )
  loc_B903AA: FLdRfVar var_110
  loc_B903AD: ConcatVar var_134
  loc_B903B1: LitVarStr var_F0, "&nbsp;"
  loc_B903B6: ConcatVar var_144
  loc_B903BA: CStrVarTmp
  loc_B903BB: FStStr var_90
  loc_B903BE: FFreeVar var_A4 = "": var_CC = "": var_100 = "": var_124 = "": var_110 = "": var_134 = ""
  loc_B903CF: LitStr "   <td align=""right"">"
  loc_B903D2: ILdRf var_88
  loc_B903D5: ConcatStr
  loc_B903D6: FStStrNoPop var_B8
  loc_B903D9: ILdRf var_90
  loc_B903DC: ConcatStr
  loc_B903DD: FStStrNoPop var_BC
  loc_B903E0: ILdRf var_8C
  loc_B903E3: ConcatStr
  loc_B903E4: FStStrNoPop var_D0
  loc_B903E7: LitStr "</td>"
  loc_B903EA: ConcatStr
  loc_B903EB: CVarStr var_CC
  loc_B903EE: PopAdLdVar
  loc_B903EF: FLdPr Me
  loc_B903F2: MemLdRfVar from_stack_1.htmFile
  loc_B903F5: LdPrVar
  loc_B903F7: LateMemCall
  loc_B903FD: FFreeStr var_B8 = "": var_BC = ""
  loc_B90406: FFree1Var var_CC = ""
  loc_B90409: Branch loc_B90448
  loc_B9040C: LitVarStr var_A4, "<td valign=""middle""><hr width=""50" & Chr(37) & """></td>"
  loc_B90411: PopAdLdVar
  loc_B90412: FLdPr Me
  loc_B90415: MemLdRfVar from_stack_1.htmFile
  loc_B90418: LdPrVar
  loc_B9041A: LateMemCall
  loc_B90420: LitVarStr var_A4, "<td valign=""middle""><hr width=""50" & Chr(37) & """></td>"
  loc_B90425: PopAdLdVar
  loc_B90426: FLdPr Me
  loc_B90429: MemLdRfVar from_stack_1.htmFile
  loc_B9042C: LdPrVar
  loc_B9042E: LateMemCall
  loc_B90434: LitVarStr var_A4, "<td valign=""middle""><hr width=""50" & Chr(37) & """></td>"
  loc_B90439: PopAdLdVar
  loc_B9043A: FLdPr Me
  loc_B9043D: MemLdRfVar from_stack_1.htmFile
  loc_B90440: LdPrVar
  loc_B90442: LateMemCall
  loc_B90448: FLdPr Me
  loc_B9044B: MemLdRfVar from_stack_1.global_140
  loc_B9044E: NextI2 var_114, loc_B90036
  loc_B90453: LitVarStr var_A4, "  </tr>"
  loc_B90458: PopAdLdVar
  loc_B90459: FLdPr Me
  loc_B9045C: MemLdRfVar from_stack_1.htmFile
  loc_B9045F: LdPrVar
  loc_B90461: LateMemCall
  loc_B90467: FLdPr Me
  loc_B9046A: MemLdRfVar from_stack_1.global_144
  loc_B9046D: NextI2 var_E0, loc_B8FE41
  loc_B90472: FLdPr Me
  loc_B90475: MemLdRfVar from_stack_1.global_142
  loc_B90478: NextI2 var_DC, loc_B8FE04
  loc_B9047D: LitVarStr var_A4, "  <tr valign=""top"">"
  loc_B90482: PopAdLdVar
  loc_B90483: FLdPr Me
  loc_B90486: MemLdRfVar from_stack_1.htmFile
  loc_B90489: LdPrVar
  loc_B9048B: LateMemCall
  loc_B90491: LitVarStr var_A4, "    <td colspan=""4"" align=""right"" class=""Totales"">TOTAL OFERTA BÁSICA:</td>"
  loc_B90496: PopAdLdVar
  loc_B90497: FLdPr Me
  loc_B9049A: MemLdRfVar from_stack_1.htmFile
  loc_B9049D: LdPrVar
  loc_B9049F: LateMemCall
  loc_B904A5: LitI2_Byte 1
  loc_B904A7: FLdPr Me
  loc_B904AA: MemLdRfVar from_stack_1.global_140
  loc_B904AD: FLdPr Me
  loc_B904B0: MemLdStr global_132
  loc_B904B3: LitI2_Byte 1
  loc_B904B5: FnUBound
  loc_B904B7: CI2I4
  loc_B904B8: ForI2 var_148
  loc_B904BE: LitStr "     <td align=""right"" colspan=""3"" class=""Totales"">"
  loc_B904C1: FLdPr Me
  loc_B904C4: MemLdI2 global_140
  loc_B904C7: CI4UI1
  loc_B904C8: FLdPr Me
  loc_B904CB: MemLdStr global_132
  loc_B904CE: Ary1LdPr
  loc_B904CF: MemLdStr global_32
  loc_B904D2: ConcatStr
  loc_B904D3: FStStrNoPop var_B8
  loc_B904D6: LitStr "</td>"
  loc_B904D9: ConcatStr
  loc_B904DA: CVarStr var_CC
  loc_B904DD: PopAdLdVar
  loc_B904DE: FLdPr Me
  loc_B904E1: MemLdRfVar from_stack_1.htmFile
  loc_B904E4: LdPrVar
  loc_B904E6: LateMemCall
  loc_B904EC: FFree1Str var_B8
  loc_B904EF: FFree1Var var_CC = ""
  loc_B904F2: FLdPr Me
  loc_B904F5: MemLdRfVar from_stack_1.global_140
  loc_B904F8: NextI2 var_148, loc_B904BE
  loc_B904FD: LitVarStr var_A4, "  </tr>"
  loc_B90502: PopAdLdVar
  loc_B90503: FLdPr Me
  loc_B90506: MemLdRfVar from_stack_1.htmFile
  loc_B90509: LdPrVar
  loc_B9050B: LateMemCall
  loc_B90511: LitVarStr var_A4, "  <tr valign=""top"">"
  loc_B90516: PopAdLdVar
  loc_B90517: FLdPr Me
  loc_B9051A: MemLdRfVar from_stack_1.htmFile
  loc_B9051D: LdPrVar
  loc_B9051F: LateMemCall
  loc_B90525: LitVarStr var_A4, "    <td colspan=""4"" align=""right"" class=""Normal"">Mantenimiento de la oferta:</td>"
  loc_B9052A: PopAdLdVar
  loc_B9052B: FLdPr Me
  loc_B9052E: MemLdRfVar from_stack_1.htmFile
  loc_B90531: LdPrVar
  loc_B90533: LateMemCall
  loc_B90539: LitI2_Byte 1
  loc_B9053B: FLdPr Me
  loc_B9053E: MemLdRfVar from_stack_1.global_140
  loc_B90541: FLdPr Me
  loc_B90544: MemLdStr global_132
  loc_B90547: LitI2_Byte 1
  loc_B90549: FnUBound
  loc_B9054B: CI2I4
  loc_B9054C: ForI2 var_14C
  loc_B90552: LitVarStr var_160, "     <td align=""left"" colspan=""3"" class=""LineaDato"">"
  loc_B90557: LitVarStr var_F0, "&nbsp;"
  loc_B9055C: FStVarCopyObj var_CC
  loc_B9055F: FLdRfVar var_CC
  loc_B90562: FLdPr Me
  loc_B90565: MemLdI2 global_140
  loc_B90568: CI4UI1
  loc_B90569: FLdPr Me
  loc_B9056C: MemLdStr global_132
  loc_B9056F: AryLock
  loc_B90572: Ary1LdPr
  loc_B90573: MemLdRfVar from_stack_1.global_20
  loc_B90576: CVarRef
  loc_B9057B: FLdPr Me
  loc_B9057E: MemLdI2 global_140
  loc_B90581: CI4UI1
  loc_B90582: FLdPr Me
  loc_B90585: MemLdStr global_132
  loc_B90588: Ary1LdPr
  loc_B90589: MemLdStr global_20
  loc_B9058C: LitStr vbNullString
  loc_B9058F: NeStr
  loc_B90591: CVarBoolI2 var_A4
  loc_B90595: FLdRfVar var_100
  loc_B90598: ImpAdCallFPR4  = IIf(, , )
  loc_B9059D: AryUnlock
  loc_B905A0: FLdRfVar var_100
  loc_B905A3: ConcatVar var_110
  loc_B905A7: LitVarStr var_170, "</td>"
  loc_B905AC: ConcatVar var_124
  loc_B905B0: PopAdLdVar
  loc_B905B1: FLdPr Me
  loc_B905B4: MemLdRfVar from_stack_1.htmFile
  loc_B905B7: LdPrVar
  loc_B905B9: LateMemCall
  loc_B905BF: FFreeVar var_A4 = "": var_CC = "": var_100 = "": var_110 = ""
  loc_B905CC: FLdPr Me
  loc_B905CF: MemLdRfVar from_stack_1.global_140
  loc_B905D2: NextI2 var_14C, loc_B90552
  loc_B905D7: LitVarStr var_A4, "  </tr>"
  loc_B905DC: PopAdLdVar
  loc_B905DD: FLdPr Me
  loc_B905E0: MemLdRfVar from_stack_1.htmFile
  loc_B905E3: LdPrVar
  loc_B905E5: LateMemCall
  loc_B905EB: LitVarStr var_A4, "  <tr valign=""top"">"
  loc_B905F0: PopAdLdVar
  loc_B905F1: FLdPr Me
  loc_B905F4: MemLdRfVar from_stack_1.htmFile
  loc_B905F7: LdPrVar
  loc_B905F9: LateMemCall
  loc_B905FF: LitVarStr var_A4, "    <td colspan=""4"" align=""right"" class=""Normal"">Plazo de entrega:</td>"
  loc_B90604: PopAdLdVar
  loc_B90605: FLdPr Me
  loc_B90608: MemLdRfVar from_stack_1.htmFile
  loc_B9060B: LdPrVar
  loc_B9060D: LateMemCall
  loc_B90613: LitI2_Byte 1
  loc_B90615: FLdPr Me
  loc_B90618: MemLdRfVar from_stack_1.global_140
  loc_B9061B: FLdPr Me
  loc_B9061E: MemLdStr global_132
  loc_B90621: LitI2_Byte 1
  loc_B90623: FnUBound
  loc_B90625: CI2I4
  loc_B90626: ForI2 var_184
  loc_B9062C: LitVarStr var_160, "     <td align=""left"" colspan=""3"" class=""LineaDato"">"
  loc_B90631: LitVarStr var_F0, "&nbsp;"
  loc_B90636: FStVarCopyObj var_CC
  loc_B90639: FLdRfVar var_CC
  loc_B9063C: FLdPr Me
  loc_B9063F: MemLdI2 global_140
  loc_B90642: CI4UI1
  loc_B90643: FLdPr Me
  loc_B90646: MemLdStr global_132
  loc_B90649: AryLock
  loc_B9064C: Ary1LdPr
  loc_B9064D: MemLdRfVar from_stack_1.global_16
  loc_B90650: CVarRef
  loc_B90655: FLdPr Me
  loc_B90658: MemLdI2 global_140
  loc_B9065B: CI4UI1
  loc_B9065C: FLdPr Me
  loc_B9065F: MemLdStr global_132
  loc_B90662: Ary1LdPr
  loc_B90663: MemLdStr global_16
  loc_B90666: LitStr vbNullString
  loc_B90669: NeStr
  loc_B9066B: CVarBoolI2 var_A4
  loc_B9066F: FLdRfVar var_100
  loc_B90672: ImpAdCallFPR4  = IIf(, , )
  loc_B90677: AryUnlock
  loc_B9067A: FLdRfVar var_100
  loc_B9067D: ConcatVar var_110
  loc_B90681: LitVarStr var_170, "</td>"
  loc_B90686: ConcatVar var_124
  loc_B9068A: PopAdLdVar
  loc_B9068B: FLdPr Me
  loc_B9068E: MemLdRfVar from_stack_1.htmFile
  loc_B90691: LdPrVar
  loc_B90693: LateMemCall
  loc_B90699: FFreeVar var_A4 = "": var_CC = "": var_100 = "": var_110 = ""
  loc_B906A6: FLdPr Me
  loc_B906A9: MemLdRfVar from_stack_1.global_140
  loc_B906AC: NextI2 var_184, loc_B9062C
  loc_B906B1: LitVarStr var_A4, "  </tr>"
  loc_B906B6: PopAdLdVar
  loc_B906B7: FLdPr Me
  loc_B906BA: MemLdRfVar from_stack_1.htmFile
  loc_B906BD: LdPrVar
  loc_B906BF: LateMemCall
  loc_B906C5: LitVarStr var_A4, "  <tr valign=""top"">"
  loc_B906CA: PopAdLdVar
  loc_B906CB: FLdPr Me
  loc_B906CE: MemLdRfVar from_stack_1.htmFile
  loc_B906D1: LdPrVar
  loc_B906D3: LateMemCall
  loc_B906D9: LitVarStr var_A4, "    <td colspan=""4"" align=""right"" class=""Normal"">Observaciones:</td>"
  loc_B906DE: PopAdLdVar
  loc_B906DF: FLdPr Me
  loc_B906E2: MemLdRfVar from_stack_1.htmFile
  loc_B906E5: LdPrVar
  loc_B906E7: LateMemCall
  loc_B906ED: LitI2_Byte 1
  loc_B906EF: FLdPr Me
  loc_B906F2: MemLdRfVar from_stack_1.global_140
  loc_B906F5: FLdPr Me
  loc_B906F8: MemLdStr global_132
  loc_B906FB: LitI2_Byte 1
  loc_B906FD: FnUBound
  loc_B906FF: CI2I4
  loc_B90700: ForI2 var_188
  loc_B90706: LitVarStr var_160, "     <td align=""left"" colspan=""3"" class=""LineaDato"">"
  loc_B9070B: LitVarStr var_F0, "&nbsp;"
  loc_B90710: FStVarCopyObj var_CC
  loc_B90713: FLdRfVar var_CC
  loc_B90716: FLdPr Me
  loc_B90719: MemLdI2 global_140
  loc_B9071C: CI4UI1
  loc_B9071D: FLdPr Me
  loc_B90720: MemLdStr global_132
  loc_B90723: AryLock
  loc_B90726: Ary1LdPr
  loc_B90727: MemLdRfVar from_stack_1.global_24
  loc_B9072A: CVarRef
  loc_B9072F: FLdPr Me
  loc_B90732: MemLdI2 global_140
  loc_B90735: CI4UI1
  loc_B90736: FLdPr Me
  loc_B90739: MemLdStr global_132
  loc_B9073C: Ary1LdPr
  loc_B9073D: MemLdStr global_24
  loc_B90740: LitStr vbNullString
  loc_B90743: NeStr
  loc_B90745: CVarBoolI2 var_A4
  loc_B90749: FLdRfVar var_100
  loc_B9074C: ImpAdCallFPR4  = IIf(, , )
  loc_B90751: AryUnlock
  loc_B90754: FLdRfVar var_100
  loc_B90757: ConcatVar var_110
  loc_B9075B: LitVarStr var_170, "</td>"
  loc_B90760: ConcatVar var_124
  loc_B90764: PopAdLdVar
  loc_B90765: FLdPr Me
  loc_B90768: MemLdRfVar from_stack_1.htmFile
  loc_B9076B: LdPrVar
  loc_B9076D: LateMemCall
  loc_B90773: FFreeVar var_A4 = "": var_CC = "": var_100 = "": var_110 = ""
  loc_B90780: FLdPr Me
  loc_B90783: MemLdRfVar from_stack_1.global_140
  loc_B90786: NextI2 var_188, loc_B90706
  loc_B9078B: LitVarStr var_A4, "  </tr>"
  loc_B90790: PopAdLdVar
  loc_B90791: FLdPr Me
  loc_B90794: MemLdRfVar from_stack_1.htmFile
  loc_B90797: LdPrVar
  loc_B90799: LateMemCall
  loc_B9079F: LitVarStr var_A4, "</table>"
  loc_B907A4: PopAdLdVar
  loc_B907A5: FLdPr Me
  loc_B907A8: MemLdRfVar from_stack_1.htmFile
  loc_B907AB: LdPrVar
  loc_B907AD: LateMemCall
  loc_B907B3: LitVarStr var_A4, "<p>&nbsp;</p>"
  loc_B907B8: PopAdLdVar
  loc_B907B9: FLdPr Me
  loc_B907BC: MemLdRfVar from_stack_1.htmFile
  loc_B907BF: LdPrVar
  loc_B907C1: LateMemCall
  loc_B907C7: ExitProcHresult
End Function

Private Function Proc_212_26_97121C() '97121C
  'Data Table: 454C08
  loc_9711F0: LitVarStr var_94, "</body>"
  loc_9711F5: PopAdLdVar
  loc_9711F6: FLdPr Me
  loc_9711F9: MemLdRfVar from_stack_1.htmFile
  loc_9711FC: LdPrVar
  loc_9711FE: LateMemCall
  loc_971204: LitVarStr var_94, "</html>"
  loc_971209: PopAdLdVar
  loc_97120A: FLdPr Me
  loc_97120D: MemLdRfVar from_stack_1.htmFile
  loc_971210: LdPrVar
  loc_971212: LateMemCall
  loc_971218: ExitProcHresult
End Function
