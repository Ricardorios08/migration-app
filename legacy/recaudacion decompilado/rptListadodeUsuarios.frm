VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeUsuarios
  Caption = "Listado de Usuarios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeUsuarios.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 6192
  ClientHeight = 1416
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 1164
    Width = 6192
    Height = 252
    TabIndex = 7
    OleObjectBlob = "rptListadodeUsuarios.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 240
    Width = 735
    Height = 615
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptListadodeUsuarios.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeUsuarios.frx":0B9C
    Left = 4560
    Top = -120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 0
    Width = 1815
    Height = 1095
    TabIndex = 3
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 0
    Width = 3015
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 480
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptListadodeUsuarios.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeUsuarios"

Public bGenerado As Boolean

Private Type UDT_1_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdSalir_Click() '9FE5BC
  'Data Table: 4356DC
  loc_9FE58C: LitVarStr var_94, "Cerrando..."
  loc_9FE591: PopAdLdVar
  loc_9FE592: FLdPr Me
  loc_9FE595: VCallAd Control_ID_statusBar
  loc_9FE598: FStAdFunc var_A8
  loc_9FE59B: FLdPr var_A8
  loc_9FE59E: LateIdSt
  loc_9FE5A3: FFree1Ad var_A8
  loc_9FE5A6: ILdRf Me
  loc_9FE5A9: FStAdNoPop
  loc_9FE5AD: ImpAdLdRf MemVar_D9C5D8
  loc_9FE5B0: NewIfNullPr Global
  loc_9FE5B3: Global.Unload from_stack_1
  loc_9FE5B8: FFree1Ad var_A8
  loc_9FE5BB: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A187A8
  'Data Table: 4356DC
  loc_A18770: FLdPr Me
  loc_A18773: VCallAd Control_ID_statusBar
  loc_A18776: FStAdFunc var_88
  loc_A18779: FLdPr var_88
  loc_A1877C: LateIdLdVar var_98 DispID_1 0
  loc_A18783: CStrVarTmp
  loc_A18784: CVarStr var_A8
  loc_A18787: PopAdLdVar
  loc_A18788: FLdPr Me
  loc_A1878B: VCallAd Control_ID_statusBar
  loc_A1878E: FStAdFunc var_BC
  loc_A18791: FLdPr var_BC
  loc_A18794: LateIdSt
  loc_A18799: FFreeAd var_88 = ""
  loc_A187A0: FFreeVar var_98 = ""
  loc_A187A7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D69E4
  'Data Table: 4356DC
  loc_9D69CC: ILdRf Me
  loc_9D69CF: CastAd
  loc_9D69D2: FStAdFunc var_88
  loc_9D69D5: FLdRfVar var_88
  loc_9D69D8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D69DD: FFree1Ad var_88
  loc_9D69E0: ExitProcHresult
End Sub

Private Sub Form_Load() '9EFB38
  'Data Table: 4356DC
  loc_9EFB14: LitI2_Byte &HFF
  loc_9EFB16: ImpAdStI2 MemVar_D93C8A
  loc_9EFB19: ILdRf Me
  loc_9EFB1C: CastAd
  loc_9EFB1F: FStAdFunc var_88
  loc_9EFB22: FLdRfVar var_88
  loc_9EFB25: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9EFB2A: FFree1Ad var_88
  loc_9EFB2D: LitI2_Byte 0
  loc_9EFB2F: FLdPr Me
  loc_9EFB32: MemStI2 bGenerado
  loc_9EFB35: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D66EC
  'Data Table: 4356DC
  loc_9D66D4: FLdPr Me
  loc_9D66D7: VCallAd Control_ID_wbbReporte
  loc_9D66DA: FStAdFunc var_88
  loc_9D66DD: FLdRfVar var_88
  loc_9D66E0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D66E5: FFree1Ad var_88
  loc_9D66E8: ExitProcHresult
  loc_9D66E9: FLdRfVar arg_7800
End Sub

Private Sub cmdPredeterminada_Click() '9D6900
  'Data Table: 4356DC
  loc_9D68E8: LitI2_Byte 0
  loc_9D68EA: ILdRf Me
  loc_9D68ED: CastAd
  loc_9D68F0: FStAdFunc var_88
  loc_9D68F3: FLdRfVar var_88
  loc_9D68F6: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D68FB: FFree1Ad var_88
  loc_9D68FE: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE34C
  'Data Table: 4356DC
  loc_9DE330: LitI2_Byte 0
  loc_9DE332: PopTmpLdAd2 var_8A
  loc_9DE335: ILdRf Me
  loc_9DE338: CastAd
  loc_9DE33B: FStAdFunc var_88
  loc_9DE33E: FLdRfVar var_88
  loc_9DE341: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE346: FFree1Ad var_88
  loc_9DE349: ExitProcHresult
End Sub

Public Function bGeneradoGet() '435E18
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '435E27
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AEA90
  'Data Table: 4356DC
  loc_9AEA8C: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B5C89C
  'Data Table: 4356DC
  loc_B5C4A0: OnErrorGoto loc_B5C83D
  loc_B5C4A3: FLdPr Me
  loc_B5C4A6: MemLdI2 bGenerado
  loc_B5C4A9: BranchF loc_B5C4AD
  loc_B5C4AC: ExitProcHresult
  loc_B5C4AD: LitVarStr var_94, "Generando reporte..."
  loc_B5C4B2: PopAdLdVar
  loc_B5C4B3: FLdPr Me
  loc_B5C4B6: VCallAd Control_ID_statusBar
  loc_B5C4B9: FStAdFunc var_A8
  loc_B5C4BC: FLdPr var_A8
  loc_B5C4BF: LateIdSt
  loc_B5C4C4: FFree1Ad var_A8
  loc_B5C4C7: LitI4 &HB
  loc_B5C4CC: CI2I4
  loc_B5C4CD: FLdPr Me
  loc_B5C4D0: Me.MousePointer = from_stack_1
  loc_B5C4D5: FLdPr Me
  loc_B5C4D8: MemLdRfVar from_stack_1.global_56
  loc_B5C4DB: NewIfNullAd
  loc_B5C4DE: FStAd var_AC 
  loc_B5C4E2: LitStr "SELECT usuario.CodiUsua, usuario.CucuPers, DetaPers, FeveUsua, BajaFeho, if(InhaUsua='1','Sí','') as InhaUsua, ObseUsua FROM infogov.usuario LEFT JOIN personas ON personas.CucuPers = usuario.CucuPers ORDER BY usuario.CodiUsua"
  loc_B5C4E5: FLdPr var_AC
  loc_B5C4E8: Call clsusuario.RedefineRS(from_stack_1v)
  loc_B5C4ED: FLdRfVar var_B0
  loc_B5C4F0: FLdPr var_AC
  loc_B5C4F3: from_stack_1 = clsusuario.RecordCount
  loc_B5C4F8: ILdRf var_B0
  loc_B5C4FB: LitI4 0
  loc_B5C500: EqI4
  loc_B5C501: BranchF loc_B5C50F
  loc_B5C504: LitStr "No existen registros"
  loc_B5C507: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5C50C: Branch loc_B5C814
  loc_B5C50F: LitI4 0
  loc_B5C514: FLdRfVar var_B0
  loc_B5C517: FLdPr var_AC
  loc_B5C51A: from_stack_1 = clsusuario.RecordCount
  loc_B5C51F: ILdRf var_B0
  loc_B5C522: FLdPr Me
  loc_B5C525: MemLdRfVar from_stack_1.global_80
  loc_B5C528: Redim
  loc_B5C532: FLdPr var_AC
  loc_B5C535: Call clsusuario.MoveFirst()
  loc_B5C53A: LitI2_Byte 1
  loc_B5C53C: FLdPr Me
  loc_B5C53F: MemLdRfVar from_stack_1.global_84
  loc_B5C542: FLdPr Me
  loc_B5C545: MemLdStr global_80
  loc_B5C548: LitI2_Byte 1
  loc_B5C54A: FnUBound
  loc_B5C54C: CI2I4
  loc_B5C54D: ForI2 var_B4
  loc_B5C553: FLdRfVar var_BC
  loc_B5C556: LitVarStr var_94, "CodiUsua"
  loc_B5C55B: PopAdLdVar
  loc_B5C55C: FLdRfVar var_B8
  loc_B5C55F: FLdRfVar var_A8
  loc_B5C562: FLdPr var_AC
  loc_B5C565: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5C56A: FLdPr var_A8
  loc_B5C56D:  = Me.Fields
  loc_B5C572: FLdPr var_B8
  loc_B5C575: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C57A: LitI2_Byte 0
  loc_B5C57C: LitVar_Missing var_E0
  loc_B5C57F: LitI2_Byte 0
  loc_B5C581: FLdZeroAd var_BC
  loc_B5C584: CVarAd
  loc_B5C588: PopAdLdVar
  loc_B5C589: FLdPr Me
  loc_B5C58C: MemLdI2 global_84
  loc_B5C58F: CI4UI1
  loc_B5C590: FLdPr Me
  loc_B5C593: MemLdStr global_80
  loc_B5C596: AryLock
  loc_B5C599: Ary1LdPr
  loc_B5C59A: MemLdRfVar from_stack_1.global_0
  loc_B5C59D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5C5A2: AryUnlock
  loc_B5C5A5: FFreeAd var_A8 = ""
  loc_B5C5AC: FFreeVar var_D0 = ""
  loc_B5C5B3: FLdRfVar var_BC
  loc_B5C5B6: LitVarStr var_94, "CucuPers"
  loc_B5C5BB: PopAdLdVar
  loc_B5C5BC: FLdRfVar var_B8
  loc_B5C5BF: FLdRfVar var_A8
  loc_B5C5C2: FLdPr var_AC
  loc_B5C5C5: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5C5CA: FLdPr var_A8
  loc_B5C5CD:  = Me.Fields
  loc_B5C5D2: FLdPr var_B8
  loc_B5C5D5: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C5DA: LitI2_Byte 0
  loc_B5C5DC: LitVar_Missing var_E0
  loc_B5C5DF: LitI2_Byte 0
  loc_B5C5E1: FLdZeroAd var_BC
  loc_B5C5E4: CVarAd
  loc_B5C5E8: PopAdLdVar
  loc_B5C5E9: FLdPr Me
  loc_B5C5EC: MemLdI2 global_84
  loc_B5C5EF: CI4UI1
  loc_B5C5F0: FLdPr Me
  loc_B5C5F3: MemLdStr global_80
  loc_B5C5F6: AryLock
  loc_B5C5F9: Ary1LdPr
  loc_B5C5FA: MemLdRfVar from_stack_1.global_8
  loc_B5C5FD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5C602: AryUnlock
  loc_B5C605: FFreeAd var_A8 = ""
  loc_B5C60C: FFreeVar var_D0 = ""
  loc_B5C613: FLdRfVar var_BC
  loc_B5C616: LitVarStr var_94, "DetaPers"
  loc_B5C61B: PopAdLdVar
  loc_B5C61C: FLdRfVar var_B8
  loc_B5C61F: FLdRfVar var_A8
  loc_B5C622: FLdPr var_AC
  loc_B5C625: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5C62A: FLdPr var_A8
  loc_B5C62D:  = Me.Fields
  loc_B5C632: FLdPr var_B8
  loc_B5C635: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C63A: LitI2_Byte 0
  loc_B5C63C: LitVar_Missing var_E0
  loc_B5C63F: LitI2_Byte 0
  loc_B5C641: FLdZeroAd var_BC
  loc_B5C644: CVarAd
  loc_B5C648: PopAdLdVar
  loc_B5C649: FLdPr Me
  loc_B5C64C: MemLdI2 global_84
  loc_B5C64F: CI4UI1
  loc_B5C650: FLdPr Me
  loc_B5C653: MemLdStr global_80
  loc_B5C656: AryLock
  loc_B5C659: Ary1LdPr
  loc_B5C65A: MemLdRfVar from_stack_1.global_4
  loc_B5C65D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5C662: AryUnlock
  loc_B5C665: FFreeAd var_A8 = ""
  loc_B5C66C: FFreeVar var_D0 = ""
  loc_B5C673: FLdRfVar var_BC
  loc_B5C676: LitVarStr var_94, "FeveUsua"
  loc_B5C67B: PopAdLdVar
  loc_B5C67C: FLdRfVar var_B8
  loc_B5C67F: FLdRfVar var_A8
  loc_B5C682: FLdPr var_AC
  loc_B5C685: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5C68A: FLdPr var_A8
  loc_B5C68D:  = Me.Fields
  loc_B5C692: FLdPr var_B8
  loc_B5C695: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C69A: LitI2_Byte 0
  loc_B5C69C: LitVar_Missing var_E0
  loc_B5C69F: LitI2_Byte 0
  loc_B5C6A1: FLdZeroAd var_BC
  loc_B5C6A4: CVarAd
  loc_B5C6A8: PopAdLdVar
  loc_B5C6A9: FLdPr Me
  loc_B5C6AC: MemLdI2 global_84
  loc_B5C6AF: CI4UI1
  loc_B5C6B0: FLdPr Me
  loc_B5C6B3: MemLdStr global_80
  loc_B5C6B6: AryLock
  loc_B5C6B9: Ary1LdPr
  loc_B5C6BA: MemLdRfVar from_stack_1.global_12
  loc_B5C6BD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5C6C2: AryUnlock
  loc_B5C6C5: FFreeAd var_A8 = ""
  loc_B5C6CC: FFreeVar var_D0 = ""
  loc_B5C6D3: FLdRfVar var_BC
  loc_B5C6D6: LitVarStr var_94, "BajaFeho"
  loc_B5C6DB: PopAdLdVar
  loc_B5C6DC: FLdRfVar var_B8
  loc_B5C6DF: FLdRfVar var_A8
  loc_B5C6E2: FLdPr var_AC
  loc_B5C6E5: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5C6EA: FLdPr var_A8
  loc_B5C6ED:  = Me.Fields
  loc_B5C6F2: FLdPr var_B8
  loc_B5C6F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C6FA: LitI2_Byte 0
  loc_B5C6FC: LitVar_Missing var_E0
  loc_B5C6FF: LitI2_Byte 0
  loc_B5C701: FLdZeroAd var_BC
  loc_B5C704: CVarAd
  loc_B5C708: PopAdLdVar
  loc_B5C709: FLdPr Me
  loc_B5C70C: MemLdI2 global_84
  loc_B5C70F: CI4UI1
  loc_B5C710: FLdPr Me
  loc_B5C713: MemLdStr global_80
  loc_B5C716: AryLock
  loc_B5C719: Ary1LdPr
  loc_B5C71A: MemLdRfVar from_stack_1.global_24
  loc_B5C71D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5C722: AryUnlock
  loc_B5C725: FFreeAd var_A8 = ""
  loc_B5C72C: FFreeVar var_D0 = ""
  loc_B5C733: FLdRfVar var_BC
  loc_B5C736: LitVarStr var_94, "InhaUsua"
  loc_B5C73B: PopAdLdVar
  loc_B5C73C: FLdRfVar var_B8
  loc_B5C73F: FLdRfVar var_A8
  loc_B5C742: FLdPr var_AC
  loc_B5C745: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5C74A: FLdPr var_A8
  loc_B5C74D:  = Me.Fields
  loc_B5C752: FLdPr var_B8
  loc_B5C755: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C75A: LitI2_Byte 0
  loc_B5C75C: LitVar_Missing var_E0
  loc_B5C75F: LitI2_Byte 0
  loc_B5C761: FLdZeroAd var_BC
  loc_B5C764: CVarAd
  loc_B5C768: PopAdLdVar
  loc_B5C769: FLdPr Me
  loc_B5C76C: MemLdI2 global_84
  loc_B5C76F: CI4UI1
  loc_B5C770: FLdPr Me
  loc_B5C773: MemLdStr global_80
  loc_B5C776: AryLock
  loc_B5C779: Ary1LdPr
  loc_B5C77A: MemLdRfVar from_stack_1.global_16
  loc_B5C77D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5C782: AryUnlock
  loc_B5C785: FFreeAd var_A8 = ""
  loc_B5C78C: FFreeVar var_D0 = ""
  loc_B5C793: FLdRfVar var_BC
  loc_B5C796: LitVarStr var_94, "ObseUsua"
  loc_B5C79B: PopAdLdVar
  loc_B5C79C: FLdRfVar var_B8
  loc_B5C79F: FLdRfVar var_A8
  loc_B5C7A2: FLdPr var_AC
  loc_B5C7A5: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5C7AA: FLdPr var_A8
  loc_B5C7AD:  = Me.Fields
  loc_B5C7B2: FLdPr var_B8
  loc_B5C7B5: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C7BA: LitI2_Byte 0
  loc_B5C7BC: LitVar_Missing var_E0
  loc_B5C7BF: LitI2_Byte 0
  loc_B5C7C1: FLdZeroAd var_BC
  loc_B5C7C4: CVarAd
  loc_B5C7C8: PopAdLdVar
  loc_B5C7C9: FLdPr Me
  loc_B5C7CC: MemLdI2 global_84
  loc_B5C7CF: CI4UI1
  loc_B5C7D0: FLdPr Me
  loc_B5C7D3: MemLdStr global_80
  loc_B5C7D6: AryLock
  loc_B5C7D9: Ary1LdPr
  loc_B5C7DA: MemLdRfVar from_stack_1.global_20
  loc_B5C7DD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5C7E2: AryUnlock
  loc_B5C7E5: FFreeAd var_A8 = ""
  loc_B5C7EC: FFreeVar var_D0 = ""
  loc_B5C7F3: FLdPr var_AC
  loc_B5C7F6: Call clsusuario.MoveSiguiente()
  loc_B5C7FB: FLdPr Me
  loc_B5C7FE: MemLdRfVar from_stack_1.global_84
  loc_B5C801: NextI2 var_B4, loc_B5C553
  loc_B5C806: LitNothing
  loc_B5C808: FStAd var_AC 
  loc_B5C80C: LitI2_Byte &HFF
  loc_B5C80E: FLdPr Me
  loc_B5C811: MemStI2 bGenerado
  loc_B5C814: LitI4 0
  loc_B5C819: CI2I4
  loc_B5C81A: FLdPr Me
  loc_B5C81D: Me.MousePointer = from_stack_1
  loc_B5C822: LitVarStr var_94, vbNullString
  loc_B5C827: PopAdLdVar
  loc_B5C828: FLdPr Me
  loc_B5C82B: VCallAd Control_ID_statusBar
  loc_B5C82E: FStAdFunc var_A8
  loc_B5C831: FLdPr var_A8
  loc_B5C834: LateIdSt
  loc_B5C839: FFree1Ad var_A8
  loc_B5C83C: ExitProcHresult
  loc_B5C83D: LitStr "Error "
  loc_B5C840: FLdRfVar var_B0
  loc_B5C843: ImpAdCallI2 Err 'rtcErrObj
  loc_B5C848: FStAdFunc var_A8
  loc_B5C84B: FLdPr var_A8
  loc_B5C84E:  = Err.Number
  loc_B5C853: ILdRf var_B0
  loc_B5C856: CStrI4
  loc_B5C858: FStStrNoPop var_E4
  loc_B5C85B: ConcatStr
  loc_B5C85C: FStStrNoPop var_E8
  loc_B5C85F: LitStr ": "
  loc_B5C862: ConcatStr
  loc_B5C863: FStStrNoPop var_F0
  loc_B5C866: FLdRfVar var_EC
  loc_B5C869: ImpAdCallI2 Err 'rtcErrObj
  loc_B5C86E: FStAdFunc var_B8
  loc_B5C871: FLdPr var_B8
  loc_B5C874:  = Err.Description
  loc_B5C879: ILdRf var_EC
  loc_B5C87C: ConcatStr
  loc_B5C87D: FStStrNoPop var_F4
  loc_B5C880: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5C885: FFreeStr var_E4 = "": var_E8 = "": var_F0 = "": var_EC = ""
  loc_B5C892: FFreeAd var_A8 = ""
  loc_B5C899: ExitProcHresult
  loc_B5C89A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AFB134
  'Data Table: 4356DC
  loc_AFAF54: FLdRfVar var_88
  loc_AFAF57: LitI2_Byte 0
  loc_AFAF59: LitI2_Byte &HFF
  loc_AFAF5B: ImpAdLdI4 MemVar_D93C84
  loc_AFAF5E: FLdPr Me
  loc_AFAF61: MemLdRfVar from_stack_1.global_60
  loc_AFAF64: NewIfNullPr IFileSystem3
  loc_AFAF67: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AFAF6C: ILdRf var_88
  loc_AFAF6F: FLdPr Me
  loc_AFAF72: MemStVarAd
  loc_AFAF76: FFree1Ad var_88
  loc_AFAF79: Call Proc_146_12_B917FC()
  loc_AFAF7E: LitI2_Byte 1
  loc_AFAF80: FLdPr Me
  loc_AFAF83: MemLdRfVar from_stack_1.global_84
  loc_AFAF86: FLdPr Me
  loc_AFAF89: MemLdStr global_80
  loc_AFAF8C: LitI2_Byte 1
  loc_AFAF8E: FnUBound
  loc_AFAF90: CI2I4
  loc_AFAF91: ForI2 var_8C
  loc_AFAF97: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AFAF9C: PopAdLdVar
  loc_AFAF9D: FLdPr Me
  loc_AFAFA0: MemLdRfVar from_stack_1.global_64
  loc_AFAFA3: LdPrVar
  loc_AFAFA5: LateMemCall
  loc_AFAFAB: FLdPr Me
  loc_AFAFAE: MemLdI2 global_84
  loc_AFAFB1: CI4UI1
  loc_AFAFB2: FLdPr Me
  loc_AFAFB5: MemLdStr global_80
  loc_AFAFB8: AryLock
  loc_AFAFBB: Ary1LdRf
  loc_AFAFBC: FStR4 var_B4
  loc_AFAFBF: LitStr vbNullString
  loc_AFAFC2: LitI2_Byte 0
  loc_AFAFC4: LitI2_Byte 0
  loc_AFAFC6: LitI2_Byte 0
  loc_AFAFC8: LitStr "left"
  loc_AFAFCB: FMemLdR4 var_B4(0)
  loc_AFAFD0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFAFD5: CVarStr var_C4
  loc_AFAFD8: PopAdLdVar
  loc_AFAFD9: FLdPr Me
  loc_AFAFDC: MemLdRfVar from_stack_1.global_64
  loc_AFAFDF: LdPrVar
  loc_AFAFE1: LateMemCall
  loc_AFAFE7: FFree1Var var_C4 = ""
  loc_AFAFEA: LitStr vbNullString
  loc_AFAFED: LitI2_Byte 0
  loc_AFAFEF: LitI2_Byte 0
  loc_AFAFF1: LitI2_Byte 0
  loc_AFAFF3: LitStr "center"
  loc_AFAFF6: FMemLdR4 var_B4(8)
  loc_AFAFFB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFB000: CVarStr var_C4
  loc_AFB003: PopAdLdVar
  loc_AFB004: FLdPr Me
  loc_AFB007: MemLdRfVar from_stack_1.global_64
  loc_AFB00A: LdPrVar
  loc_AFB00C: LateMemCall
  loc_AFB012: FFree1Var var_C4 = ""
  loc_AFB015: LitStr vbNullString
  loc_AFB018: LitI2_Byte 0
  loc_AFB01A: LitI2_Byte 0
  loc_AFB01C: LitI2_Byte 0
  loc_AFB01E: LitStr "left"
  loc_AFB021: FMemLdR4 var_B4(4)
  loc_AFB026: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFB02B: CVarStr var_C4
  loc_AFB02E: PopAdLdVar
  loc_AFB02F: FLdPr Me
  loc_AFB032: MemLdRfVar from_stack_1.global_64
  loc_AFB035: LdPrVar
  loc_AFB037: LateMemCall
  loc_AFB03D: FFree1Var var_C4 = ""
  loc_AFB040: LitStr vbNullString
  loc_AFB043: LitI2_Byte 0
  loc_AFB045: LitI2_Byte 0
  loc_AFB047: LitI2_Byte 0
  loc_AFB049: LitStr "center"
  loc_AFB04C: FMemLdR4 var_B4(12)
  loc_AFB051: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFB056: CVarStr var_C4
  loc_AFB059: PopAdLdVar
  loc_AFB05A: FLdPr Me
  loc_AFB05D: MemLdRfVar from_stack_1.global_64
  loc_AFB060: LdPrVar
  loc_AFB062: LateMemCall
  loc_AFB068: FFree1Var var_C4 = ""
  loc_AFB06B: LitStr vbNullString
  loc_AFB06E: LitI2_Byte 0
  loc_AFB070: LitI2_Byte 0
  loc_AFB072: LitI2_Byte 0
  loc_AFB074: LitStr "center"
  loc_AFB077: FMemLdR4 var_B4(24)
  loc_AFB07C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFB081: CVarStr var_C4
  loc_AFB084: PopAdLdVar
  loc_AFB085: FLdPr Me
  loc_AFB088: MemLdRfVar from_stack_1.global_64
  loc_AFB08B: LdPrVar
  loc_AFB08D: LateMemCall
  loc_AFB093: FFree1Var var_C4 = ""
  loc_AFB096: LitStr vbNullString
  loc_AFB099: LitI2_Byte 0
  loc_AFB09B: LitI2_Byte 0
  loc_AFB09D: LitI2_Byte 0
  loc_AFB09F: LitStr "center"
  loc_AFB0A2: FMemLdR4 var_B4(16)
  loc_AFB0A7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFB0AC: CVarStr var_C4
  loc_AFB0AF: PopAdLdVar
  loc_AFB0B0: FLdPr Me
  loc_AFB0B3: MemLdRfVar from_stack_1.global_64
  loc_AFB0B6: LdPrVar
  loc_AFB0B8: LateMemCall
  loc_AFB0BE: FFree1Var var_C4 = ""
  loc_AFB0C1: LitStr vbNullString
  loc_AFB0C4: LitI2_Byte 0
  loc_AFB0C6: LitI2_Byte 0
  loc_AFB0C8: LitI2_Byte 0
  loc_AFB0CA: LitStr "left"
  loc_AFB0CD: FMemLdR4 var_B4(20)
  loc_AFB0D2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFB0D7: CVarStr var_C4
  loc_AFB0DA: PopAdLdVar
  loc_AFB0DB: FLdPr Me
  loc_AFB0DE: MemLdRfVar from_stack_1.global_64
  loc_AFB0E1: LdPrVar
  loc_AFB0E3: LateMemCall
  loc_AFB0E9: FFree1Var var_C4 = ""
  loc_AFB0EC: LitI4 0
  loc_AFB0F1: FStR4 var_B4
  loc_AFB0F4: AryUnlock
  loc_AFB0F7: LitVarStr var_9C, "     </tr>"
  loc_AFB0FC: PopAdLdVar
  loc_AFB0FD: FLdPr Me
  loc_AFB100: MemLdRfVar from_stack_1.global_64
  loc_AFB103: LdPrVar
  loc_AFB105: LateMemCall
  loc_AFB10B: FLdPr Me
  loc_AFB10E: MemLdRfVar from_stack_1.global_84
  loc_AFB111: NextI2 var_8C, loc_AFAF97
  loc_AFB116: Call Proc_146_13_A0DBE8()
  loc_AFB11B: FLdPr Me
  loc_AFB11E: MemLdRfVar from_stack_1.global_64
  loc_AFB121: LdPrVar
  loc_AFB123: LateMemCall
  loc_AFB129: LitStr vbNullString
  loc_AFB12C: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AFB131: ExitProcHresult
End Sub

Private Function Proc_146_12_B917FC() 'B917FC
  'Data Table: 4356DC
  loc_B91290: LitVarStr var_94, "<html>"
  loc_B91295: PopAdLdVar
  loc_B91296: FLdPr Me
  loc_B91299: MemLdRfVar from_stack_1.global_64
  loc_B9129C: LdPrVar
  loc_B9129E: LateMemCall
  loc_B912A4: LitVarStr var_94, "<head>"
  loc_B912A9: PopAdLdVar
  loc_B912AA: FLdPr Me
  loc_B912AD: MemLdRfVar from_stack_1.global_64
  loc_B912B0: LdPrVar
  loc_B912B2: LateMemCall
  loc_B912B8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B912BD: PopAdLdVar
  loc_B912BE: FLdPr Me
  loc_B912C1: MemLdRfVar from_stack_1.global_64
  loc_B912C4: LdPrVar
  loc_B912C6: LateMemCall
  loc_B912CC: LitStr "<title>"
  loc_B912CF: FLdRfVar var_A8
  loc_B912D2: FLdPr Me
  loc_B912D5:  = Me.Caption
  loc_B912DA: ILdRf var_A8
  loc_B912DD: ConcatStr
  loc_B912DE: FStStrNoPop var_AC
  loc_B912E1: LitStr "</title>"
  loc_B912E4: ConcatStr
  loc_B912E5: CVarStr var_BC
  loc_B912E8: PopAdLdVar
  loc_B912E9: FLdPr Me
  loc_B912EC: MemLdRfVar from_stack_1.global_64
  loc_B912EF: LdPrVar
  loc_B912F1: LateMemCall
  loc_B912F7: FFreeStr var_A8 = ""
  loc_B912FE: FFree1Var var_BC = ""
  loc_B91301: LitVarStr var_94, "<style type=""text/css"">"
  loc_B91306: PopAdLdVar
  loc_B91307: FLdPr Me
  loc_B9130A: MemLdRfVar from_stack_1.global_64
  loc_B9130D: LdPrVar
  loc_B9130F: LateMemCall
  loc_B91315: LitVarStr var_94, ".Titulo1 {"
  loc_B9131A: PopAdLdVar
  loc_B9131B: FLdPr Me
  loc_B9131E: MemLdRfVar from_stack_1.global_64
  loc_B91321: LdPrVar
  loc_B91323: LateMemCall
  loc_B91329: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B9132E: PopAdLdVar
  loc_B9132F: FLdPr Me
  loc_B91332: MemLdRfVar from_stack_1.global_64
  loc_B91335: LdPrVar
  loc_B91337: LateMemCall
  loc_B9133D: LitVarStr var_94, " font-size: 18px;"
  loc_B91342: PopAdLdVar
  loc_B91343: FLdPr Me
  loc_B91346: MemLdRfVar from_stack_1.global_64
  loc_B91349: LdPrVar
  loc_B9134B: LateMemCall
  loc_B91351: LitVarStr var_94, " font-weight: bold;"
  loc_B91356: PopAdLdVar
  loc_B91357: FLdPr Me
  loc_B9135A: MemLdRfVar from_stack_1.global_64
  loc_B9135D: LdPrVar
  loc_B9135F: LateMemCall
  loc_B91365: LitVarStr var_94, "}"
  loc_B9136A: PopAdLdVar
  loc_B9136B: FLdPr Me
  loc_B9136E: MemLdRfVar from_stack_1.global_64
  loc_B91371: LdPrVar
  loc_B91373: LateMemCall
  loc_B91379: LitVarStr var_94, ".Titulo2 {"
  loc_B9137E: PopAdLdVar
  loc_B9137F: FLdPr Me
  loc_B91382: MemLdRfVar from_stack_1.global_64
  loc_B91385: LdPrVar
  loc_B91387: LateMemCall
  loc_B9138D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B91392: PopAdLdVar
  loc_B91393: FLdPr Me
  loc_B91396: MemLdRfVar from_stack_1.global_64
  loc_B91399: LdPrVar
  loc_B9139B: LateMemCall
  loc_B913A1: LitVarStr var_94, " font-size: 14px;"
  loc_B913A6: PopAdLdVar
  loc_B913A7: FLdPr Me
  loc_B913AA: MemLdRfVar from_stack_1.global_64
  loc_B913AD: LdPrVar
  loc_B913AF: LateMemCall
  loc_B913B5: LitVarStr var_94, " font-weight: bold;"
  loc_B913BA: PopAdLdVar
  loc_B913BB: FLdPr Me
  loc_B913BE: MemLdRfVar from_stack_1.global_64
  loc_B913C1: LdPrVar
  loc_B913C3: LateMemCall
  loc_B913C9: LitVarStr var_94, "}"
  loc_B913CE: PopAdLdVar
  loc_B913CF: FLdPr Me
  loc_B913D2: MemLdRfVar from_stack_1.global_64
  loc_B913D5: LdPrVar
  loc_B913D7: LateMemCall
  loc_B913DD: LitVarStr var_94, ".Normal {"
  loc_B913E2: PopAdLdVar
  loc_B913E3: FLdPr Me
  loc_B913E6: MemLdRfVar from_stack_1.global_64
  loc_B913E9: LdPrVar
  loc_B913EB: LateMemCall
  loc_B913F1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B913F6: PopAdLdVar
  loc_B913F7: FLdPr Me
  loc_B913FA: MemLdRfVar from_stack_1.global_64
  loc_B913FD: LdPrVar
  loc_B913FF: LateMemCall
  loc_B91405: LitVarStr var_94, " font-size: 14px;"
  loc_B9140A: PopAdLdVar
  loc_B9140B: FLdPr Me
  loc_B9140E: MemLdRfVar from_stack_1.global_64
  loc_B91411: LdPrVar
  loc_B91413: LateMemCall
  loc_B91419: LitVarStr var_94, " font-style: normal;"
  loc_B9141E: PopAdLdVar
  loc_B9141F: FLdPr Me
  loc_B91422: MemLdRfVar from_stack_1.global_64
  loc_B91425: LdPrVar
  loc_B91427: LateMemCall
  loc_B9142D: LitVarStr var_94, " font-weight: normal;"
  loc_B91432: PopAdLdVar
  loc_B91433: FLdPr Me
  loc_B91436: MemLdRfVar from_stack_1.global_64
  loc_B91439: LdPrVar
  loc_B9143B: LateMemCall
  loc_B91441: LitVarStr var_94, " font-variant: normal;"
  loc_B91446: PopAdLdVar
  loc_B91447: FLdPr Me
  loc_B9144A: MemLdRfVar from_stack_1.global_64
  loc_B9144D: LdPrVar
  loc_B9144F: LateMemCall
  loc_B91455: LitVarStr var_94, "}"
  loc_B9145A: PopAdLdVar
  loc_B9145B: FLdPr Me
  loc_B9145E: MemLdRfVar from_stack_1.global_64
  loc_B91461: LdPrVar
  loc_B91463: LateMemCall
  loc_B91469: LitVarStr var_94, ".Encabezado {"
  loc_B9146E: PopAdLdVar
  loc_B9146F: FLdPr Me
  loc_B91472: MemLdRfVar from_stack_1.global_64
  loc_B91475: LdPrVar
  loc_B91477: LateMemCall
  loc_B9147D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B91482: PopAdLdVar
  loc_B91483: FLdPr Me
  loc_B91486: MemLdRfVar from_stack_1.global_64
  loc_B91489: LdPrVar
  loc_B9148B: LateMemCall
  loc_B91491: LitVarStr var_94, " font-size: 13px;"
  loc_B91496: PopAdLdVar
  loc_B91497: FLdPr Me
  loc_B9149A: MemLdRfVar from_stack_1.global_64
  loc_B9149D: LdPrVar
  loc_B9149F: LateMemCall
  loc_B914A5: LitVarStr var_94, " font-weight: bold;"
  loc_B914AA: PopAdLdVar
  loc_B914AB: FLdPr Me
  loc_B914AE: MemLdRfVar from_stack_1.global_64
  loc_B914B1: LdPrVar
  loc_B914B3: LateMemCall
  loc_B914B9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B914BE: PopAdLdVar
  loc_B914BF: FLdPr Me
  loc_B914C2: MemLdRfVar from_stack_1.global_64
  loc_B914C5: LdPrVar
  loc_B914C7: LateMemCall
  loc_B914CD: LitVarStr var_94, "}"
  loc_B914D2: PopAdLdVar
  loc_B914D3: FLdPr Me
  loc_B914D6: MemLdRfVar from_stack_1.global_64
  loc_B914D9: LdPrVar
  loc_B914DB: LateMemCall
  loc_B914E1: LitVarStr var_94, ".LineaDato {"
  loc_B914E6: PopAdLdVar
  loc_B914E7: FLdPr Me
  loc_B914EA: MemLdRfVar from_stack_1.global_64
  loc_B914ED: LdPrVar
  loc_B914EF: LateMemCall
  loc_B914F5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B914FA: PopAdLdVar
  loc_B914FB: FLdPr Me
  loc_B914FE: MemLdRfVar from_stack_1.global_64
  loc_B91501: LdPrVar
  loc_B91503: LateMemCall
  loc_B91509: LitVarStr var_94, " font-size: 10px;"
  loc_B9150E: PopAdLdVar
  loc_B9150F: FLdPr Me
  loc_B91512: MemLdRfVar from_stack_1.global_64
  loc_B91515: LdPrVar
  loc_B91517: LateMemCall
  loc_B9151D: LitVarStr var_94, "}"
  loc_B91522: PopAdLdVar
  loc_B91523: FLdPr Me
  loc_B91526: MemLdRfVar from_stack_1.global_64
  loc_B91529: LdPrVar
  loc_B9152B: LateMemCall
  loc_B91531: LitVarStr var_94, ".Totales {"
  loc_B91536: PopAdLdVar
  loc_B91537: FLdPr Me
  loc_B9153A: MemLdRfVar from_stack_1.global_64
  loc_B9153D: LdPrVar
  loc_B9153F: LateMemCall
  loc_B91545: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B9154A: PopAdLdVar
  loc_B9154B: FLdPr Me
  loc_B9154E: MemLdRfVar from_stack_1.global_64
  loc_B91551: LdPrVar
  loc_B91553: LateMemCall
  loc_B91559: LitVarStr var_94, " font-size: 12px;"
  loc_B9155E: PopAdLdVar
  loc_B9155F: FLdPr Me
  loc_B91562: MemLdRfVar from_stack_1.global_64
  loc_B91565: LdPrVar
  loc_B91567: LateMemCall
  loc_B9156D: LitVarStr var_94, " font-weight: bold;"
  loc_B91572: PopAdLdVar
  loc_B91573: FLdPr Me
  loc_B91576: MemLdRfVar from_stack_1.global_64
  loc_B91579: LdPrVar
  loc_B9157B: LateMemCall
  loc_B91581: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B91586: PopAdLdVar
  loc_B91587: FLdPr Me
  loc_B9158A: MemLdRfVar from_stack_1.global_64
  loc_B9158D: LdPrVar
  loc_B9158F: LateMemCall
  loc_B91595: LitVarStr var_94, "}"
  loc_B9159A: PopAdLdVar
  loc_B9159B: FLdPr Me
  loc_B9159E: MemLdRfVar from_stack_1.global_64
  loc_B915A1: LdPrVar
  loc_B915A3: LateMemCall
  loc_B915A9: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B915AE: PopAdLdVar
  loc_B915AF: FLdPr Me
  loc_B915B2: MemLdRfVar from_stack_1.global_64
  loc_B915B5: LdPrVar
  loc_B915B7: LateMemCall
  loc_B915BD: LitVarStr var_94, "</style>"
  loc_B915C2: PopAdLdVar
  loc_B915C3: FLdPr Me
  loc_B915C6: MemLdRfVar from_stack_1.global_64
  loc_B915C9: LdPrVar
  loc_B915CB: LateMemCall
  loc_B915D1: LitI4 0
  loc_B915D6: FStStrCopy var_AC
  loc_B915D9: FLdRfVar var_AC
  loc_B915DC: LitI4 0
  loc_B915E1: FStStrCopy var_A8
  loc_B915E4: FLdRfVar var_A8
  loc_B915E7: LitI2_Byte 0
  loc_B915E9: PopTmpLdAd2 var_BE
  loc_B915EC: FLdPr Me
  loc_B915EF: MemLdRfVar from_stack_1.global_64
  loc_B915F2: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B915F7: FFreeStr var_A8 = ""
  loc_B915FE: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B91603: PopAdLdVar
  loc_B91604: FLdPr Me
  loc_B91607: MemLdRfVar from_stack_1.global_64
  loc_B9160A: LdPrVar
  loc_B9160C: LateMemCall
  loc_B91612: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B91617: PopAdLdVar
  loc_B91618: FLdPr Me
  loc_B9161B: MemLdRfVar from_stack_1.global_64
  loc_B9161E: LdPrVar
  loc_B91620: LateMemCall
  loc_B91626: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B91629: LitI2_Byte &H5F
  loc_B9162B: CStrUI1
  loc_B9162D: FStStrNoPop var_A8
  loc_B91630: ConcatStr
  loc_B91631: FStStrNoPop var_AC
  loc_B91634: LitStr """ height="""
  loc_B91637: ConcatStr
  loc_B91638: FStStrNoPop var_C4
  loc_B9163B: LitI2_Byte &H3C
  loc_B9163D: CStrUI1
  loc_B9163F: FStStrNoPop var_C8
  loc_B91642: ConcatStr
  loc_B91643: FStStrNoPop var_CC
  loc_B91646: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B91649: ConcatStr
  loc_B9164A: CVarStr var_EC
  loc_B9164D: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B91652: FStVarCopyObj var_BC
  loc_B91655: FLdRfVar var_BC
  loc_B91658: FLdRfVar var_DC
  loc_B9165B: ImpAdCallFPR4  = Ucase()
  loc_B91660: FLdRfVar var_DC
  loc_B91663: ConcatVar var_FC
  loc_B91667: LitVarStr var_A4, "</p>"
  loc_B9166C: ConcatVar var_10C
  loc_B91670: PopAdLdVar
  loc_B91671: FLdPr Me
  loc_B91674: MemLdRfVar from_stack_1.global_64
  loc_B91677: LdPrVar
  loc_B91679: LateMemCall
  loc_B9167F: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_B9168C: FFreeVar var_BC = "": var_EC = "": var_DC = "": var_FC = ""
  loc_B91699: LitStr "    <p>"
  loc_B9169C: FLdRfVar var_A8
  loc_B9169F: FLdPr Me
  loc_B916A2:  = Me.Caption
  loc_B916A7: ILdRf var_A8
  loc_B916AA: ConcatStr
  loc_B916AB: FStStrNoPop var_AC
  loc_B916AE: LitStr "</p></th>"
  loc_B916B1: ConcatStr
  loc_B916B2: CVarStr var_BC
  loc_B916B5: PopAdLdVar
  loc_B916B6: FLdPr Me
  loc_B916B9: MemLdRfVar from_stack_1.global_64
  loc_B916BC: LdPrVar
  loc_B916BE: LateMemCall
  loc_B916C4: FFreeStr var_A8 = ""
  loc_B916CB: FFree1Var var_BC = ""
  loc_B916CE: LitVarStr var_94, "  </tr>"
  loc_B916D3: PopAdLdVar
  loc_B916D4: FLdPr Me
  loc_B916D7: MemLdRfVar from_stack_1.global_64
  loc_B916DA: LdPrVar
  loc_B916DC: LateMemCall
  loc_B916E2: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_B916E7: PopAdLdVar
  loc_B916E8: FLdPr Me
  loc_B916EB: MemLdRfVar from_stack_1.global_64
  loc_B916EE: LdPrVar
  loc_B916F0: LateMemCall
  loc_B916F6: LitVarStr var_94, "</table>"
  loc_B916FB: PopAdLdVar
  loc_B916FC: FLdPr Me
  loc_B916FF: MemLdRfVar from_stack_1.global_64
  loc_B91702: LdPrVar
  loc_B91704: LateMemCall
  loc_B9170A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B9170F: PopAdLdVar
  loc_B91710: FLdPr Me
  loc_B91713: MemLdRfVar from_stack_1.global_64
  loc_B91716: LdPrVar
  loc_B91718: LateMemCall
  loc_B9171E: LitVarStr var_94, "  <THEAD>"
  loc_B91723: PopAdLdVar
  loc_B91724: FLdPr Me
  loc_B91727: MemLdRfVar from_stack_1.global_64
  loc_B9172A: LdPrVar
  loc_B9172C: LateMemCall
  loc_B91732: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B91737: PopAdLdVar
  loc_B91738: FLdPr Me
  loc_B9173B: MemLdRfVar from_stack_1.global_64
  loc_B9173E: LdPrVar
  loc_B91740: LateMemCall
  loc_B91746: LitVarStr var_94, "    <th>Código</th>"
  loc_B9174B: PopAdLdVar
  loc_B9174C: FLdPr Me
  loc_B9174F: MemLdRfVar from_stack_1.global_64
  loc_B91752: LdPrVar
  loc_B91754: LateMemCall
  loc_B9175A: LitVarStr var_94, "    <th>CUIT/CUIL</th>"
  loc_B9175F: PopAdLdVar
  loc_B91760: FLdPr Me
  loc_B91763: MemLdRfVar from_stack_1.global_64
  loc_B91766: LdPrVar
  loc_B91768: LateMemCall
  loc_B9176E: LitVarStr var_94, "    <th>Detalle</th>"
  loc_B91773: PopAdLdVar
  loc_B91774: FLdPr Me
  loc_B91777: MemLdRfVar from_stack_1.global_64
  loc_B9177A: LdPrVar
  loc_B9177C: LateMemCall
  loc_B91782: LitVarStr var_94, "    <th>Fecha de vencimiento<br>de la clave</th>"
  loc_B91787: PopAdLdVar
  loc_B91788: FLdPr Me
  loc_B9178B: MemLdRfVar from_stack_1.global_64
  loc_B9178E: LdPrVar
  loc_B91790: LateMemCall
  loc_B91796: LitVarStr var_94, "    <th>Fecha de baja</th>"
  loc_B9179B: PopAdLdVar
  loc_B9179C: FLdPr Me
  loc_B9179F: MemLdRfVar from_stack_1.global_64
  loc_B917A2: LdPrVar
  loc_B917A4: LateMemCall
  loc_B917AA: LitVarStr var_94, "    <th>Inhabilitado</th>"
  loc_B917AF: PopAdLdVar
  loc_B917B0: FLdPr Me
  loc_B917B3: MemLdRfVar from_stack_1.global_64
  loc_B917B6: LdPrVar
  loc_B917B8: LateMemCall
  loc_B917BE: LitVarStr var_94, "    <th>Observaciones</th>"
  loc_B917C3: PopAdLdVar
  loc_B917C4: FLdPr Me
  loc_B917C7: MemLdRfVar from_stack_1.global_64
  loc_B917CA: LdPrVar
  loc_B917CC: LateMemCall
  loc_B917D2: LitVarStr var_94, "  </tr>"
  loc_B917D7: PopAdLdVar
  loc_B917D8: FLdPr Me
  loc_B917DB: MemLdRfVar from_stack_1.global_64
  loc_B917DE: LdPrVar
  loc_B917E0: LateMemCall
  loc_B917E6: LitVarStr var_94, "  </THEAD>"
  loc_B917EB: PopAdLdVar
  loc_B917EC: FLdPr Me
  loc_B917EF: MemLdRfVar from_stack_1.global_64
  loc_B917F2: LdPrVar
  loc_B917F4: LateMemCall
  loc_B917FA: ExitProcHresult
End Function

Private Function Proc_146_13_A0DBE8() 'A0DBE8
  'Data Table: 4356DC
  loc_A0DBA8: LitVarStr var_94, "</table>"
  loc_A0DBAD: PopAdLdVar
  loc_A0DBAE: FLdPr Me
  loc_A0DBB1: MemLdRfVar from_stack_1.global_64
  loc_A0DBB4: LdPrVar
  loc_A0DBB6: LateMemCall
  loc_A0DBBC: LitVarStr var_94, "</body>"
  loc_A0DBC1: PopAdLdVar
  loc_A0DBC2: FLdPr Me
  loc_A0DBC5: MemLdRfVar from_stack_1.global_64
  loc_A0DBC8: LdPrVar
  loc_A0DBCA: LateMemCall
  loc_A0DBD0: LitVarStr var_94, "</html>"
  loc_A0DBD5: PopAdLdVar
  loc_A0DBD6: FLdPr Me
  loc_A0DBD9: MemLdRfVar from_stack_1.global_64
  loc_A0DBDC: LdPrVar
  loc_A0DBDE: LateMemCall
  loc_A0DBE4: ExitProcHresult
End Function
