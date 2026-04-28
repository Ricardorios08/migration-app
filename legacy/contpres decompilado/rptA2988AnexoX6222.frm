VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoX6222
  Caption = "Anexo X - Acuerdo 6222"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoX6222.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9180
  ClientHeight = 2775
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1200
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2520
    Width = 9180
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptA2988AnexoX6222.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 1440
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptA2988AnexoX6222.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoX6222.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1200
    Width = 4575
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT HTC"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 10
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8895
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4800
      Top = 360
      Width = 2655
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1920
      Top = 480
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1200
      Top = 480
      Width = 555
      Height = 315
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 1560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptA2988AnexoX6222.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoX6222"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_006226D4
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_3_0062270C
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdTxt_Click() '96E8B8
  'Data Table: 451124
  loc_96E894: LitStr "EstOrigAplFondos.txt"
  loc_96E897: FLdPr Me
  loc_96E89A: Me.Tag = from_stack_1
  loc_96E89F: LitI2_Byte 0
  loc_96E8A1: ILdRf Me
  loc_96E8A4: CastAd
  loc_96E8A7: FStAdFunc var_88
  loc_96E8AA: FLdRfVar var_88
  loc_96E8AD: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_96E8B2: FFree1Ad var_88
  loc_96E8B5: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97C1D4
  'Data Table: 451124
  loc_97C1A4: LitVarStr var_94, "Cerrando..."
  loc_97C1A9: PopAdLdVar
  loc_97C1AA: FLdPr Me
  loc_97C1AD: VCallAd Control_ID_statusBar
  loc_97C1B0: FStAdFunc var_A8
  loc_97C1B3: FLdPr var_A8
  loc_97C1B6: LateIdSt
  loc_97C1BB: FFree1Ad var_A8
  loc_97C1BE: ILdRf Me
  loc_97C1C1: FStAdNoPop
  loc_97C1C5: ImpAdLdRf MemVar_C44F9C
  loc_97C1C8: NewIfNullPr Me
  loc_97C1CB: Me.Global.Unload from_stack_1
  loc_97C1D0: FFree1Ad var_A8
  loc_97C1D3: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96946C
  'Data Table: 451124
  loc_969450: LitI2_Byte &HFF
  loc_969452: LitI2_Byte 0
  loc_969454: ILdRf Me
  loc_969457: CastAd
  loc_96945A: FStAdFunc var_88
  loc_96945D: FLdRfVar var_88
  loc_969460: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_969465: FFree1Ad var_88
  loc_969468: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9917C4
  'Data Table: 451124
  loc_991774: LitI2_Byte 0
  loc_991776: FLdPr Me
  loc_991779: MemStI2 bGenerado
  loc_99177C: LitI2_Byte &HFF
  loc_99177E: FLdPr Me
  loc_991781: MemStI2 bLogos
  loc_991784: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_991789: ImpAdLdI2 MemVar_C3D064
  loc_99178C: CStrUI1
  loc_99178E: FStStrNoPop var_88
  loc_991791: FLdPr Me
  loc_991794: VCallAd Control_ID_cboPeriodo
  loc_991797: FStAdFunc var_8C
  loc_99179A: FLdPr var_8C
  loc_99179D: Me.Text = from_stack_1
  loc_9917A2: FFree1Str var_88
  loc_9917A5: FFree1Ad var_8C
  loc_9917A8: Call HabilitarCriterio()
  loc_9917AD: ILdRf Me
  loc_9917B0: CastAd
  loc_9917B3: FStAdFunc var_8C
  loc_9917B6: FLdRfVar var_8C
  loc_9917B9: ImpAdCallFPR4  = Proc_263_12_9C9114()
  loc_9917BE: FFree1Ad var_8C
  loc_9917C1: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95753C
  'Data Table: 451124
  loc_957524: ILdRf Me
  loc_957527: CastAd
  loc_95752A: FStAdFunc var_88
  loc_95752D: FLdRfVar var_88
  loc_957530: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_957535: FFree1Ad var_88
  loc_957538: ExitProcHresult
  loc_957539: ThisVCall unk_451143
End Sub

Private Sub cmdPdf_Click() '98F94C
  'Data Table: 451124
  loc_98F904: LitStr "Acuerdo 2988 Anexo X 6222 "
  loc_98F907: FLdRfVar var_8C
  loc_98F90A: FLdPr Me
  loc_98F90D: VCallAd Control_ID_cboPeriodo
  loc_98F910: FStAdFunc var_88
  loc_98F913: FLdPr var_88
  loc_98F916:  = Me.Text
  loc_98F91B: ILdRf var_8C
  loc_98F91E: ConcatStr
  loc_98F91F: FStStrNoPop var_90
  loc_98F922: FLdPr Me
  loc_98F925: Me.Tag = from_stack_1
  loc_98F92A: FFreeStr var_8C = ""
  loc_98F931: FFree1Ad var_88
  loc_98F934: LitI2_Byte 0
  loc_98F936: ILdRf Me
  loc_98F939: CastAd
  loc_98F93C: FStAdFunc var_88
  loc_98F93F: FLdRfVar var_88
  loc_98F942: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_98F947: FFree1Ad var_88
  loc_98F94A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A964
  'Data Table: 451124
  loc_98A92C: FLdPr Me
  loc_98A92F: VCallAd Control_ID_statusBar
  loc_98A932: FStAdFunc var_88
  loc_98A935: FLdPr var_88
  loc_98A938: LateIdLdVar var_98 DispID_1 0
  loc_98A93F: CStrVarTmp
  loc_98A940: CVarStr var_A8
  loc_98A943: PopAdLdVar
  loc_98A944: FLdPr Me
  loc_98A947: VCallAd Control_ID_statusBar
  loc_98A94A: FStAdFunc var_BC
  loc_98A94D: FLdPr var_BC
  loc_98A950: LateIdSt
  loc_98A955: FFreeAd var_88 = ""
  loc_98A95C: FFreeVar var_98 = ""
  loc_98A963: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95740C
  'Data Table: 451124
  loc_9573F4: ILdRf Me
  loc_9573F7: CastAd
  loc_9573FA: FStAdFunc var_88
  loc_9573FD: FLdRfVar var_88
  loc_957400: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_957405: FFree1Ad var_88
  loc_957408: ExitProcHresult
End Sub

Private Sub Form_Load() '9CF71C
  'Data Table: 451124
  loc_9CF644: LitI2_Byte &HFF
  loc_9CF646: ImpAdStI2 MemVar_C3D840
  loc_9CF649: ILdRf Me
  loc_9CF64C: CastAd
  loc_9CF64F: FStAdFunc var_8C
  loc_9CF652: FLdRfVar var_8C
  loc_9CF655: ImpAdCallFPR4  = Proc_261_42_9991A0()
  loc_9CF65A: FFree1Ad var_8C
  loc_9CF65D: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CF660: FLdRfVar var_88
  loc_9CF663: NewIfNullPr clsperiodo
  loc_9CF666: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CF66B: FLdRfVar var_90
  loc_9CF66E: FLdRfVar var_88
  loc_9CF671: NewIfNullPr clsperiodo
  loc_9CF674: from_stack_1 = clsperiodo.RecordCount
  loc_9CF679: ILdRf var_90
  loc_9CF67C: LitI4 0
  loc_9CF681: GtI4
  loc_9CF682: BranchF loc_9CF715
  loc_9CF685: FLdRfVar var_88
  loc_9CF688: NewIfNullPr clsperiodo
  loc_9CF68B: Call clsperiodo.MoveFirst()
  loc_9CF690: FLdRfVar var_92
  loc_9CF693: FLdRfVar var_88
  loc_9CF696: NewIfNullPr clsperiodo
  loc_9CF699: from_stack_1 = clsperiodo.EOF
  loc_9CF69E: FLdI2 var_92
  loc_9CF6A1: NotI4
  loc_9CF6A2: BranchF loc_9CF715
  loc_9CF6A5: LitVar_Missing var_D0
  loc_9CF6A8: PopAdLdVar
  loc_9CF6A9: FLdRfVar var_BC
  loc_9CF6AC: FLdRfVar var_AC
  loc_9CF6AF: LitVarStr var_A8, "PeriInfo"
  loc_9CF6B4: PopAdLdVar
  loc_9CF6B5: FLdRfVar var_98
  loc_9CF6B8: FLdRfVar var_8C
  loc_9CF6BB: FLdRfVar var_88
  loc_9CF6BE: NewIfNullPr clsperiodo
  loc_9CF6C1: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CF6C6: FLdPr var_8C
  loc_9CF6C9:  = Me.Fields
  loc_9CF6CE: FLdPr var_98
  loc_9CF6D1: from_stack_2 = Me.Item(from_stack_1)
  loc_9CF6D6: FLdPr var_AC
  loc_9CF6D9:  = Me.Value
  loc_9CF6DE: FLdRfVar var_BC
  loc_9CF6E1: CStrVarTmp
  loc_9CF6E2: FStStrNoPop var_C0
  loc_9CF6E5: FLdPr Me
  loc_9CF6E8: VCallAd Control_ID_cboPeriodo
  loc_9CF6EB: FStAdFunc var_D4
  loc_9CF6EE: FLdPr var_D4
  loc_9CF6F1: Me.AddItem from_stack_1, from_stack_2
  loc_9CF6F6: FFree1Str var_C0
  loc_9CF6F9: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CF704: FFree1Var var_BC = ""
  loc_9CF707: FLdRfVar var_88
  loc_9CF70A: NewIfNullPr clsperiodo
  loc_9CF70D: Call clsperiodo.MoveSiguiente()
  loc_9CF712: Branch loc_9CF690
  loc_9CF715: Call cmdNueva_Click()
  loc_9CF71A: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '957C5C
  'Data Table: 451124
  loc_957C44: FLdPr Me
  loc_957C47: VCallAd Control_ID_wbbReporte
  loc_957C4A: FStAdFunc var_88
  loc_957C4D: FLdRfVar var_88
  loc_957C50: ImpAdCallFPR4  = Proc_263_22_98CC50()
  loc_957C55: FFree1Ad var_88
  loc_957C58: ExitProcHresult
End Sub

Public Function htmFileGet() '451D50
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '451D5F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '451D6E
  htmFile = Value
End Sub

Public Function bLogosGet() '451D7D
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '451D8C
  bLogos = Value
End Sub

Public Function bGeneradoGet() '451D9B
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '451DAA
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9851C0
  'Data Table: 451124
  loc_98518C: LitI4 0
  loc_985191: LitI4 0
  loc_985196: FLdRfVar var_88
  loc_985199: Redim
  loc_9851A3: FLdPr Me
  loc_9851A6: VCallAd Control_ID_cboPeriodo
  loc_9851A9: CVarAd
  loc_9851AD: ParmAry1St
  loc_9851B3: FLdRfVar var_88
  loc_9851B6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9851BB: FLdRfVar var_88
  loc_9851BE: Erase
  loc_9851BF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B78024
  'Data Table: 451124
  loc_B773AC: LitStr "Municipalidad de Guaymallén"
  loc_B773AF: LitStr "Municipalidad de Rivadavia"
  loc_B773B2: EqStr
  loc_B773B4: BranchF loc_B773C0
  loc_B773B7: LitStr "(1110,1120,1130,1140)"
  loc_B773BA: FStStrCopy var_8C
  loc_B773BD: Branch loc_B773DA
  loc_B773C0: LitStr "Municipalidad de Guaymallén"
  loc_B773C3: LitStr "Municipalidad de Malargüe"
  loc_B773C6: EqStr
  loc_B773C8: BranchF loc_B773D4
  loc_B773CB: LitStr "(1110,1120,1130,1140)"
  loc_B773CE: FStStrCopy var_8C
  loc_B773D1: Branch loc_B773DA
  loc_B773D4: LitStr "(1110,1120,1130)"
  loc_B773D7: FStStrCopy var_8C
  loc_B773DA: OnErrorGoto loc_B77FC2
  loc_B773DD: FLdPr Me
  loc_B773E0: MemLdI2 bGenerado
  loc_B773E3: BranchF loc_B773E7
  loc_B773E6: ExitProcHresult
  loc_B773E7: LitVarStr var_9C, "Generando reporte..."
  loc_B773EC: PopAdLdVar
  loc_B773ED: FLdPr Me
  loc_B773F0: VCallAd Control_ID_statusBar
  loc_B773F3: FStAdFunc var_B0
  loc_B773F6: FLdPr var_B0
  loc_B773F9: LateIdSt
  loc_B773FE: FFree1Ad var_B0
  loc_B77401: LitI4 &HB
  loc_B77406: CI2I4
  loc_B77407: FLdPr Me
  loc_B7740A: Me.MousePointer = from_stack_1
  loc_B7740F: LitI2_Byte &HC
  loc_B77411: FLdPr Me
  loc_B77414: MemStI2 global_128
  loc_B77417: FLdRfVar var_B4
  loc_B7741A: FLdPr Me
  loc_B7741D: VCallAd Control_ID_cboPeriodo
  loc_B77420: FStAdFunc var_B0
  loc_B77423: FLdPr var_B0
  loc_B77426:  = Me.Text
  loc_B7742B: ILdRf var_B4
  loc_B7742E: CI2Str
  loc_B77430: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B77435: CVarStr var_C4
  loc_B77438: FLdRfVar var_D4
  loc_B7743B: ImpAdCallFPR4  = Month()
  loc_B77440: LitVarStr var_114, "Definitivo"
  loc_B77445: FStVarCopyObj var_124
  loc_B77448: FLdRfVar var_124
  loc_B7744B: LitVarStr var_AC, "Provisorio"
  loc_B77450: FStVarCopyObj var_104
  loc_B77453: FLdRfVar var_104
  loc_B77456: FLdPr Me
  loc_B77459: MemLdI2 global_128
  loc_B7745C: CVarI2 var_9C
  loc_B7745F: HardType
  loc_B77460: FLdRfVar var_D4
  loc_B77463: GtVar var_E4
  loc_B77467: FStVar var_F4
  loc_B7746B: FLdRfVar var_F4
  loc_B7746E: FLdRfVar var_134
  loc_B77471: ImpAdCallFPR4  = IIf(, , )
  loc_B77476: FLdRfVar var_134
  loc_B77479: CStrVarTmp
  loc_B7747A: FStStrNoPop var_138
  loc_B7747D: FLdPr Me
  loc_B77480: MemStStrCopy
  loc_B77484: FFreeStr var_B4 = ""
  loc_B7748B: FFree1Ad var_B0
  loc_B7748E: FFreeVar var_C4 = "": var_D4 = "": var_F4 = "": var_104 = "": var_124 = ""
  loc_B7749D: LitStr " HAVING Importe <> 0"
  loc_B774A0: FStStrCopy var_88
  loc_B774A3: LitI2_Byte 0
  loc_B774A5: LitVar_Missing var_C4
  loc_B774A8: LitI2_Byte &HFF
  loc_B774AA: LitVarI2 var_9C, 0
  loc_B774AF: PopAdLdVar
  loc_B774B0: FLdPr Me
  loc_B774B3: MemLdRfVar from_stack_1.global_120
  loc_B774B6: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B774BB: FFree1Var var_C4 = ""
  loc_B774BE: LitI2_Byte 0
  loc_B774C0: LitVar_Missing var_C4
  loc_B774C3: LitI2_Byte &HFF
  loc_B774C5: LitVarI2 var_9C, 0
  loc_B774CA: PopAdLdVar
  loc_B774CB: FLdPr Me
  loc_B774CE: MemLdRfVar from_stack_1.global_124
  loc_B774D1: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B774D6: FFree1Var var_C4 = ""
  loc_B774D9: LitI4 0
  loc_B774DE: LitI4 0
  loc_B774E3: FLdPr Me
  loc_B774E6: MemLdRfVar from_stack_1.global_96
  loc_B774E9: Redim
  loc_B774F3: FLdRfVar var_B4
  loc_B774F6: FLdPr Me
  loc_B774F9: VCallAd Control_ID_cboPeriodo
  loc_B774FC: FStAdFunc var_B0
  loc_B774FF: FLdPr var_B0
  loc_B77502:  = Me.Text
  loc_B77507: ILdRf var_B4
  loc_B7750A: CI2Str
  loc_B7750C: FLdPr Me
  loc_B7750F: MemLdRfVar from_stack_1.global_72
  loc_B77512: NewIfNullPr clsbase
  loc_B77515: Call clsbase.Anexos_X_6222(from_stack_1v)
  loc_B7751A: FFree1Str var_B4
  loc_B7751D: FFree1Ad var_B0
  loc_B77520: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_B77523: LitStr " FROM tmovi"
  loc_B77526: ConcatStr
  loc_B77527: FStStrNoPop var_B4
  loc_B7752A: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B7752D: ConcatStr
  loc_B7752E: FStStrNoPop var_138
  loc_B77531: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77534: ConcatStr
  loc_B77535: FStStrNoPop var_13C
  loc_B77538: LitStr " WHERE tmovi.CodiTicu IN "
  loc_B7753B: ConcatStr
  loc_B7753C: FStStrNoPop var_140
  loc_B7753F: ILdRf var_8C
  loc_B77542: ConcatStr
  loc_B77543: FStStrNoPop var_144
  loc_B77546: LitStr vbNullString
  loc_B77549: ConcatStr
  loc_B7754A: FStStrNoPop var_148
  loc_B7754D: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_B77550: ConcatStr
  loc_B77551: FStStrNoPop var_14C
  loc_B77554: LitStr " GROUP BY CodiCuco"
  loc_B77557: ConcatStr
  loc_B77558: FStStrNoPop var_150
  loc_B7755B: LitStr " HAVING Importe <> 0;"
  loc_B7755E: ConcatStr
  loc_B7755F: FStStrNoPop var_154
  loc_B77562: FLdPr Me
  loc_B77565: MemLdRfVar from_stack_1.global_72
  loc_B77568: NewIfNullPr clsbase
  loc_B7756B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77570: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_B77585: FLdRfVar var_158
  loc_B77588: FLdPr Me
  loc_B7758B: MemLdRfVar from_stack_1.global_72
  loc_B7758E: NewIfNullPr clsbase
  loc_B77591: from_stack_1 = clsbase.RecordCount
  loc_B77596: ILdRf var_158
  loc_B77599: LitI4 0
  loc_B7759E: NeI4
  loc_B7759F: BranchF loc_B775AE
  loc_B775A2: LitStr "SALDO INICIAL DE DISPONIBILIDADES"
  loc_B775A5: LitI2_Byte 1
  loc_B775A7: CUI1I2
  loc_B775A9: Call Proc_284_22_9B898C()
  loc_B775AE: LitStr "Municipalidad de Guaymallén"
  loc_B775B1: FStStrCopy var_15C
  loc_B775B4: ILdRf var_15C
  loc_B775B7: LitStr "Municipalidad de Tunuyán"
  loc_B775BA: EqStr
  loc_B775BC: BranchT loc_B775EB
  loc_B775BF: ILdRf var_15C
  loc_B775C2: LitStr "Municipalidad de Maipú"
  loc_B775C5: EqStr
  loc_B775C7: BranchT loc_B775EB
  loc_B775CA: ILdRf var_15C
  loc_B775CD: LitStr "Municipalidad de La Paz"
  loc_B775D0: EqStr
  loc_B775D2: BranchT loc_B775EB
  loc_B775D5: ILdRf var_15C
  loc_B775D8: LitStr "Municipalidad de Tupungato"
  loc_B775DB: EqStr
  loc_B775DD: BranchT loc_B775EB
  loc_B775E0: ILdRf var_15C
  loc_B775E3: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B775E6: EqStr
  loc_B775E8: BranchF loc_B7766B
  loc_B775EB: LitStr "SELECT '' CodiCuco, 'RESULTADO ECONÓMICO' DetaCuco, nResultEcon`('"
  loc_B775EE: FLdRfVar var_B4
  loc_B775F1: FLdPr Me
  loc_B775F4: VCallAd Control_ID_cboPeriodo
  loc_B775F7: FStAdFunc var_B0
  loc_B775FA: FLdPr var_B0
  loc_B775FD:  = Me.Text
  loc_B77602: ILdRf var_B4
  loc_B77605: ConcatStr
  loc_B77606: FStStrNoPop var_138
  loc_B77609: LitStr "') Importe"
  loc_B7760C: ConcatStr
  loc_B7760D: FStStrNoPop var_13C
  loc_B77610: LitStr " UNION "
  loc_B77613: ConcatStr
  loc_B77614: FStStrNoPop var_140
  loc_B77617: LitStr "SELECT '', 'RESULTADO FINANCIERO (NETO RESULTADO ECONOMICO)', nResultNOecon`('"
  loc_B7761A: ConcatStr
  loc_B7761B: FStStrNoPop var_148
  loc_B7761E: FLdRfVar var_144
  loc_B77621: FLdPr Me
  loc_B77624: VCallAd Control_ID_cboPeriodo
  loc_B77627: FStAdFunc var_160
  loc_B7762A: FLdPr var_160
  loc_B7762D:  = Me.Text
  loc_B77632: ILdRf var_144
  loc_B77635: ConcatStr
  loc_B77636: FStStrNoPop var_14C
  loc_B77639: LitStr "');"
  loc_B7763C: ConcatStr
  loc_B7763D: FStStrNoPop var_150
  loc_B77640: FLdPr Me
  loc_B77643: MemLdRfVar from_stack_1.global_72
  loc_B77646: NewIfNullPr clsbase
  loc_B77649: Call clsbase.RedefineRS(from_stack_1v)
  loc_B7764E: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_148 = "": var_144 = "": var_14C = ""
  loc_B77661: FFreeAd var_B0 = ""
  loc_B77668: Branch loc_B77731
  loc_B7766B: ILdRf var_15C
  loc_B7766E: LitStr "Municipalidad de Guaymallén"
  loc_B77671: EqStr
  loc_B77673: BranchF loc_B776D5
  loc_B77676: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, Sum(MoviEjeH-MoviEjeD) Importe"
  loc_B77679: LitStr " FROM tmovi"
  loc_B7767C: ConcatStr
  loc_B7767D: FStStrNoPop var_B4
  loc_B77680: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77683: ConcatStr
  loc_B77684: FStStrNoPop var_138
  loc_B77687: LitStr " AND p.ReejPaco = tmovi.CodiCuco"
  loc_B7768A: ConcatStr
  loc_B7768B: FStStrNoPop var_13C
  loc_B7768E: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77691: ConcatStr
  loc_B77692: FStStrNoPop var_140
  loc_B77695: LitStr " WHERE (tmovi.CodiTicu Like '3" & Chr(37) & "')"
  loc_B77698: ConcatStr
  loc_B77699: FStStrNoPop var_144
  loc_B7769C: LitStr " AND tmovi.CodiCuco = ReejPaco"
  loc_B7769F: ConcatStr
  loc_B776A0: FStStrNoPop var_148
  loc_B776A3: LitStr " AND tmovi.CodiTias in ( 28,60)"
  loc_B776A6: ConcatStr
  loc_B776A7: FStStrNoPop var_14C
  loc_B776AA: LitStr " GROUP BY CodiCuco;"
  loc_B776AD: ConcatStr
  loc_B776AE: FStStrNoPop var_150
  loc_B776B1: FLdPr Me
  loc_B776B4: MemLdRfVar from_stack_1.global_72
  loc_B776B7: NewIfNullPr clsbase
  loc_B776BA: Call clsbase.RedefineRS(from_stack_1v)
  loc_B776BF: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_B776D2: Branch loc_B77731
  loc_B776D5: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, Sum(MoviEjeH-MoviEjeD) Importe"
  loc_B776D8: LitStr " FROM tmovi"
  loc_B776DB: ConcatStr
  loc_B776DC: FStStrNoPop var_B4
  loc_B776DF: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B776E2: ConcatStr
  loc_B776E3: FStStrNoPop var_138
  loc_B776E6: LitStr " AND p.ReejPaco = tmovi.CodiCuco"
  loc_B776E9: ConcatStr
  loc_B776EA: FStStrNoPop var_13C
  loc_B776ED: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B776F0: ConcatStr
  loc_B776F1: FStStrNoPop var_140
  loc_B776F4: LitStr " WHERE (tmovi.CodiTicu Like '3" & Chr(37) & "')"
  loc_B776F7: ConcatStr
  loc_B776F8: FStStrNoPop var_144
  loc_B776FB: LitStr " AND tmovi.CodiCuco <> CajaPaco"
  loc_B776FE: ConcatStr
  loc_B776FF: FStStrNoPop var_148
  loc_B77702: LitStr " AND tmovi.CodiTias = 28"
  loc_B77705: ConcatStr
  loc_B77706: FStStrNoPop var_14C
  loc_B77709: LitStr " GROUP BY CodiCuco;"
  loc_B7770C: ConcatStr
  loc_B7770D: FStStrNoPop var_150
  loc_B77710: FLdPr Me
  loc_B77713: MemLdRfVar from_stack_1.global_72
  loc_B77716: NewIfNullPr clsbase
  loc_B77719: Call clsbase.RedefineRS(from_stack_1v)
  loc_B7771E: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_B77731: FLdRfVar var_158
  loc_B77734: FLdPr Me
  loc_B77737: MemLdRfVar from_stack_1.global_72
  loc_B7773A: NewIfNullPr clsbase
  loc_B7773D: from_stack_1 = clsbase.RecordCount
  loc_B77742: ILdRf var_158
  loc_B77745: LitI4 0
  loc_B7774A: NeI4
  loc_B7774B: BranchF loc_B7775A
  loc_B7774E: LitStr "+FLUJO"
  loc_B77751: LitI2_Byte 2
  loc_B77753: CUI1I2
  loc_B77755: Call Proc_284_22_9B898C()
  loc_B7775A: LitStr "Municipalidad de Guaymallén"
  loc_B7775D: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B77760: EqStr
  loc_B77762: BranchF loc_B77827
  loc_B77765: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, Sum(MoviEjeH) Importe"
  loc_B77768: LitStr " FROM tmovi"
  loc_B7776B: ConcatStr
  loc_B7776C: FStStrNoPop var_B4
  loc_B7776F: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77772: ConcatStr
  loc_B77773: FStStrNoPop var_138
  loc_B77776: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B77779: ConcatStr
  loc_B7777A: FStStrNoPop var_13C
  loc_B7777D: LitStr " AND p.ReejPaco != tmovi.CodiCuco"
  loc_B77780: ConcatStr
  loc_B77781: FStStrNoPop var_140
  loc_B77784: LitStr " AND p.CarePaco != tmovi.CodiCuco"
  loc_B77787: ConcatStr
  loc_B77788: FStStrNoPop var_144
  loc_B7778B: LitStr " AND p.CaerPaco != tmovi.CodiCuco"
  loc_B7778E: ConcatStr
  loc_B7778F: FStStrNoPop var_148
  loc_B77792: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77795: ConcatStr
  loc_B77796: FStStrNoPop var_14C
  loc_B77799: LitStr " WHERE (tmovi.CodiTicu Like '3" & Chr(37) & "')"
  loc_B7779C: ConcatStr
  loc_B7779D: FStStrNoPop var_150
  loc_B777A0: LitStr " GROUP BY CodiCuco"
  loc_B777A3: ConcatStr
  loc_B777A4: FStStrNoPop var_154
  loc_B777A7: LitStr " HAVING Importe != 0"
  loc_B777AA: ConcatStr
  loc_B777AB: FStStrNoPop var_164
  loc_B777AE: LitStr " UNION ALL "
  loc_B777B1: ConcatStr
  loc_B777B2: FStStrNoPop var_168
  loc_B777B5: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, IF(SUM(MoviEjeH-MoviEjeD)>0,SUM(MoviEjeH-MoviEjeD),0) Importe"
  loc_B777B8: ConcatStr
  loc_B777B9: FStStrNoPop var_16C
  loc_B777BC: LitStr " FROM tmovi"
  loc_B777BF: ConcatStr
  loc_B777C0: FStStrNoPop var_170
  loc_B777C3: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B777C6: ConcatStr
  loc_B777C7: FStStrNoPop var_174
  loc_B777CA: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B777CD: ConcatStr
  loc_B777CE: FStStrNoPop var_178
  loc_B777D1: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B777D4: ConcatStr
  loc_B777D5: FStStrNoPop var_17C
  loc_B777D8: LitStr " WHERE tmovi.CodiCuco = '6310200000'"
  loc_B777DB: ConcatStr
  loc_B777DC: FStStrNoPop var_180
  loc_B777DF: LitStr " GROUP BY CodiCuco"
  loc_B777E2: ConcatStr
  loc_B777E3: FStStrNoPop var_184
  loc_B777E6: LitStr " HAVING Importe != 0;"
  loc_B777E9: ConcatStr
  loc_B777EA: FStStrNoPop var_188
  loc_B777ED: FLdPr Me
  loc_B777F0: MemLdRfVar from_stack_1.global_72
  loc_B777F3: NewIfNullPr clsbase
  loc_B777F6: Call clsbase.RedefineRS(from_stack_1v)
  loc_B777FB: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_B77824: Branch loc_B77895
  loc_B77827: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, Sum(MoviEjeH) Importe"
  loc_B7782A: LitStr " FROM tmovi"
  loc_B7782D: ConcatStr
  loc_B7782E: FStStrNoPop var_B4
  loc_B77831: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77834: ConcatStr
  loc_B77835: FStStrNoPop var_138
  loc_B77838: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B7783B: ConcatStr
  loc_B7783C: FStStrNoPop var_13C
  loc_B7783F: LitStr " AND p.ReejPaco != tmovi.CodiCuco"
  loc_B77842: ConcatStr
  loc_B77843: FStStrNoPop var_140
  loc_B77846: LitStr " AND p.CarePaco != tmovi.CodiCuco"
  loc_B77849: ConcatStr
  loc_B7784A: FStStrNoPop var_144
  loc_B7784D: LitStr " AND p.CaerPaco != tmovi.CodiCuco"
  loc_B77850: ConcatStr
  loc_B77851: FStStrNoPop var_148
  loc_B77854: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77857: ConcatStr
  loc_B77858: FStStrNoPop var_14C
  loc_B7785B: LitStr " WHERE (tmovi.CodiTicu Like '3" & Chr(37) & "')"
  loc_B7785E: ConcatStr
  loc_B7785F: FStStrNoPop var_150
  loc_B77862: LitStr " GROUP BY CodiCuco"
  loc_B77865: ConcatStr
  loc_B77866: FStStrNoPop var_154
  loc_B77869: LitStr " HAVING Importe != 0;"
  loc_B7786C: ConcatStr
  loc_B7786D: FStStrNoPop var_164
  loc_B77870: FLdPr Me
  loc_B77873: MemLdRfVar from_stack_1.global_72
  loc_B77876: NewIfNullPr clsbase
  loc_B77879: Call clsbase.RedefineRS(from_stack_1v)
  loc_B7787E: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_B77895: FLdRfVar var_158
  loc_B77898: FLdPr Me
  loc_B7789B: MemLdRfVar from_stack_1.global_72
  loc_B7789E: NewIfNullPr clsbase
  loc_B778A1: from_stack_1 = clsbase.RecordCount
  loc_B778A6: ILdRf var_158
  loc_B778A9: LitI4 0
  loc_B778AE: NeI4
  loc_B778AF: BranchF loc_B778BE
  loc_B778B2: LitStr "+PATRIMONIO INCREMENTO"
  loc_B778B5: LitI2_Byte 2
  loc_B778B7: CUI1I2
  loc_B778B9: Call Proc_284_22_9B898C()
  loc_B778BE: LitStr "SELECT tmovi.PeriInfo, CodiCuco, '' DetaCuco, CodiTicu, /*Sum(MoviEjeH-MoviEjeD)*/ 0 Importe"
  loc_B778C1: LitStr " FROM tmovi"
  loc_B778C4: ConcatStr
  loc_B778C5: FStStrNoPop var_B4
  loc_B778C8: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B778CB: ConcatStr
  loc_B778CC: FStStrNoPop var_138
  loc_B778CF: LitStr " AND p.PatrPaco = tmovi.CodiCuco"
  loc_B778D2: ConcatStr
  loc_B778D3: FStStrNoPop var_13C
  loc_B778D6: LitStr " WHERE (tmovi.CodiTicu Like '3" & Chr(37) & "')"
  loc_B778D9: ConcatStr
  loc_B778DA: FStStrNoPop var_140
  loc_B778DD: LitStr " AND tmovi.CodiCuco <> CajaPaco"
  loc_B778E0: ConcatStr
  loc_B778E1: FStStrNoPop var_144
  loc_B778E4: LitStr " AND tmovi.CodiTias = 27"
  loc_B778E7: ConcatStr
  loc_B778E8: FStStrNoPop var_148
  loc_B778EB: LitStr " GROUP BY CodiCuco"
  loc_B778EE: ConcatStr
  loc_B778EF: FStStrNoPop var_14C
  loc_B778F2: LitStr " HAVING Importe != 0;"
  loc_B778F5: ConcatStr
  loc_B778F6: FStStrNoPop var_150
  loc_B778F9: FLdPr Me
  loc_B778FC: MemLdRfVar from_stack_1.global_72
  loc_B778FF: NewIfNullPr clsbase
  loc_B77902: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77907: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_B7791A: FLdRfVar var_158
  loc_B7791D: FLdPr Me
  loc_B77920: MemLdRfVar from_stack_1.global_72
  loc_B77923: NewIfNullPr clsbase
  loc_B77926: from_stack_1 = clsbase.RecordCount
  loc_B7792B: ILdRf var_158
  loc_B7792E: LitI4 0
  loc_B77933: NeI4
  loc_B77934: BranchF loc_B77943
  loc_B77937: LitStr "+PATRIMONIO AJUSTE DE RESULTADO DE EJERCICIOS ANTERIORES"
  loc_B7793A: LitI2_Byte 2
  loc_B7793C: CUI1I2
  loc_B7793E: Call Proc_284_22_9B898C()
  loc_B77943: LitStr "Municipalidad de Guaymallén"
  loc_B77946: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B77949: EqStr
  loc_B7794B: BranchF loc_B779BF
  loc_B7794E: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, IF(SUM(MoviEjeH-MoviEjeD)>0,SUM(MoviEjeH-MoviEjeD),0) Importe"
  loc_B77951: LitStr " FROM tmovi"
  loc_B77954: ConcatStr
  loc_B77955: FStStrNoPop var_B4
  loc_B77958: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B7795B: ConcatStr
  loc_B7795C: FStStrNoPop var_138
  loc_B7795F: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B77962: ConcatStr
  loc_B77963: FStStrNoPop var_13C
  loc_B77966: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77969: ConcatStr
  loc_B7796A: FStStrNoPop var_140
  loc_B7796D: LitStr " WHERE (tmovi.CodiTicu Like '1" & Chr(37) & "')"
  loc_B77970: ConcatStr
  loc_B77971: FStStrNoPop var_144
  loc_B77974: LitStr " AND tmovi.CodiTicu NOT IN "
  loc_B77977: ConcatStr
  loc_B77978: FStStrNoPop var_148
  loc_B7797B: ILdRf var_8C
  loc_B7797E: ConcatStr
  loc_B7797F: FStStrNoPop var_14C
  loc_B77982: LitStr " AND tmovi.CodiCuco != '6310200000'"
  loc_B77985: ConcatStr
  loc_B77986: FStStrNoPop var_150
  loc_B77989: LitStr " GROUP BY CodiCuco"
  loc_B7798C: ConcatStr
  loc_B7798D: FStStrNoPop var_154
  loc_B77990: LitStr " HAVING Importe != 0;"
  loc_B77993: ConcatStr
  loc_B77994: FStStrNoPop var_164
  loc_B77997: FLdPr Me
  loc_B7799A: MemLdRfVar from_stack_1.global_72
  loc_B7799D: NewIfNullPr clsbase
  loc_B779A0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B779A5: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_B779BC: Branch loc_B77A24
  loc_B779BF: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, IF(SUM(MoviEjeH-MoviEjeD)>0,SUM(MoviEjeH-MoviEjeD),0) Importe"
  loc_B779C2: LitStr " FROM tmovi"
  loc_B779C5: ConcatStr
  loc_B779C6: FStStrNoPop var_B4
  loc_B779C9: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B779CC: ConcatStr
  loc_B779CD: FStStrNoPop var_138
  loc_B779D0: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B779D3: ConcatStr
  loc_B779D4: FStStrNoPop var_13C
  loc_B779D7: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B779DA: ConcatStr
  loc_B779DB: FStStrNoPop var_140
  loc_B779DE: LitStr " WHERE (tmovi.CodiTicu Like '1" & Chr(37) & "')"
  loc_B779E1: ConcatStr
  loc_B779E2: FStStrNoPop var_144
  loc_B779E5: LitStr " AND tmovi.CodiTicu NOT IN "
  loc_B779E8: ConcatStr
  loc_B779E9: FStStrNoPop var_148
  loc_B779EC: ILdRf var_8C
  loc_B779EF: ConcatStr
  loc_B779F0: FStStrNoPop var_14C
  loc_B779F3: LitStr " GROUP BY CodiCuco"
  loc_B779F6: ConcatStr
  loc_B779F7: FStStrNoPop var_150
  loc_B779FA: LitStr " HAVING Importe != 0;"
  loc_B779FD: ConcatStr
  loc_B779FE: FStStrNoPop var_154
  loc_B77A01: FLdPr Me
  loc_B77A04: MemLdRfVar from_stack_1.global_72
  loc_B77A07: NewIfNullPr clsbase
  loc_B77A0A: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77A0F: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_B77A24: FLdRfVar var_158
  loc_B77A27: FLdPr Me
  loc_B77A2A: MemLdRfVar from_stack_1.global_72
  loc_B77A2D: NewIfNullPr clsbase
  loc_B77A30: from_stack_1 = clsbase.RecordCount
  loc_B77A35: ILdRf var_158
  loc_B77A38: LitI4 0
  loc_B77A3D: NeI4
  loc_B77A3E: BranchF loc_B77A4D
  loc_B77A41: LitStr "+VARIACIÓN DE ACTIVOS DISMINUCIÓN"
  loc_B77A44: LitI2_Byte 2
  loc_B77A46: CUI1I2
  loc_B77A48: Call Proc_284_22_9B898C()
  loc_B77A4D: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, IF(SUM(MoviEjeH-MoviEjeD)>0,SUM(MoviEjeH-MoviEjeD),0) Importe"
  loc_B77A50: LitStr " FROM tmovi"
  loc_B77A53: ConcatStr
  loc_B77A54: FStStrNoPop var_B4
  loc_B77A57: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77A5A: ConcatStr
  loc_B77A5B: FStStrNoPop var_138
  loc_B77A5E: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B77A61: ConcatStr
  loc_B77A62: FStStrNoPop var_13C
  loc_B77A65: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77A68: ConcatStr
  loc_B77A69: FStStrNoPop var_140
  loc_B77A6C: LitStr " WHERE (tmovi.CodiTicu Like '2" & Chr(37) & "')"
  loc_B77A6F: ConcatStr
  loc_B77A70: FStStrNoPop var_144
  loc_B77A73: LitStr " GROUP BY CodiCuco"
  loc_B77A76: ConcatStr
  loc_B77A77: FStStrNoPop var_148
  loc_B77A7A: LitStr " HAVING Importe != 0;"
  loc_B77A7D: ConcatStr
  loc_B77A7E: FStStrNoPop var_14C
  loc_B77A81: FLdPr Me
  loc_B77A84: MemLdRfVar from_stack_1.global_72
  loc_B77A87: NewIfNullPr clsbase
  loc_B77A8A: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77A8F: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B77AA0: FLdRfVar var_158
  loc_B77AA3: FLdPr Me
  loc_B77AA6: MemLdRfVar from_stack_1.global_72
  loc_B77AA9: NewIfNullPr clsbase
  loc_B77AAC: from_stack_1 = clsbase.RecordCount
  loc_B77AB1: ILdRf var_158
  loc_B77AB4: LitI4 0
  loc_B77AB9: NeI4
  loc_B77ABA: BranchF loc_B77AC9
  loc_B77ABD: LitStr "+VARIACIÓN DE PASIVOS INCREMENTO"
  loc_B77AC0: LitI2_Byte 2
  loc_B77AC2: CUI1I2
  loc_B77AC4: Call Proc_284_22_9B898C()
  loc_B77AC9: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, Sum(MoviEjeD) Importe"
  loc_B77ACC: LitStr " FROM tmovi"
  loc_B77ACF: ConcatStr
  loc_B77AD0: FStStrNoPop var_B4
  loc_B77AD3: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77AD6: ConcatStr
  loc_B77AD7: FStStrNoPop var_138
  loc_B77ADA: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B77ADD: ConcatStr
  loc_B77ADE: FStStrNoPop var_13C
  loc_B77AE1: LitStr " AND p.ReejPaco != tmovi.CodiCuco"
  loc_B77AE4: ConcatStr
  loc_B77AE5: FStStrNoPop var_140
  loc_B77AE8: LitStr " AND p.CarePaco != tmovi.CodiCuco"
  loc_B77AEB: ConcatStr
  loc_B77AEC: FStStrNoPop var_144
  loc_B77AEF: LitStr " AND p.CaerPaco != tmovi.CodiCuco"
  loc_B77AF2: ConcatStr
  loc_B77AF3: FStStrNoPop var_148
  loc_B77AF6: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77AF9: ConcatStr
  loc_B77AFA: FStStrNoPop var_14C
  loc_B77AFD: LitStr " WHERE (tmovi.CodiTicu Like '3" & Chr(37) & "')"
  loc_B77B00: ConcatStr
  loc_B77B01: FStStrNoPop var_150
  loc_B77B04: LitStr " GROUP BY CodiCuco"
  loc_B77B07: ConcatStr
  loc_B77B08: FStStrNoPop var_154
  loc_B77B0B: LitStr " HAVING Importe != 0;"
  loc_B77B0E: ConcatStr
  loc_B77B0F: FStStrNoPop var_164
  loc_B77B12: FLdPr Me
  loc_B77B15: MemLdRfVar from_stack_1.global_72
  loc_B77B18: NewIfNullPr clsbase
  loc_B77B1B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77B20: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_B77B37: FLdRfVar var_158
  loc_B77B3A: FLdPr Me
  loc_B77B3D: MemLdRfVar from_stack_1.global_72
  loc_B77B40: NewIfNullPr clsbase
  loc_B77B43: from_stack_1 = clsbase.RecordCount
  loc_B77B48: ILdRf var_158
  loc_B77B4B: LitI4 0
  loc_B77B50: NeI4
  loc_B77B51: BranchF loc_B77B60
  loc_B77B54: LitStr "-PATRIMONIO DISMINUCIÓN"
  loc_B77B57: LitI2_Byte 3
  loc_B77B59: CUI1I2
  loc_B77B5B: Call Proc_284_22_9B898C()
  loc_B77B60: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, IF(SUM(MoviEjeD-MoviEjeH)>0,SUM(MoviEjeD-MoviEjeH),0) Importe"
  loc_B77B63: LitStr " FROM tmovi"
  loc_B77B66: ConcatStr
  loc_B77B67: FStStrNoPop var_B4
  loc_B77B6A: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77B6D: ConcatStr
  loc_B77B6E: FStStrNoPop var_138
  loc_B77B71: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B77B74: ConcatStr
  loc_B77B75: FStStrNoPop var_13C
  loc_B77B78: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77B7B: ConcatStr
  loc_B77B7C: FStStrNoPop var_140
  loc_B77B7F: LitStr " WHERE (tmovi.CodiTicu Like '1" & Chr(37) & "')"
  loc_B77B82: ConcatStr
  loc_B77B83: FStStrNoPop var_144
  loc_B77B86: LitStr " AND tmovi.CodiTicu NOT IN "
  loc_B77B89: ConcatStr
  loc_B77B8A: FStStrNoPop var_148
  loc_B77B8D: ILdRf var_8C
  loc_B77B90: ConcatStr
  loc_B77B91: FStStrNoPop var_14C
  loc_B77B94: LitStr vbNullString
  loc_B77B97: ConcatStr
  loc_B77B98: FStStrNoPop var_150
  loc_B77B9B: LitStr " GROUP BY CodiCuco"
  loc_B77B9E: ConcatStr
  loc_B77B9F: FStStrNoPop var_154
  loc_B77BA2: LitStr " HAVING Importe != 0;"
  loc_B77BA5: ConcatStr
  loc_B77BA6: FStStrNoPop var_164
  loc_B77BA9: FLdPr Me
  loc_B77BAC: MemLdRfVar from_stack_1.global_72
  loc_B77BAF: NewIfNullPr clsbase
  loc_B77BB2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77BB7: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_B77BCE: FLdRfVar var_158
  loc_B77BD1: FLdPr Me
  loc_B77BD4: MemLdRfVar from_stack_1.global_72
  loc_B77BD7: NewIfNullPr clsbase
  loc_B77BDA: from_stack_1 = clsbase.RecordCount
  loc_B77BDF: ILdRf var_158
  loc_B77BE2: LitI4 0
  loc_B77BE7: NeI4
  loc_B77BE8: BranchF loc_B77BF7
  loc_B77BEB: LitStr "-VARIACIÓN DE ACTIVOS - INCREMENTO"
  loc_B77BEE: LitI2_Byte 3
  loc_B77BF0: CUI1I2
  loc_B77BF2: Call Proc_284_22_9B898C()
  loc_B77BF7: LitStr "Municipalidad de Guaymallén"
  loc_B77BFA: LitStr "Municipalidad de Tupungato"
  loc_B77BFD: EqStr
  loc_B77BFF: FLdRfVar var_B4
  loc_B77C02: FLdPr Me
  loc_B77C05: VCallAd Control_ID_cboPeriodo
  loc_B77C08: FStAdFunc var_B0
  loc_B77C0B: FLdPr var_B0
  loc_B77C0E:  = Me.Text
  loc_B77C13: ILdRf var_B4
  loc_B77C16: LitStr "2023"
  loc_B77C19: EqStr
  loc_B77C1B: AndI4
  loc_B77C1C: FFree1Str var_B4
  loc_B77C1F: FFree1Ad var_B0
  loc_B77C22: BranchF loc_B77CA1
  loc_B77C25: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, IF(SUM(MoviEjeD-MoviEjeH)>0,SUM(MoviEjeD-MoviEjeH),0) Importe"
  loc_B77C28: LitStr " FROM tmovi"
  loc_B77C2B: ConcatStr
  loc_B77C2C: FStStrNoPop var_B4
  loc_B77C2F: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77C32: ConcatStr
  loc_B77C33: FStStrNoPop var_138
  loc_B77C36: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77C39: ConcatStr
  loc_B77C3A: FStStrNoPop var_13C
  loc_B77C3D: LitStr " WHERE tmovi.CodiCuco = '513322000000'"
  loc_B77C40: ConcatStr
  loc_B77C41: FStStrNoPop var_140
  loc_B77C44: LitStr " AND CodiTias = 26"
  loc_B77C47: ConcatStr
  loc_B77C48: FStStrNoPop var_144
  loc_B77C4B: LitStr " GROUP BY CodiCuco"
  loc_B77C4E: ConcatStr
  loc_B77C4F: FStStrNoPop var_148
  loc_B77C52: LitStr " HAVING Importe != 0;"
  loc_B77C55: ConcatStr
  loc_B77C56: FStStrNoPop var_14C
  loc_B77C59: FLdPr Me
  loc_B77C5C: MemLdRfVar from_stack_1.global_72
  loc_B77C5F: NewIfNullPr clsbase
  loc_B77C62: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77C67: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B77C78: FLdRfVar var_158
  loc_B77C7B: FLdPr Me
  loc_B77C7E: MemLdRfVar from_stack_1.global_72
  loc_B77C81: NewIfNullPr clsbase
  loc_B77C84: from_stack_1 = clsbase.RecordCount
  loc_B77C89: ILdRf var_158
  loc_B77C8C: LitI4 0
  loc_B77C91: NeI4
  loc_B77C92: BranchF loc_B77CA1
  loc_B77C95: LitStr "-VARIACIÓN DE ACTIVOS - AJUSTE"
  loc_B77C98: LitI2_Byte 3
  loc_B77C9A: CUI1I2
  loc_B77C9C: Call Proc_284_22_9B898C()
  loc_B77CA1: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, IF(SUM(MoviEjeD-MoviEjeH)>0,SUM(MoviEjeD-MoviEjeH),0) Importe"
  loc_B77CA4: LitStr " FROM tmovi"
  loc_B77CA7: ConcatStr
  loc_B77CA8: FStStrNoPop var_B4
  loc_B77CAB: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B77CAE: ConcatStr
  loc_B77CAF: FStStrNoPop var_138
  loc_B77CB2: LitStr " /*AND p.PatrPaco = tmovi.CodiCuco*/"
  loc_B77CB5: ConcatStr
  loc_B77CB6: FStStrNoPop var_13C
  loc_B77CB9: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77CBC: ConcatStr
  loc_B77CBD: FStStrNoPop var_140
  loc_B77CC0: LitStr " WHERE (tmovi.CodiTicu Like '2" & Chr(37) & "')"
  loc_B77CC3: ConcatStr
  loc_B77CC4: FStStrNoPop var_144
  loc_B77CC7: LitStr " GROUP BY CodiCuco"
  loc_B77CCA: ConcatStr
  loc_B77CCB: FStStrNoPop var_148
  loc_B77CCE: LitStr " HAVING Importe != 0;"
  loc_B77CD1: ConcatStr
  loc_B77CD2: FStStrNoPop var_14C
  loc_B77CD5: FLdPr Me
  loc_B77CD8: MemLdRfVar from_stack_1.global_72
  loc_B77CDB: NewIfNullPr clsbase
  loc_B77CDE: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77CE3: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B77CF4: FLdRfVar var_158
  loc_B77CF7: FLdPr Me
  loc_B77CFA: MemLdRfVar from_stack_1.global_72
  loc_B77CFD: NewIfNullPr clsbase
  loc_B77D00: from_stack_1 = clsbase.RecordCount
  loc_B77D05: ILdRf var_158
  loc_B77D08: LitI4 0
  loc_B77D0D: NeI4
  loc_B77D0E: BranchF loc_B77D1D
  loc_B77D11: LitStr "-VARIACIÓN DE PASIVOS - DISMINUCIÓN"
  loc_B77D14: LitI2_Byte 3
  loc_B77D16: CUI1I2
  loc_B77D18: Call Proc_284_22_9B898C()
  loc_B77D1D: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, DetaCuco, tmovi.CodiTicu, Sum(SaldIniD-SaldIniH+MoviEjeD-MoviEjeH) Importe"
  loc_B77D20: LitStr " FROM tmovi"
  loc_B77D23: ConcatStr
  loc_B77D24: FStStrNoPop var_B4
  loc_B77D27: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B77D2A: ConcatStr
  loc_B77D2B: FStStrNoPop var_138
  loc_B77D2E: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B77D31: ConcatStr
  loc_B77D32: FStStrNoPop var_13C
  loc_B77D35: LitStr " WHERE tmovi.CodiTicu IN "
  loc_B77D38: ConcatStr
  loc_B77D39: FStStrNoPop var_140
  loc_B77D3C: ILdRf var_8C
  loc_B77D3F: ConcatStr
  loc_B77D40: FStStrNoPop var_144
  loc_B77D43: LitStr vbNullString
  loc_B77D46: ConcatStr
  loc_B77D47: FStStrNoPop var_148
  loc_B77D4A: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_B77D4D: ConcatStr
  loc_B77D4E: FStStrNoPop var_14C
  loc_B77D51: LitStr " GROUP BY CodiCuco"
  loc_B77D54: ConcatStr
  loc_B77D55: FStStrNoPop var_150
  loc_B77D58: LitStr " HAVING Importe != 0;"
  loc_B77D5B: ConcatStr
  loc_B77D5C: FStStrNoPop var_154
  loc_B77D5F: FLdPr Me
  loc_B77D62: MemLdRfVar from_stack_1.global_72
  loc_B77D65: NewIfNullPr clsbase
  loc_B77D68: Call clsbase.RedefineRS(from_stack_1v)
  loc_B77D6D: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_B77D82: FLdRfVar var_158
  loc_B77D85: FLdPr Me
  loc_B77D88: MemLdRfVar from_stack_1.global_72
  loc_B77D8B: NewIfNullPr clsbase
  loc_B77D8E: from_stack_1 = clsbase.RecordCount
  loc_B77D93: ILdRf var_158
  loc_B77D96: LitI4 0
  loc_B77D9B: NeI4
  loc_B77D9C: BranchF loc_B77DAB
  loc_B77D9F: LitStr "SALDO FINAL DE DISPONIBILIDADES"
  loc_B77DA2: LitI2_Byte 4
  loc_B77DA4: CUI1I2
  loc_B77DA6: Call Proc_284_22_9B898C()
  loc_B77DAB: FLdPr Me
  loc_B77DAE: MemLdStr global_96
  loc_B77DB1: LitI2_Byte 1
  loc_B77DB3: FnUBound
  loc_B77DB5: LitI4 0
  loc_B77DBA: EqI4
  loc_B77DBB: BranchF loc_B77DCE
  loc_B77DBE: LitI4 0
  loc_B77DC3: LitStr "No existen registros para el criterio de búsqueda seleccionado"
  loc_B77DC6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B77DCB: Branch loc_B77F99
  loc_B77DCE: LitI2_Byte 1
  loc_B77DD0: FLdPr Me
  loc_B77DD3: MemLdRfVar from_stack_1.global_112
  loc_B77DD6: FLdPr Me
  loc_B77DD9: MemLdStr global_96
  loc_B77DDC: LitI2_Byte 1
  loc_B77DDE: FnUBound
  loc_B77DE0: CI2I4
  loc_B77DE1: ForI2 var_18C
  loc_B77DE7: LitI2_Byte 1
  loc_B77DE9: FLdPr Me
  loc_B77DEC: MemLdRfVar from_stack_1.global_114
  loc_B77DEF: FLdPr Me
  loc_B77DF2: MemLdI2 global_112
  loc_B77DF5: CI4UI1
  loc_B77DF6: FLdPr Me
  loc_B77DF9: MemLdStr global_96
  loc_B77DFC: Ary1LdPr
  loc_B77DFD: MemLdStr global_4
  loc_B77E00: LitI2_Byte 1
  loc_B77E02: FnUBound
  loc_B77E04: CI2I4
  loc_B77E05: ForI2 var_190
  loc_B77E0B: LitI2_Byte 0
  loc_B77E0D: FLdPr Me
  loc_B77E10: MemLdI2 global_112
  loc_B77E13: CI4UI1
  loc_B77E14: FLdPr Me
  loc_B77E17: MemLdStr global_96
  loc_B77E1A: AryLock
  loc_B77E1D: Ary1LdPr
  loc_B77E1E: MemLdRfVar from_stack_1.global_8
  loc_B77E21: CVarRef
  loc_B77E26: LitI2_Byte &HFF
  loc_B77E28: FLdPr Me
  loc_B77E2B: MemLdI2 global_114
  loc_B77E2E: CI4UI1
  loc_B77E2F: FLdPr Me
  loc_B77E32: MemLdI2 global_112
  loc_B77E35: CI4UI1
  loc_B77E36: FLdPr Me
  loc_B77E39: MemLdStr global_96
  loc_B77E3C: Ary1LdPr
  loc_B77E3D: MemLdStr global_4
  loc_B77E40: Ary1LdPr
  loc_B77E41: MemLdStr global_8
  loc_B77E44: CVarStr var_9C
  loc_B77E47: PopAdLdVar
  loc_B77E48: FLdPr Me
  loc_B77E4B: MemLdRfVar from_stack_1.global_136
  loc_B77E4E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B77E53: AryUnlock
  loc_B77E56: FLdPr Me
  loc_B77E59: MemLdRfVar from_stack_1.global_114
  loc_B77E5C: NextI2 var_190, loc_B77E0B
  loc_B77E61: FLdPr Me
  loc_B77E64: MemLdRfVar from_stack_1.global_112
  loc_B77E67: NextI2 var_18C, loc_B77DE7
  loc_B77E6C: LitI2_Byte 0
  loc_B77E6E: LitVar_Missing var_C4
  loc_B77E71: LitI2_Byte &HFF
  loc_B77E73: LitI4 1
  loc_B77E78: FLdPr Me
  loc_B77E7B: MemLdStr global_96
  loc_B77E7E: Ary1LdPr
  loc_B77E7F: MemLdStr global_8
  loc_B77E82: CVarStr var_9C
  loc_B77E85: PopAdLdVar
  loc_B77E86: FLdPr Me
  loc_B77E89: MemLdRfVar from_stack_1.global_100
  loc_B77E8C: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B77E91: FFree1Var var_C4 = ""
  loc_B77E94: LitI2_Byte 0
  loc_B77E96: LitVar_Missing var_C4
  loc_B77E99: LitI2_Byte &HFF
  loc_B77E9B: LitI4 4
  loc_B77EA0: FLdPr Me
  loc_B77EA3: MemLdStr global_96
  loc_B77EA6: Ary1LdPr
  loc_B77EA7: MemLdStr global_8
  loc_B77EAA: CVarStr var_9C
  loc_B77EAD: PopAdLdVar
  loc_B77EAE: FLdPr Me
  loc_B77EB1: MemLdRfVar from_stack_1.global_104
  loc_B77EB4: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B77EB9: FFree1Var var_C4 = ""
  loc_B77EBC: LitI4 2
  loc_B77EC1: FLdPr Me
  loc_B77EC4: MemLdStr global_104
  loc_B77EC7: CR8Str
  loc_B77EC9: FLdPr Me
  loc_B77ECC: MemLdStr global_100
  loc_B77ECF: CR8Str
  loc_B77ED1: SubR4
  loc_B77ED2: CVarR8
  loc_B77ED6: FLdRfVar var_D4
  loc_B77ED9: ImpAdCallFPR4  = Round(, )
  loc_B77EDE: LitI2_Byte 0
  loc_B77EE0: LitVar_Missing var_E4
  loc_B77EE3: LitI2_Byte &HFF
  loc_B77EE5: FLdVar var_D4
  loc_B77EE9: FLdPr Me
  loc_B77EEC: MemLdRfVar from_stack_1.global_108
  loc_B77EEF: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B77EF4: FFreeVar var_C4 = "": var_D4 = ""
  loc_B77EFD: LitI4 2
  loc_B77F02: LitI4 2
  loc_B77F07: FLdPr Me
  loc_B77F0A: MemLdStr global_96
  loc_B77F0D: Ary1LdPr
  loc_B77F0E: MemLdStr global_8
  loc_B77F11: CR8Str
  loc_B77F13: LitI4 3
  loc_B77F18: FLdPr Me
  loc_B77F1B: MemLdStr global_96
  loc_B77F1E: Ary1LdPr
  loc_B77F1F: MemLdStr global_8
  loc_B77F22: CR8Str
  loc_B77F24: SubR4
  loc_B77F25: CVarR8
  loc_B77F29: FLdRfVar var_D4
  loc_B77F2C: ImpAdCallFPR4  = Round(, )
  loc_B77F31: LitI2_Byte 0
  loc_B77F33: LitVar_Missing var_E4
  loc_B77F36: LitI2_Byte &HFF
  loc_B77F38: FLdVar var_D4
  loc_B77F3C: FLdPr Me
  loc_B77F3F: MemLdRfVar from_stack_1.global_120
  loc_B77F42: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B77F47: FFreeVar var_C4 = "": var_D4 = ""
  loc_B77F50: LitI4 2
  loc_B77F55: FLdPr Me
  loc_B77F58: MemLdStr global_108
  loc_B77F5B: CR8Str
  loc_B77F5D: FLdPr Me
  loc_B77F60: MemLdStr global_120
  loc_B77F63: CR8Str
  loc_B77F65: SubR4
  loc_B77F66: CVarR8
  loc_B77F6A: FLdRfVar var_D4
  loc_B77F6D: ImpAdCallFPR4  = Round(, )
  loc_B77F72: LitI2_Byte 0
  loc_B77F74: LitVar_Missing var_E4
  loc_B77F77: LitI2_Byte &HFF
  loc_B77F79: FLdVar var_D4
  loc_B77F7D: FLdPr Me
  loc_B77F80: MemLdRfVar from_stack_1.global_124
  loc_B77F83: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B77F88: FFreeVar var_C4 = "": var_D4 = ""
  loc_B77F91: LitI2_Byte &HFF
  loc_B77F93: FLdPr Me
  loc_B77F96: MemStI2 bGenerado
  loc_B77F99: LitI4 0
  loc_B77F9E: CI2I4
  loc_B77F9F: FLdPr Me
  loc_B77FA2: Me.MousePointer = from_stack_1
  loc_B77FA7: LitVarStr var_9C, vbNullString
  loc_B77FAC: PopAdLdVar
  loc_B77FAD: FLdPr Me
  loc_B77FB0: VCallAd Control_ID_statusBar
  loc_B77FB3: FStAdFunc var_B0
  loc_B77FB6: FLdPr var_B0
  loc_B77FB9: LateIdSt
  loc_B77FBE: FFree1Ad var_B0
  loc_B77FC1: ExitProcHresult
  loc_B77FC2: LitI4 0
  loc_B77FC7: LitStr "Error "
  loc_B77FCA: FLdRfVar var_158
  loc_B77FCD: ImpAdCallI2 Err 'rtcErrObj
  loc_B77FD2: FStAdFunc var_B0
  loc_B77FD5: FLdPr var_B0
  loc_B77FD8:  = Err.Number
  loc_B77FDD: ILdRf var_158
  loc_B77FE0: CStrI4
  loc_B77FE2: FStStrNoPop var_B4
  loc_B77FE5: ConcatStr
  loc_B77FE6: FStStrNoPop var_138
  loc_B77FE9: LitStr ": "
  loc_B77FEC: ConcatStr
  loc_B77FED: FStStrNoPop var_140
  loc_B77FF0: FLdRfVar var_13C
  loc_B77FF3: ImpAdCallI2 Err 'rtcErrObj
  loc_B77FF8: FStAdFunc var_160
  loc_B77FFB: FLdPr var_160
  loc_B77FFE:  = Err.Description
  loc_B78003: ILdRf var_13C
  loc_B78006: ConcatStr
  loc_B78007: FStStrNoPop var_144
  loc_B7800A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7800F: FFreeStr var_B4 = "": var_138 = "": var_140 = "": var_13C = ""
  loc_B7801C: FFreeAd var_B0 = ""
  loc_B78023: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A90124
  'Data Table: 451124
  loc_A8FCBC: FLdRfVar var_90
  loc_A8FCBF: FLdPr Me
  loc_A8FCC2: VCallAd Control_ID_cboPeriodo
  loc_A8FCC5: FStAdFunc var_8C
  loc_A8FCC8: FLdPr var_8C
  loc_A8FCCB:  = Me.Text
  loc_A8FCD0: FLdZeroAd var_90
  loc_A8FCD3: FStStr var_88
  loc_A8FCD6: FFree1Ad var_8C
  loc_A8FCD9: FLdRfVar var_8C
  loc_A8FCDC: LitI2_Byte 0
  loc_A8FCDE: LitI2_Byte &HFF
  loc_A8FCE0: ImpAdLdI4 MemVar_C3D05C
  loc_A8FCE3: FLdPr Me
  loc_A8FCE6: MemLdRfVar from_stack_1.global_76
  loc_A8FCE9: NewIfNullPr IFileSystem3
  loc_A8FCEC: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A8FCF1: ILdRf var_8C
  loc_A8FCF4: FLdPr Me
  loc_A8FCF7: MemStVarAd
  loc_A8FCFB: FFree1Ad var_8C
  loc_A8FCFE: LitVarStr var_B0, "PeriodoPresenta|ExpID|Titulo|Cuenta Contable|Detalle|Importe"
  loc_A8FD03: LitI4 &HD
  loc_A8FD08: FLdRfVar var_A0
  loc_A8FD0B: ImpAdCallFPR4  = Chr()
  loc_A8FD10: FLdRfVar var_A0
  loc_A8FD13: ConcatVar var_C0
  loc_A8FD17: LitI4 &HA
  loc_A8FD1C: FLdRfVar var_D0
  loc_A8FD1F: ImpAdCallFPR4  = Chr()
  loc_A8FD24: FLdRfVar var_D0
  loc_A8FD27: ConcatVar var_E0
  loc_A8FD2B: PopAdLdVar
  loc_A8FD2C: FLdPr Me
  loc_A8FD2F: MemLdRfVar from_stack_1.global_80
  loc_A8FD32: LdPrVar
  loc_A8FD34: LateMemCall
  loc_A8FD3A: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_A8FD45: LitI2_Byte 1
  loc_A8FD47: FLdPr Me
  loc_A8FD4A: MemLdRfVar from_stack_1.global_112
  loc_A8FD4D: FLdPr Me
  loc_A8FD50: MemLdStr global_96
  loc_A8FD53: LitI2_Byte 1
  loc_A8FD55: FnUBound
  loc_A8FD57: CI2I4
  loc_A8FD58: ForI2 var_F4
  loc_A8FD5E: FLdPr Me
  loc_A8FD61: MemLdI2 global_112
  loc_A8FD64: CI4UI1
  loc_A8FD65: FLdPr Me
  loc_A8FD68: MemLdStr global_96
  loc_A8FD6B: AryLock
  loc_A8FD6E: Ary1LdRf
  loc_A8FD6F: FStR4 var_FC
  loc_A8FD72: LitI2_Byte 1
  loc_A8FD74: FLdPr Me
  loc_A8FD77: MemLdRfVar from_stack_1.global_114
  loc_A8FD7A: FMemLdR4 var_FC(4)
  loc_A8FD7F: LitI2_Byte 1
  loc_A8FD81: FnUBound
  loc_A8FD83: CI2I4
  loc_A8FD84: ForI2 var_100
  loc_A8FD8A: FLdPr Me
  loc_A8FD8D: MemLdI2 global_114
  loc_A8FD90: CI4UI1
  loc_A8FD91: FMemLdR4 var_FC(4)
  loc_A8FD96: AryLock
  loc_A8FD99: Ary1LdRf
  loc_A8FD9A: FStR4 var_108
  loc_A8FD9D: LitI2_Byte 1
  loc_A8FD9F: FLdPr Me
  loc_A8FDA2: MemLdRfVar from_stack_1.global_116
  loc_A8FDA5: FMemLdR4 var_108(4)
  loc_A8FDAA: LitI2_Byte 1
  loc_A8FDAC: FnUBound
  loc_A8FDAE: CI2I4
  loc_A8FDAF: ForI2 var_10C
  loc_A8FDB5: FLdPr Me
  loc_A8FDB8: MemLdI2 global_116
  loc_A8FDBB: CI4UI1
  loc_A8FDBC: FMemLdR4 var_108(4)
  loc_A8FDC1: AryLock
  loc_A8FDC4: Ary1LdRf
  loc_A8FDC5: FStR4 var_114
  loc_A8FDC8: ILdRf var_88
  loc_A8FDCB: LitStr "|"
  loc_A8FDCE: ConcatStr
  loc_A8FDCF: FStStrNoPop var_90
  loc_A8FDD2: LitStr "eee-2022-060204"
  loc_A8FDD5: ConcatStr
  loc_A8FDD6: FStStrNoPop var_118
  loc_A8FDD9: LitStr "|"
  loc_A8FDDC: ConcatStr
  loc_A8FDDD: CVarStr var_A0
  loc_A8FDE0: PopAdLdVar
  loc_A8FDE1: FLdPr Me
  loc_A8FDE4: MemLdRfVar from_stack_1.global_80
  loc_A8FDE7: LdPrVar
  loc_A8FDE9: LateMemCall
  loc_A8FDEF: FFreeStr var_90 = ""
  loc_A8FDF6: FFree1Var var_A0 = ""
  loc_A8FDF9: FLdPr Me
  loc_A8FDFC: MemLdI2 global_114
  loc_A8FDFF: CI4UI1
  loc_A8FE00: FLdPr Me
  loc_A8FE03: MemLdI2 global_112
  loc_A8FE06: CI4UI1
  loc_A8FE07: FLdPr Me
  loc_A8FE0A: MemLdStr global_96
  loc_A8FE0D: Ary1LdPr
  loc_A8FE0E: MemLdStr global_4
  loc_A8FE11: Ary1LdPr
  loc_A8FE12: MemLdStr global_0
  loc_A8FE15: LitStr "|"
  loc_A8FE18: ConcatStr
  loc_A8FE19: CVarStr var_A0
  loc_A8FE1C: PopAdLdVar
  loc_A8FE1D: FLdPr Me
  loc_A8FE20: MemLdRfVar from_stack_1.global_80
  loc_A8FE23: LdPrVar
  loc_A8FE25: LateMemCall
  loc_A8FE2B: FFree1Var var_A0 = ""
  loc_A8FE2E: FMemLdR4 var_114(0)
  loc_A8FE33: LitStr "|"
  loc_A8FE36: ConcatStr
  loc_A8FE37: FStStrNoPop var_90
  loc_A8FE3A: FMemLdR4 var_114(4)
  loc_A8FE3F: ConcatStr
  loc_A8FE40: FStStrNoPop var_118
  loc_A8FE43: LitStr "|"
  loc_A8FE46: ConcatStr
  loc_A8FE47: CVarStr var_A0
  loc_A8FE4A: PopAdLdVar
  loc_A8FE4B: FLdPr Me
  loc_A8FE4E: MemLdRfVar from_stack_1.global_80
  loc_A8FE51: LdPrVar
  loc_A8FE53: LateMemCall
  loc_A8FE59: FFreeStr var_90 = ""
  loc_A8FE60: FFree1Var var_A0 = ""
  loc_A8FE63: FLdPr Me
  loc_A8FE66: MemLdI2 global_114
  loc_A8FE69: CI4UI1
  loc_A8FE6A: FLdPr Me
  loc_A8FE6D: MemLdI2 global_112
  loc_A8FE70: CI4UI1
  loc_A8FE71: FLdPr Me
  loc_A8FE74: MemLdStr global_96
  loc_A8FE77: Ary1LdPr
  loc_A8FE78: MemLdStr global_4
  loc_A8FE7B: Ary1LdPr
  loc_A8FE7C: MemLdStr global_0
  loc_A8FE7F: LitStr "SALDOS INICIALES111"
  loc_A8FE82: EqStr
  loc_A8FE84: BranchF loc_A8FEC8
  loc_A8FE87: LitI4 0
  loc_A8FE8C: LitI4 -1
  loc_A8FE91: LitI4 1
  loc_A8FE96: LitStr vbNullString
  loc_A8FE99: LitStr "."
  loc_A8FE9C: FMemLdR4 var_114(8)
  loc_A8FEA1: ImpAdCallI2 Replace(, , , , , )
  loc_A8FEA6: FStStrNoPop var_90
  loc_A8FEA9: LitStr "|0|0|0"
  loc_A8FEAC: ConcatStr
  loc_A8FEAD: CVarStr var_A0
  loc_A8FEB0: PopAdLdVar
  loc_A8FEB1: FLdPr Me
  loc_A8FEB4: MemLdRfVar from_stack_1.global_80
  loc_A8FEB7: LdPrVar
  loc_A8FEB9: LateMemCall
  loc_A8FEBF: FFree1Str var_90
  loc_A8FEC2: FFree1Var var_A0 = ""
  loc_A8FEC5: Branch loc_A90059
  loc_A8FEC8: FLdPr Me
  loc_A8FECB: MemLdI2 global_114
  loc_A8FECE: CI4UI1
  loc_A8FECF: FLdPr Me
  loc_A8FED2: MemLdI2 global_112
  loc_A8FED5: CI4UI1
  loc_A8FED6: FLdPr Me
  loc_A8FED9: MemLdStr global_96
  loc_A8FEDC: Ary1LdPr
  loc_A8FEDD: MemLdStr global_4
  loc_A8FEE0: Ary1LdPr
  loc_A8FEE1: MemLdStr global_0
  loc_A8FEE4: LitStr "INGRESOS PRESUPUESTARIOS111"
  loc_A8FEE7: EqStr
  loc_A8FEE9: FLdPr Me
  loc_A8FEEC: MemLdI2 global_114
  loc_A8FEEF: CI4UI1
  loc_A8FEF0: FLdPr Me
  loc_A8FEF3: MemLdI2 global_112
  loc_A8FEF6: CI4UI1
  loc_A8FEF7: FLdPr Me
  loc_A8FEFA: MemLdStr global_96
  loc_A8FEFD: Ary1LdPr
  loc_A8FEFE: MemLdStr global_4
  loc_A8FF01: Ary1LdPr
  loc_A8FF02: MemLdStr global_0
  loc_A8FF05: LitStr "INGRESOS EXTRAPRESUPUESTARIOS"
  loc_A8FF08: EqStr
  loc_A8FF0A: OrI4
  loc_A8FF0B: BranchF loc_A8FF5A
  loc_A8FF0E: LitStr "0|"
  loc_A8FF11: LitI4 0
  loc_A8FF16: LitI4 -1
  loc_A8FF1B: LitI4 1
  loc_A8FF20: LitStr vbNullString
  loc_A8FF23: LitStr "."
  loc_A8FF26: FMemLdR4 var_114(8)
  loc_A8FF2B: ImpAdCallI2 Replace(, , , , , )
  loc_A8FF30: FStStrNoPop var_90
  loc_A8FF33: ConcatStr
  loc_A8FF34: FStStrNoPop var_118
  loc_A8FF37: LitStr "|0|0"
  loc_A8FF3A: ConcatStr
  loc_A8FF3B: CVarStr var_A0
  loc_A8FF3E: PopAdLdVar
  loc_A8FF3F: FLdPr Me
  loc_A8FF42: MemLdRfVar from_stack_1.global_80
  loc_A8FF45: LdPrVar
  loc_A8FF47: LateMemCall
  loc_A8FF4D: FFreeStr var_90 = ""
  loc_A8FF54: FFree1Var var_A0 = ""
  loc_A8FF57: Branch loc_A90059
  loc_A8FF5A: FLdPr Me
  loc_A8FF5D: MemLdI2 global_114
  loc_A8FF60: CI4UI1
  loc_A8FF61: FLdPr Me
  loc_A8FF64: MemLdI2 global_112
  loc_A8FF67: CI4UI1
  loc_A8FF68: FLdPr Me
  loc_A8FF6B: MemLdStr global_96
  loc_A8FF6E: Ary1LdPr
  loc_A8FF6F: MemLdStr global_4
  loc_A8FF72: Ary1LdPr
  loc_A8FF73: MemLdStr global_0
  loc_A8FF76: LitStr "EROGACIONES PRESUPUESTARIAS111"
  loc_A8FF79: EqStr
  loc_A8FF7B: FLdPr Me
  loc_A8FF7E: MemLdI2 global_114
  loc_A8FF81: CI4UI1
  loc_A8FF82: FLdPr Me
  loc_A8FF85: MemLdI2 global_112
  loc_A8FF88: CI4UI1
  loc_A8FF89: FLdPr Me
  loc_A8FF8C: MemLdStr global_96
  loc_A8FF8F: Ary1LdPr
  loc_A8FF90: MemLdStr global_4
  loc_A8FF93: Ary1LdPr
  loc_A8FF94: MemLdStr global_0
  loc_A8FF97: LitStr "EROGACIONES EXTRAPRESUPUESTARIAS"
  loc_A8FF9A: EqStr
  loc_A8FF9C: OrI4
  loc_A8FF9D: BranchF loc_A8FFEC
  loc_A8FFA0: LitStr "0|0|"
  loc_A8FFA3: LitI4 0
  loc_A8FFA8: LitI4 -1
  loc_A8FFAD: LitI4 1
  loc_A8FFB2: LitStr vbNullString
  loc_A8FFB5: LitStr "."
  loc_A8FFB8: FMemLdR4 var_114(8)
  loc_A8FFBD: ImpAdCallI2 Replace(, , , , , )
  loc_A8FFC2: FStStrNoPop var_90
  loc_A8FFC5: ConcatStr
  loc_A8FFC6: FStStrNoPop var_118
  loc_A8FFC9: LitStr "|0"
  loc_A8FFCC: ConcatStr
  loc_A8FFCD: CVarStr var_A0
  loc_A8FFD0: PopAdLdVar
  loc_A8FFD1: FLdPr Me
  loc_A8FFD4: MemLdRfVar from_stack_1.global_80
  loc_A8FFD7: LdPrVar
  loc_A8FFD9: LateMemCall
  loc_A8FFDF: FFreeStr var_90 = ""
  loc_A8FFE6: FFree1Var var_A0 = ""
  loc_A8FFE9: Branch loc_A90059
  loc_A8FFEC: FLdPr Me
  loc_A8FFEF: MemLdI2 global_114
  loc_A8FFF2: CI4UI1
  loc_A8FFF3: FLdPr Me
  loc_A8FFF6: MemLdI2 global_112
  loc_A8FFF9: CI4UI1
  loc_A8FFFA: FLdPr Me
  loc_A8FFFD: MemLdStr global_96
  loc_A90000: Ary1LdPr
  loc_A90001: MemLdStr global_4
  loc_A90004: Ary1LdPr
  loc_A90005: MemLdStr global_0
  loc_A90008: LitStr "SALDOS FINALES111"
  loc_A9000B: EqStr
  loc_A9000D: BranchF loc_A90059
  loc_A90010: LitStr "0|0|0|"
  loc_A90013: LitI4 0
  loc_A90018: LitI4 -1
  loc_A9001D: LitI4 1
  loc_A90022: LitStr vbNullString
  loc_A90025: LitStr "."
  loc_A90028: FMemLdR4 var_114(8)
  loc_A9002D: ImpAdCallI2 Replace(, , , , , )
  loc_A90032: FStStrNoPop var_90
  loc_A90035: ConcatStr
  loc_A90036: FStStrNoPop var_118
  loc_A90039: LitStr vbNullString
  loc_A9003C: ConcatStr
  loc_A9003D: CVarStr var_A0
  loc_A90040: PopAdLdVar
  loc_A90041: FLdPr Me
  loc_A90044: MemLdRfVar from_stack_1.global_80
  loc_A90047: LdPrVar
  loc_A90049: LateMemCall
  loc_A9004F: FFreeStr var_90 = ""
  loc_A90056: FFree1Var var_A0 = ""
  loc_A90059: LitI4 0
  loc_A9005E: LitI4 -1
  loc_A90063: LitI4 1
  loc_A90068: LitStr vbNullString
  loc_A9006B: LitStr "."
  loc_A9006E: FMemLdR4 var_114(8)
  loc_A90073: ImpAdCallI2 Replace(, , , , , )
  loc_A90078: FStStrNoPop var_90
  loc_A9007B: LitStr vbNullString
  loc_A9007E: ConcatStr
  loc_A9007F: CVarStr var_A0
  loc_A90082: PopAdLdVar
  loc_A90083: FLdPr Me
  loc_A90086: MemLdRfVar from_stack_1.global_80
  loc_A90089: LdPrVar
  loc_A9008B: LateMemCall
  loc_A90091: FFree1Str var_90
  loc_A90094: FFree1Var var_A0 = ""
  loc_A90097: LitI4 &HD
  loc_A9009C: FLdRfVar var_A0
  loc_A9009F: ImpAdCallFPR4  = Chr()
  loc_A900A4: FLdRfVar var_A0
  loc_A900A7: LitI4 &HA
  loc_A900AC: FLdRfVar var_C0
  loc_A900AF: ImpAdCallFPR4  = Chr()
  loc_A900B4: FLdRfVar var_C0
  loc_A900B7: ConcatVar var_D0
  loc_A900BB: PopAdLdVar
  loc_A900BC: FLdPr Me
  loc_A900BF: MemLdRfVar from_stack_1.global_80
  loc_A900C2: LdPrVar
  loc_A900C4: LateMemCall
  loc_A900CA: FFreeVar var_A0 = "": var_C0 = ""
  loc_A900D3: LitI4 0
  loc_A900D8: FStR4 var_114
  loc_A900DB: AryUnlock
  loc_A900DE: FLdPr Me
  loc_A900E1: MemLdRfVar from_stack_1.global_116
  loc_A900E4: NextI2 var_10C, loc_A8FDB5
  loc_A900E9: LitI4 0
  loc_A900EE: FStR4 var_108
  loc_A900F1: AryUnlock
  loc_A900F4: FLdPr Me
  loc_A900F7: MemLdRfVar from_stack_1.global_114
  loc_A900FA: NextI2 var_100, loc_A8FD8A
  loc_A900FF: LitI4 0
  loc_A90104: FStR4 var_FC
  loc_A90107: AryUnlock
  loc_A9010A: FLdPr Me
  loc_A9010D: MemLdRfVar from_stack_1.global_112
  loc_A90110: NextI2 var_F4, loc_A8FD5E
  loc_A90115: FLdPr Me
  loc_A90118: MemLdRfVar from_stack_1.global_80
  loc_A9011B: LdPrVar
  loc_A9011D: LateMemCall
  loc_A90123: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A8954C
  'Data Table: 451124
  loc_A890FC: FLdRfVar var_88
  loc_A890FF: LitI2_Byte 0
  loc_A89101: LitI2_Byte &HFF
  loc_A89103: ImpAdLdI4 MemVar_C3D83C
  loc_A89106: FLdPr Me
  loc_A89109: MemLdRfVar from_stack_1.global_76
  loc_A8910C: NewIfNullPr IFileSystem3
  loc_A8910F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A89114: ILdRf var_88
  loc_A89117: FLdPr Me
  loc_A8911A: MemStVarAd
  loc_A8911E: FFree1Ad var_88
  loc_A89121: Call Proc_284_26_A45600()
  loc_A89126: LitI2_Byte 1
  loc_A89128: FLdPr Me
  loc_A8912B: MemLdRfVar from_stack_1.global_112
  loc_A8912E: FLdPr Me
  loc_A89131: MemLdStr global_96
  loc_A89134: LitI2_Byte 1
  loc_A89136: FnUBound
  loc_A89138: CI2I4
  loc_A89139: ForI2 var_8C
  loc_A8913F: FLdPr Me
  loc_A89142: MemLdI2 global_112
  loc_A89145: CI4UI1
  loc_A89146: FLdPr Me
  loc_A89149: MemLdStr global_96
  loc_A8914C: AryLock
  loc_A8914F: Ary1LdRf
  loc_A89150: FStR4 var_94
  loc_A89153: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_A89158: PopAdLdVar
  loc_A89159: FLdPr Me
  loc_A8915C: MemLdRfVar from_stack_1.htmFile
  loc_A8915F: LdPrVar
  loc_A89161: LateMemCall
  loc_A89167: LitStr "    <th align=""left""><strong>"
  loc_A8916A: FMemLdR4 var_94(0)
  loc_A8916F: ConcatStr
  loc_A89170: FStStrNoPop var_B8
  loc_A89173: LitStr "</strong></th>"
  loc_A89176: ConcatStr
  loc_A89177: CVarStr var_C8
  loc_A8917A: PopAdLdVar
  loc_A8917B: FLdPr Me
  loc_A8917E: MemLdRfVar from_stack_1.htmFile
  loc_A89181: LdPrVar
  loc_A89183: LateMemCall
  loc_A89189: FFree1Str var_B8
  loc_A8918C: FFree1Var var_C8 = ""
  loc_A8918F: LitI4 0
  loc_A89194: LitStr "SubTotales"
  loc_A89197: LitI2_Byte &HFF
  loc_A89199: LitStr "right"
  loc_A8919C: LitStr vbNullString
  loc_A8919F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A891A4: CVarStr var_C8
  loc_A891A7: PopAdLdVar
  loc_A891A8: FLdPr Me
  loc_A891AB: MemLdRfVar from_stack_1.htmFile
  loc_A891AE: LdPrVar
  loc_A891B0: LateMemCall
  loc_A891B6: FFree1Var var_C8 = ""
  loc_A891B9: LitI4 0
  loc_A891BE: LitStr "SubTotales"
  loc_A891C1: LitI2_Byte &HFF
  loc_A891C3: LitStr "right"
  loc_A891C6: FMemLdR4 var_94(8)
  loc_A891CB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A891D0: CVarStr var_C8
  loc_A891D3: PopAdLdVar
  loc_A891D4: FLdPr Me
  loc_A891D7: MemLdRfVar from_stack_1.htmFile
  loc_A891DA: LdPrVar
  loc_A891DC: LateMemCall
  loc_A891E2: FFree1Var var_C8 = ""
  loc_A891E5: LitVarStr var_A4, "     </tr>"
  loc_A891EA: PopAdLdVar
  loc_A891EB: FLdPr Me
  loc_A891EE: MemLdRfVar from_stack_1.htmFile
  loc_A891F1: LdPrVar
  loc_A891F3: LateMemCall
  loc_A891F9: LitI2_Byte 1
  loc_A891FB: FLdPr Me
  loc_A891FE: MemLdRfVar from_stack_1.global_114
  loc_A89201: FMemLdR4 var_94(4)
  loc_A89206: LitI2_Byte 1
  loc_A89208: FnUBound
  loc_A8920A: CI2I4
  loc_A8920B: ForI2 var_CC
  loc_A89211: FLdPr Me
  loc_A89214: MemLdI2 global_114
  loc_A89217: CI4UI1
  loc_A89218: FMemLdR4 var_94(4)
  loc_A8921D: AryLock
  loc_A89220: Ary1LdRf
  loc_A89221: FStR4 var_D4
  loc_A89224: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_A89229: PopAdLdVar
  loc_A8922A: FLdPr Me
  loc_A8922D: MemLdRfVar from_stack_1.htmFile
  loc_A89230: LdPrVar
  loc_A89232: LateMemCall
  loc_A89238: LitStr "    <th align=""left""><strong>--"
  loc_A8923B: FMemLdR4 var_D4(0)
  loc_A89240: ConcatStr
  loc_A89241: FStStrNoPop var_B8
  loc_A89244: LitStr "</strong></th>"
  loc_A89247: ConcatStr
  loc_A89248: CVarStr var_C8
  loc_A8924B: PopAdLdVar
  loc_A8924C: FLdPr Me
  loc_A8924F: MemLdRfVar from_stack_1.htmFile
  loc_A89252: LdPrVar
  loc_A89254: LateMemCall
  loc_A8925A: FFree1Str var_B8
  loc_A8925D: FFree1Var var_C8 = ""
  loc_A89260: LitI4 0
  loc_A89265: LitStr "SubTotales"
  loc_A89268: LitI2_Byte &HFF
  loc_A8926A: LitStr "right"
  loc_A8926D: FMemLdR4 var_D4(8)
  loc_A89272: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89277: CVarStr var_C8
  loc_A8927A: PopAdLdVar
  loc_A8927B: FLdPr Me
  loc_A8927E: MemLdRfVar from_stack_1.htmFile
  loc_A89281: LdPrVar
  loc_A89283: LateMemCall
  loc_A89289: FFree1Var var_C8 = ""
  loc_A8928C: LitI4 0
  loc_A89291: LitStr "SubTotales"
  loc_A89294: LitI2_Byte &HFF
  loc_A89296: LitStr "right"
  loc_A89299: LitStr vbNullString
  loc_A8929C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A892A1: CVarStr var_C8
  loc_A892A4: PopAdLdVar
  loc_A892A5: FLdPr Me
  loc_A892A8: MemLdRfVar from_stack_1.htmFile
  loc_A892AB: LdPrVar
  loc_A892AD: LateMemCall
  loc_A892B3: FFree1Var var_C8 = ""
  loc_A892B6: LitVarStr var_A4, "     </tr>"
  loc_A892BB: PopAdLdVar
  loc_A892BC: FLdPr Me
  loc_A892BF: MemLdRfVar from_stack_1.htmFile
  loc_A892C2: LdPrVar
  loc_A892C4: LateMemCall
  loc_A892CA: LitI2_Byte 1
  loc_A892CC: FLdPr Me
  loc_A892CF: MemLdRfVar from_stack_1.global_116
  loc_A892D2: FMemLdR4 var_D4(4)
  loc_A892D7: LitI2_Byte 1
  loc_A892D9: FnUBound
  loc_A892DB: CI2I4
  loc_A892DC: ForI2 var_D8
  loc_A892E2: FLdPr Me
  loc_A892E5: MemLdI2 global_116
  loc_A892E8: CI4UI1
  loc_A892E9: FMemLdR4 var_D4(4)
  loc_A892EE: AryLock
  loc_A892F1: Ary1LdRf
  loc_A892F2: FStR4 var_E0
  loc_A892F5: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A892FA: PopAdLdVar
  loc_A892FB: FLdPr Me
  loc_A892FE: MemLdRfVar from_stack_1.htmFile
  loc_A89301: LdPrVar
  loc_A89303: LateMemCall
  loc_A89309: LitI4 0
  loc_A8930E: LitI4 0
  loc_A89313: LitI2_Byte 0
  loc_A89315: LitStr "left"
  loc_A89318: FMemLdR4 var_E0(0)
  loc_A8931D: LitStr " - "
  loc_A89320: ConcatStr
  loc_A89321: FStStrNoPop var_B8
  loc_A89324: FMemLdR4 var_E0(4)
  loc_A89329: ConcatStr
  loc_A8932A: FStStrNoPop var_E4
  loc_A8932D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89332: CVarStr var_C8
  loc_A89335: PopAdLdVar
  loc_A89336: FLdPr Me
  loc_A89339: MemLdRfVar from_stack_1.htmFile
  loc_A8933C: LdPrVar
  loc_A8933E: LateMemCall
  loc_A89344: FFreeStr var_B8 = ""
  loc_A8934B: FFree1Var var_C8 = ""
  loc_A8934E: LitI4 0
  loc_A89353: LitI4 0
  loc_A89358: LitI2_Byte &HFF
  loc_A8935A: LitStr "right"
  loc_A8935D: FMemLdR4 var_E0(8)
  loc_A89362: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89367: CVarStr var_C8
  loc_A8936A: PopAdLdVar
  loc_A8936B: FLdPr Me
  loc_A8936E: MemLdRfVar from_stack_1.htmFile
  loc_A89371: LdPrVar
  loc_A89373: LateMemCall
  loc_A89379: FFree1Var var_C8 = ""
  loc_A8937C: LitI4 0
  loc_A89381: LitI4 0
  loc_A89386: LitI2_Byte 0
  loc_A89388: LitStr "right"
  loc_A8938B: LitStr vbNullString
  loc_A8938E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89393: CVarStr var_C8
  loc_A89396: PopAdLdVar
  loc_A89397: FLdPr Me
  loc_A8939A: MemLdRfVar from_stack_1.htmFile
  loc_A8939D: LdPrVar
  loc_A8939F: LateMemCall
  loc_A893A5: FFree1Var var_C8 = ""
  loc_A893A8: LitVarStr var_A4, "     </tr>"
  loc_A893AD: PopAdLdVar
  loc_A893AE: FLdPr Me
  loc_A893B1: MemLdRfVar from_stack_1.htmFile
  loc_A893B4: LdPrVar
  loc_A893B6: LateMemCall
  loc_A893BC: LitI4 0
  loc_A893C1: FStR4 var_E0
  loc_A893C4: AryUnlock
  loc_A893C7: FLdPr Me
  loc_A893CA: MemLdRfVar from_stack_1.global_116
  loc_A893CD: NextI2 var_D8, loc_A892E2
  loc_A893D2: LitI4 0
  loc_A893D7: FStR4 var_D4
  loc_A893DA: AryUnlock
  loc_A893DD: FLdPr Me
  loc_A893E0: MemLdRfVar from_stack_1.global_114
  loc_A893E3: NextI2 var_CC, loc_A89211
  loc_A893E8: LitI4 0
  loc_A893ED: FStR4 var_94
  loc_A893F0: AryUnlock
  loc_A893F3: FLdPr Me
  loc_A893F6: MemLdRfVar from_stack_1.global_112
  loc_A893F9: NextI2 var_8C, loc_A8913F
  loc_A893FE: LitVarStr var_A4, "  <tr align=""left"" class=""Encabezado"">"
  loc_A89403: PopAdLdVar
  loc_A89404: FLdPr Me
  loc_A89407: MemLdRfVar from_stack_1.htmFile
  loc_A8940A: LdPrVar
  loc_A8940C: LateMemCall
  loc_A89412: LitVarStr var_A4, "    <th>AUMENTOS O DISMINUCIONES DE LOS FONDOS</th>"
  loc_A89417: PopAdLdVar
  loc_A89418: FLdPr Me
  loc_A8941B: MemLdRfVar from_stack_1.htmFile
  loc_A8941E: LdPrVar
  loc_A89420: LateMemCall
  loc_A89426: LitI4 0
  loc_A8942B: LitStr "SubTotales"
  loc_A8942E: LitI2_Byte &HFF
  loc_A89430: LitStr "right"
  loc_A89433: LitStr vbNullString
  loc_A89436: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A8943B: CVarStr var_C8
  loc_A8943E: PopAdLdVar
  loc_A8943F: FLdPr Me
  loc_A89442: MemLdRfVar from_stack_1.htmFile
  loc_A89445: LdPrVar
  loc_A89447: LateMemCall
  loc_A8944D: FFree1Var var_C8 = ""
  loc_A89450: LitI4 0
  loc_A89455: LitStr "SubTotales"
  loc_A89458: LitI2_Byte &HFF
  loc_A8945A: LitStr "right"
  loc_A8945D: FLdPr Me
  loc_A89460: MemLdStr global_120
  loc_A89463: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89468: CVarStr var_C8
  loc_A8946B: PopAdLdVar
  loc_A8946C: FLdPr Me
  loc_A8946F: MemLdRfVar from_stack_1.htmFile
  loc_A89472: LdPrVar
  loc_A89474: LateMemCall
  loc_A8947A: FFree1Var var_C8 = ""
  loc_A8947D: LitVarStr var_A4, "     </tr>"
  loc_A89482: PopAdLdVar
  loc_A89483: FLdPr Me
  loc_A89486: MemLdRfVar from_stack_1.htmFile
  loc_A89489: LdPrVar
  loc_A8948B: LateMemCall
  loc_A89491: FLdPr Me
  loc_A89494: MemLdStr global_124
  loc_A89497: CR8Str
  loc_A89499: LitI2_Byte 0
  loc_A8949B: CR8I2
  loc_A8949C: NeR8
  loc_A8949D: BranchF loc_A89533
  loc_A894A0: LitVarStr var_A4, "  <tr align=""left"" class=""Encabezado"">"
  loc_A894A5: PopAdLdVar
  loc_A894A6: FLdPr Me
  loc_A894A9: MemLdRfVar from_stack_1.htmFile
  loc_A894AC: LdPrVar
  loc_A894AE: LateMemCall
  loc_A894B4: LitVarStr var_A4, "    <th>DIFERENCIA SEGÚN SEGUN ANEXO</th>"
  loc_A894B9: PopAdLdVar
  loc_A894BA: FLdPr Me
  loc_A894BD: MemLdRfVar from_stack_1.htmFile
  loc_A894C0: LdPrVar
  loc_A894C2: LateMemCall
  loc_A894C8: LitI4 0
  loc_A894CD: LitStr "SubTotales"
  loc_A894D0: LitI2_Byte &HFF
  loc_A894D2: LitStr "right"
  loc_A894D5: LitStr vbNullString
  loc_A894D8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A894DD: CVarStr var_C8
  loc_A894E0: PopAdLdVar
  loc_A894E1: FLdPr Me
  loc_A894E4: MemLdRfVar from_stack_1.htmFile
  loc_A894E7: LdPrVar
  loc_A894E9: LateMemCall
  loc_A894EF: FFree1Var var_C8 = ""
  loc_A894F2: LitI4 0
  loc_A894F7: LitStr "SubTotales"
  loc_A894FA: LitI2_Byte &HFF
  loc_A894FC: LitStr "right"
  loc_A894FF: FLdPr Me
  loc_A89502: MemLdStr global_124
  loc_A89505: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A8950A: CVarStr var_C8
  loc_A8950D: PopAdLdVar
  loc_A8950E: FLdPr Me
  loc_A89511: MemLdRfVar from_stack_1.htmFile
  loc_A89514: LdPrVar
  loc_A89516: LateMemCall
  loc_A8951C: FFree1Var var_C8 = ""
  loc_A8951F: LitVarStr var_A4, "     </tr>"
  loc_A89524: PopAdLdVar
  loc_A89525: FLdPr Me
  loc_A89528: MemLdRfVar from_stack_1.htmFile
  loc_A8952B: LdPrVar
  loc_A8952D: LateMemCall
  loc_A89533: Call Proc_284_27_A06400()
  loc_A89538: FLdPr Me
  loc_A8953B: MemLdRfVar from_stack_1.htmFile
  loc_A8953E: LdPrVar
  loc_A89540: LateMemCall
  loc_A89546: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A8954B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94A35C
  'Data Table: 451124
  loc_94A344: LitI2_Byte 0
  loc_94A346: FLdPr Me
  loc_94A349: MemStI2 bLogos
  loc_94A34C: Call GeneraHTML()
  loc_94A351: LitI2_Byte &HFF
  loc_94A353: FLdPr Me
  loc_94A356: MemStI2 bLogos
  loc_94A359: ExitProcHresult
End Sub

Private Function Proc_284_22_9B898C(arg_10) '9B898C
  'Data Table: 451124
  loc_9B88D0: ILdRf arg_10
  loc_9B88D3: FStStrCopy var_88
  loc_9B88D6: FLdPr Me
  loc_9B88D9: MemLdRfVar from_stack_1.global_72
  loc_9B88DC: NewIfNullAd
  loc_9B88DF: FStAd var_8C 
  loc_9B88E3: FLdPr var_8C
  loc_9B88E6: Call clsbase.MoveFirst()
  loc_9B88EB: FLdUI1
  loc_9B88EF: CI2UI1
  loc_9B88F1: FLdPr Me
  loc_9B88F4: MemStI2 global_112
  loc_9B88F7: FLdPr Me
  loc_9B88FA: MemLdStr global_96
  loc_9B88FD: LitI2_Byte 1
  loc_9B88FF: FnUBound
  loc_9B8901: FLdPr Me
  loc_9B8904: MemLdI2 global_112
  loc_9B8907: CI4UI1
  loc_9B8908: LtI4
  loc_9B8909: BranchF loc_9B8962
  loc_9B890C: FLdPr Me
  loc_9B890F: MemLdI2 global_112
  loc_9B8912: FStI2 var_8E
  loc_9B8915: FLdI2 var_8E
  loc_9B8918: LitI2_Byte 1
  loc_9B891A: EqI2
  loc_9B891B: BranchF loc_9B8929
  loc_9B891E: LitStr "SALDO INICIAL DE DISPONIBILIDADES"
  loc_9B8921: Call Proc_284_23_994D8C()
  loc_9B8926: Branch loc_9B8962
  loc_9B8929: FLdI2 var_8E
  loc_9B892C: LitI2_Byte 2
  loc_9B892E: EqI2
  loc_9B892F: BranchF loc_9B893D
  loc_9B8932: LitStr "ORIGEN DE LOS FONDOS"
  loc_9B8935: Call Proc_284_23_994D8C()
  loc_9B893A: Branch loc_9B8962
  loc_9B893D: FLdI2 var_8E
  loc_9B8940: LitI2_Byte 3
  loc_9B8942: EqI2
  loc_9B8943: BranchF loc_9B8951
  loc_9B8946: LitStr "APLICACIONES DE FONDOS"
  loc_9B8949: Call Proc_284_23_994D8C()
  loc_9B894E: Branch loc_9B8962
  loc_9B8951: FLdI2 var_8E
  loc_9B8954: LitI2_Byte 4
  loc_9B8956: EqI2
  loc_9B8957: BranchF loc_9B8962
  loc_9B895A: LitStr "SALDO FINAL DE DISPONIBILIDADES"
  loc_9B895D: Call Proc_284_23_994D8C()
  loc_9B8962: ILdRf var_88
  loc_9B8965: Call Proc_284_24_9A8A7C()
  loc_9B896A: FLdRfVar var_90
  loc_9B896D: FLdPr var_8C
  loc_9B8970: from_stack_1 = clsbase.EOF
  loc_9B8975: FLdI2 var_90
  loc_9B8978: NotI4
  loc_9B8979: BranchF loc_9B8984
  loc_9B897C: Call Proc_284_25_A266BC()
  loc_9B8981: Branch loc_9B896A
  loc_9B8984: LitNothing
  loc_9B8986: FStAd var_8C 
  loc_9B898A: ExitProcHresult
End Function

Private Function Proc_284_23_994D8C(arg_C) '994D8C
  'Data Table: 451124
  loc_994D34: ILdRf arg_C
  loc_994D37: FStStrCopy var_88
  loc_994D3A: LitI2_Byte 0
  loc_994D3C: FLdPr Me
  loc_994D3F: MemStI2 global_114
  loc_994D42: LitI4 0
  loc_994D47: FLdPr Me
  loc_994D4A: MemLdI2 global_112
  loc_994D4D: CI4UI1
  loc_994D4E: FLdPr Me
  loc_994D51: MemLdRfVar from_stack_1.global_96
  loc_994D54: RedimPreserve
  loc_994D5E: LitI2_Byte 0
  loc_994D60: LitVar_Missing var_BC
  loc_994D63: LitI2_Byte 0
  loc_994D65: ILdRf var_88
  loc_994D68: CVarStr var_9C
  loc_994D6B: PopAdLdVar
  loc_994D6C: FLdPr Me
  loc_994D6F: MemLdI2 global_112
  loc_994D72: CI4UI1
  loc_994D73: FLdPr Me
  loc_994D76: MemLdStr global_96
  loc_994D79: AryLock
  loc_994D7C: Ary1LdPr
  loc_994D7D: MemLdRfVar from_stack_1.global_0
  loc_994D80: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_994D85: AryUnlock
  loc_994D88: FFree1Var var_BC = ""
  loc_994D8B: ExitProcHresult
End Function

Private Function Proc_284_24_9A8A7C(arg_C) '9A8A7C
  'Data Table: 451124
  loc_9A89F4: ILdRf arg_C
  loc_9A89F7: FStStrCopy var_88
  loc_9A89FA: FLdPr Me
  loc_9A89FD: MemLdI2 global_114
  loc_9A8A00: LitI2_Byte 1
  loc_9A8A02: AddI2
  loc_9A8A03: FLdPr Me
  loc_9A8A06: MemStI2 global_114
  loc_9A8A09: LitI2_Byte 0
  loc_9A8A0B: FLdPr Me
  loc_9A8A0E: MemStI2 global_116
  loc_9A8A11: LitI4 0
  loc_9A8A16: FLdPr Me
  loc_9A8A19: MemLdI2 global_114
  loc_9A8A1C: CI4UI1
  loc_9A8A1D: FLdPr Me
  loc_9A8A20: MemLdI2 global_112
  loc_9A8A23: CI4UI1
  loc_9A8A24: FLdPr Me
  loc_9A8A27: MemLdStr global_96
  loc_9A8A2A: Ary1LdPr
  loc_9A8A2B: MemLdRfVar from_stack_1.global_4
  loc_9A8A2E: RedimPreserve
  loc_9A8A38: LitI2_Byte 0
  loc_9A8A3A: LitVar_Missing var_C0
  loc_9A8A3D: LitI2_Byte 0
  loc_9A8A3F: ILdRf var_88
  loc_9A8A42: CVarStr var_A0
  loc_9A8A45: PopAdLdVar
  loc_9A8A46: FLdPr Me
  loc_9A8A49: MemLdI2 global_114
  loc_9A8A4C: CI4UI1
  loc_9A8A4D: FLdPr Me
  loc_9A8A50: MemLdI2 global_112
  loc_9A8A53: CI4UI1
  loc_9A8A54: FLdPr Me
  loc_9A8A57: MemLdStr global_96
  loc_9A8A5A: AryLock
  loc_9A8A5D: Ary1LdPr
  loc_9A8A5E: MemLdStr global_4
  loc_9A8A61: AryLock
  loc_9A8A64: Ary1LdPr
  loc_9A8A65: MemLdRfVar from_stack_1.global_0
  loc_9A8A68: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9A8A6D: AryUnlock
  loc_9A8A70: AryUnlock
  loc_9A8A73: FFree1Var var_C0 = ""
  loc_9A8A76: Call Proc_284_25_A266BC()
  loc_9A8A7B: ExitProcHresult
End Function

Private Function Proc_284_25_A266BC() 'A266BC
  'Data Table: 451124
  loc_A26508: FLdPr Me
  loc_A2650B: MemLdI2 global_116
  loc_A2650E: LitI2_Byte 1
  loc_A26510: AddI2
  loc_A26511: FLdPr Me
  loc_A26514: MemStI2 global_116
  loc_A26517: LitI4 0
  loc_A2651C: FLdPr Me
  loc_A2651F: MemLdI2 global_116
  loc_A26522: CI4UI1
  loc_A26523: FLdPr Me
  loc_A26526: MemLdI2 global_114
  loc_A26529: CI4UI1
  loc_A2652A: FLdPr Me
  loc_A2652D: MemLdI2 global_112
  loc_A26530: CI4UI1
  loc_A26531: FLdPr Me
  loc_A26534: MemLdStr global_96
  loc_A26537: Ary1LdPr
  loc_A26538: MemLdStr global_4
  loc_A2653B: Ary1LdPr
  loc_A2653C: MemLdRfVar from_stack_1.global_4
  loc_A2653F: RedimPreserve
  loc_A26549: FLdPr Me
  loc_A2654C: MemLdI2 global_116
  loc_A2654F: CI4UI1
  loc_A26550: FLdPr Me
  loc_A26553: MemLdI2 global_114
  loc_A26556: CI4UI1
  loc_A26557: FLdPr Me
  loc_A2655A: MemLdI2 global_112
  loc_A2655D: CI4UI1
  loc_A2655E: FLdPr Me
  loc_A26561: MemLdStr global_96
  loc_A26564: AryLock
  loc_A26567: Ary1LdPr
  loc_A26568: MemLdStr global_4
  loc_A2656B: AryLock
  loc_A2656E: Ary1LdPr
  loc_A2656F: MemLdStr global_4
  loc_A26572: AryLock
  loc_A26575: Ary1LdRf
  loc_A26576: FStR4 var_94
  loc_A26579: FLdRfVar var_B0
  loc_A2657C: LitVarStr var_AC, "CodiCuco"
  loc_A26581: PopAdLdVar
  loc_A26582: FLdRfVar var_9C
  loc_A26585: FLdRfVar var_98
  loc_A26588: FLdPr Me
  loc_A2658B: MemLdRfVar from_stack_1.global_72
  loc_A2658E: NewIfNullPr clsbase
  loc_A26591: from_stack_1v = clsbase.RsFrmGet()
  loc_A26596: FLdPr var_98
  loc_A26599:  = Me.Fields
  loc_A2659E: FLdPr var_9C
  loc_A265A1: from_stack_2 = Me.Item(from_stack_1)
  loc_A265A6: LitI2_Byte 0
  loc_A265A8: LitVar_Missing var_E0
  loc_A265AB: LitI2_Byte 0
  loc_A265AD: FLdZeroAd var_B0
  loc_A265B0: CVarAd
  loc_A265B4: PopAdLdVar
  loc_A265B5: FMemLdRf 0
  loc_A265BA: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A265BF: FFreeAd var_98 = ""
  loc_A265C6: FFreeVar var_C0 = ""
  loc_A265CD: FLdRfVar var_B0
  loc_A265D0: LitVarStr var_AC, "DetaCuco"
  loc_A265D5: PopAdLdVar
  loc_A265D6: FLdRfVar var_9C
  loc_A265D9: FLdRfVar var_98
  loc_A265DC: FLdPr Me
  loc_A265DF: MemLdRfVar from_stack_1.global_72
  loc_A265E2: NewIfNullPr clsbase
  loc_A265E5: from_stack_1v = clsbase.RsFrmGet()
  loc_A265EA: FLdPr var_98
  loc_A265ED:  = Me.Fields
  loc_A265F2: FLdPr var_9C
  loc_A265F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A265FA: LitI2_Byte 0
  loc_A265FC: LitVar_Missing var_E0
  loc_A265FF: LitI2_Byte 0
  loc_A26601: FLdZeroAd var_B0
  loc_A26604: CVarAd
  loc_A26608: PopAdLdVar
  loc_A26609: FMemLdRf 0
  loc_A2660E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A26613: FFreeAd var_98 = ""
  loc_A2661A: FFreeVar var_C0 = ""
  loc_A26621: FLdRfVar var_B0
  loc_A26624: LitVarStr var_AC, "Importe"
  loc_A26629: PopAdLdVar
  loc_A2662A: FLdRfVar var_9C
  loc_A2662D: FLdRfVar var_98
  loc_A26630: FLdPr Me
  loc_A26633: MemLdRfVar from_stack_1.global_72
  loc_A26636: NewIfNullPr clsbase
  loc_A26639: from_stack_1v = clsbase.RsFrmGet()
  loc_A2663E: FLdPr var_98
  loc_A26641:  = Me.Fields
  loc_A26646: FLdPr var_9C
  loc_A26649: from_stack_2 = Me.Item(from_stack_1)
  loc_A2664E: LitI2_Byte 0
  loc_A26650: FLdPr Me
  loc_A26653: MemLdI2 global_114
  loc_A26656: CI4UI1
  loc_A26657: FLdPr Me
  loc_A2665A: MemLdI2 global_112
  loc_A2665D: CI4UI1
  loc_A2665E: FLdPr Me
  loc_A26661: MemLdStr global_96
  loc_A26664: AryLock
  loc_A26667: Ary1LdPr
  loc_A26668: MemLdStr global_4
  loc_A2666B: AryLock
  loc_A2666E: Ary1LdPr
  loc_A2666F: MemLdRfVar from_stack_1.global_8
  loc_A26672: CVarRef
  loc_A26677: LitI2_Byte &HFF
  loc_A26679: FLdZeroAd var_B0
  loc_A2667C: CVarAd
  loc_A26680: PopAdLdVar
  loc_A26681: FMemLdRf 0
  loc_A26686: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A2668B: AryUnlock
  loc_A2668E: AryUnlock
  loc_A26691: FFreeAd var_98 = ""
  loc_A26698: FFree1Var var_C0 = ""
  loc_A2669B: LitI4 0
  loc_A266A0: FStR4 var_94
  loc_A266A3: AryUnlock
  loc_A266A6: AryUnlock
  loc_A266A9: AryUnlock
  loc_A266AC: FLdPr Me
  loc_A266AF: MemLdRfVar from_stack_1.global_72
  loc_A266B2: NewIfNullPr clsbase
  loc_A266B5: Call clsbase.MoveSiguiente()
  loc_A266BA: ExitProcHresult
End Function

Private Function Proc_284_26_A45600() 'A45600
  'Data Table: 451124
  loc_A45384: LitVarStr var_94, "<html>"
  loc_A45389: PopAdLdVar
  loc_A4538A: FLdPr Me
  loc_A4538D: MemLdRfVar from_stack_1.htmFile
  loc_A45390: LdPrVar
  loc_A45392: LateMemCall
  loc_A45398: LitVarStr var_94, "<head>"
  loc_A4539D: PopAdLdVar
  loc_A4539E: FLdPr Me
  loc_A453A1: MemLdRfVar from_stack_1.htmFile
  loc_A453A4: LdPrVar
  loc_A453A6: LateMemCall
  loc_A453AC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A453B1: PopAdLdVar
  loc_A453B2: FLdPr Me
  loc_A453B5: MemLdRfVar from_stack_1.htmFile
  loc_A453B8: LdPrVar
  loc_A453BA: LateMemCall
  loc_A453C0: LitStr "<title>"
  loc_A453C3: FLdRfVar var_A8
  loc_A453C6: FLdPr Me
  loc_A453C9:  = Me.Caption
  loc_A453CE: ILdRf var_A8
  loc_A453D1: ConcatStr
  loc_A453D2: FStStrNoPop var_AC
  loc_A453D5: LitStr "</title>"
  loc_A453D8: ConcatStr
  loc_A453D9: CVarStr var_BC
  loc_A453DC: PopAdLdVar
  loc_A453DD: FLdPr Me
  loc_A453E0: MemLdRfVar from_stack_1.htmFile
  loc_A453E3: LdPrVar
  loc_A453E5: LateMemCall
  loc_A453EB: FFreeStr var_A8 = ""
  loc_A453F2: FFree1Var var_BC = ""
  loc_A453F5: LitStr vbNullString
  loc_A453F8: ILdRf Me
  loc_A453FB: CastAd
  loc_A453FE: FStAdFunc var_C0
  loc_A45401: FLdRfVar var_C0
  loc_A45404: ImpAdCallFPR4  = Proc_263_23_B3DAB8()
  loc_A45409: FFree1Ad var_C0
  loc_A4540C: LitI4 0
  loc_A45411: FStStrCopy var_AC
  loc_A45414: FLdRfVar var_AC
  loc_A45417: LitI4 0
  loc_A4541C: FStStrCopy var_A8
  loc_A4541F: FLdRfVar var_A8
  loc_A45422: LitI2_Byte 0
  loc_A45424: PopTmpLdAd2 var_C2
  loc_A45427: FLdPr Me
  loc_A4542A: MemLdRfVar from_stack_1.htmFile
  loc_A4542D: ImpAdCallFPR4  = Proc_263_6_A92790(, )
  loc_A45432: FFreeStr var_A8 = ""
  loc_A45439: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A4543E: PopAdLdVar
  loc_A4543F: FLdPr Me
  loc_A45442: MemLdRfVar from_stack_1.htmFile
  loc_A45445: LdPrVar
  loc_A45447: LateMemCall
  loc_A4544D: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A45452: PopAdLdVar
  loc_A45453: FLdPr Me
  loc_A45456: MemLdRfVar from_stack_1.htmFile
  loc_A45459: LdPrVar
  loc_A4545B: LateMemCall
  loc_A45461: LitVarStr var_94, "    <th align=""center"" valign=""center""><p>"
  loc_A45466: PopAdLdVar
  loc_A45467: FLdPr Me
  loc_A4546A: MemLdRfVar from_stack_1.htmFile
  loc_A4546D: LdPrVar
  loc_A4546F: LateMemCall
  loc_A45475: FLdPr Me
  loc_A45478: MemLdI2 bLogos
  loc_A4547B: BranchF loc_A45492
  loc_A4547E: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A45483: PopAdLdVar
  loc_A45484: FLdPr Me
  loc_A45487: MemLdRfVar from_stack_1.htmFile
  loc_A4548A: LdPrVar
  loc_A4548C: LateMemCall
  loc_A45492: LitVarStr var_94, "    <br>ACUERDO N&ordm; 2988 <br>"
  loc_A45497: PopAdLdVar
  loc_A45498: FLdPr Me
  loc_A4549B: MemLdRfVar from_stack_1.htmFile
  loc_A4549E: LdPrVar
  loc_A454A0: LateMemCall
  loc_A454A6: LitStr "Municipalidad de Guaymallén"
  loc_A454A9: LitStr "Municipalidad de Malargüe"
  loc_A454AC: EqStr
  loc_A454AE: BranchF loc_A454C8
  loc_A454B1: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO X: ESTADO DE ORIGEN Y APLICACIÓN DE FONDOS Y VALORES<br>(Acuerdo 2988 texto ordenado según Acuerdo Nº 6571)</span></p>"
  loc_A454B6: PopAdLdVar
  loc_A454B7: FLdPr Me
  loc_A454BA: MemLdRfVar from_stack_1.htmFile
  loc_A454BD: LdPrVar
  loc_A454BF: LateMemCall
  loc_A454C5: Branch loc_A454DC
  loc_A454C8: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO X: ESTADO DE ORIGEN Y APLICACIÓN DE FONDOS Y VALORES<br>(Acuerdo 2988 texto ordenado según Acuerdo Nº 6222)</span></p>"
  loc_A454CD: PopAdLdVar
  loc_A454CE: FLdPr Me
  loc_A454D1: MemLdRfVar from_stack_1.htmFile
  loc_A454D4: LdPrVar
  loc_A454D6: LateMemCall
  loc_A454DC: LitVarStr var_94, "    </th>"
  loc_A454E1: PopAdLdVar
  loc_A454E2: FLdPr Me
  loc_A454E5: MemLdRfVar from_stack_1.htmFile
  loc_A454E8: LdPrVar
  loc_A454EA: LateMemCall
  loc_A454F0: LitVarStr var_94, "  </tr>"
  loc_A454F5: PopAdLdVar
  loc_A454F6: FLdPr Me
  loc_A454F9: MemLdRfVar from_stack_1.htmFile
  loc_A454FC: LdPrVar
  loc_A454FE: LateMemCall
  loc_A45504: LitVarStr var_94, "  <tr>"
  loc_A45509: PopAdLdVar
  loc_A4550A: FLdPr Me
  loc_A4550D: MemLdRfVar from_stack_1.htmFile
  loc_A45510: LdPrVar
  loc_A45512: LateMemCall
  loc_A45518: LitVarStr var_94, "    <th>"
  loc_A4551D: PopAdLdVar
  loc_A4551E: FLdPr Me
  loc_A45521: MemLdRfVar from_stack_1.htmFile
  loc_A45524: LdPrVar
  loc_A45526: LateMemCall
  loc_A4552C: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_A4552F: LitStr "Municipalidad de Guaymallén"
  loc_A45532: ConcatStr
  loc_A45533: FStStrNoPop var_A8
  loc_A45536: LitStr "<br>"
  loc_A45539: ConcatStr
  loc_A4553A: CVarStr var_BC
  loc_A4553D: PopAdLdVar
  loc_A4553E: FLdPr Me
  loc_A45541: MemLdRfVar from_stack_1.htmFile
  loc_A45544: LdPrVar
  loc_A45546: LateMemCall
  loc_A4554C: FFree1Str var_A8
  loc_A4554F: FFree1Var var_BC = ""
  loc_A45552: LitStr "    Nomenclador: "
  loc_A45555: LitStr "060204"
  loc_A45558: ConcatStr
  loc_A45559: FStStrNoPop var_A8
  loc_A4555C: LitStr "<br>"
  loc_A4555F: ConcatStr
  loc_A45560: CVarStr var_BC
  loc_A45563: PopAdLdVar
  loc_A45564: FLdPr Me
  loc_A45567: MemLdRfVar from_stack_1.htmFile
  loc_A4556A: LdPrVar
  loc_A4556C: LateMemCall
  loc_A45572: FFree1Str var_A8
  loc_A45575: FFree1Var var_BC = ""
  loc_A45578: LitStr "    Ejercicio: "
  loc_A4557B: FLdRfVar var_A8
  loc_A4557E: FLdPr Me
  loc_A45581: VCallAd Control_ID_cboPeriodo
  loc_A45584: FStAdFunc var_C0
  loc_A45587: FLdPr var_C0
  loc_A4558A:  = Me.Text
  loc_A4558F: ILdRf var_A8
  loc_A45592: ConcatStr
  loc_A45593: CVarStr var_BC
  loc_A45596: PopAdLdVar
  loc_A45597: FLdPr Me
  loc_A4559A: MemLdRfVar from_stack_1.htmFile
  loc_A4559D: LdPrVar
  loc_A4559F: LateMemCall
  loc_A455A5: FFree1Str var_A8
  loc_A455A8: FFree1Ad var_C0
  loc_A455AB: FFree1Var var_BC = ""
  loc_A455AE: LitVarStr var_94, "    </p></th>"
  loc_A455B3: PopAdLdVar
  loc_A455B4: FLdPr Me
  loc_A455B7: MemLdRfVar from_stack_1.htmFile
  loc_A455BA: LdPrVar
  loc_A455BC: LateMemCall
  loc_A455C2: LitVarStr var_94, "  </tr>"
  loc_A455C7: PopAdLdVar
  loc_A455C8: FLdPr Me
  loc_A455CB: MemLdRfVar from_stack_1.htmFile
  loc_A455CE: LdPrVar
  loc_A455D0: LateMemCall
  loc_A455D6: LitVarStr var_94, "</table>"
  loc_A455DB: PopAdLdVar
  loc_A455DC: FLdPr Me
  loc_A455DF: MemLdRfVar from_stack_1.htmFile
  loc_A455E2: LdPrVar
  loc_A455E4: LateMemCall
  loc_A455EA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A455EF: PopAdLdVar
  loc_A455F0: FLdPr Me
  loc_A455F3: MemLdRfVar from_stack_1.htmFile
  loc_A455F6: LdPrVar
  loc_A455F8: LateMemCall
  loc_A455FE: ExitProcHresult
End Function

Private Function Proc_284_27_A06400() 'A06400
  'Data Table: 451124
  loc_A0628C: LitVarStr var_94, "</table>"
  loc_A06291: PopAdLdVar
  loc_A06292: FLdPr Me
  loc_A06295: MemLdRfVar from_stack_1.htmFile
  loc_A06298: LdPrVar
  loc_A0629A: LateMemCall
  loc_A062A0: LitVarStr var_94, "<br>"
  loc_A062A5: PopAdLdVar
  loc_A062A6: FLdPr Me
  loc_A062A9: MemLdRfVar from_stack_1.htmFile
  loc_A062AC: LdPrVar
  loc_A062AE: LateMemCall
  loc_A062B4: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A062B9: PopAdLdVar
  loc_A062BA: FLdPr Me
  loc_A062BD: MemLdRfVar from_stack_1.htmFile
  loc_A062C0: LdPrVar
  loc_A062C2: LateMemCall
  loc_A062C8: LitVarStr var_94, "  <tr>"
  loc_A062CD: PopAdLdVar
  loc_A062CE: FLdPr Me
  loc_A062D1: MemLdRfVar from_stack_1.htmFile
  loc_A062D4: LdPrVar
  loc_A062D6: LateMemCall
  loc_A062DC: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A062E1: PopAdLdVar
  loc_A062E2: FLdPr Me
  loc_A062E5: MemLdRfVar from_stack_1.htmFile
  loc_A062E8: LdPrVar
  loc_A062EA: LateMemCall
  loc_A062F0: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A062F5: PopAdLdVar
  loc_A062F6: FLdPr Me
  loc_A062F9: MemLdRfVar from_stack_1.htmFile
  loc_A062FC: LdPrVar
  loc_A062FE: LateMemCall
  loc_A06304: FLdPr Me
  loc_A06307: MemLdI2 bLogos
  loc_A0630A: BranchF loc_A06371
  loc_A0630D: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A06312: PopAdLdVar
  loc_A06313: FLdPr Me
  loc_A06316: MemLdRfVar from_stack_1.htmFile
  loc_A06319: LdPrVar
  loc_A0631B: LateMemCall
  loc_A06321: LitVarStr var_94, "          <map name=""Map"">"
  loc_A06326: PopAdLdVar
  loc_A06327: FLdPr Me
  loc_A0632A: MemLdRfVar from_stack_1.htmFile
  loc_A0632D: LdPrVar
  loc_A0632F: LateMemCall
  loc_A06335: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A0633A: PopAdLdVar
  loc_A0633B: FLdPr Me
  loc_A0633E: MemLdRfVar from_stack_1.htmFile
  loc_A06341: LdPrVar
  loc_A06343: LateMemCall
  loc_A06349: LitVarStr var_94, "          </map>"
  loc_A0634E: PopAdLdVar
  loc_A0634F: FLdPr Me
  loc_A06352: MemLdRfVar from_stack_1.htmFile
  loc_A06355: LdPrVar
  loc_A06357: LateMemCall
  loc_A0635D: LitVarStr var_94, "    </div></th>"
  loc_A06362: PopAdLdVar
  loc_A06363: FLdPr Me
  loc_A06366: MemLdRfVar from_stack_1.htmFile
  loc_A06369: LdPrVar
  loc_A0636B: LateMemCall
  loc_A06371: LitVarStr var_94, "  </tr>"
  loc_A06376: PopAdLdVar
  loc_A06377: FLdPr Me
  loc_A0637A: MemLdRfVar from_stack_1.htmFile
  loc_A0637D: LdPrVar
  loc_A0637F: LateMemCall
  loc_A06385: LitVarStr var_94, "  <tr>"
  loc_A0638A: PopAdLdVar
  loc_A0638B: FLdPr Me
  loc_A0638E: MemLdRfVar from_stack_1.htmFile
  loc_A06391: LdPrVar
  loc_A06393: LateMemCall
  loc_A06399: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A0639E: PopAdLdVar
  loc_A0639F: FLdPr Me
  loc_A063A2: MemLdRfVar from_stack_1.htmFile
  loc_A063A5: LdPrVar
  loc_A063A7: LateMemCall
  loc_A063AD: LitVarStr var_94, "  </tr>"
  loc_A063B2: PopAdLdVar
  loc_A063B3: FLdPr Me
  loc_A063B6: MemLdRfVar from_stack_1.htmFile
  loc_A063B9: LdPrVar
  loc_A063BB: LateMemCall
  loc_A063C1: LitVarStr var_94, "</table>"
  loc_A063C6: PopAdLdVar
  loc_A063C7: FLdPr Me
  loc_A063CA: MemLdRfVar from_stack_1.htmFile
  loc_A063CD: LdPrVar
  loc_A063CF: LateMemCall
  loc_A063D5: LitVarStr var_94, "</body>"
  loc_A063DA: PopAdLdVar
  loc_A063DB: FLdPr Me
  loc_A063DE: MemLdRfVar from_stack_1.htmFile
  loc_A063E1: LdPrVar
  loc_A063E3: LateMemCall
  loc_A063E9: LitVarStr var_94, "</html>"
  loc_A063EE: PopAdLdVar
  loc_A063EF: FLdPr Me
  loc_A063F2: MemLdRfVar from_stack_1.htmFile
  loc_A063F5: LdPrVar
  loc_A063F7: LateMemCall
  loc_A063FD: ExitProcHresult
End Function
