VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeAccesos
  Caption = "Listado de Accesos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeAccesos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 6192
  ClientHeight = 2532
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2280
    Width = 6195
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptListadodeAccesos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1320
    Width = 735
    Height = 615
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptListadodeAccesos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeAccesos.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1080
    Width = 1815
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1080
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6015
    Height = 975
    TabIndex = 0
    Begin VB.ComboBox cboCodiUsua
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 360
      Width = 1575
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4440
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label2
      Caption = "Usuario:"
      Left = 960
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 1560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptListadodeAccesos.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeAccesos"

Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_00580AF8
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdNueva_Click() 'A38C2C
  'Data Table: 452ED0
  loc_A38BDC: LitI2_Byte 0
  loc_A38BDE: FLdPr Me
  loc_A38BE1: MemStI2 bGenerado
  loc_A38BE4: LitI2_Byte 0
  loc_A38BE6: ILdRf Me
  loc_A38BE9: CastAd
  loc_A38BEC: FStAdFunc var_88
  loc_A38BEF: FLdRfVar var_88
  loc_A38BF2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A38BF7: FFree1Ad var_88
  loc_A38BFA: LitI2_Byte 0
  loc_A38BFC: FLdPr Me
  loc_A38BFF: VCallAd Control_ID_cboCodiUsua
  loc_A38C02: FStAdFunc var_88
  loc_A38C05: FLdPr var_88
  loc_A38C08: Me.ListIndex = from_stack_1
  loc_A38C0D: FFree1Ad var_88
  loc_A38C10: Call HabilitarCriterio()
  loc_A38C15: ILdRf Me
  loc_A38C18: CastAd
  loc_A38C1B: FStAdFunc var_88
  loc_A38C1E: FLdRfVar var_88
  loc_A38C21: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A38C26: FFree1Ad var_88
  loc_A38C29: ExitProcHresult
  loc_A38C2A: DOC
End Sub

Private Sub Form_Load() 'AC289C
  'Data Table: 452ED0
  loc_AC27AC: LitI2_Byte &HFF
  loc_AC27AE: ImpAdStI2 MemVar_D93C8A
  loc_AC27B1: ILdRf Me
  loc_AC27B4: CastAd
  loc_AC27B7: FStAdFunc var_8C
  loc_AC27BA: FLdRfVar var_8C
  loc_AC27BD: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AC27C2: FFree1Ad var_8C
  loc_AC27C5: FLdRfVar var_88
  loc_AC27C8: NewIfNullAd
  loc_AC27CB: FStAd var_90 
  loc_AC27CF: FLdPr Me
  loc_AC27D2: VCallAd Control_ID_cboCodiUsua
  loc_AC27D5: FStAdFunc var_8C
  loc_AC27D8: FLdPr var_8C
  loc_AC27DB: Me.Clear
  loc_AC27E0: FFree1Ad var_8C
  loc_AC27E3: LitVar_Missing var_A0
  loc_AC27E6: PopAdLdVar
  loc_AC27E7: LitStr "TODOS"
  loc_AC27EA: FLdPr Me
  loc_AC27ED: VCallAd Control_ID_cboCodiUsua
  loc_AC27F0: FStAdFunc var_8C
  loc_AC27F3: FLdPr var_8C
  loc_AC27F6: Me.AddItem from_stack_1, from_stack_2
  loc_AC27FB: FFree1Ad var_8C
  loc_AC27FE: LitStr "SELECT * FROM infogov.usuario ORDER BY CodiUsua"
  loc_AC2801: FLdPr var_90
  loc_AC2804: Call clsusuario.RedefineRS(from_stack_1v)
  loc_AC2809: FLdPr var_90
  loc_AC280C: Call clsusuario.MoveFirst()
  loc_AC2811: FLdRfVar var_A2
  loc_AC2814: FLdPr var_90
  loc_AC2817: from_stack_1 = clsusuario.EOF
  loc_AC281C: FLdI2 var_A2
  loc_AC281F: NotI4
  loc_AC2820: BranchF loc_AC288D
  loc_AC2823: LitVar_Missing var_D0
  loc_AC2826: PopAdLdVar
  loc_AC2827: FLdRfVar var_BC
  loc_AC282A: FLdRfVar var_AC
  loc_AC282D: LitVarStr var_A0, "CodiUsua"
  loc_AC2832: PopAdLdVar
  loc_AC2833: FLdRfVar var_A8
  loc_AC2836: FLdRfVar var_8C
  loc_AC2839: FLdPr var_90
  loc_AC283C: from_stack_1v = clsusuario.RsFrmGet()
  loc_AC2841: FLdPr var_8C
  loc_AC2844:  = Me.Fields
  loc_AC2849: FLdPr var_A8
  loc_AC284C: from_stack_2 = Me.Item(from_stack_1)
  loc_AC2851: FLdPr var_AC
  loc_AC2854:  = Me.Value
  loc_AC2859: FLdRfVar var_BC
  loc_AC285C: CStrVarTmp
  loc_AC285D: FStStrNoPop var_C0
  loc_AC2860: FLdPr Me
  loc_AC2863: VCallAd Control_ID_cboCodiUsua
  loc_AC2866: FStAdFunc var_D4
  loc_AC2869: FLdPr var_D4
  loc_AC286C: Me.AddItem from_stack_1, from_stack_2
  loc_AC2871: FFree1Str var_C0
  loc_AC2874: FFreeAd var_8C = "": var_A8 = "": var_AC = ""
  loc_AC287F: FFree1Var var_BC = ""
  loc_AC2882: FLdPr var_90
  loc_AC2885: Call clsusuario.MoveSiguiente()
  loc_AC288A: Branch loc_AC2811
  loc_AC288D: LitNothing
  loc_AC288F: FStAd var_90 
  loc_AC2893: Call cmdNueva_Click()
  loc_AC2898: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9DA9B8
  'Data Table: 452ED0
  loc_9DA9A0: FLdPr Me
  loc_9DA9A3: VCallAd Control_ID_wbbReporte
  loc_9DA9A6: FStAdFunc var_88
  loc_9DA9A9: FLdRfVar var_88
  loc_9DA9AC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9DA9B1: FFree1Ad var_88
  loc_9DA9B4: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9D9EBC
  'Data Table: 452ED0
  loc_9D9EA4: LitI2_Byte 0
  loc_9D9EA6: ILdRf Me
  loc_9D9EA9: CastAd
  loc_9D9EAC: FStAdFunc var_88
  loc_9D9EAF: FLdRfVar var_88
  loc_9D9EB2: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D9EB7: FFree1Ad var_88
  loc_9D9EBA: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A01E60
  'Data Table: 452ED0
  loc_A01E30: LitVarStr var_94, "Cerrando..."
  loc_A01E35: PopAdLdVar
  loc_A01E36: FLdPr Me
  loc_A01E39: VCallAd Control_ID_statusBar
  loc_A01E3C: FStAdFunc var_A8
  loc_A01E3F: FLdPr var_A8
  loc_A01E42: LateIdSt
  loc_A01E47: FFree1Ad var_A8
  loc_A01E4A: ILdRf Me
  loc_A01E4D: FStAdNoPop
  loc_A01E51: ImpAdLdRf MemVar_D9C5D8
  loc_A01E54: NewIfNullPr Global
  loc_A01E57: Global.Unload from_stack_1
  loc_A01E5C: FFree1Ad var_A8
  loc_A01E5F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D9E24
  'Data Table: 452ED0
  loc_9D9E0C: ILdRf Me
  loc_9D9E0F: CastAd
  loc_9D9E12: FStAdFunc var_88
  loc_9D9E15: FLdRfVar var_88
  loc_9D9E18: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D9E1D: FFree1Ad var_88
  loc_9D9E20: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E451C
  'Data Table: 452ED0
  loc_9E4500: LitI2_Byte &HFF
  loc_9E4502: PopTmpLdAd2 var_8A
  loc_9E4505: ILdRf Me
  loc_9E4508: CastAd
  loc_9E450B: FStAdFunc var_88
  loc_9E450E: FLdRfVar var_88
  loc_9E4511: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E4516: FFree1Ad var_88
  loc_9E4519: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1D848
  'Data Table: 452ED0
  loc_A1D810: FLdPr Me
  loc_A1D813: VCallAd Control_ID_statusBar
  loc_A1D816: FStAdFunc var_88
  loc_A1D819: FLdPr var_88
  loc_A1D81C: LateIdLdVar var_98 DispID_1 0
  loc_A1D823: CStrVarTmp
  loc_A1D824: CVarStr var_A8
  loc_A1D827: PopAdLdVar
  loc_A1D828: FLdPr Me
  loc_A1D82B: VCallAd Control_ID_statusBar
  loc_A1D82E: FStAdFunc var_BC
  loc_A1D831: FLdPr var_BC
  loc_A1D834: LateIdSt
  loc_A1D839: FFreeAd var_88 = ""
  loc_A1D840: FFreeVar var_98 = ""
  loc_A1D847: ExitProcHresult
End Sub

Public Function bGeneradoGet() '453898
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4538A7
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A115E4
  'Data Table: 452ED0
  loc_A115B0: LitI4 0
  loc_A115B5: LitI4 0
  loc_A115BA: FLdRfVar var_88
  loc_A115BD: Redim
  loc_A115C7: FLdPr Me
  loc_A115CA: VCallAd Control_ID_cboCodiUsua
  loc_A115CD: CVarAd
  loc_A115D1: ParmAry1St
  loc_A115D7: FLdRfVar var_88
  loc_A115DA: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A115DF: FLdRfVar var_88
  loc_A115E2: Erase
  loc_A115E3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B2F284
  'Data Table: 452ED0
  loc_B2EFE0: OnErrorGoto loc_B2F224
  loc_B2EFE3: FLdPr Me
  loc_B2EFE6: MemLdI2 bGenerado
  loc_B2EFE9: BranchF loc_B2EFED
  loc_B2EFEC: ExitProcHresult
  loc_B2EFED: LitVarStr var_98, "Generando reporte..."
  loc_B2EFF2: PopAdLdVar
  loc_B2EFF3: FLdPr Me
  loc_B2EFF6: VCallAd Control_ID_statusBar
  loc_B2EFF9: FStAdFunc var_AC
  loc_B2EFFC: FLdPr var_AC
  loc_B2EFFF: LateIdSt
  loc_B2F004: FFree1Ad var_AC
  loc_B2F007: LitI4 &HB
  loc_B2F00C: CI2I4
  loc_B2F00D: FLdPr Me
  loc_B2F010: Me.MousePointer = from_stack_1
  loc_B2F015: FLdRfVar var_AE
  loc_B2F018: FLdPr Me
  loc_B2F01B: VCallAd Control_ID_cboCodiUsua
  loc_B2F01E: FStAdFunc var_AC
  loc_B2F021: FLdPr var_AC
  loc_B2F024:  = Me.ListIndex
  loc_B2F029: FLdRfVar var_B8
  loc_B2F02C: FLdPr Me
  loc_B2F02F: VCallAd Control_ID_cboCodiUsua
  loc_B2F032: FStAdFunc var_B4
  loc_B2F035: FLdPr var_B4
  loc_B2F038:  = Me.Text
  loc_B2F03D: LitVarStr var_A8, vbNullString
  loc_B2F042: FStVarCopyObj var_DC
  loc_B2F045: FLdRfVar var_DC
  loc_B2F048: LitStr " AND acceso.CodiUsua = '"
  loc_B2F04B: ILdRf var_B8
  loc_B2F04E: ConcatStr
  loc_B2F04F: FStStrNoPop var_BC
  loc_B2F052: LitStr "'"
  loc_B2F055: ConcatStr
  loc_B2F056: CVarStr var_CC
  loc_B2F059: FLdI2 var_AE
  loc_B2F05C: LitI2_Byte 0
  loc_B2F05E: GtI2
  loc_B2F05F: CVarBoolI2 var_98
  loc_B2F063: FLdRfVar var_EC
  loc_B2F066: ImpAdCallFPR4  = IIf(, , )
  loc_B2F06B: FLdRfVar var_EC
  loc_B2F06E: CStrVarTmp
  loc_B2F06F: FStStr var_88
  loc_B2F072: FFreeStr var_B8 = ""
  loc_B2F079: FFreeAd var_AC = ""
  loc_B2F080: FFreeVar var_98 = "": var_CC = "": var_DC = ""
  loc_B2F08B: FLdPr Me
  loc_B2F08E: MemLdRfVar from_stack_1.global_56
  loc_B2F091: NewIfNullAd
  loc_B2F094: FStAd var_F0 
  loc_B2F098: LitStr "SELECT acceso.CodiUsua, FormMenu, if(AltaAcce=1,'Sí','No') Alta, if(BajaAcce=1,'Sí','No') Baja, if(ModiAcce=1,'Sí','No') Modi, DetaPers"
  loc_B2F09B: LitStr " FROM infogov.acceso"
  loc_B2F09E: ConcatStr
  loc_B2F09F: FStStrNoPop var_B8
  loc_B2F0A2: LitStr " INNER JOIN infogov.menu ON menu.CodiSist = "
  loc_B2F0A5: ConcatStr
  loc_B2F0A6: FStStrNoPop var_BC
  loc_B2F0A9: LitI2_Byte 2
  loc_B2F0AB: CStrI2
  loc_B2F0AD: FStStrNoPop var_F4
  loc_B2F0B0: ConcatStr
  loc_B2F0B1: FStStrNoPop var_F8
  loc_B2F0B4: LitStr " AND WforMenu = 0 AND menu.CodiMenu = acceso.CodiMenu"
  loc_B2F0B7: ConcatStr
  loc_B2F0B8: FStStrNoPop var_FC
  loc_B2F0BB: LitStr " LEFT JOIN infogov.usuario ON usuario.CodiUsua = acceso.CodiUsua"
  loc_B2F0BE: ConcatStr
  loc_B2F0BF: FStStrNoPop var_100
  loc_B2F0C2: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers"
  loc_B2F0C5: ConcatStr
  loc_B2F0C6: FStStrNoPop var_104
  loc_B2F0C9: LitStr " WHERE TRUE "
  loc_B2F0CC: ConcatStr
  loc_B2F0CD: FStStrNoPop var_108
  loc_B2F0D0: ILdRf var_88
  loc_B2F0D3: ConcatStr
  loc_B2F0D4: FStStrNoPop var_10C
  loc_B2F0D7: LitStr " ORDER BY acceso.CodiUsua, FormMenu"
  loc_B2F0DA: ConcatStr
  loc_B2F0DB: FStStrNoPop var_110
  loc_B2F0DE: FLdPr var_F0
  loc_B2F0E1: Call clsbase.RedefineRS(from_stack_1v)
  loc_B2F0E6: FFreeStr var_B8 = "": var_BC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_B2F0FD: FLdRfVar var_114
  loc_B2F100: FLdPr var_F0
  loc_B2F103: from_stack_1 = clsbase.RecordCount
  loc_B2F108: ILdRf var_114
  loc_B2F10B: LitI4 0
  loc_B2F110: EqI4
  loc_B2F111: BranchF loc_B2F11F
  loc_B2F114: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B2F117: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2F11C: Branch loc_B2F1FB
  loc_B2F11F: LitI4 0
  loc_B2F124: FLdRfVar var_114
  loc_B2F127: FLdPr var_F0
  loc_B2F12A: from_stack_1 = clsbase.RecordCount
  loc_B2F12F: ILdRf var_114
  loc_B2F132: FLdRfVar var_118
  loc_B2F135: Redim
  loc_B2F13F: FLdPr var_F0
  loc_B2F142: Call clsbase.MoveFirst()
  loc_B2F147: LitI2_Byte 0
  loc_B2F149: FLdPr Me
  loc_B2F14C: MemStI2 global_86
  loc_B2F14F: LitI4 0
  loc_B2F154: FLdPr Me
  loc_B2F157: MemLdI2 global_86
  loc_B2F15A: CI4UI1
  loc_B2F15B: FLdPr Me
  loc_B2F15E: MemLdRfVar from_stack_1.global_80
  loc_B2F161: Redim
  loc_B2F16B: Call Proc_145_13_AC69A8()
  loc_B2F170: FLdRfVar var_AE
  loc_B2F173: FLdPr var_F0
  loc_B2F176: from_stack_1 = clsbase.EOF
  loc_B2F17B: FLdI2 var_AE
  loc_B2F17E: NotI4
  loc_B2F17F: BranchF loc_B2F1ED
  loc_B2F182: FLdRfVar var_CC
  loc_B2F185: FLdRfVar var_11C
  loc_B2F188: LitVarStr var_98, "CodiUsua"
  loc_B2F18D: PopAdLdVar
  loc_B2F18E: FLdRfVar var_B4
  loc_B2F191: FLdRfVar var_AC
  loc_B2F194: FLdPr var_F0
  loc_B2F197: from_stack_1v = clsbase.RsFrmGet()
  loc_B2F19C: FLdPr var_AC
  loc_B2F19F:  = Me.Fields
  loc_B2F1A4: FLdPr var_B4
  loc_B2F1A7: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F1AC: FLdPr var_11C
  loc_B2F1AF:  = Me.Value
  loc_B2F1B4: FLdRfVar var_CC
  loc_B2F1B7: FLdPr Me
  loc_B2F1BA: MemLdI2 global_86
  loc_B2F1BD: CI4UI1
  loc_B2F1BE: FLdPr Me
  loc_B2F1C1: MemLdStr global_80
  loc_B2F1C4: Ary1LdPr
  loc_B2F1C5: MemLdStr global_0
  loc_B2F1C8: CVarStr var_A8
  loc_B2F1CB: HardType
  loc_B2F1CC: NeVarBool
  loc_B2F1CE: FFreeAd var_AC = "": var_B4 = ""
  loc_B2F1D7: FFree1Var var_CC = ""
  loc_B2F1DA: BranchF loc_B2F1E5
  loc_B2F1DD: Call Proc_145_13_AC69A8()
  loc_B2F1E2: Branch loc_B2F1EA
  loc_B2F1E5: Call Proc_145_14_B0B6D8()
  loc_B2F1EA: Branch loc_B2F170
  loc_B2F1ED: LitNothing
  loc_B2F1EF: FStAd var_F0 
  loc_B2F1F3: LitI2_Byte &HFF
  loc_B2F1F5: FLdPr Me
  loc_B2F1F8: MemStI2 bGenerado
  loc_B2F1FB: LitI4 0
  loc_B2F200: CI2I4
  loc_B2F201: FLdPr Me
  loc_B2F204: Me.MousePointer = from_stack_1
  loc_B2F209: LitVarStr var_98, vbNullString
  loc_B2F20E: PopAdLdVar
  loc_B2F20F: FLdPr Me
  loc_B2F212: VCallAd Control_ID_statusBar
  loc_B2F215: FStAdFunc var_AC
  loc_B2F218: FLdPr var_AC
  loc_B2F21B: LateIdSt
  loc_B2F220: FFree1Ad var_AC
  loc_B2F223: ExitProcHresult
  loc_B2F224: LitStr "Error "
  loc_B2F227: FLdRfVar var_114
  loc_B2F22A: ImpAdCallI2 Err 'rtcErrObj
  loc_B2F22F: FStAdFunc var_AC
  loc_B2F232: FLdPr var_AC
  loc_B2F235:  = Err.Number
  loc_B2F23A: ILdRf var_114
  loc_B2F23D: CStrI4
  loc_B2F23F: FStStrNoPop var_B8
  loc_B2F242: ConcatStr
  loc_B2F243: FStStrNoPop var_BC
  loc_B2F246: LitStr ": "
  loc_B2F249: ConcatStr
  loc_B2F24A: FStStrNoPop var_F8
  loc_B2F24D: FLdRfVar var_F4
  loc_B2F250: ImpAdCallI2 Err 'rtcErrObj
  loc_B2F255: FStAdFunc var_B4
  loc_B2F258: FLdPr var_B4
  loc_B2F25B:  = Err.Description
  loc_B2F260: ILdRf var_F4
  loc_B2F263: ConcatStr
  loc_B2F264: FStStrNoPop var_FC
  loc_B2F267: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2F26C: FFreeStr var_B8 = "": var_BC = "": var_F8 = "": var_F4 = ""
  loc_B2F279: FFreeAd var_AC = ""
  loc_B2F280: ExitProcHresult
  loc_B2F281: ExitProcHresult
  loc_B2F282: Ary1StVar
End Sub

Public Sub GeneraHTML() 'B0C584
  'Data Table: 452ED0
  loc_B0C368: FLdRfVar var_88
  loc_B0C36B: LitI2_Byte 0
  loc_B0C36D: LitI2_Byte &HFF
  loc_B0C36F: ImpAdLdI4 MemVar_D93C84
  loc_B0C372: FLdPr Me
  loc_B0C375: MemLdRfVar from_stack_1.global_60
  loc_B0C378: NewIfNullPr IFileSystem3
  loc_B0C37B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B0C380: ILdRf var_88
  loc_B0C383: FLdPr Me
  loc_B0C386: MemStVarAd
  loc_B0C38A: FFree1Ad var_88
  loc_B0C38D: Call Proc_145_15_BA05D4()
  loc_B0C392: LitI2_Byte 1
  loc_B0C394: FLdPr Me
  loc_B0C397: MemLdRfVar from_stack_1.global_86
  loc_B0C39A: FLdPr Me
  loc_B0C39D: MemLdStr global_80
  loc_B0C3A0: LitI2_Byte 1
  loc_B0C3A2: FnUBound
  loc_B0C3A4: CI2I4
  loc_B0C3A5: ForI2 var_8C
  loc_B0C3AB: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B0C3B0: PopAdLdVar
  loc_B0C3B1: FLdPr Me
  loc_B0C3B4: MemLdRfVar from_stack_1.global_64
  loc_B0C3B7: LdPrVar
  loc_B0C3B9: LateMemCall
  loc_B0C3BF: FLdPr Me
  loc_B0C3C2: MemLdI2 global_86
  loc_B0C3C5: CI4UI1
  loc_B0C3C6: FLdPr Me
  loc_B0C3C9: MemLdStr global_80
  loc_B0C3CC: AryLock
  loc_B0C3CF: Ary1LdRf
  loc_B0C3D0: FStR4 var_B4
  loc_B0C3D3: LitStr "   <td rowspan="""
  loc_B0C3D6: FMemLdR4 var_B4(8)
  loc_B0C3DB: LitI2_Byte 1
  loc_B0C3DD: FnUBound
  loc_B0C3DF: CStrI4
  loc_B0C3E1: FStStrNoPop var_B8
  loc_B0C3E4: ConcatStr
  loc_B0C3E5: FStStrNoPop var_BC
  loc_B0C3E8: LitStr """ align=""left"">"
  loc_B0C3EB: ConcatStr
  loc_B0C3EC: FStStrNoPop var_C0
  loc_B0C3EF: FMemLdR4 var_B4(0)
  loc_B0C3F4: ConcatStr
  loc_B0C3F5: FStStrNoPop var_C4
  loc_B0C3F8: LitStr "<br>"
  loc_B0C3FB: ConcatStr
  loc_B0C3FC: FStStrNoPop var_C8
  loc_B0C3FF: FMemLdR4 var_B4(4)
  loc_B0C404: ConcatStr
  loc_B0C405: FStStrNoPop var_CC
  loc_B0C408: LitStr "</td>"
  loc_B0C40B: ConcatStr
  loc_B0C40C: CVarStr var_DC
  loc_B0C40F: PopAdLdVar
  loc_B0C410: FLdPr Me
  loc_B0C413: MemLdRfVar from_stack_1.global_64
  loc_B0C416: LdPrVar
  loc_B0C418: LateMemCall
  loc_B0C41E: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B0C42D: FFree1Var var_DC = ""
  loc_B0C430: LitI2_Byte 1
  loc_B0C432: FLdPr Me
  loc_B0C435: MemLdRfVar from_stack_1.global_84
  loc_B0C438: FMemLdR4 var_B4(8)
  loc_B0C43D: LitI2_Byte 1
  loc_B0C43F: FnUBound
  loc_B0C441: CI2I4
  loc_B0C442: ForI2 var_E0
  loc_B0C448: FLdPr Me
  loc_B0C44B: MemLdI2 global_84
  loc_B0C44E: LitI2_Byte 1
  loc_B0C450: GtI2
  loc_B0C451: BranchF loc_B0C468
  loc_B0C454: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B0C459: PopAdLdVar
  loc_B0C45A: FLdPr Me
  loc_B0C45D: MemLdRfVar from_stack_1.global_64
  loc_B0C460: LdPrVar
  loc_B0C462: LateMemCall
  loc_B0C468: FLdPr Me
  loc_B0C46B: MemLdI2 global_84
  loc_B0C46E: CI4UI1
  loc_B0C46F: FMemLdR4 var_B4(8)
  loc_B0C474: AryLock
  loc_B0C477: Ary1LdRf
  loc_B0C478: FStR4 var_E8
  loc_B0C47B: LitStr vbNullString
  loc_B0C47E: LitI2_Byte 0
  loc_B0C480: LitI2_Byte 0
  loc_B0C482: LitI2_Byte 0
  loc_B0C484: LitStr "left"
  loc_B0C487: FMemLdR4 var_E8(0)
  loc_B0C48C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0C491: CVarStr var_DC
  loc_B0C494: PopAdLdVar
  loc_B0C495: FLdPr Me
  loc_B0C498: MemLdRfVar from_stack_1.global_64
  loc_B0C49B: LdPrVar
  loc_B0C49D: LateMemCall
  loc_B0C4A3: FFree1Var var_DC = ""
  loc_B0C4A6: LitStr vbNullString
  loc_B0C4A9: LitI2_Byte 0
  loc_B0C4AB: LitI2_Byte 0
  loc_B0C4AD: LitI2_Byte 0
  loc_B0C4AF: LitStr "center"
  loc_B0C4B2: FMemLdR4 var_E8(4)
  loc_B0C4B7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0C4BC: CVarStr var_DC
  loc_B0C4BF: PopAdLdVar
  loc_B0C4C0: FLdPr Me
  loc_B0C4C3: MemLdRfVar from_stack_1.global_64
  loc_B0C4C6: LdPrVar
  loc_B0C4C8: LateMemCall
  loc_B0C4CE: FFree1Var var_DC = ""
  loc_B0C4D1: LitStr vbNullString
  loc_B0C4D4: LitI2_Byte 0
  loc_B0C4D6: LitI2_Byte 0
  loc_B0C4D8: LitI2_Byte 0
  loc_B0C4DA: LitStr "center"
  loc_B0C4DD: FMemLdR4 var_E8(8)
  loc_B0C4E2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0C4E7: CVarStr var_DC
  loc_B0C4EA: PopAdLdVar
  loc_B0C4EB: FLdPr Me
  loc_B0C4EE: MemLdRfVar from_stack_1.global_64
  loc_B0C4F1: LdPrVar
  loc_B0C4F3: LateMemCall
  loc_B0C4F9: FFree1Var var_DC = ""
  loc_B0C4FC: LitStr vbNullString
  loc_B0C4FF: LitI2_Byte 0
  loc_B0C501: LitI2_Byte 0
  loc_B0C503: LitI2_Byte 0
  loc_B0C505: LitStr "center"
  loc_B0C508: FMemLdR4 var_E8(12)
  loc_B0C50D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0C512: CVarStr var_DC
  loc_B0C515: PopAdLdVar
  loc_B0C516: FLdPr Me
  loc_B0C519: MemLdRfVar from_stack_1.global_64
  loc_B0C51C: LdPrVar
  loc_B0C51E: LateMemCall
  loc_B0C524: FFree1Var var_DC = ""
  loc_B0C527: LitVarStr var_9C, "     </tr>"
  loc_B0C52C: PopAdLdVar
  loc_B0C52D: FLdPr Me
  loc_B0C530: MemLdRfVar from_stack_1.global_64
  loc_B0C533: LdPrVar
  loc_B0C535: LateMemCall
  loc_B0C53B: LitI4 0
  loc_B0C540: FStR4 var_E8
  loc_B0C543: AryUnlock
  loc_B0C546: FLdPr Me
  loc_B0C549: MemLdRfVar from_stack_1.global_84
  loc_B0C54C: NextI2 var_E0, loc_B0C448
  loc_B0C551: LitI4 0
  loc_B0C556: FStR4 var_B4
  loc_B0C559: AryUnlock
  loc_B0C55C: FLdPr Me
  loc_B0C55F: MemLdRfVar from_stack_1.global_86
  loc_B0C562: NextI2 var_8C, loc_B0C3AB
  loc_B0C567: Call Proc_145_16_A0D8D8()
  loc_B0C56C: FLdPr Me
  loc_B0C56F: MemLdRfVar from_stack_1.global_64
  loc_B0C572: LdPrVar
  loc_B0C574: LateMemCall
  loc_B0C57A: LitStr vbNullString
  loc_B0C57D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B0C582: ExitProcHresult
End Sub

Private Function Proc_145_13_AC69A8() 'AC69A8
  'Data Table: 452ED0
  loc_AC68A0: FLdPr Me
  loc_AC68A3: MemLdI2 global_86
  loc_AC68A6: LitI2_Byte 1
  loc_AC68A8: AddI2
  loc_AC68A9: FLdPr Me
  loc_AC68AC: MemStI2 global_86
  loc_AC68AF: LitI2_Byte 0
  loc_AC68B1: FLdPr Me
  loc_AC68B4: MemStI2 global_84
  loc_AC68B7: LitI4 0
  loc_AC68BC: FLdPr Me
  loc_AC68BF: MemLdI2 global_86
  loc_AC68C2: CI4UI1
  loc_AC68C3: FLdPr Me
  loc_AC68C6: MemLdRfVar from_stack_1.global_80
  loc_AC68C9: RedimPreserve
  loc_AC68D3: FLdRfVar var_A0
  loc_AC68D6: LitVarStr var_9C, "CodiUsua"
  loc_AC68DB: PopAdLdVar
  loc_AC68DC: FLdRfVar var_8C
  loc_AC68DF: FLdRfVar var_88
  loc_AC68E2: FLdPr Me
  loc_AC68E5: MemLdRfVar from_stack_1.global_56
  loc_AC68E8: NewIfNullPr clsbase
  loc_AC68EB: from_stack_1v = clsbase.RsFrmGet()
  loc_AC68F0: FLdPr var_88
  loc_AC68F3:  = Me.Fields
  loc_AC68F8: FLdPr var_8C
  loc_AC68FB: from_stack_2 = Me.Item(from_stack_1)
  loc_AC6900: LitI2_Byte 0
  loc_AC6902: LitVar_Missing var_D4
  loc_AC6905: LitI2_Byte 0
  loc_AC6907: FLdZeroAd var_A0
  loc_AC690A: CVarAd
  loc_AC690E: PopAdLdVar
  loc_AC690F: FLdPr Me
  loc_AC6912: MemLdI2 global_86
  loc_AC6915: CI4UI1
  loc_AC6916: FLdPr Me
  loc_AC6919: MemLdStr global_80
  loc_AC691C: AryLock
  loc_AC691F: Ary1LdPr
  loc_AC6920: MemLdRfVar from_stack_1.global_0
  loc_AC6923: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC6928: AryUnlock
  loc_AC692B: FFreeAd var_88 = ""
  loc_AC6932: FFreeVar var_B4 = ""
  loc_AC6939: FLdRfVar var_A0
  loc_AC693C: LitVarStr var_9C, "DetaPers"
  loc_AC6941: PopAdLdVar
  loc_AC6942: FLdRfVar var_8C
  loc_AC6945: FLdRfVar var_88
  loc_AC6948: FLdPr Me
  loc_AC694B: MemLdRfVar from_stack_1.global_56
  loc_AC694E: NewIfNullPr clsbase
  loc_AC6951: from_stack_1v = clsbase.RsFrmGet()
  loc_AC6956: FLdPr var_88
  loc_AC6959:  = Me.Fields
  loc_AC695E: FLdPr var_8C
  loc_AC6961: from_stack_2 = Me.Item(from_stack_1)
  loc_AC6966: LitI2_Byte 0
  loc_AC6968: LitVar_Missing var_D4
  loc_AC696B: LitI2_Byte 0
  loc_AC696D: FLdZeroAd var_A0
  loc_AC6970: CVarAd
  loc_AC6974: PopAdLdVar
  loc_AC6975: FLdPr Me
  loc_AC6978: MemLdI2 global_86
  loc_AC697B: CI4UI1
  loc_AC697C: FLdPr Me
  loc_AC697F: MemLdStr global_80
  loc_AC6982: AryLock
  loc_AC6985: Ary1LdPr
  loc_AC6986: MemLdRfVar from_stack_1.global_4
  loc_AC6989: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC698E: AryUnlock
  loc_AC6991: FFreeAd var_88 = ""
  loc_AC6998: FFreeVar var_B4 = ""
  loc_AC699F: Call Proc_145_14_B0B6D8()
  loc_AC69A4: ExitProcHresult
End Function

Private Function Proc_145_14_B0B6D8() 'B0B6D8
  'Data Table: 452ED0
  loc_B0B4BC: FLdPr Me
  loc_B0B4BF: MemLdI2 global_84
  loc_B0B4C2: LitI2_Byte 1
  loc_B0B4C4: AddI2
  loc_B0B4C5: FLdPr Me
  loc_B0B4C8: MemStI2 global_84
  loc_B0B4CB: LitI4 0
  loc_B0B4D0: FLdPr Me
  loc_B0B4D3: MemLdI2 global_84
  loc_B0B4D6: CI4UI1
  loc_B0B4D7: FLdPr Me
  loc_B0B4DA: MemLdI2 global_86
  loc_B0B4DD: CI4UI1
  loc_B0B4DE: FLdPr Me
  loc_B0B4E1: MemLdStr global_80
  loc_B0B4E4: Ary1LdPr
  loc_B0B4E5: MemLdRfVar from_stack_1.global_8
  loc_B0B4E8: RedimPreserve
  loc_B0B4F2: FLdPr Me
  loc_B0B4F5: MemLdRfVar from_stack_1.global_56
  loc_B0B4F8: NewIfNullAd
  loc_B0B4FB: FStAd var_88 
  loc_B0B4FF: FLdRfVar var_A4
  loc_B0B502: LitVarStr var_A0, "FormMenu"
  loc_B0B507: PopAdLdVar
  loc_B0B508: FLdRfVar var_90
  loc_B0B50B: FLdRfVar var_8C
  loc_B0B50E: FLdPr var_88
  loc_B0B511: from_stack_1v = clsbase.RsFrmGet()
  loc_B0B516: FLdPr var_8C
  loc_B0B519:  = Me.Fields
  loc_B0B51E: FLdPr var_90
  loc_B0B521: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B526: LitI2_Byte 0
  loc_B0B528: LitVar_Missing var_DC
  loc_B0B52B: LitI2_Byte 0
  loc_B0B52D: FLdZeroAd var_A4
  loc_B0B530: CVarAd
  loc_B0B534: PopAdLdVar
  loc_B0B535: FLdPr Me
  loc_B0B538: MemLdI2 global_84
  loc_B0B53B: CI4UI1
  loc_B0B53C: FLdPr Me
  loc_B0B53F: MemLdI2 global_86
  loc_B0B542: CI4UI1
  loc_B0B543: FLdPr Me
  loc_B0B546: MemLdStr global_80
  loc_B0B549: AryLock
  loc_B0B54C: Ary1LdPr
  loc_B0B54D: MemLdStr global_8
  loc_B0B550: AryLock
  loc_B0B553: Ary1LdPr
  loc_B0B554: MemLdRfVar from_stack_1.global_0
  loc_B0B557: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0B55C: AryUnlock
  loc_B0B55F: AryUnlock
  loc_B0B562: FFreeAd var_8C = ""
  loc_B0B569: FFreeVar var_BC = ""
  loc_B0B570: FLdRfVar var_A4
  loc_B0B573: LitVarStr var_A0, "Alta"
  loc_B0B578: PopAdLdVar
  loc_B0B579: FLdRfVar var_90
  loc_B0B57C: FLdRfVar var_8C
  loc_B0B57F: FLdPr var_88
  loc_B0B582: from_stack_1v = clsbase.RsFrmGet()
  loc_B0B587: FLdPr var_8C
  loc_B0B58A:  = Me.Fields
  loc_B0B58F: FLdPr var_90
  loc_B0B592: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B597: LitI2_Byte 0
  loc_B0B599: LitVar_Missing var_DC
  loc_B0B59C: LitI2_Byte 0
  loc_B0B59E: FLdZeroAd var_A4
  loc_B0B5A1: CVarAd
  loc_B0B5A5: PopAdLdVar
  loc_B0B5A6: FLdPr Me
  loc_B0B5A9: MemLdI2 global_84
  loc_B0B5AC: CI4UI1
  loc_B0B5AD: FLdPr Me
  loc_B0B5B0: MemLdI2 global_86
  loc_B0B5B3: CI4UI1
  loc_B0B5B4: FLdPr Me
  loc_B0B5B7: MemLdStr global_80
  loc_B0B5BA: AryLock
  loc_B0B5BD: Ary1LdPr
  loc_B0B5BE: MemLdStr global_8
  loc_B0B5C1: AryLock
  loc_B0B5C4: Ary1LdPr
  loc_B0B5C5: MemLdRfVar from_stack_1.global_4
  loc_B0B5C8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0B5CD: AryUnlock
  loc_B0B5D0: AryUnlock
  loc_B0B5D3: FFreeAd var_8C = ""
  loc_B0B5DA: FFreeVar var_BC = ""
  loc_B0B5E1: FLdRfVar var_A4
  loc_B0B5E4: LitVarStr var_A0, "Baja"
  loc_B0B5E9: PopAdLdVar
  loc_B0B5EA: FLdRfVar var_90
  loc_B0B5ED: FLdRfVar var_8C
  loc_B0B5F0: FLdPr var_88
  loc_B0B5F3: from_stack_1v = clsbase.RsFrmGet()
  loc_B0B5F8: FLdPr var_8C
  loc_B0B5FB:  = Me.Fields
  loc_B0B600: FLdPr var_90
  loc_B0B603: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B608: LitI2_Byte 0
  loc_B0B60A: LitVar_Missing var_DC
  loc_B0B60D: LitI2_Byte 0
  loc_B0B60F: FLdZeroAd var_A4
  loc_B0B612: CVarAd
  loc_B0B616: PopAdLdVar
  loc_B0B617: FLdPr Me
  loc_B0B61A: MemLdI2 global_84
  loc_B0B61D: CI4UI1
  loc_B0B61E: FLdPr Me
  loc_B0B621: MemLdI2 global_86
  loc_B0B624: CI4UI1
  loc_B0B625: FLdPr Me
  loc_B0B628: MemLdStr global_80
  loc_B0B62B: AryLock
  loc_B0B62E: Ary1LdPr
  loc_B0B62F: MemLdStr global_8
  loc_B0B632: AryLock
  loc_B0B635: Ary1LdPr
  loc_B0B636: MemLdRfVar from_stack_1.global_8
  loc_B0B639: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0B63E: AryUnlock
  loc_B0B641: AryUnlock
  loc_B0B644: FFreeAd var_8C = ""
  loc_B0B64B: FFreeVar var_BC = ""
  loc_B0B652: FLdRfVar var_A4
  loc_B0B655: LitVarStr var_A0, "Modi"
  loc_B0B65A: PopAdLdVar
  loc_B0B65B: FLdRfVar var_90
  loc_B0B65E: FLdRfVar var_8C
  loc_B0B661: FLdPr var_88
  loc_B0B664: from_stack_1v = clsbase.RsFrmGet()
  loc_B0B669: FLdPr var_8C
  loc_B0B66C:  = Me.Fields
  loc_B0B671: FLdPr var_90
  loc_B0B674: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B679: LitI2_Byte 0
  loc_B0B67B: LitVar_Missing var_DC
  loc_B0B67E: LitI2_Byte 0
  loc_B0B680: FLdZeroAd var_A4
  loc_B0B683: CVarAd
  loc_B0B687: PopAdLdVar
  loc_B0B688: FLdPr Me
  loc_B0B68B: MemLdI2 global_84
  loc_B0B68E: CI4UI1
  loc_B0B68F: FLdPr Me
  loc_B0B692: MemLdI2 global_86
  loc_B0B695: CI4UI1
  loc_B0B696: FLdPr Me
  loc_B0B699: MemLdStr global_80
  loc_B0B69C: AryLock
  loc_B0B69F: Ary1LdPr
  loc_B0B6A0: MemLdStr global_8
  loc_B0B6A3: AryLock
  loc_B0B6A6: Ary1LdPr
  loc_B0B6A7: MemLdRfVar from_stack_1.global_12
  loc_B0B6AA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0B6AF: AryUnlock
  loc_B0B6B2: AryUnlock
  loc_B0B6B5: FFreeAd var_8C = ""
  loc_B0B6BC: FFreeVar var_BC = ""
  loc_B0B6C3: LitI2_Byte 1
  loc_B0B6C5: PopTmpLdAd2 var_DE
  loc_B0B6C8: FLdPr var_88
  loc_B0B6CB: Call clsbase.Move(from_stack_1v)
  loc_B0B6D0: LitNothing
  loc_B0B6D2: FStAd var_88 
  loc_B0B6D6: ExitProcHresult
End Function

Private Function Proc_145_15_BA05D4() 'BA05D4
  'Data Table: 452ED0
  loc_BA0000: LitVarStr var_94, "<html>"
  loc_BA0005: PopAdLdVar
  loc_BA0006: FLdPr Me
  loc_BA0009: MemLdRfVar from_stack_1.global_64
  loc_BA000C: LdPrVar
  loc_BA000E: LateMemCall
  loc_BA0014: LitVarStr var_94, "<head>"
  loc_BA0019: PopAdLdVar
  loc_BA001A: FLdPr Me
  loc_BA001D: MemLdRfVar from_stack_1.global_64
  loc_BA0020: LdPrVar
  loc_BA0022: LateMemCall
  loc_BA0028: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BA002D: PopAdLdVar
  loc_BA002E: FLdPr Me
  loc_BA0031: MemLdRfVar from_stack_1.global_64
  loc_BA0034: LdPrVar
  loc_BA0036: LateMemCall
  loc_BA003C: LitStr "<title>"
  loc_BA003F: FLdRfVar var_A8
  loc_BA0042: FLdPr Me
  loc_BA0045:  = Me.Caption
  loc_BA004A: ILdRf var_A8
  loc_BA004D: ConcatStr
  loc_BA004E: FStStrNoPop var_AC
  loc_BA0051: LitStr "</title>"
  loc_BA0054: ConcatStr
  loc_BA0055: CVarStr var_BC
  loc_BA0058: PopAdLdVar
  loc_BA0059: FLdPr Me
  loc_BA005C: MemLdRfVar from_stack_1.global_64
  loc_BA005F: LdPrVar
  loc_BA0061: LateMemCall
  loc_BA0067: FFreeStr var_A8 = ""
  loc_BA006E: FFree1Var var_BC = ""
  loc_BA0071: LitVarStr var_94, "<style type=""text/css"">"
  loc_BA0076: PopAdLdVar
  loc_BA0077: FLdPr Me
  loc_BA007A: MemLdRfVar from_stack_1.global_64
  loc_BA007D: LdPrVar
  loc_BA007F: LateMemCall
  loc_BA0085: LitVarStr var_94, ".Titulo1 {"
  loc_BA008A: PopAdLdVar
  loc_BA008B: FLdPr Me
  loc_BA008E: MemLdRfVar from_stack_1.global_64
  loc_BA0091: LdPrVar
  loc_BA0093: LateMemCall
  loc_BA0099: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA009E: PopAdLdVar
  loc_BA009F: FLdPr Me
  loc_BA00A2: MemLdRfVar from_stack_1.global_64
  loc_BA00A5: LdPrVar
  loc_BA00A7: LateMemCall
  loc_BA00AD: LitVarStr var_94, " font-size: 18px;"
  loc_BA00B2: PopAdLdVar
  loc_BA00B3: FLdPr Me
  loc_BA00B6: MemLdRfVar from_stack_1.global_64
  loc_BA00B9: LdPrVar
  loc_BA00BB: LateMemCall
  loc_BA00C1: LitVarStr var_94, " font-weight: bold;"
  loc_BA00C6: PopAdLdVar
  loc_BA00C7: FLdPr Me
  loc_BA00CA: MemLdRfVar from_stack_1.global_64
  loc_BA00CD: LdPrVar
  loc_BA00CF: LateMemCall
  loc_BA00D5: LitVarStr var_94, "}"
  loc_BA00DA: PopAdLdVar
  loc_BA00DB: FLdPr Me
  loc_BA00DE: MemLdRfVar from_stack_1.global_64
  loc_BA00E1: LdPrVar
  loc_BA00E3: LateMemCall
  loc_BA00E9: LitVarStr var_94, ".Titulo2 {"
  loc_BA00EE: PopAdLdVar
  loc_BA00EF: FLdPr Me
  loc_BA00F2: MemLdRfVar from_stack_1.global_64
  loc_BA00F5: LdPrVar
  loc_BA00F7: LateMemCall
  loc_BA00FD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA0102: PopAdLdVar
  loc_BA0103: FLdPr Me
  loc_BA0106: MemLdRfVar from_stack_1.global_64
  loc_BA0109: LdPrVar
  loc_BA010B: LateMemCall
  loc_BA0111: LitVarStr var_94, " font-size: 14px;"
  loc_BA0116: PopAdLdVar
  loc_BA0117: FLdPr Me
  loc_BA011A: MemLdRfVar from_stack_1.global_64
  loc_BA011D: LdPrVar
  loc_BA011F: LateMemCall
  loc_BA0125: LitVarStr var_94, " font-weight: bold;"
  loc_BA012A: PopAdLdVar
  loc_BA012B: FLdPr Me
  loc_BA012E: MemLdRfVar from_stack_1.global_64
  loc_BA0131: LdPrVar
  loc_BA0133: LateMemCall
  loc_BA0139: LitVarStr var_94, "}"
  loc_BA013E: PopAdLdVar
  loc_BA013F: FLdPr Me
  loc_BA0142: MemLdRfVar from_stack_1.global_64
  loc_BA0145: LdPrVar
  loc_BA0147: LateMemCall
  loc_BA014D: LitVarStr var_94, ".Normal {"
  loc_BA0152: PopAdLdVar
  loc_BA0153: FLdPr Me
  loc_BA0156: MemLdRfVar from_stack_1.global_64
  loc_BA0159: LdPrVar
  loc_BA015B: LateMemCall
  loc_BA0161: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA0166: PopAdLdVar
  loc_BA0167: FLdPr Me
  loc_BA016A: MemLdRfVar from_stack_1.global_64
  loc_BA016D: LdPrVar
  loc_BA016F: LateMemCall
  loc_BA0175: LitVarStr var_94, " font-size: 14px;"
  loc_BA017A: PopAdLdVar
  loc_BA017B: FLdPr Me
  loc_BA017E: MemLdRfVar from_stack_1.global_64
  loc_BA0181: LdPrVar
  loc_BA0183: LateMemCall
  loc_BA0189: LitVarStr var_94, " font-style: normal;"
  loc_BA018E: PopAdLdVar
  loc_BA018F: FLdPr Me
  loc_BA0192: MemLdRfVar from_stack_1.global_64
  loc_BA0195: LdPrVar
  loc_BA0197: LateMemCall
  loc_BA019D: LitVarStr var_94, " font-weight: normal;"
  loc_BA01A2: PopAdLdVar
  loc_BA01A3: FLdPr Me
  loc_BA01A6: MemLdRfVar from_stack_1.global_64
  loc_BA01A9: LdPrVar
  loc_BA01AB: LateMemCall
  loc_BA01B1: LitVarStr var_94, " font-variant: normal;"
  loc_BA01B6: PopAdLdVar
  loc_BA01B7: FLdPr Me
  loc_BA01BA: MemLdRfVar from_stack_1.global_64
  loc_BA01BD: LdPrVar
  loc_BA01BF: LateMemCall
  loc_BA01C5: LitVarStr var_94, "}"
  loc_BA01CA: PopAdLdVar
  loc_BA01CB: FLdPr Me
  loc_BA01CE: MemLdRfVar from_stack_1.global_64
  loc_BA01D1: LdPrVar
  loc_BA01D3: LateMemCall
  loc_BA01D9: LitVarStr var_94, ".Encabezado {"
  loc_BA01DE: PopAdLdVar
  loc_BA01DF: FLdPr Me
  loc_BA01E2: MemLdRfVar from_stack_1.global_64
  loc_BA01E5: LdPrVar
  loc_BA01E7: LateMemCall
  loc_BA01ED: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BA01F2: PopAdLdVar
  loc_BA01F3: FLdPr Me
  loc_BA01F6: MemLdRfVar from_stack_1.global_64
  loc_BA01F9: LdPrVar
  loc_BA01FB: LateMemCall
  loc_BA0201: LitVarStr var_94, " font-size: 13px;"
  loc_BA0206: PopAdLdVar
  loc_BA0207: FLdPr Me
  loc_BA020A: MemLdRfVar from_stack_1.global_64
  loc_BA020D: LdPrVar
  loc_BA020F: LateMemCall
  loc_BA0215: LitVarStr var_94, " font-weight: bold;"
  loc_BA021A: PopAdLdVar
  loc_BA021B: FLdPr Me
  loc_BA021E: MemLdRfVar from_stack_1.global_64
  loc_BA0221: LdPrVar
  loc_BA0223: LateMemCall
  loc_BA0229: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BA022E: PopAdLdVar
  loc_BA022F: FLdPr Me
  loc_BA0232: MemLdRfVar from_stack_1.global_64
  loc_BA0235: LdPrVar
  loc_BA0237: LateMemCall
  loc_BA023D: LitVarStr var_94, "}"
  loc_BA0242: PopAdLdVar
  loc_BA0243: FLdPr Me
  loc_BA0246: MemLdRfVar from_stack_1.global_64
  loc_BA0249: LdPrVar
  loc_BA024B: LateMemCall
  loc_BA0251: LitVarStr var_94, ".LineaDato {"
  loc_BA0256: PopAdLdVar
  loc_BA0257: FLdPr Me
  loc_BA025A: MemLdRfVar from_stack_1.global_64
  loc_BA025D: LdPrVar
  loc_BA025F: LateMemCall
  loc_BA0265: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA026A: PopAdLdVar
  loc_BA026B: FLdPr Me
  loc_BA026E: MemLdRfVar from_stack_1.global_64
  loc_BA0271: LdPrVar
  loc_BA0273: LateMemCall
  loc_BA0279: LitVarStr var_94, " font-size: 10px;"
  loc_BA027E: PopAdLdVar
  loc_BA027F: FLdPr Me
  loc_BA0282: MemLdRfVar from_stack_1.global_64
  loc_BA0285: LdPrVar
  loc_BA0287: LateMemCall
  loc_BA028D: LitVarStr var_94, "}"
  loc_BA0292: PopAdLdVar
  loc_BA0293: FLdPr Me
  loc_BA0296: MemLdRfVar from_stack_1.global_64
  loc_BA0299: LdPrVar
  loc_BA029B: LateMemCall
  loc_BA02A1: LitVarStr var_94, ".Totales {"
  loc_BA02A6: PopAdLdVar
  loc_BA02A7: FLdPr Me
  loc_BA02AA: MemLdRfVar from_stack_1.global_64
  loc_BA02AD: LdPrVar
  loc_BA02AF: LateMemCall
  loc_BA02B5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA02BA: PopAdLdVar
  loc_BA02BB: FLdPr Me
  loc_BA02BE: MemLdRfVar from_stack_1.global_64
  loc_BA02C1: LdPrVar
  loc_BA02C3: LateMemCall
  loc_BA02C9: LitVarStr var_94, " font-size: 12px;"
  loc_BA02CE: PopAdLdVar
  loc_BA02CF: FLdPr Me
  loc_BA02D2: MemLdRfVar from_stack_1.global_64
  loc_BA02D5: LdPrVar
  loc_BA02D7: LateMemCall
  loc_BA02DD: LitVarStr var_94, " font-weight: bold;"
  loc_BA02E2: PopAdLdVar
  loc_BA02E3: FLdPr Me
  loc_BA02E6: MemLdRfVar from_stack_1.global_64
  loc_BA02E9: LdPrVar
  loc_BA02EB: LateMemCall
  loc_BA02F1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BA02F6: PopAdLdVar
  loc_BA02F7: FLdPr Me
  loc_BA02FA: MemLdRfVar from_stack_1.global_64
  loc_BA02FD: LdPrVar
  loc_BA02FF: LateMemCall
  loc_BA0305: LitVarStr var_94, "}"
  loc_BA030A: PopAdLdVar
  loc_BA030B: FLdPr Me
  loc_BA030E: MemLdRfVar from_stack_1.global_64
  loc_BA0311: LdPrVar
  loc_BA0313: LateMemCall
  loc_BA0319: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BA031E: PopAdLdVar
  loc_BA031F: FLdPr Me
  loc_BA0322: MemLdRfVar from_stack_1.global_64
  loc_BA0325: LdPrVar
  loc_BA0327: LateMemCall
  loc_BA032D: LitVarStr var_94, "</style>"
  loc_BA0332: PopAdLdVar
  loc_BA0333: FLdPr Me
  loc_BA0336: MemLdRfVar from_stack_1.global_64
  loc_BA0339: LdPrVar
  loc_BA033B: LateMemCall
  loc_BA0341: LitI4 0
  loc_BA0346: FStStrCopy var_AC
  loc_BA0349: FLdRfVar var_AC
  loc_BA034C: LitI4 0
  loc_BA0351: FStStrCopy var_A8
  loc_BA0354: FLdRfVar var_A8
  loc_BA0357: LitI2_Byte 0
  loc_BA0359: PopTmpLdAd2 var_BE
  loc_BA035C: FLdPr Me
  loc_BA035F: MemLdRfVar from_stack_1.global_64
  loc_BA0362: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BA0367: FFreeStr var_A8 = ""
  loc_BA036E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BA0373: PopAdLdVar
  loc_BA0374: FLdPr Me
  loc_BA0377: MemLdRfVar from_stack_1.global_64
  loc_BA037A: LdPrVar
  loc_BA037C: LateMemCall
  loc_BA0382: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_BA0387: PopAdLdVar
  loc_BA0388: FLdPr Me
  loc_BA038B: MemLdRfVar from_stack_1.global_64
  loc_BA038E: LdPrVar
  loc_BA0390: LateMemCall
  loc_BA0396: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA0399: LitI2_Byte &H5F
  loc_BA039B: CStrUI1
  loc_BA039D: FStStrNoPop var_A8
  loc_BA03A0: ConcatStr
  loc_BA03A1: FStStrNoPop var_AC
  loc_BA03A4: LitStr """ height="""
  loc_BA03A7: ConcatStr
  loc_BA03A8: FStStrNoPop var_C4
  loc_BA03AB: LitI2_Byte &H3C
  loc_BA03AD: CStrUI1
  loc_BA03AF: FStStrNoPop var_C8
  loc_BA03B2: ConcatStr
  loc_BA03B3: FStStrNoPop var_CC
  loc_BA03B6: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BA03B9: ConcatStr
  loc_BA03BA: CVarStr var_EC
  loc_BA03BD: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_BA03C2: FStVarCopyObj var_BC
  loc_BA03C5: FLdRfVar var_BC
  loc_BA03C8: FLdRfVar var_DC
  loc_BA03CB: ImpAdCallFPR4  = Ucase()
  loc_BA03D0: FLdRfVar var_DC
  loc_BA03D3: ConcatVar var_FC
  loc_BA03D7: LitVarStr var_A4, "</p>"
  loc_BA03DC: ConcatVar var_10C
  loc_BA03E0: PopAdLdVar
  loc_BA03E1: FLdPr Me
  loc_BA03E4: MemLdRfVar from_stack_1.global_64
  loc_BA03E7: LdPrVar
  loc_BA03E9: LateMemCall
  loc_BA03EF: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BA03FC: FFreeVar var_BC = "": var_EC = "": var_DC = "": var_FC = ""
  loc_BA0409: LitStr "    <p>"
  loc_BA040C: FLdRfVar var_A8
  loc_BA040F: FLdPr Me
  loc_BA0412:  = Me.Caption
  loc_BA0417: ILdRf var_A8
  loc_BA041A: ConcatStr
  loc_BA041B: FStStrNoPop var_AC
  loc_BA041E: LitStr "</p></th>"
  loc_BA0421: ConcatStr
  loc_BA0422: CVarStr var_BC
  loc_BA0425: PopAdLdVar
  loc_BA0426: FLdPr Me
  loc_BA0429: MemLdRfVar from_stack_1.global_64
  loc_BA042C: LdPrVar
  loc_BA042E: LateMemCall
  loc_BA0434: FFreeStr var_A8 = ""
  loc_BA043B: FFree1Var var_BC = ""
  loc_BA043E: LitVarStr var_94, "  </tr>"
  loc_BA0443: PopAdLdVar
  loc_BA0444: FLdPr Me
  loc_BA0447: MemLdRfVar from_stack_1.global_64
  loc_BA044A: LdPrVar
  loc_BA044C: LateMemCall
  loc_BA0452: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_BA0457: PopAdLdVar
  loc_BA0458: FLdPr Me
  loc_BA045B: MemLdRfVar from_stack_1.global_64
  loc_BA045E: LdPrVar
  loc_BA0460: LateMemCall
  loc_BA0466: LitVarStr var_94, "  <tr valign=""top"">"
  loc_BA046B: PopAdLdVar
  loc_BA046C: FLdPr Me
  loc_BA046F: MemLdRfVar from_stack_1.global_64
  loc_BA0472: LdPrVar
  loc_BA0474: LateMemCall
  loc_BA047A: LitVarStr var_94, "    <td align=""left"">"
  loc_BA047F: PopAdLdVar
  loc_BA0480: FLdPr Me
  loc_BA0483: MemLdRfVar from_stack_1.global_64
  loc_BA0486: LdPrVar
  loc_BA0488: LateMemCall
  loc_BA048E: LitStr "     Usuario: <span class=""Normal"">"
  loc_BA0491: FLdRfVar var_A8
  loc_BA0494: FLdPr Me
  loc_BA0497: VCallAd Control_ID_cboCodiUsua
  loc_BA049A: FStAdFunc var_120
  loc_BA049D: FLdPr var_120
  loc_BA04A0:  = Me.Text
  loc_BA04A5: ILdRf var_A8
  loc_BA04A8: ConcatStr
  loc_BA04A9: FStStrNoPop var_AC
  loc_BA04AC: LitStr "</span>"
  loc_BA04AF: ConcatStr
  loc_BA04B0: CVarStr var_BC
  loc_BA04B3: PopAdLdVar
  loc_BA04B4: FLdPr Me
  loc_BA04B7: MemLdRfVar from_stack_1.global_64
  loc_BA04BA: LdPrVar
  loc_BA04BC: LateMemCall
  loc_BA04C2: FFreeStr var_A8 = ""
  loc_BA04C9: FFree1Ad var_120
  loc_BA04CC: FFree1Var var_BC = ""
  loc_BA04CF: LitVarStr var_94, "    </td>"
  loc_BA04D4: PopAdLdVar
  loc_BA04D5: FLdPr Me
  loc_BA04D8: MemLdRfVar from_stack_1.global_64
  loc_BA04DB: LdPrVar
  loc_BA04DD: LateMemCall
  loc_BA04E3: LitVarStr var_94, "  </tr>"
  loc_BA04E8: PopAdLdVar
  loc_BA04E9: FLdPr Me
  loc_BA04EC: MemLdRfVar from_stack_1.global_64
  loc_BA04EF: LdPrVar
  loc_BA04F1: LateMemCall
  loc_BA04F7: LitVarStr var_94, "</table>"
  loc_BA04FC: PopAdLdVar
  loc_BA04FD: FLdPr Me
  loc_BA0500: MemLdRfVar from_stack_1.global_64
  loc_BA0503: LdPrVar
  loc_BA0505: LateMemCall
  loc_BA050B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BA0510: PopAdLdVar
  loc_BA0511: FLdPr Me
  loc_BA0514: MemLdRfVar from_stack_1.global_64
  loc_BA0517: LdPrVar
  loc_BA0519: LateMemCall
  loc_BA051F: LitVarStr var_94, "  <THEAD>"
  loc_BA0524: PopAdLdVar
  loc_BA0525: FLdPr Me
  loc_BA0528: MemLdRfVar from_stack_1.global_64
  loc_BA052B: LdPrVar
  loc_BA052D: LateMemCall
  loc_BA0533: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BA0538: PopAdLdVar
  loc_BA0539: FLdPr Me
  loc_BA053C: MemLdRfVar from_stack_1.global_64
  loc_BA053F: LdPrVar
  loc_BA0541: LateMemCall
  loc_BA0547: LitVarStr var_94, "    <th>Usuario</th>"
  loc_BA054C: PopAdLdVar
  loc_BA054D: FLdPr Me
  loc_BA0550: MemLdRfVar from_stack_1.global_64
  loc_BA0553: LdPrVar
  loc_BA0555: LateMemCall
  loc_BA055B: LitVarStr var_94, "    <th>Procedimiento</th>"
  loc_BA0560: PopAdLdVar
  loc_BA0561: FLdPr Me
  loc_BA0564: MemLdRfVar from_stack_1.global_64
  loc_BA0567: LdPrVar
  loc_BA0569: LateMemCall
  loc_BA056F: LitVarStr var_94, "    <th>Alta</th>"
  loc_BA0574: PopAdLdVar
  loc_BA0575: FLdPr Me
  loc_BA0578: MemLdRfVar from_stack_1.global_64
  loc_BA057B: LdPrVar
  loc_BA057D: LateMemCall
  loc_BA0583: LitVarStr var_94, "    <th>Baja</th>"
  loc_BA0588: PopAdLdVar
  loc_BA0589: FLdPr Me
  loc_BA058C: MemLdRfVar from_stack_1.global_64
  loc_BA058F: LdPrVar
  loc_BA0591: LateMemCall
  loc_BA0597: LitVarStr var_94, "    <th>Modif.</th>"
  loc_BA059C: PopAdLdVar
  loc_BA059D: FLdPr Me
  loc_BA05A0: MemLdRfVar from_stack_1.global_64
  loc_BA05A3: LdPrVar
  loc_BA05A5: LateMemCall
  loc_BA05AB: LitVarStr var_94, "  </tr>"
  loc_BA05B0: PopAdLdVar
  loc_BA05B1: FLdPr Me
  loc_BA05B4: MemLdRfVar from_stack_1.global_64
  loc_BA05B7: LdPrVar
  loc_BA05B9: LateMemCall
  loc_BA05BF: LitVarStr var_94, "  </THEAD>"
  loc_BA05C4: PopAdLdVar
  loc_BA05C5: FLdPr Me
  loc_BA05C8: MemLdRfVar from_stack_1.global_64
  loc_BA05CB: LdPrVar
  loc_BA05CD: LateMemCall
  loc_BA05D3: ExitProcHresult
End Function

Private Function Proc_145_16_A0D8D8() 'A0D8D8
  'Data Table: 452ED0
  loc_A0D898: LitVarStr var_94, "</table>"
  loc_A0D89D: PopAdLdVar
  loc_A0D89E: FLdPr Me
  loc_A0D8A1: MemLdRfVar from_stack_1.global_64
  loc_A0D8A4: LdPrVar
  loc_A0D8A6: LateMemCall
  loc_A0D8AC: LitVarStr var_94, "</body>"
  loc_A0D8B1: PopAdLdVar
  loc_A0D8B2: FLdPr Me
  loc_A0D8B5: MemLdRfVar from_stack_1.global_64
  loc_A0D8B8: LdPrVar
  loc_A0D8BA: LateMemCall
  loc_A0D8C0: LitVarStr var_94, "</html>"
  loc_A0D8C5: PopAdLdVar
  loc_A0D8C6: FLdPr Me
  loc_A0D8C9: MemLdRfVar from_stack_1.global_64
  loc_A0D8CC: LdPrVar
  loc_A0D8CE: LateMemCall
  loc_A0D8D4: ExitProcHresult
End Function
