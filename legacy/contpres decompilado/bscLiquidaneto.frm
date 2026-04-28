VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscLiquidaneto
  Caption = "Buscar Retención de Proveedor..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscLiquidaneto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 14415
  ClientHeight = 5895
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.CommandButton cmdCancelar
    Caption = "Cancelar"
    Left = 7080
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 5
    Tag = "2"
  End
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 120
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "bscLiquidaneto.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4920
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 14175
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscLiquidaneto.frx":092A
  End
End

Attribute VB_Name = "bscLiquidaneto"

Public iPeriInfo As Integer
Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String
Public sCodiCuco As String
Public sFecha As String
Public boCancel As Boolean


Private Sub dgdABMS_UnknownEvent_0 '95B984
  'Data Table: 425B50
  loc_95B96C: FLdPr Me
  loc_95B96F: VCallAd Control_ID_dgdABMS
  loc_95B972: FStAdFunc var_88
  loc_95B975: FLdRfVar var_88
  loc_95B978: ImpAdCallFPR4  = Proc_264_0_9758D8()
  loc_95B97D: FFree1Ad var_88
  loc_95B980: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95B8EC
  'Data Table: 425B50
  loc_95B8D4: FLdPr Me
  loc_95B8D7: VCallAd Control_ID_dgdABMS
  loc_95B8DA: FStAdFunc var_88
  loc_95B8DD: FLdRfVar var_88
  loc_95B8E0: ImpAdCallFPR4  = Proc_264_1_96D788()
  loc_95B8E5: FFree1Ad var_88
  loc_95B8E8: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '955B68
  'Data Table: 425B50
  loc_955B50: ILdRf Me
  loc_955B53: FStAdNoPop
  loc_955B57: ImpAdLdRf MemVar_C44F9C
  loc_955B5A: NewIfNullPr Me
  loc_955B5D: Me.Global.Unload from_stack_1
  loc_955B62: FFree1Ad var_88
  loc_955B65: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A938
  'Data Table: 425B50
  loc_99A8DC: FLdRfVar var_B4
  loc_99A8DF: FLdRfVar var_B0
  loc_99A8E2: FLdI2 ColIndex
  loc_99A8E5: CVarI2 var_A8
  loc_99A8E8: PopAdLdVar
  loc_99A8E9: FLdPr Me
  loc_99A8EC: VCallAd Control_ID_dgdABMS
  loc_99A8EF: FStAdFunc var_88
  loc_99A8F2: FLdPr var_88
  loc_99A8F5: LateIdLdVar var_98 DispID_105 0
  loc_99A8FC: CastAdVar Me
  loc_99A900: FStAdFunc var_AC
  loc_99A903: FLdPr var_AC
  loc_99A906: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A90B: FLdPr var_B0
  loc_99A90E:  = Me.DataField
  loc_99A913: FLdZeroAd var_B4
  loc_99A916: PopTmpLdAdStr
  loc_99A91A: FLdPr Me
  loc_99A91D: MemLdRfVar from_stack_1.BuscarCLS
  loc_99A920: NewIfNullPr clsbase
  loc_99A923: Call clsbase.Sort(from_stack_1v)
  loc_99A928: FFree1Str var_B8
  loc_99A92B: FFreeAd var_88 = "": var_AC = ""
  loc_99A934: FFree1Var var_98 = ""
  loc_99A937: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '975E78
  'Data Table: 425B50
  loc_975E4C: LitI2_Byte 0
  loc_975E4E: ImpAdLdRf MemVar_C3DA34
  loc_975E51: NewIfNullPr frmDebito
  loc_975E54: Call frmDebito.iCodiRetePut(from_stack_1v)
  loc_975E59: LitI2_Byte &HFF
  loc_975E5B: FLdPr Me
  loc_975E5E: MemStI2 boCancel
  loc_975E61: ILdRf Me
  loc_975E64: FStAdNoPop
  loc_975E68: ImpAdLdRf MemVar_C44F9C
  loc_975E6B: NewIfNullPr Me
  loc_975E6E: Me.Global.Unload from_stack_1
  loc_975E73: FFree1Ad var_88
  loc_975E76: ExitProcHresult
End Sub

Private Sub Form_Load() 'A3C8C0
  'Data Table: 425B50
  loc_A3C6C0: FLdPr Me
  loc_A3C6C3: MemLdI2 iPeriInfo
  loc_A3C6C6: LitI2_Byte 0
  loc_A3C6C8: EqI2
  loc_A3C6C9: BranchF loc_A3C6D5
  loc_A3C6CC: ImpAdLdI2 MemVar_C3D064
  loc_A3C6CF: FLdPr Me
  loc_A3C6D2: MemStI2 iPeriInfo
  loc_A3C6D5: FLdPr Me
  loc_A3C6D8: MemLdI2 iPeriInfo
  loc_A3C6DB: ImpAdLdI2 MemVar_C3D064
  loc_A3C6DE: NeI2
  loc_A3C6DF: BranchF loc_A3C719
  loc_A3C6E2: FLdRfVar var_88
  loc_A3C6E5: FLdPr Me
  loc_A3C6E8:  = Me.Caption
  loc_A3C6ED: ILdRf var_88
  loc_A3C6F0: LitStr " - Periodo: "
  loc_A3C6F3: ConcatStr
  loc_A3C6F4: FStStrNoPop var_8C
  loc_A3C6F7: FLdPr Me
  loc_A3C6FA: MemLdI2 iPeriInfo
  loc_A3C6FD: CStrUI1
  loc_A3C6FF: FStStrNoPop var_90
  loc_A3C702: ConcatStr
  loc_A3C703: FStStrNoPop var_94
  loc_A3C706: FLdPr Me
  loc_A3C709: Me.Caption = from_stack_1
  loc_A3C70E: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A3C719: LitI2_Byte 0
  loc_A3C71B: FLdPr Me
  loc_A3C71E: MemStI2 boCancel
  loc_A3C721: FLdRfVar var_98
  loc_A3C724: FLdPr Me
  loc_A3C727: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3C72A: NewIfNullPr clsbase
  loc_A3C72D: from_stack_1v = clsbase.RsFrmGet()
  loc_A3C732: ILdRf var_98
  loc_A3C735: LitNothing
  loc_A3C737: Is
  loc_A3C739: FFree1Ad var_98
  loc_A3C73C: BranchF loc_A3C7F3
  loc_A3C73F: LitStr "SELECT op.NumeOrpa, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CodiRete, lqn.CucuPers, p.DetaProv, lqn.ImpoLine, lqn.CertLine"
  loc_A3C742: LitStr " FROM liquidaneto lqn"
  loc_A3C745: ConcatStr
  loc_A3C746: FStStrNoPop var_88
  loc_A3C749: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_A3C74C: ConcatStr
  loc_A3C74D: FStStrNoPop var_8C
  loc_A3C750: LitStr " INNER JOIN ordenpago op ON op.PeriInfo = lqn.PeriInfo AND op.ExpeImpu = lqn.ExpeImpu AND op.NumeLiqu = lqn.NumeLiqu AND op.FeanOrpa IS NULL"
  loc_A3C753: ConcatStr
  loc_A3C754: FStStrNoPop var_90
  loc_A3C757: LitStr " WHERE lqn.PeriInfo = "
  loc_A3C75A: ConcatStr
  loc_A3C75B: FStStrNoPop var_94
  loc_A3C75E: ImpAdLdI2 MemVar_C3D064
  loc_A3C761: CStrUI1
  loc_A3C763: FStStrNoPop var_9C
  loc_A3C766: ConcatStr
  loc_A3C767: FStStrNoPop var_A0
  loc_A3C76A: LitStr " AND lqn.CodiRete > 0"
  loc_A3C76D: ConcatStr
  loc_A3C76E: FStStrNoPop var_A4
  loc_A3C771: LitStr " AND lqn.CodiCuco = '"
  loc_A3C774: ConcatStr
  loc_A3C775: FStStrNoPop var_A8
  loc_A3C778: FLdPr Me
  loc_A3C77B: MemLdStr sCodiCuco
  loc_A3C77E: ConcatStr
  loc_A3C77F: FStStrNoPop var_AC
  loc_A3C782: LitStr "'"
  loc_A3C785: ConcatStr
  loc_A3C786: FStStrNoPop var_B0
  loc_A3C789: LitStr " AND lqn.FechCaja >= "
  loc_A3C78C: ConcatStr
  loc_A3C78D: FStStrNoPop var_E4
  loc_A3C790: LitI4 1
  loc_A3C795: LitI4 1
  loc_A3C79A: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_A3C79F: FStVarCopyObj var_E0
  loc_A3C7A2: FLdRfVar var_E0
  loc_A3C7A5: FLdPr Me
  loc_A3C7A8: MemLdRfVar from_stack_1.sFecha
  loc_A3C7AB: CVarRef
  loc_A3C7B0: ImpAdCallI2 Format$(, )
  loc_A3C7B5: FStStrNoPop var_E8
  loc_A3C7B8: ConcatStr
  loc_A3C7B9: FStStrNoPop var_EC
  loc_A3C7BC: LitStr " AND lqn.NumeDebi = 0;"
  loc_A3C7BF: ConcatStr
  loc_A3C7C0: FStStrNoPop var_F0
  loc_A3C7C3: FLdPr Me
  loc_A3C7C6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3C7C9: NewIfNullPr clsbase
  loc_A3C7CC: Call clsbase.RedefineRS(from_stack_1v)
  loc_A3C7D1: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A3C7F0: FFree1Var var_E0 = ""
  loc_A3C7F3: LitVarI2 var_C0, 0
  loc_A3C7F8: PopAdLdVar
  loc_A3C7F9: LitStr "Orden de Pago"
  loc_A3C7FC: FLdPr Me
  loc_A3C7FF: VCallAd Control_ID_FiltroCbo
  loc_A3C802: FStAdFunc var_98
  loc_A3C805: FLdPr var_98
  loc_A3C808: Me.AddItem from_stack_1, from_stack_2
  loc_A3C80D: FFree1Ad var_98
  loc_A3C810: LitVarI2 var_C0, 1
  loc_A3C815: PopAdLdVar
  loc_A3C816: LitStr "Expediente"
  loc_A3C819: FLdPr Me
  loc_A3C81C: VCallAd Control_ID_FiltroCbo
  loc_A3C81F: FStAdFunc var_98
  loc_A3C822: FLdPr var_98
  loc_A3C825: Me.AddItem from_stack_1, from_stack_2
  loc_A3C82A: FFree1Ad var_98
  loc_A3C82D: LitVarI2 var_C0, 2
  loc_A3C832: PopAdLdVar
  loc_A3C833: LitStr "Proveedor (nombre)"
  loc_A3C836: FLdPr Me
  loc_A3C839: VCallAd Control_ID_FiltroCbo
  loc_A3C83C: FStAdFunc var_98
  loc_A3C83F: FLdPr var_98
  loc_A3C842: Me.AddItem from_stack_1, from_stack_2
  loc_A3C847: FFree1Ad var_98
  loc_A3C84A: LitI2_Byte 0
  loc_A3C84C: FLdPr Me
  loc_A3C84F: VCallAd Control_ID_FiltroCbo
  loc_A3C852: FStAdFunc var_98
  loc_A3C855: FLdPr var_98
  loc_A3C858: Me.ListIndex = from_stack_1
  loc_A3C85D: FFree1Ad var_98
  loc_A3C860: LitI4 0
  loc_A3C865: LitI4 1
  loc_A3C86A: FLdRfVar var_F4
  loc_A3C86D: Redim
  loc_A3C877: FLdPr Me
  loc_A3C87A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3C87D: NewIfNullAd
  loc_A3C880: FStAd var_98 
  loc_A3C884: FLdRfVar var_98
  loc_A3C887: CVarRef
  loc_A3C88C: ParmAry1St
  loc_A3C892: FLdPr Me
  loc_A3C895: VCallAd Control_ID_dgdABMS
  loc_A3C898: CVarAd
  loc_A3C89C: ParmAry1St
  loc_A3C8A2: FLdRfVar var_F4
  loc_A3C8A5: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3C8AA: ILdRf var_98
  loc_A3C8AD: CastAd
  loc_A3C8B0: FLdPr Me
  loc_A3C8B3: MemStAdFunc
  loc_A3C8B7: FLdRfVar var_F4
  loc_A3C8BA: Erase
  loc_A3C8BB: FFree1Ad var_98
  loc_A3C8BE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) 'A3D56C
  'Data Table: 425B50
  loc_A3D338: LitI2_Byte 0
  loc_A3D33A: FLdPr Me
  loc_A3D33D: MemStI2 iPeriInfo
  loc_A3D340: FLdPr Me
  loc_A3D343: MemLdI2 boCancel
  loc_A3D346: BranchF loc_A3D38A
  loc_A3D349: LitI2_Byte 0
  loc_A3D34B: CStrUI1
  loc_A3D34D: CVarStr var_94
  loc_A3D350: PopAdLdVar
  loc_A3D351: ImpAdLdRf MemVar_C3DA34
  loc_A3D354: NewIfNullPr frmDebito
  loc_A3D357: VCallAd Control_ID_NumeOrpaMsk
  loc_A3D35A: FStAdFunc var_A8
  loc_A3D35D: FLdPr var_A8
  loc_A3D360: LateIdSt
  loc_A3D365: FFree1Ad var_A8
  loc_A3D368: FFree1Var var_94 = ""
  loc_A3D36B: LitVar_FALSE
  loc_A3D36F: PopAdLdVar
  loc_A3D370: ImpAdLdRf MemVar_C3DA34
  loc_A3D373: NewIfNullPr frmDebito
  loc_A3D376: VCallAd Control_ID_NumeOrpaMsk
  loc_A3D379: FStAdFunc var_A8
  loc_A3D37C: FLdPr var_A8
  loc_A3D37F: LateIdSt
  loc_A3D384: FFree1Ad var_A8
  loc_A3D387: Branch loc_A3D555
  loc_A3D38A: FLdRfVar var_BC
  loc_A3D38D: FLdPr Me
  loc_A3D390: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3D393: NewIfNullPr clsbase
  loc_A3D396: from_stack_1 = clsbase.RecordCount
  loc_A3D39B: ILdRf var_BC
  loc_A3D39E: LitI4 0
  loc_A3D3A3: GtI4
  loc_A3D3A4: BranchF loc_A3D555
  loc_A3D3A7: FLdRfVar var_94
  loc_A3D3AA: FLdRfVar var_C4
  loc_A3D3AD: LitVarStr var_A4, "NumeOrpa"
  loc_A3D3B2: PopAdLdVar
  loc_A3D3B3: FLdRfVar var_C0
  loc_A3D3B6: FLdRfVar var_A8
  loc_A3D3B9: FLdPr Me
  loc_A3D3BC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3D3BF: NewIfNullPr clsbase
  loc_A3D3C2: from_stack_1v = clsbase.RsFrmGet()
  loc_A3D3C7: FLdPr var_A8
  loc_A3D3CA:  = Me.Fields
  loc_A3D3CF: FLdPr var_C0
  loc_A3D3D2: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D3D7: FLdPr var_C4
  loc_A3D3DA:  = Me.Value
  loc_A3D3DF: FLdRfVar var_94
  loc_A3D3E2: CStrVarTmp
  loc_A3D3E3: CVarStr var_D4
  loc_A3D3E6: PopAdLdVar
  loc_A3D3E7: ImpAdLdRf MemVar_C3DA34
  loc_A3D3EA: NewIfNullPr frmDebito
  loc_A3D3ED: VCallAd Control_ID_NumeOrpaMsk
  loc_A3D3F0: FStAdFunc var_D8
  loc_A3D3F3: FLdPr var_D8
  loc_A3D3F6: LateIdSt
  loc_A3D3FB: FFreeAd var_A8 = "": var_C0 = "": var_C4 = ""
  loc_A3D406: FFreeVar var_94 = ""
  loc_A3D40D: LitVar_FALSE
  loc_A3D411: PopAdLdVar
  loc_A3D412: ImpAdLdRf MemVar_C3DA34
  loc_A3D415: NewIfNullPr frmDebito
  loc_A3D418: VCallAd Control_ID_NumeOrpaMsk
  loc_A3D41B: FStAdFunc var_A8
  loc_A3D41E: FLdPr var_A8
  loc_A3D421: LateIdSt
  loc_A3D426: FFree1Ad var_A8
  loc_A3D429: FLdRfVar var_94
  loc_A3D42C: FLdRfVar var_C4
  loc_A3D42F: LitVarStr var_A4, "CucuPers"
  loc_A3D434: PopAdLdVar
  loc_A3D435: FLdRfVar var_C0
  loc_A3D438: FLdRfVar var_A8
  loc_A3D43B: FLdPr Me
  loc_A3D43E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3D441: NewIfNullPr clsbase
  loc_A3D444: from_stack_1v = clsbase.RsFrmGet()
  loc_A3D449: FLdPr var_A8
  loc_A3D44C:  = Me.Fields
  loc_A3D451: FLdPr var_C0
  loc_A3D454: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D459: FLdPr var_C4
  loc_A3D45C:  = Me.Value
  loc_A3D461: FLdRfVar var_94
  loc_A3D464: CStrVarTmp
  loc_A3D465: FStStrNoPop var_DC
  loc_A3D468: ImpAdLdRf MemVar_C3DA34
  loc_A3D46B: NewIfNullPr frmDebito
  loc_A3D46E: VCallAd Control_ID_CucuPersTxt
  loc_A3D471: FStAdFunc var_D8
  loc_A3D474: FLdPr var_D8
  loc_A3D477: frmDebito.TextBox.Text = from_stack_1
  loc_A3D47C: FFree1Str var_DC
  loc_A3D47F: FFreeAd var_A8 = "": var_C0 = "": var_C4 = ""
  loc_A3D48A: FFree1Var var_94 = ""
  loc_A3D48D: FLdRfVar var_94
  loc_A3D490: FLdRfVar var_C4
  loc_A3D493: LitVarStr var_A4, "DetaProv"
  loc_A3D498: PopAdLdVar
  loc_A3D499: FLdRfVar var_C0
  loc_A3D49C: FLdRfVar var_A8
  loc_A3D49F: FLdPr Me
  loc_A3D4A2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3D4A5: NewIfNullPr clsbase
  loc_A3D4A8: from_stack_1v = clsbase.RsFrmGet()
  loc_A3D4AD: FLdPr var_A8
  loc_A3D4B0:  = Me.Fields
  loc_A3D4B5: FLdPr var_C0
  loc_A3D4B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D4BD: FLdPr var_C4
  loc_A3D4C0:  = Me.Value
  loc_A3D4C5: FLdRfVar var_94
  loc_A3D4C8: CStrVarTmp
  loc_A3D4C9: FStStrNoPop var_DC
  loc_A3D4CC: ImpAdLdRf MemVar_C3DA34
  loc_A3D4CF: NewIfNullPr frmDebito
  loc_A3D4D2: VCallAd Control_ID_DetaProvLbl
  loc_A3D4D5: FStAdFunc var_D8
  loc_A3D4D8: FLdPr var_D8
  loc_A3D4DB: frmDebito.Label.Caption = from_stack_1
  loc_A3D4E0: FFree1Str var_DC
  loc_A3D4E3: FFreeAd var_A8 = "": var_C0 = "": var_C4 = ""
  loc_A3D4EE: FFree1Var var_94 = ""
  loc_A3D4F1: FLdRfVar var_94
  loc_A3D4F4: FLdRfVar var_C4
  loc_A3D4F7: LitVarStr var_A4, "ImpoLine"
  loc_A3D4FC: PopAdLdVar
  loc_A3D4FD: FLdRfVar var_C0
  loc_A3D500: FLdRfVar var_A8
  loc_A3D503: FLdPr Me
  loc_A3D506: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3D509: NewIfNullPr clsbase
  loc_A3D50C: from_stack_1v = clsbase.RsFrmGet()
  loc_A3D511: FLdPr var_A8
  loc_A3D514:  = Me.Fields
  loc_A3D519: FLdPr var_C0
  loc_A3D51C: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D521: FLdPr var_C4
  loc_A3D524:  = Me.Value
  loc_A3D529: FLdRfVar var_94
  loc_A3D52C: CStrVarTmp
  loc_A3D52D: FStStrNoPop var_DC
  loc_A3D530: ImpAdLdRf MemVar_C3DA34
  loc_A3D533: NewIfNullPr frmDebito
  loc_A3D536: VCallAd Control_ID_ImpoDebiTxt
  loc_A3D539: FStAdFunc var_D8
  loc_A3D53C: FLdPr var_D8
  loc_A3D53F: frmDebito.TextBox.Text = from_stack_1
  loc_A3D544: FFree1Str var_DC
  loc_A3D547: FFreeAd var_A8 = "": var_C0 = "": var_C4 = ""
  loc_A3D552: FFree1Var var_94 = ""
  loc_A3D555: ILdRf Me
  loc_A3D558: FStAdNoPop
  loc_A3D55C: ImpAdLdRf MemVar_C44F9C
  loc_A3D55F: NewIfNullPr Me
  loc_A3D562: Me.Global.Unload from_stack_1
  loc_A3D567: FFree1Ad var_A8
  loc_A3D56A: ExitProcHresult
End Sub

Private Sub Form_Activate() '94FEC0
  'Data Table: 425B50
  loc_94FEAC: FLdPr Me
  loc_94FEAF: VCallAd Control_ID_FiltroMsk
  loc_94FEB2: CVarAd
  loc_94FEB6: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94FEBB: FFree1Var var_94 = ""
  loc_94FEBE: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '96A8C0
  'Data Table: 425B50
  loc_96A8A4: On Error Resume Next
  loc_96A8A9: ILdI2 KeyAscii
  loc_96A8AC: CI4UI1
  loc_96A8AD: LitI4 &HD
  loc_96A8B2: EqI4
  loc_96A8B3: BranchF loc_96A8BD
  loc_96A8B8: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_96A8BF: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94FF08
  'Data Table: 425B50
  loc_94FEF4: FLdPr Me
  loc_94FEF7: VCallAd Control_ID_FiltroMsk
  loc_94FEFA: CVarAd
  loc_94FEFE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FF03: FFree1Var var_94 = ""
  loc_94FF06: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A63E40
  'Data Table: 425B50
  loc_A63B04: ILdRf Me
  loc_A63B07: CastAd
  loc_A63B0A: FStAdFunc var_88
  loc_A63B0D: FLdRfVar var_88
  loc_A63B10: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A63B15: FFree1Ad var_88
  loc_A63B18: FLdPr Me
  loc_A63B1B: VCallAd Control_ID_FiltroMsk
  loc_A63B1E: FStAdFunc var_88
  loc_A63B21: FLdPr var_88
  loc_A63B24: LateIdLdVar var_98 DispID_22 0
  loc_A63B2B: CStrVarTmp
  loc_A63B2C: FStStrNoPop var_9C
  loc_A63B2F: ImpAdCallI2 Trim$()
  loc_A63B34: FStStrNoPop var_A0
  loc_A63B37: LitStr vbNullString
  loc_A63B3A: NeStr
  loc_A63B3C: FFreeStr var_9C = ""
  loc_A63B43: FFree1Ad var_88
  loc_A63B46: FFree1Var var_98 = ""
  loc_A63B49: BranchF loc_A63D1D
  loc_A63B4C: FLdRfVar var_A2
  loc_A63B4F: FLdPr Me
  loc_A63B52: VCallAd Control_ID_FiltroCbo
  loc_A63B55: FStAdFunc var_88
  loc_A63B58: FLdPr var_88
  loc_A63B5B:  = Me.ListIndex
  loc_A63B60: FLdI2 var_A2
  loc_A63B63: LitI2_Byte 0
  loc_A63B65: EqI2
  loc_A63B66: FFree1Ad var_88
  loc_A63B69: BranchF loc_A63BE4
  loc_A63B6C: LitStr "NumeOrpa = '"
  loc_A63B6F: FLdPr Me
  loc_A63B72: VCallAd Control_ID_FiltroMsk
  loc_A63B75: FStAdFunc var_88
  loc_A63B78: FLdPr var_88
  loc_A63B7B: LateIdLdVar var_98 DispID_22 0
  loc_A63B82: CStrVarTmp
  loc_A63B83: FStStrNoPop var_9C
  loc_A63B86: ConcatStr
  loc_A63B87: FStStrNoPop var_A0
  loc_A63B8A: LitStr "'"
  loc_A63B8D: ConcatStr
  loc_A63B8E: PopTmpLdAdStr
  loc_A63B92: FLdPr Me
  loc_A63B95: MemLdRfVar from_stack_1.BuscarCLS
  loc_A63B98: NewIfNullPr clsbase
  loc_A63B9B: Call clsbase.Filter(from_stack_1v)
  loc_A63BA0: FFreeStr var_9C = "": var_A0 = ""
  loc_A63BA9: FFree1Ad var_88
  loc_A63BAC: FFree1Var var_98 = ""
  loc_A63BAF: LitStr "OP igual a: "
  loc_A63BB2: FLdPr Me
  loc_A63BB5: VCallAd Control_ID_FiltroMsk
  loc_A63BB8: FStAdFunc var_88
  loc_A63BBB: FLdPr var_88
  loc_A63BBE: LateIdLdVar var_98 DispID_22 0
  loc_A63BC5: CStrVarTmp
  loc_A63BC6: FStStrNoPop var_9C
  loc_A63BC9: ConcatStr
  loc_A63BCA: FStStrNoPop var_A0
  loc_A63BCD: FLdPr Me
  loc_A63BD0: MemStStrCopy
  loc_A63BD4: FFreeStr var_9C = ""
  loc_A63BDB: FFree1Ad var_88
  loc_A63BDE: FFree1Var var_98 = ""
  loc_A63BE1: Branch loc_A63D1A
  loc_A63BE4: FLdRfVar var_A2
  loc_A63BE7: FLdPr Me
  loc_A63BEA: VCallAd Control_ID_FiltroCbo
  loc_A63BED: FStAdFunc var_88
  loc_A63BF0: FLdPr var_88
  loc_A63BF3:  = Me.ListIndex
  loc_A63BF8: FLdI2 var_A2
  loc_A63BFB: LitI2_Byte 1
  loc_A63BFD: EqI2
  loc_A63BFE: FFree1Ad var_88
  loc_A63C01: BranchF loc_A63C85
  loc_A63C04: LitStr "ExpeImpu LIKE '"
  loc_A63C07: FLdPr Me
  loc_A63C0A: VCallAd Control_ID_FiltroMsk
  loc_A63C0D: FStAdFunc var_88
  loc_A63C10: FLdPr var_88
  loc_A63C13: LateIdLdVar var_98 DispID_22 0
  loc_A63C1A: CStrVarTmp
  loc_A63C1B: FStStrNoPop var_9C
  loc_A63C1E: ConcatStr
  loc_A63C1F: FStStrNoPop var_A0
  loc_A63C22: LitStr Chr(37) & "'"
  loc_A63C25: ConcatStr
  loc_A63C26: PopTmpLdAdStr
  loc_A63C2A: FLdPr Me
  loc_A63C2D: MemLdRfVar from_stack_1.BuscarCLS
  loc_A63C30: NewIfNullPr clsbase
  loc_A63C33: Call clsbase.Filter(from_stack_1v)
  loc_A63C38: FFreeStr var_9C = "": var_A0 = ""
  loc_A63C41: FFree1Ad var_88
  loc_A63C44: FFree1Var var_98 = ""
  loc_A63C47: LitStr "expediente comience con: "
  loc_A63C4A: FLdPr Me
  loc_A63C4D: VCallAd Control_ID_FiltroMsk
  loc_A63C50: FStAdFunc var_88
  loc_A63C53: FLdPr var_88
  loc_A63C56: LateIdLdVar var_98 DispID_22 0
  loc_A63C5D: CStrVarTmp
  loc_A63C5E: FStStrNoPop var_9C
  loc_A63C61: ConcatStr
  loc_A63C62: FStStrNoPop var_A0
  loc_A63C65: LitStr vbNullString
  loc_A63C68: ConcatStr
  loc_A63C69: FStStrNoPop var_A8
  loc_A63C6C: FLdPr Me
  loc_A63C6F: MemStStrCopy
  loc_A63C73: FFreeStr var_9C = "": var_A0 = ""
  loc_A63C7C: FFree1Ad var_88
  loc_A63C7F: FFree1Var var_98 = ""
  loc_A63C82: Branch loc_A63D1A
  loc_A63C85: FLdRfVar var_A2
  loc_A63C88: FLdPr Me
  loc_A63C8B: VCallAd Control_ID_FiltroCbo
  loc_A63C8E: FStAdFunc var_88
  loc_A63C91: FLdPr var_88
  loc_A63C94:  = Me.ListIndex
  loc_A63C99: FLdI2 var_A2
  loc_A63C9C: LitI2_Byte 2
  loc_A63C9E: EqI2
  loc_A63C9F: FFree1Ad var_88
  loc_A63CA2: BranchF loc_A63D1A
  loc_A63CA5: LitStr "DetaProv LIKE '" & Chr(37)
  loc_A63CA8: FLdPr Me
  loc_A63CAB: VCallAd Control_ID_FiltroMsk
  loc_A63CAE: FStAdFunc var_88
  loc_A63CB1: FLdPr var_88
  loc_A63CB4: LateIdLdVar var_98 DispID_22 0
  loc_A63CBB: CStrVarTmp
  loc_A63CBC: FStStrNoPop var_9C
  loc_A63CBF: ConcatStr
  loc_A63CC0: FStStrNoPop var_A0
  loc_A63CC3: LitStr Chr(37) & "'"
  loc_A63CC6: ConcatStr
  loc_A63CC7: PopTmpLdAdStr
  loc_A63CCB: FLdPr Me
  loc_A63CCE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A63CD1: NewIfNullPr clsbase
  loc_A63CD4: Call clsbase.Filter(from_stack_1v)
  loc_A63CD9: FFreeStr var_9C = "": var_A0 = ""
  loc_A63CE2: FFree1Ad var_88
  loc_A63CE5: FFree1Var var_98 = ""
  loc_A63CE8: LitStr "Proveedor contenga: "
  loc_A63CEB: FLdPr Me
  loc_A63CEE: VCallAd Control_ID_FiltroMsk
  loc_A63CF1: FStAdFunc var_88
  loc_A63CF4: FLdPr var_88
  loc_A63CF7: LateIdLdVar var_98 DispID_22 0
  loc_A63CFE: CStrVarTmp
  loc_A63CFF: FStStrNoPop var_9C
  loc_A63D02: ConcatStr
  loc_A63D03: FStStrNoPop var_A0
  loc_A63D06: FLdPr Me
  loc_A63D09: MemStStrCopy
  loc_A63D0D: FFreeStr var_9C = ""
  loc_A63D14: FFree1Ad var_88
  loc_A63D17: FFree1Var var_98 = ""
  loc_A63D1A: Branch loc_A63D41
  loc_A63D1D: LitStr vbNullString
  loc_A63D20: FStStrCopy var_9C
  loc_A63D23: FLdRfVar var_9C
  loc_A63D26: FLdPr Me
  loc_A63D29: MemLdRfVar from_stack_1.BuscarCLS
  loc_A63D2C: NewIfNullPr clsbase
  loc_A63D2F: Call clsbase.Filter(from_stack_1v)
  loc_A63D34: FFree1Str var_9C
  loc_A63D37: LitStr vbNullString
  loc_A63D3A: FLdPr Me
  loc_A63D3D: MemStStrCopy
  loc_A63D41: FLdRfVar var_AC
  loc_A63D44: FLdPr Me
  loc_A63D47: MemLdRfVar from_stack_1.BuscarCLS
  loc_A63D4A: NewIfNullPr clsbase
  loc_A63D4D: from_stack_1 = clsbase.RecordCount
  loc_A63D52: ILdRf var_AC
  loc_A63D55: LitI4 0
  loc_A63D5A: GtI4
  loc_A63D5B: BranchF loc_A63DF9
  loc_A63D5E: FLdPr Me
  loc_A63D61: MemLdRfVar from_stack_1.BuscarCLS
  loc_A63D64: NewIfNullAd
  loc_A63D67: FStAd var_B0 
  loc_A63D6B: FLdRfVar var_B0
  loc_A63D6E: CVarRef
  loc_A63D73: ILdRf Me
  loc_A63D76: CastAd
  loc_A63D79: FStAdFunc var_88
  loc_A63D7C: FLdRfVar var_88
  loc_A63D7F: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_A63D84: ILdRf var_B0
  loc_A63D87: CastAd
  loc_A63D8A: FLdPr Me
  loc_A63D8D: MemStAdFunc
  loc_A63D91: FFreeAd var_88 = ""
  loc_A63D98: LitI4 0
  loc_A63D9D: LitI4 1
  loc_A63DA2: FLdRfVar var_C4
  loc_A63DA5: Redim
  loc_A63DAF: FLdPr Me
  loc_A63DB2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A63DB5: NewIfNullAd
  loc_A63DB8: FStAd var_88 
  loc_A63DBC: FLdRfVar var_88
  loc_A63DBF: CVarRef
  loc_A63DC4: ParmAry1St
  loc_A63DCA: FLdPr Me
  loc_A63DCD: VCallAd Control_ID_dgdABMS
  loc_A63DD0: CVarAd
  loc_A63DD4: ParmAry1St
  loc_A63DDA: FLdRfVar var_C4
  loc_A63DDD: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A63DE2: ILdRf var_88
  loc_A63DE5: CastAd
  loc_A63DE8: FLdPr Me
  loc_A63DEB: MemStAdFunc
  loc_A63DEF: FLdRfVar var_C4
  loc_A63DF2: Erase
  loc_A63DF3: FFree1Ad var_88
  loc_A63DF6: Branch loc_A63E0D
  loc_A63DF9: ILdRf Me
  loc_A63DFC: CastAd
  loc_A63DFF: FStAdFunc var_88
  loc_A63E02: FLdRfVar var_88
  loc_A63E05: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A63E0A: FFree1Ad var_88
  loc_A63E0D: FLdPr Me
  loc_A63E10: VCallAd Control_ID_dgdABMS
  loc_A63E13: FStAdFunc var_B0
  loc_A63E16: LitI4 0
  loc_A63E1B: FStStrCopy var_9C
  loc_A63E1E: FLdRfVar var_9C
  loc_A63E21: FLdPr Me
  loc_A63E24: MemLdStr sFiltro
  loc_A63E27: FLdZeroAd var_B0
  loc_A63E2A: FStAdFunc var_88
  loc_A63E2D: FLdRfVar var_88
  loc_A63E30: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_A63E35: FFree1Str var_9C
  loc_A63E38: FFreeAd var_88 = ""
  loc_A63E3F: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998FC4
  'Data Table: 425B50
  loc_998F60: ILdI2 KeyAscii
  loc_998F63: LitI2_Byte &H27
  loc_998F65: EqI2
  loc_998F66: BranchF loc_998F6E
  loc_998F69: LitI2_Byte 0
  loc_998F6B: IStI2 KeyAscii
  loc_998F6E: FLdRfVar var_88
  loc_998F71: FLdPr Me
  loc_998F74: MemLdRfVar from_stack_1.BuscarCLS
  loc_998F77: NewIfNullPr clsbase
  loc_998F7A: from_stack_1 = clsbase.RecordCount
  loc_998F7F: ILdRf var_88
  loc_998F82: LitI4 0
  loc_998F87: EqI4
  loc_998F88: ILdI2 KeyAscii
  loc_998F8B: CI4UI1
  loc_998F8C: LitI4 8
  loc_998F91: NeI4
  loc_998F92: AndI4
  loc_998F93: FLdPr Me
  loc_998F96: VCallAd Control_ID_FiltroMsk
  loc_998F99: FStAdFunc var_8C
  loc_998F9C: FLdPr var_8C
  loc_998F9F: LateIdLdVar var_9C DispID_16 0
  loc_998FA6: CStrVarTmp
  loc_998FA7: FStStrNoPop var_A0
  loc_998FAA: LitStr vbNullString
  loc_998FAD: EqStr
  loc_998FAF: AndI4
  loc_998FB0: FFree1Str var_A0
  loc_998FB3: FFree1Ad var_8C
  loc_998FB6: FFree1Var var_9C = ""
  loc_998FB9: BranchF loc_998FC1
  loc_998FBC: LitI2_Byte 0
  loc_998FBE: IStI2 KeyAscii
  loc_998FC1: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9A7BA4
  'Data Table: 425B50
  loc_9A7B1C: FLdRfVar var_88
  loc_9A7B1F: FLdPr Me
  loc_9A7B22: MemLdRfVar from_stack_1.BuscarCLS
  loc_9A7B25: NewIfNullPr clsbase
  loc_9A7B28: from_stack_1 = clsbase.RecordCount
  loc_9A7B2D: ILdRf var_88
  loc_9A7B30: LitI4 0
  loc_9A7B35: GtI4
  loc_9A7B36: BranchF loc_9A7B8C
  loc_9A7B39: FLdRfVar var_B4
  loc_9A7B3C: FLdRfVar var_A4
  loc_9A7B3F: LitVarStr var_A0, "CodiRete"
  loc_9A7B44: PopAdLdVar
  loc_9A7B45: FLdRfVar var_90
  loc_9A7B48: FLdRfVar var_8C
  loc_9A7B4B: FLdPr Me
  loc_9A7B4E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9A7B51: NewIfNullPr clsbase
  loc_9A7B54: from_stack_1v = clsbase.RsFrmGet()
  loc_9A7B59: FLdPr var_8C
  loc_9A7B5C:  = Me.Fields
  loc_9A7B61: FLdPr var_90
  loc_9A7B64: from_stack_2 = Me.Item(from_stack_1)
  loc_9A7B69: FLdPr var_A4
  loc_9A7B6C:  = Me.Value
  loc_9A7B71: FLdRfVar var_B4
  loc_9A7B74: CI2Var
  loc_9A7B75: ImpAdLdRf MemVar_C3DA34
  loc_9A7B78: NewIfNullPr frmDebito
  loc_9A7B7B: Call frmDebito.iCodiRetePut(from_stack_1v)
  loc_9A7B80: FFreeAd var_8C = "": var_90 = ""
  loc_9A7B89: FFree1Var var_B4 = ""
  loc_9A7B8C: ILdRf Me
  loc_9A7B8F: FStAdNoPop
  loc_9A7B93: ImpAdLdRf MemVar_C44F9C
  loc_9A7B96: NewIfNullPr Me
  loc_9A7B99: Me.Global.Unload from_stack_1
  loc_9A7B9E: FFree1Ad var_8C
  loc_9A7BA1: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9E833C
  'Data Table: 425B50
  loc_9E8210: LitVarStr var_94, vbNullString
  loc_9E8215: PopAdLdVar
  loc_9E8216: FLdPr Me
  loc_9E8219: VCallAd Control_ID_FiltroMsk
  loc_9E821C: FStAdFunc var_A8
  loc_9E821F: FLdPr var_A8
  loc_9E8222: LateIdSt
  loc_9E8227: FFree1Ad var_A8
  loc_9E822A: FLdRfVar var_AA
  loc_9E822D: FLdPr Me
  loc_9E8230: VCallAd Control_ID_FiltroCbo
  loc_9E8233: FStAdFunc var_A8
  loc_9E8236: FLdPr var_A8
  loc_9E8239:  = Me.ListIndex
  loc_9E823E: FLdI2 var_AA
  loc_9E8241: FStI2 var_AC
  loc_9E8244: FFree1Ad var_A8
  loc_9E8247: FLdI2 var_AC
  loc_9E824A: LitI2_Byte 0
  loc_9E824C: EqI2
  loc_9E824D: BranchF loc_9E8287
  loc_9E8250: LitVarStr var_94, "#####"
  loc_9E8255: PopAdLdVar
  loc_9E8256: FLdPr Me
  loc_9E8259: VCallAd Control_ID_FiltroMsk
  loc_9E825C: FStAdFunc var_A8
  loc_9E825F: FLdPr var_A8
  loc_9E8262: LateIdSt
  loc_9E8267: FFree1Ad var_A8
  loc_9E826A: LitStr "NumeOrpa"
  loc_9E826D: FStStrCopy var_B0
  loc_9E8270: FLdRfVar var_B0
  loc_9E8273: FLdPr Me
  loc_9E8276: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E8279: NewIfNullPr clsbase
  loc_9E827C: Call clsbase.Sort(from_stack_1v)
  loc_9E8281: FFree1Str var_B0
  loc_9E8284: Branch loc_9E8338
  loc_9E8287: FLdI2 var_AC
  loc_9E828A: LitI2_Byte 1
  loc_9E828C: EqI2
  loc_9E828D: BranchF loc_9E82E1
  loc_9E8290: LitVarStr var_94, "&"
  loc_9E8295: PopAdLdVar
  loc_9E8296: FLdPr Me
  loc_9E8299: VCallAd Control_ID_FiltroMsk
  loc_9E829C: FStAdFunc var_A8
  loc_9E829F: FLdPr var_A8
  loc_9E82A2: LateIdSt
  loc_9E82A7: FFree1Ad var_A8
  loc_9E82AA: LitVarStr var_94, vbNullString
  loc_9E82AF: PopAdLdVar
  loc_9E82B0: FLdPr Me
  loc_9E82B3: VCallAd Control_ID_FiltroMsk
  loc_9E82B6: FStAdFunc var_A8
  loc_9E82B9: FLdPr var_A8
  loc_9E82BC: LateIdSt
  loc_9E82C1: FFree1Ad var_A8
  loc_9E82C4: LitStr "ExpeImpu"
  loc_9E82C7: FStStrCopy var_B0
  loc_9E82CA: FLdRfVar var_B0
  loc_9E82CD: FLdPr Me
  loc_9E82D0: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E82D3: NewIfNullPr clsbase
  loc_9E82D6: Call clsbase.Sort(from_stack_1v)
  loc_9E82DB: FFree1Str var_B0
  loc_9E82DE: Branch loc_9E8338
  loc_9E82E1: FLdI2 var_AC
  loc_9E82E4: LitI2_Byte 2
  loc_9E82E6: EqI2
  loc_9E82E7: BranchF loc_9E8338
  loc_9E82EA: LitVarStr var_94, "&"
  loc_9E82EF: PopAdLdVar
  loc_9E82F0: FLdPr Me
  loc_9E82F3: VCallAd Control_ID_FiltroMsk
  loc_9E82F6: FStAdFunc var_A8
  loc_9E82F9: FLdPr var_A8
  loc_9E82FC: LateIdSt
  loc_9E8301: FFree1Ad var_A8
  loc_9E8304: LitVarStr var_94, vbNullString
  loc_9E8309: PopAdLdVar
  loc_9E830A: FLdPr Me
  loc_9E830D: VCallAd Control_ID_FiltroMsk
  loc_9E8310: FStAdFunc var_A8
  loc_9E8313: FLdPr var_A8
  loc_9E8316: LateIdSt
  loc_9E831B: FFree1Ad var_A8
  loc_9E831E: LitStr "DetaProv"
  loc_9E8321: FStStrCopy var_B0
  loc_9E8324: FLdRfVar var_B0
  loc_9E8327: FLdPr Me
  loc_9E832A: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E832D: NewIfNullPr clsbase
  loc_9E8330: Call clsbase.Sort(from_stack_1v)
  loc_9E8335: FFree1Str var_B0
  loc_9E8338: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '426134
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '426143
  iPeriInfo = Value
End Sub

Public Function MuestroAnuladosGet() '426152
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '426161
  MuestroAnulados = Value
End Sub

Public Function global_4348752Get() '426170
  global_4348752Get = global_4348752
End Function

Public Sub global_4348752Put(Value) '42618A
  global_4348752 = Value
End Sub

Public Sub global_4348752Set(Value) '4261A4
  global_4348752 = Value
End Sub

Public Function sFiltroGet() '4261BE
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '4261CD
  sFiltro = Value
End Sub

Public Function sCodiCucoGet() '4261DC
  sCodiCucoGet = sCodiCuco
End Function

Public Sub sCodiCucoPut(Value) '4261EB
  sCodiCuco = Value
End Sub

Public Function sFechaGet() '4261FA
  sFechaGet = sFecha
End Function

Public Sub sFechaPut(Value) '426209
  sFecha = Value
End Sub

Public Function boCancelGet() '426218
  boCancelGet = boCancel
End Function

Public Sub boCancelPut(Value) '426227
  boCancel = Value
End Sub

Public Sub Constructor(wPeriInfo, wCodiInsu, sWhere) '9D69DC
  'Data Table: 425B50
  loc_9D6918: ILdRf wCodiInsu
  loc_9D691B: FStStrCopy var_88
  loc_9D691E: ILdRf sWhere
  loc_9D6921: FStStrCopy var_8C
  loc_9D6924: LitStr "SELECT op.NumeOrpa, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CodiRete, lqn.CucuPers, p.DetaProv, lqn.ImpoLine, lqn.CertLine"
  loc_9D6927: LitStr " FROM liquidaneto lqn"
  loc_9D692A: ConcatStr
  loc_9D692B: FStStrNoPop var_90
  loc_9D692E: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_9D6931: ConcatStr
  loc_9D6932: FStStrNoPop var_94
  loc_9D6935: LitStr " INNER JOIN ordenpago op ON op.PeriInfo = lqn.PeriInfo AND op.ExpeImpu = lqn.ExpeImpu AND op.NumeLiqu = lqn.NumeLiqu AND op.FeanOrpa IS NULL"
  loc_9D6938: ConcatStr
  loc_9D6939: FStStrNoPop var_98
  loc_9D693C: LitStr " WHERE lqn.PeriInfo = "
  loc_9D693F: ConcatStr
  loc_9D6940: FStStrNoPop var_9C
  loc_9D6943: ImpAdLdI2 MemVar_C3D064
  loc_9D6946: CStrUI1
  loc_9D6948: FStStrNoPop var_A0
  loc_9D694B: ConcatStr
  loc_9D694C: FStStrNoPop var_A4
  loc_9D694F: LitStr " AND lqn.CodiRete > 0"
  loc_9D6952: ConcatStr
  loc_9D6953: FStStrNoPop var_A8
  loc_9D6956: LitStr " AND lqn.CodiCuco = '"
  loc_9D6959: ConcatStr
  loc_9D695A: FStStrNoPop var_AC
  loc_9D695D: FLdPr Me
  loc_9D6960: MemLdStr sCodiCuco
  loc_9D6963: ConcatStr
  loc_9D6964: FStStrNoPop var_B0
  loc_9D6967: LitStr "'"
  loc_9D696A: ConcatStr
  loc_9D696B: FStStrNoPop var_B4
  loc_9D696E: LitStr " AND lqn.FechCaja >= "
  loc_9D6971: ConcatStr
  loc_9D6972: FStStrNoPop var_E8
  loc_9D6975: LitI4 1
  loc_9D697A: LitI4 1
  loc_9D697F: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_9D6984: FStVarCopyObj var_E4
  loc_9D6987: FLdRfVar var_E4
  loc_9D698A: FLdPr Me
  loc_9D698D: MemLdRfVar from_stack_1.sFecha
  loc_9D6990: CVarRef
  loc_9D6995: ImpAdCallI2 Format$(, )
  loc_9D699A: FStStrNoPop var_EC
  loc_9D699D: ConcatStr
  loc_9D699E: FStStrNoPop var_F0
  loc_9D69A1: LitStr " AND lqn.NumeDebi = 0;"
  loc_9D69A4: ConcatStr
  loc_9D69A5: FStStrNoPop var_F4
  loc_9D69A8: FLdPr Me
  loc_9D69AB: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D69AE: NewIfNullPr clsbase
  loc_9D69B1: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D69B6: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_9D69D5: FFree1Var var_E4 = ""
  loc_9D69D8: ExitProcHresult
End Sub
