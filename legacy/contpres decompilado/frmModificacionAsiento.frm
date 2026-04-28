VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmModificacionAsiento
  Caption = "Modificacion de Asientos Manuales"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmModificacionAsiento.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 14385
  ClientHeight = 9135
  Begin VB.TextBox MinuAsieTxt
    Left = 1200
    Top = 3240
    Width = 10815
    Height = 735
    TabIndex = 5
    MaxLength = 500
  End
  Begin VB.CommandButton cmdEliminarAsientoManual
    Caption = "Eliminar Asiento Manual"
    Left = 120
    Top = 4080
    Width = 11895
    Height = 495
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
  Begin VB.CommandButton cmdCancelar
    Left = 10680
    Top = 6960
    Width = 1335
    Height = 495
    TabIndex = 11
    Picture = "frmModificacionAsiento.frx":08CA
    Style = 1
  End
  Begin VB.CommandButton cmdSalir
    Left = 12360
    Top = 120
    Width = 855
    Height = 615
    TabIndex = 1
    Picture = "frmModificacionAsiento.frx":0C94
    Style = 1
  End
  Begin VB.CommandButton cmdConfirmar
    Left = 10680
    Top = 6240
    Width = 1335
    Height = 495
    TabIndex = 10
    Picture = "frmModificacionAsiento.frx":0EE6
    Style = 1
  End
  Begin MSDataGridLib.DataGrid dgdAsiento
    Left = 120
    Top = 120
    Width = 11895
    Height = 2535
    TabIndex = 0
    OleObjectBlob = "frmModificacionAsiento.frx":1214
  End
  Begin MSFlexGridLib.MSFlexGrid DetaAsieFlex
    Left = 120
    Top = 4800
    Width = 9375
    Height = 3495
    TabIndex = 7
    OleObjectBlob = "frmModificacionAsiento.frx":1540
    Appearance = 0 'Flat
  End
  Begin MSMask.MaskEdBox TotaDebeMsk
    Left = 9840
    Top = 4800
    Width = 2160
    Height = 360
    TabIndex = 8
    OleObjectBlob = "frmModificacionAsiento.frx":162C
  End
  Begin MSMask.MaskEdBox TotaHaberMsk
    Left = 9840
    Top = 5520
    Width = 2160
    Height = 360
    TabIndex = 9
    OleObjectBlob = "frmModificacionAsiento.frx":16C4
    Appearance = 0 'Flat
  End
  Begin MSMask.MaskEdBox FechAsieMsk
    Left = 2160
    Top = 2760
    Width = 1335
    Height = 405
    TabIndex = 3
    OleObjectBlob = "frmModificacionAsiento.frx":175C
  End
  Begin VB.Label LabelMinuta
    Caption = "Minuta:"
    Left = 120
    Top = 3240
    Width = 855
    Height = 375
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
  Begin VB.Label Label2
    Caption = "Fecha de asiento:"
    Left = 120
    Top = 2760
    Width = 1905
    Height = 300
    TabIndex = 2
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

Attribute VB_Name = "frmModificacionAsiento"


Private Sub cmdCancelar_Click() '949A64
  'Data Table: 43419C
  loc_949A54: LitI2_Byte 0
  loc_949A56: LitVarI2 var_A4, 0
  loc_949A5B: Call dgdAsiento_RowColChange(from_stack_1v, from_stack_2v)
  loc_949A60: FFree1Var var_A4 = ""
  loc_949A63: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '95ACC0
  'Data Table: 43419C
  loc_95ACA8: ILdRf Me
  loc_95ACAB: FStAdNoPop
  loc_95ACAF: ImpAdLdRf MemVar_C44F9C
  loc_95ACB2: NewIfNullPr Me
  loc_95ACB5: Me.Global.Unload from_stack_1
  loc_95ACBA: FFree1Ad var_88
  loc_95ACBD: ExitProcHresult
  loc_95ACBE: CI4Str
End Sub

Private Sub dgdAsiento_RowColChange(LastRow As Variant, LastCol As Integer) 'B01CF8
  'Data Table: 43419C
  loc_B01580: LitI2_Byte 0
  loc_B01582: CR8I2
  loc_B01583: FLdPr Me
  loc_B01586: MemStFPR8 global_64
  loc_B01589: LitI2_Byte 0
  loc_B0158B: CR8I2
  loc_B0158C: FLdPr Me
  loc_B0158F: MemStFPR8 global_72
  loc_B01592: FLdPr Me
  loc_B01595: VCallAd Control_ID_DetaAsieFlex
  loc_B01598: FStAdFunc var_88
  loc_B0159B: FLdPr var_88
  loc_B0159E: LateIdCall
  loc_B015A6: LitVarI4
  loc_B015AE: PopAdLdVar
  loc_B015AF: FLdPr var_88
  loc_B015B2: LateIdSt
  loc_B015B7: LitVarI4
  loc_B015BF: PopAdLdVar
  loc_B015C0: LitVarI4
  loc_B015C8: PopAdLdVar
  loc_B015C9: LitVarStr var_D8, "Cta Contable"
  loc_B015CE: PopAdLdVar
  loc_B015CF: FLdPr var_88
  loc_B015D2: LateIdCallSt
  loc_B015DA: LitVarI4
  loc_B015E2: PopAdLdVar
  loc_B015E3: LitVarI4
  loc_B015EB: PopAdLdVar
  loc_B015EC: LitVarStr var_D8, "Detalle"
  loc_B015F1: PopAdLdVar
  loc_B015F2: FLdPr var_88
  loc_B015F5: LateIdCallSt
  loc_B015FD: LitVarI4
  loc_B01605: PopAdLdVar
  loc_B01606: LitVarI4
  loc_B0160E: PopAdLdVar
  loc_B0160F: LitVarStr var_D8, "Debe"
  loc_B01614: PopAdLdVar
  loc_B01615: FLdPr var_88
  loc_B01618: LateIdCallSt
  loc_B01620: LitVarI4
  loc_B01628: PopAdLdVar
  loc_B01629: LitVarI4
  loc_B01631: PopAdLdVar
  loc_B01632: LitVarStr var_D8, "Haber"
  loc_B01637: PopAdLdVar
  loc_B01638: FLdPr var_88
  loc_B0163B: LateIdCallSt
  loc_B01643: FLdPr var_88
  loc_B01646: LateIdCall
  loc_B0164E: LitNothing
  loc_B01650: FStAd var_88 
  loc_B01654: FLdRfVar var_EC
  loc_B01657: FLdPr Me
  loc_B0165A: MemLdRfVar from_stack_1.global_52
  loc_B0165D: NewIfNullPr clsasiento
  loc_B01660: from_stack_1 = clsasiento.RecordCount
  loc_B01665: ILdRf var_EC
  loc_B01668: LitI4 0
  loc_B0166D: GtI4
  loc_B0166E: BranchF loc_B01C6F
  loc_B01671: FLdRfVar var_EE
  loc_B01674: FLdPr Me
  loc_B01677: MemLdRfVar from_stack_1.global_52
  loc_B0167A: NewIfNullPr clsasiento
  loc_B0167D: from_stack_1 = clsasiento.BOF
  loc_B01682: FLdI2 var_EE
  loc_B01685: BranchF loc_B01696
  loc_B01688: FLdPr Me
  loc_B0168B: MemLdRfVar from_stack_1.global_52
  loc_B0168E: NewIfNullPr clsasiento
  loc_B01691: Call clsasiento.MoveFirst(from_stack_1v)
  loc_B01696: FLdRfVar var_EE
  loc_B01699: FLdPr Me
  loc_B0169C: MemLdRfVar from_stack_1.global_52
  loc_B0169F: NewIfNullPr clsasiento
  loc_B016A2: from_stack_1 = clsasiento.EOF
  loc_B016A7: FLdI2 var_EE
  loc_B016AA: BranchF loc_B016BB
  loc_B016AD: FLdPr Me
  loc_B016B0: MemLdRfVar from_stack_1.global_52
  loc_B016B3: NewIfNullPr clsasiento
  loc_B016B6: Call clsasiento.MoveLast()
  loc_B016BB: FLdRfVar var_10C
  loc_B016BE: FLdRfVar var_FC
  loc_B016C1: LitVarStr var_98, "FechAsie"
  loc_B016C6: PopAdLdVar
  loc_B016C7: FLdRfVar var_F8
  loc_B016CA: FLdRfVar var_F4
  loc_B016CD: FLdPr Me
  loc_B016D0: MemLdRfVar from_stack_1.global_52
  loc_B016D3: NewIfNullPr clsasiento
  loc_B016D6: from_stack_1v = clsasiento.RsFrmGet()
  loc_B016DB: FLdPr var_F4
  loc_B016DE:  = Me.Fields
  loc_B016E3: FLdPr var_F8
  loc_B016E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B016EB: FLdPr var_FC
  loc_B016EE:  = Me.Value
  loc_B016F3: FLdRfVar var_10C
  loc_B016F6: CStrVarTmp
  loc_B016F7: CVarStr var_11C
  loc_B016FA: PopAdLdVar
  loc_B016FB: FLdPr Me
  loc_B016FE: VCallAd Control_ID_FechAsieMsk
  loc_B01701: FStAdFunc var_120
  loc_B01704: FLdPr var_120
  loc_B01707: LateIdSt
  loc_B0170C: FFreeAd var_F4 = "": var_F8 = "": var_FC = ""
  loc_B01717: FFreeVar var_10C = ""
  loc_B0171E: FLdRfVar var_10C
  loc_B01721: FLdRfVar var_FC
  loc_B01724: LitVarStr var_98, "MinuAsie"
  loc_B01729: PopAdLdVar
  loc_B0172A: FLdRfVar var_F8
  loc_B0172D: FLdRfVar var_F4
  loc_B01730: FLdPr Me
  loc_B01733: MemLdRfVar from_stack_1.global_52
  loc_B01736: NewIfNullPr clsasiento
  loc_B01739: from_stack_1v = clsasiento.RsFrmGet()
  loc_B0173E: FLdPr var_F4
  loc_B01741:  = Me.Fields
  loc_B01746: FLdPr var_F8
  loc_B01749: from_stack_2 = Me.Item(from_stack_1)
  loc_B0174E: FLdPr var_FC
  loc_B01751:  = Me.Value
  loc_B01756: FLdRfVar var_10C
  loc_B01759: CStrVarTmp
  loc_B0175A: FStStrNoPop var_124
  loc_B0175D: FLdPr Me
  loc_B01760: VCallAd Control_ID_MinuAsieTxt
  loc_B01763: FStAdFunc var_120
  loc_B01766: FLdPr var_120
  loc_B01769: Me.Text = from_stack_1
  loc_B0176E: FFree1Str var_124
  loc_B01771: FFreeAd var_F4 = "": var_F8 = "": var_FC = ""
  loc_B0177C: FFree1Var var_10C = ""
  loc_B0177F: LitStr "SELECT moviasiento.CodiCuco, moviasiento.DebeMoas, moviasiento.HabeMoas , IFNULL(cuentacontable.DetaCuco,'') AS DetaCuco FROM moviasiento "
  loc_B01782: LitStr " LEFT JOIN infogov.cuentacontable ON moviasiento.PeriInfo = infogov.cuentacontable.PeriInfo"
  loc_B01785: ConcatStr
  loc_B01786: FStStrNoPop var_124
  loc_B01789: LitStr " AND moviasiento.CodiCuco = infogov.cuentacontable.CodiCuco"
  loc_B0178C: ConcatStr
  loc_B0178D: FStStrNoPop var_128
  loc_B01790: LitStr " WHERE moviasiento.PeriInfo = "
  loc_B01793: ConcatStr
  loc_B01794: CVarStr var_11C
  loc_B01797: FLdRfVar var_10C
  loc_B0179A: FLdRfVar var_FC
  loc_B0179D: LitVarStr var_98, "PeriInfo"
  loc_B017A2: PopAdLdVar
  loc_B017A3: FLdRfVar var_F8
  loc_B017A6: FLdRfVar var_F4
  loc_B017A9: FLdPr Me
  loc_B017AC: MemLdRfVar from_stack_1.global_52
  loc_B017AF: NewIfNullPr clsasiento
  loc_B017B2: from_stack_1v = clsasiento.RsFrmGet()
  loc_B017B7: FLdPr var_F4
  loc_B017BA:  = Me.Fields
  loc_B017BF: FLdPr var_F8
  loc_B017C2: from_stack_2 = Me.Item(from_stack_1)
  loc_B017C7: FLdPr var_FC
  loc_B017CA:  = Me.Value
  loc_B017CF: FLdRfVar var_10C
  loc_B017D2: ConcatVar var_138
  loc_B017D6: LitVarStr var_A8, " AND moviasiento.CodiAsie = "
  loc_B017DB: ConcatVar var_148
  loc_B017DF: FLdRfVar var_160
  loc_B017E2: FLdRfVar var_150
  loc_B017E5: LitVarStr var_B8, "CodiAsie"
  loc_B017EA: PopAdLdVar
  loc_B017EB: FLdRfVar var_14C
  loc_B017EE: FLdRfVar var_120
  loc_B017F1: FLdPr Me
  loc_B017F4: MemLdRfVar from_stack_1.global_52
  loc_B017F7: NewIfNullPr clsasiento
  loc_B017FA: from_stack_1v = clsasiento.RsFrmGet()
  loc_B017FF: FLdPr var_120
  loc_B01802:  = Me.Fields
  loc_B01807: FLdPr var_14C
  loc_B0180A: from_stack_2 = Me.Item(from_stack_1)
  loc_B0180F: FLdPr var_150
  loc_B01812:  = Me.Value
  loc_B01817: FLdRfVar var_160
  loc_B0181A: ConcatVar var_170
  loc_B0181E: LitVarStr var_C8, " ORDER BY moviasiento.PeriInfo, moviasiento.CodiAsie, moviasiento.CodiMoas"
  loc_B01823: ConcatVar var_180
  loc_B01827: CStrVarVal var_184
  loc_B0182B: FLdPr Me
  loc_B0182E: MemLdRfVar from_stack_1.global_56
  loc_B01831: NewIfNullPr clsasiento
  loc_B01834: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B01839: FFreeStr var_124 = "": var_128 = ""
  loc_B01842: FFreeAd var_F4 = "": var_F8 = "": var_FC = "": var_120 = "": var_14C = ""
  loc_B01851: FFreeVar var_11C = "": var_10C = "": var_138 = "": var_148 = "": var_160 = "": var_170 = ""
  loc_B01862: FLdRfVar var_EC
  loc_B01865: FLdPr Me
  loc_B01868: MemLdRfVar from_stack_1.global_56
  loc_B0186B: NewIfNullPr clsasiento
  loc_B0186E: from_stack_1 = clsasiento.RecordCount
  loc_B01873: ILdRf var_EC
  loc_B01876: LitI4 0
  loc_B0187B: GtI4
  loc_B0187C: BranchF loc_B01C6F
  loc_B0187F: FLdPr Me
  loc_B01882: MemLdRfVar from_stack_1.global_56
  loc_B01885: NewIfNullPr clsasiento
  loc_B01888: Call clsasiento.MoveFirst(from_stack_1v)
  loc_B0188D: FLdRfVar var_EE
  loc_B01890: FLdPr Me
  loc_B01893: MemLdRfVar from_stack_1.global_56
  loc_B01896: NewIfNullPr clsasiento
  loc_B01899: from_stack_1 = clsasiento.EOF
  loc_B0189E: FLdI2 var_EE
  loc_B018A1: NotI4
  loc_B018A2: BranchF loc_B01C6F
  loc_B018A5: FLdRfVar var_10C
  loc_B018A8: FLdRfVar var_FC
  loc_B018AB: LitVarStr var_98, "DebeMoas"
  loc_B018B0: PopAdLdVar
  loc_B018B1: FLdRfVar var_F8
  loc_B018B4: FLdRfVar var_F4
  loc_B018B7: FLdPr Me
  loc_B018BA: MemLdRfVar from_stack_1.global_56
  loc_B018BD: NewIfNullPr clsasiento
  loc_B018C0: from_stack_1v = clsasiento.RsFrmGet()
  loc_B018C5: FLdPr var_F4
  loc_B018C8:  = Me.Fields
  loc_B018CD: FLdPr var_F8
  loc_B018D0: from_stack_2 = Me.Item(from_stack_1)
  loc_B018D5: FLdPr var_FC
  loc_B018D8:  = Me.Value
  loc_B018DD: FLdRfVar var_150
  loc_B018E0: LitVarStr var_A8, "DebeMoas"
  loc_B018E5: PopAdLdVar
  loc_B018E6: FLdRfVar var_14C
  loc_B018E9: FLdRfVar var_120
  loc_B018EC: FLdPr Me
  loc_B018EF: MemLdRfVar from_stack_1.global_56
  loc_B018F2: NewIfNullPr clsasiento
  loc_B018F5: from_stack_1v = clsasiento.RsFrmGet()
  loc_B018FA: FLdPr var_120
  loc_B018FD:  = Me.Fields
  loc_B01902: FLdPr var_14C
  loc_B01905: from_stack_2 = Me.Item(from_stack_1)
  loc_B0190A: LitI4 1
  loc_B0190F: LitI4 1
  loc_B01914: LitVarStr var_B8, "0.00"
  loc_B01919: FStVarCopyObj var_138
  loc_B0191C: FLdRfVar var_138
  loc_B0191F: FLdZeroAd var_150
  loc_B01922: CVarAd
  loc_B01926: ImpAdCallI2 Format$(, )
  loc_B0192B: CVarStr var_160
  loc_B0192E: LitVarStr var_D8, vbNullString
  loc_B01933: FStVarCopyObj var_148
  loc_B01936: FLdRfVar var_148
  loc_B01939: FLdRfVar var_10C
  loc_B0193C: FnCDblVar
  loc_B0193E: LitI2_Byte 0
  loc_B01940: CR8I2
  loc_B01941: EqR4
  loc_B01942: CVarBoolI2 var_C8
  loc_B01946: FLdRfVar var_170
  loc_B01949: ImpAdCallFPR4  = IIf(, , )
  loc_B0194E: FLdRfVar var_170
  loc_B01951: CStrVarTmp
  loc_B01952: FStStrNoPop var_124
  loc_B01955: FLdPr Me
  loc_B01958: MemStStrCopy
  loc_B0195C: FFree1Str var_124
  loc_B0195F: FFreeAd var_F4 = "": var_F8 = "": var_FC = "": var_120 = ""
  loc_B0196C: FFreeVar var_10C = "": var_11C = "": var_138 = "": var_C8 = "": var_148 = "": var_160 = ""
  loc_B0197D: FLdRfVar var_10C
  loc_B01980: FLdRfVar var_FC
  loc_B01983: LitVarStr var_98, "HabeMoas"
  loc_B01988: PopAdLdVar
  loc_B01989: FLdRfVar var_F8
  loc_B0198C: FLdRfVar var_F4
  loc_B0198F: FLdPr Me
  loc_B01992: MemLdRfVar from_stack_1.global_56
  loc_B01995: NewIfNullPr clsasiento
  loc_B01998: from_stack_1v = clsasiento.RsFrmGet()
  loc_B0199D: FLdPr var_F4
  loc_B019A0:  = Me.Fields
  loc_B019A5: FLdPr var_F8
  loc_B019A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B019AD: FLdPr var_FC
  loc_B019B0:  = Me.Value
  loc_B019B5: FLdRfVar var_150
  loc_B019B8: LitVarStr var_A8, "HabeMoas"
  loc_B019BD: PopAdLdVar
  loc_B019BE: FLdRfVar var_14C
  loc_B019C1: FLdRfVar var_120
  loc_B019C4: FLdPr Me
  loc_B019C7: MemLdRfVar from_stack_1.global_56
  loc_B019CA: NewIfNullPr clsasiento
  loc_B019CD: from_stack_1v = clsasiento.RsFrmGet()
  loc_B019D2: FLdPr var_120
  loc_B019D5:  = Me.Fields
  loc_B019DA: FLdPr var_14C
  loc_B019DD: from_stack_2 = Me.Item(from_stack_1)
  loc_B019E2: LitI4 1
  loc_B019E7: LitI4 1
  loc_B019EC: LitVarStr var_B8, "0.00"
  loc_B019F1: FStVarCopyObj var_138
  loc_B019F4: FLdRfVar var_138
  loc_B019F7: FLdZeroAd var_150
  loc_B019FA: CVarAd
  loc_B019FE: ImpAdCallI2 Format$(, )
  loc_B01A03: CVarStr var_160
  loc_B01A06: LitVarStr var_D8, vbNullString
  loc_B01A0B: FStVarCopyObj var_148
  loc_B01A0E: FLdRfVar var_148
  loc_B01A11: FLdRfVar var_10C
  loc_B01A14: FnCDblVar
  loc_B01A16: LitI2_Byte 0
  loc_B01A18: CR8I2
  loc_B01A19: EqR4
  loc_B01A1A: CVarBoolI2 var_C8
  loc_B01A1E: FLdRfVar var_170
  loc_B01A21: ImpAdCallFPR4  = IIf(, , )
  loc_B01A26: FLdRfVar var_170
  loc_B01A29: CStrVarTmp
  loc_B01A2A: FStStrNoPop var_124
  loc_B01A2D: FLdPr Me
  loc_B01A30: MemStStrCopy
  loc_B01A34: FFree1Str var_124
  loc_B01A37: FFreeAd var_F4 = "": var_F8 = "": var_FC = "": var_120 = ""
  loc_B01A44: FFreeVar var_10C = "": var_11C = "": var_138 = "": var_C8 = "": var_148 = "": var_160 = ""
  loc_B01A55: FLdRfVar var_10C
  loc_B01A58: FLdRfVar var_FC
  loc_B01A5B: LitVarStr var_98, "DebeMoas"
  loc_B01A60: PopAdLdVar
  loc_B01A61: FLdRfVar var_F8
  loc_B01A64: FLdRfVar var_F4
  loc_B01A67: FLdPr Me
  loc_B01A6A: MemLdRfVar from_stack_1.global_56
  loc_B01A6D: NewIfNullPr clsasiento
  loc_B01A70: from_stack_1v = clsasiento.RsFrmGet()
  loc_B01A75: FLdPr var_F4
  loc_B01A78:  = Me.Fields
  loc_B01A7D: FLdPr var_F8
  loc_B01A80: from_stack_2 = Me.Item(from_stack_1)
  loc_B01A85: FLdPr var_FC
  loc_B01A88:  = Me.Value
  loc_B01A8D: FLdPr Me
  loc_B01A90: MemLdFPR8 global_64
  loc_B01A93: CVarR8
  loc_B01A97: LitI4 2
  loc_B01A9C: FLdRfVar var_10C
  loc_B01A9F: FnCDblVar
  loc_B01AA1: CVarR8
  loc_B01AA5: FLdRfVar var_138
  loc_B01AA8: ImpAdCallFPR4  = Round(, )
  loc_B01AAD: FLdRfVar var_138
  loc_B01AB0: AddVar var_148
  loc_B01AB4: CR4Var
  loc_B01AB5: FLdPr Me
  loc_B01AB8: MemStFPR8 global_64
  loc_B01ABB: FFreeAd var_F4 = "": var_F8 = ""
  loc_B01AC4: FFreeVar var_10C = "": var_11C = "": var_138 = ""
  loc_B01ACF: FLdRfVar var_10C
  loc_B01AD2: FLdRfVar var_FC
  loc_B01AD5: LitVarStr var_98, "HabeMoas"
  loc_B01ADA: PopAdLdVar
  loc_B01ADB: FLdRfVar var_F8
  loc_B01ADE: FLdRfVar var_F4
  loc_B01AE1: FLdPr Me
  loc_B01AE4: MemLdRfVar from_stack_1.global_56
  loc_B01AE7: NewIfNullPr clsasiento
  loc_B01AEA: from_stack_1v = clsasiento.RsFrmGet()
  loc_B01AEF: FLdPr var_F4
  loc_B01AF2:  = Me.Fields
  loc_B01AF7: FLdPr var_F8
  loc_B01AFA: from_stack_2 = Me.Item(from_stack_1)
  loc_B01AFF: FLdPr var_FC
  loc_B01B02:  = Me.Value
  loc_B01B07: FLdPr Me
  loc_B01B0A: MemLdFPR8 global_72
  loc_B01B0D: CVarR8
  loc_B01B11: LitI4 2
  loc_B01B16: FLdRfVar var_10C
  loc_B01B19: FnCDblVar
  loc_B01B1B: CVarR8
  loc_B01B1F: FLdRfVar var_138
  loc_B01B22: ImpAdCallFPR4  = Round(, )
  loc_B01B27: FLdRfVar var_138
  loc_B01B2A: AddVar var_148
  loc_B01B2E: CR4Var
  loc_B01B2F: FLdPr Me
  loc_B01B32: MemStFPR8 global_72
  loc_B01B35: FFreeAd var_F4 = "": var_F8 = ""
  loc_B01B3E: FFreeVar var_10C = "": var_11C = "": var_138 = ""
  loc_B01B49: FLdRfVar var_11C
  loc_B01B4C: FLdRfVar var_FC
  loc_B01B4F: LitVarStr var_98, "CodiCuco"
  loc_B01B54: PopAdLdVar
  loc_B01B55: FLdRfVar var_F8
  loc_B01B58: FLdRfVar var_F4
  loc_B01B5B: FLdPr Me
  loc_B01B5E: MemLdRfVar from_stack_1.global_56
  loc_B01B61: NewIfNullPr clsasiento
  loc_B01B64: from_stack_1v = clsasiento.RsFrmGet()
  loc_B01B69: FLdPr var_F4
  loc_B01B6C:  = Me.Fields
  loc_B01B71: FLdPr var_F8
  loc_B01B74: from_stack_2 = Me.Item(from_stack_1)
  loc_B01B79: FLdPr var_FC
  loc_B01B7C:  = Me.Value
  loc_B01B81: FLdRfVar var_11C
  loc_B01B84: LitI4 9
  loc_B01B89: FLdRfVar var_10C
  loc_B01B8C: ImpAdCallFPR4  = Chr()
  loc_B01B91: FLdRfVar var_10C
  loc_B01B94: ConcatVar var_138
  loc_B01B98: FLdRfVar var_148
  loc_B01B9B: FLdRfVar var_150
  loc_B01B9E: LitVarStr var_A8, "DetaCuco"
  loc_B01BA3: PopAdLdVar
  loc_B01BA4: FLdRfVar var_14C
  loc_B01BA7: FLdRfVar var_120
  loc_B01BAA: FLdPr Me
  loc_B01BAD: MemLdRfVar from_stack_1.global_56
  loc_B01BB0: NewIfNullPr clsasiento
  loc_B01BB3: from_stack_1v = clsasiento.RsFrmGet()
  loc_B01BB8: FLdPr var_120
  loc_B01BBB:  = Me.Fields
  loc_B01BC0: FLdPr var_14C
  loc_B01BC3: from_stack_2 = Me.Item(from_stack_1)
  loc_B01BC8: FLdPr var_150
  loc_B01BCB:  = Me.Value
  loc_B01BD0: FLdRfVar var_148
  loc_B01BD3: ConcatVar var_160
  loc_B01BD7: LitI4 9
  loc_B01BDC: FLdRfVar var_170
  loc_B01BDF: ImpAdCallFPR4  = Chr()
  loc_B01BE4: FLdRfVar var_170
  loc_B01BE7: ConcatVar var_180
  loc_B01BEB: FLdPr Me
  loc_B01BEE: MemLdStr global_84
  loc_B01BF1: CVarStr var_B8
  loc_B01BF4: ConcatVar var_194
  loc_B01BF8: LitI4 9
  loc_B01BFD: FLdRfVar var_1A4
  loc_B01C00: ImpAdCallFPR4  = Chr()
  loc_B01C05: FLdRfVar var_1A4
  loc_B01C08: ConcatVar var_1B4
  loc_B01C0C: FLdPr Me
  loc_B01C0F: MemLdStr global_88
  loc_B01C12: CVarStr var_C8
  loc_B01C15: ConcatVar var_1C4
  loc_B01C19: CStrVarTmp
  loc_B01C1A: CVarStr var_1D4
  loc_B01C1D: PopAdLdVar
  loc_B01C1E: FLdPr Me
  loc_B01C21: VCallAd Control_ID_DetaAsieFlex
  loc_B01C24: FStAdFunc var_1D8
  loc_B01C27: FLdPr var_1D8
  loc_B01C2A: LateIdCall
  loc_B01C32: FFreeAd var_F4 = "": var_F8 = "": var_FC = "": var_120 = "": var_14C = "": var_150 = ""
  loc_B01C43: FFreeVar var_11C = "": var_10C = "": var_138 = "": var_148 = "": var_160 = "": var_170 = "": var_180 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = ""
  loc_B01C5E: FLdPr Me
  loc_B01C61: MemLdRfVar from_stack_1.global_56
  loc_B01C64: NewIfNullPr clsasiento
  loc_B01C67: Call clsasiento.MoveSiguiente()
  loc_B01C6C: Branch loc_B0188D
  loc_B01C6F: LitI4 1
  loc_B01C74: LitI4 1
  loc_B01C79: LitVarStr var_A8, "currency"
  loc_B01C7E: FStVarCopyObj var_10C
  loc_B01C81: FLdRfVar var_10C
  loc_B01C84: FLdPr Me
  loc_B01C87: MemLdRfVar from_stack_1.global_64
  loc_B01C8A: CVarRef
  loc_B01C8F: ImpAdCallI2 Format$(, )
  loc_B01C94: CVarStr var_11C
  loc_B01C97: PopAdLdVar
  loc_B01C98: FLdPr Me
  loc_B01C9B: VCallAd Control_ID_TotaDebeMsk
  loc_B01C9E: FStAdFunc var_F4
  loc_B01CA1: FLdPr var_F4
  loc_B01CA4: LateIdSt
  loc_B01CA9: FFree1Ad var_F4
  loc_B01CAC: FFreeVar var_10C = ""
  loc_B01CB3: LitI4 1
  loc_B01CB8: LitI4 1
  loc_B01CBD: LitVarStr var_A8, "currency"
  loc_B01CC2: FStVarCopyObj var_10C
  loc_B01CC5: FLdRfVar var_10C
  loc_B01CC8: FLdPr Me
  loc_B01CCB: MemLdRfVar from_stack_1.global_72
  loc_B01CCE: CVarRef
  loc_B01CD3: ImpAdCallI2 Format$(, )
  loc_B01CD8: CVarStr var_11C
  loc_B01CDB: PopAdLdVar
  loc_B01CDC: FLdPr Me
  loc_B01CDF: VCallAd Control_ID_TotaHaberMsk
  loc_B01CE2: FStAdFunc var_F4
  loc_B01CE5: FLdPr var_F4
  loc_B01CE8: LateIdSt
  loc_B01CED: FFree1Ad var_F4
  loc_B01CF0: FFreeVar var_10C = ""
  loc_B01CF7: ExitProcHresult
End Sub

Private Sub DetaAsieFlex_UnknownEvent_1 '940550
  'Data Table: 43419C
  loc_940548: Call DetaAsieFlex_LeaveCell()
  loc_94054D: ExitProcHresult
  loc_94054E: CExtInstUnk
End Sub

Private Sub DetaAsieFlex_KeyDown(KeyCode As Integer, Shift As Integer) '9908C4
  'Data Table: 43419C
  loc_99087C: ILdI2 KeyCode
  loc_99087F: CI4UI1
  loc_990880: LitI4 &H2E
  loc_990885: EqI4
  loc_990886: BranchF loc_9908C1
  loc_990889: FLdPr Me
  loc_99088C: VCallAd Control_ID_DetaAsieFlex
  loc_99088F: FStAdFunc var_88
  loc_990892: FLdPr var_88
  loc_990895: LateIdLdVar var_98 DispID_10 0
  loc_99089C: CI4Var
  loc_99089E: CVarI4
  loc_9908A2: PopAdLdVar
  loc_9908A3: FLdPr Me
  loc_9908A6: VCallAd Control_ID_DetaAsieFlex
  loc_9908A9: FStAdFunc var_BC
  loc_9908AC: FLdPr var_BC
  loc_9908AF: LateIdCall
  loc_9908B7: FFreeAd var_88 = ""
  loc_9908BE: FFree1Var var_98 = ""
  loc_9908C1: ExitProcHresult
End Sub

Private Sub DetaAsieFlex_KeyPress(KeyAscii As Integer) 'AB6FBC
  'Data Table: 43419C
  loc_AB6A58: ILdI2 KeyAscii
  loc_AB6A5B: LitI2_Byte &HD
  loc_AB6A5D: EqI2
  loc_AB6A5E: BranchF loc_AB6BD8
  loc_AB6A61: FLdPr Me
  loc_AB6A64: VCallAd Control_ID_DetaAsieFlex
  loc_AB6A67: FStAdFunc var_88
  loc_AB6A6A: FLdPr var_88
  loc_AB6A6D: LateIdLdVar var_98 DispID_11 0
  loc_AB6A74: CI4Var
  loc_AB6A76: LitI4 3
  loc_AB6A7B: LtI4
  loc_AB6A7C: FFree1Ad var_88
  loc_AB6A7F: FFree1Var var_98 = ""
  loc_AB6A82: BranchF loc_AB6ADA
  loc_AB6A85: FLdPr Me
  loc_AB6A88: VCallAd Control_ID_DetaAsieFlex
  loc_AB6A8B: FStAdFunc var_88
  loc_AB6A8E: FLdPr var_88
  loc_AB6A91: LateIdLdVar var_98 DispID_11 0
  loc_AB6A98: CI4Var
  loc_AB6A9A: LitI4 1
  loc_AB6A9F: AddI4
  loc_AB6AA0: CVarI4
  loc_AB6AA4: PopAdLdVar
  loc_AB6AA5: FLdPr Me
  loc_AB6AA8: VCallAd Control_ID_DetaAsieFlex
  loc_AB6AAB: FStAdFunc var_BC
  loc_AB6AAE: FLdPr var_BC
  loc_AB6AB1: LateIdSt
  loc_AB6AB6: FFreeAd var_88 = ""
  loc_AB6ABD: FFree1Var var_98 = ""
  loc_AB6AC0: FLdPr Me
  loc_AB6AC3: VCallAd Control_ID_DetaAsieFlex
  loc_AB6AC6: FStAdFunc var_88
  loc_AB6AC9: FLdPr var_88
  loc_AB6ACC: LateIdCall
  loc_AB6AD4: FFree1Ad var_88
  loc_AB6AD7: Branch loc_AB6BD5
  loc_AB6ADA: LitStr vbNullString
  loc_AB6ADD: FLdPr Me
  loc_AB6AE0: MemStStrCopy
  loc_AB6AE4: LitStr vbNullString
  loc_AB6AE7: FLdPr Me
  loc_AB6AEA: MemStStrCopy
  loc_AB6AEE: LitVarStr var_A8, vbNullString
  loc_AB6AF3: LitI4 9
  loc_AB6AF8: FLdRfVar var_98
  loc_AB6AFB: ImpAdCallFPR4  = Chr()
  loc_AB6B00: FLdRfVar var_98
  loc_AB6B03: ConcatVar var_CC
  loc_AB6B07: LitVarStr var_B8, " "
  loc_AB6B0C: ConcatVar var_DC
  loc_AB6B10: LitI4 9
  loc_AB6B15: FLdRfVar var_EC
  loc_AB6B18: ImpAdCallFPR4  = Chr()
  loc_AB6B1D: FLdRfVar var_EC
  loc_AB6B20: ConcatVar var_FC
  loc_AB6B24: LitVarStr var_10C, vbNullString
  loc_AB6B29: ConcatVar var_11C
  loc_AB6B2D: LitI4 9
  loc_AB6B32: FLdRfVar var_12C
  loc_AB6B35: ImpAdCallFPR4  = Chr()
  loc_AB6B3A: FLdRfVar var_12C
  loc_AB6B3D: ConcatVar var_13C
  loc_AB6B41: LitVarStr var_14C, vbNullString
  loc_AB6B46: ConcatVar var_15C
  loc_AB6B4A: CStrVarTmp
  loc_AB6B4B: CVarStr var_16C
  loc_AB6B4E: PopAdLdVar
  loc_AB6B4F: FLdPr Me
  loc_AB6B52: VCallAd Control_ID_DetaAsieFlex
  loc_AB6B55: FStAdFunc var_88
  loc_AB6B58: FLdPr var_88
  loc_AB6B5B: LateIdCall
  loc_AB6B63: FFree1Ad var_88
  loc_AB6B66: FFreeVar var_98 = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = ""
  loc_AB6B7D: FLdPr Me
  loc_AB6B80: VCallAd Control_ID_DetaAsieFlex
  loc_AB6B83: FStAdFunc var_88
  loc_AB6B86: FLdPr var_88
  loc_AB6B89: LateIdLdVar var_98 DispID_10 0
  loc_AB6B90: CI4Var
  loc_AB6B92: LitI4 1
  loc_AB6B97: AddI4
  loc_AB6B98: CVarI4
  loc_AB6B9C: PopAdLdVar
  loc_AB6B9D: FLdPr Me
  loc_AB6BA0: VCallAd Control_ID_DetaAsieFlex
  loc_AB6BA3: FStAdFunc var_BC
  loc_AB6BA6: FLdPr var_BC
  loc_AB6BA9: LateIdSt
  loc_AB6BAE: FFreeAd var_88 = ""
  loc_AB6BB5: FFree1Var var_98 = ""
  loc_AB6BB8: LitVarI4
  loc_AB6BC0: PopAdLdVar
  loc_AB6BC1: FLdPr Me
  loc_AB6BC4: VCallAd Control_ID_DetaAsieFlex
  loc_AB6BC7: FStAdFunc var_88
  loc_AB6BCA: FLdPr var_88
  loc_AB6BCD: LateIdSt
  loc_AB6BD2: FFree1Ad var_88
  loc_AB6BD5: Branch loc_AB6FB9
  loc_AB6BD8: ILdI2 KeyAscii
  loc_AB6BDB: LitI2_Byte &H20
  loc_AB6BDD: EqI2
  loc_AB6BDE: BranchF loc_AB6CDA
  loc_AB6BE1: FLdPr Me
  loc_AB6BE4: VCallAd Control_ID_DetaAsieFlex
  loc_AB6BE7: FStAdFunc var_88
  loc_AB6BEA: FLdPr var_88
  loc_AB6BED: LateIdLdVar var_98 DispID_11 0
  loc_AB6BF4: CI4Var
  loc_AB6BF6: LitI4 0
  loc_AB6BFB: EqI4
  loc_AB6BFC: FFree1Ad var_88
  loc_AB6BFF: FFree1Var var_98 = ""
  loc_AB6C02: BranchF loc_AB6CD7
  loc_AB6C05: LitVar_Missing var_B8
  loc_AB6C08: PopAdLdVar
  loc_AB6C09: LitVarI4
  loc_AB6C11: PopAdLdVar
  loc_AB6C12: ImpAdLdRf MemVar_C3D6C0
  loc_AB6C15: NewIfNullPr bscCuentaContable
  loc_AB6C18: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_AB6C1D: FLdRfVar var_180
  loc_AB6C20: FLdRfVar var_88
  loc_AB6C23: ImpAdLdRf MemVar_C3D6C0
  loc_AB6C26: NewIfNullPr bscCuentaContable
  loc_AB6C29: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_AB6C2E: FLdPr var_88
  loc_AB6C31: from_stack_1 = clsbase.RecordCount
  loc_AB6C36: ILdRf var_180
  loc_AB6C39: LitI4 0
  loc_AB6C3E: GtI4
  loc_AB6C3F: FFree1Ad var_88
  loc_AB6C42: BranchF loc_AB6CB2
  loc_AB6C45: FLdRfVar var_98
  loc_AB6C48: FLdRfVar var_188
  loc_AB6C4B: LitVarStr var_A8, "CodiCuco"
  loc_AB6C50: PopAdLdVar
  loc_AB6C51: FLdRfVar var_184
  loc_AB6C54: FLdRfVar var_BC
  loc_AB6C57: FLdRfVar var_88
  loc_AB6C5A: ImpAdLdRf MemVar_C3D6C0
  loc_AB6C5D: NewIfNullPr bscCuentaContable
  loc_AB6C60: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_AB6C65: FLdPr var_88
  loc_AB6C68: from_stack_1v = clsbase.RsFrmGet()
  loc_AB6C6D: FLdPr var_BC
  loc_AB6C70:  = Me.Fields
  loc_AB6C75: FLdPr var_184
  loc_AB6C78: from_stack_2 = Me.Item(from_stack_1)
  loc_AB6C7D: FLdPr var_188
  loc_AB6C80:  = Me.Value
  loc_AB6C85: FLdRfVar var_98
  loc_AB6C88: CStrVarTmp
  loc_AB6C89: CVarStr var_CC
  loc_AB6C8C: PopAdLdVar
  loc_AB6C8D: FLdPr Me
  loc_AB6C90: VCallAd Control_ID_DetaAsieFlex
  loc_AB6C93: FStAdFunc var_18C
  loc_AB6C96: FLdPr var_18C
  loc_AB6C99: LateIdSt
  loc_AB6C9E: FFreeAd var_88 = "": var_BC = "": var_184 = "": var_188 = ""
  loc_AB6CAB: FFreeVar var_98 = ""
  loc_AB6CB2: FLdPr Me
  loc_AB6CB5: VCallAd Control_ID_DetaAsieFlex
  loc_AB6CB8: FStAdFunc var_88
  loc_AB6CBB: FLdPr var_88
  loc_AB6CBE: LateIdLdVar var_98 DispID_0 0
  loc_AB6CC5: CStrVarTmp
  loc_AB6CC6: FStStrNoPop var_190
  loc_AB6CC9: Call Proc_124_13_B626F4()
  loc_AB6CCE: FFree1Str var_190
  loc_AB6CD1: FFree1Ad var_88
  loc_AB6CD4: FFree1Var var_98 = ""
  loc_AB6CD7: Branch loc_AB6FB9
  loc_AB6CDA: ILdI2 KeyAscii
  loc_AB6CDD: LitI2_Byte 8
  loc_AB6CDF: EqI2
  loc_AB6CE0: BranchF loc_AB6D7B
  loc_AB6CE3: FLdPr Me
  loc_AB6CE6: VCallAd Control_ID_DetaAsieFlex
  loc_AB6CE9: FStAdFunc var_88
  loc_AB6CEC: FLdPr var_88
  loc_AB6CEF: LateIdLdVar var_98 DispID_0 0
  loc_AB6CF6: CStrVarTmp
  loc_AB6CF7: FStStrNoPop var_190
  loc_AB6CFA: LitStr vbNullString
  loc_AB6CFD: NeStr
  loc_AB6CFF: FFree1Str var_190
  loc_AB6D02: FFree1Ad var_88
  loc_AB6D05: FFree1Var var_98 = ""
  loc_AB6D08: BranchF loc_AB6D78
  loc_AB6D0B: FLdPr Me
  loc_AB6D0E: VCallAd Control_ID_DetaAsieFlex
  loc_AB6D11: FStAdFunc var_88
  loc_AB6D14: FLdPr var_88
  loc_AB6D17: LateIdLdVar var_98 DispID_0 0
  loc_AB6D1E: PopAd
  loc_AB6D20: FLdPr Me
  loc_AB6D23: VCallAd Control_ID_DetaAsieFlex
  loc_AB6D26: FStAdFunc var_BC
  loc_AB6D29: FLdPr var_BC
  loc_AB6D2C: LateIdLdVar var_CC DispID_0 0
  loc_AB6D33: CStrVarTmp
  loc_AB6D34: FStStrNoPop var_190
  loc_AB6D37: FnLenStr
  loc_AB6D38: LitI4 1
  loc_AB6D3D: SubI4
  loc_AB6D3E: FLdRfVar var_98
  loc_AB6D41: CStrVarTmp
  loc_AB6D42: FStStrNoPop var_194
  loc_AB6D45: ImpAdCallI2 Left$(, )
  loc_AB6D4A: CVarStr var_DC
  loc_AB6D4D: PopAdLdVar
  loc_AB6D4E: FLdPr Me
  loc_AB6D51: VCallAd Control_ID_DetaAsieFlex
  loc_AB6D54: FStAdFunc var_184
  loc_AB6D57: FLdPr var_184
  loc_AB6D5A: LateIdSt
  loc_AB6D5F: FFreeStr var_190 = ""
  loc_AB6D66: FFreeAd var_88 = "": var_BC = ""
  loc_AB6D6F: FFreeVar var_98 = "": var_CC = ""
  loc_AB6D78: Branch loc_AB6FB9
  loc_AB6D7B: FLdPr Me
  loc_AB6D7E: VCallAd Control_ID_DetaAsieFlex
  loc_AB6D81: FStAdFunc var_88
  loc_AB6D84: FLdPr var_88
  loc_AB6D87: LateIdLdVar var_98 DispID_11 0
  loc_AB6D8E: CI4Var
  loc_AB6D90: FStR4 var_198
  loc_AB6D93: FFree1Ad var_88
  loc_AB6D96: FFree1Var var_98 = ""
  loc_AB6D99: ILdRf var_198
  loc_AB6D9C: LitI4 0
  loc_AB6DA1: EqI4
  loc_AB6DA2: BranchF loc_AB6E40
  loc_AB6DA5: LitStr "1234567890."
  loc_AB6DA8: FStStrCopy var_190
  loc_AB6DAB: FLdRfVar var_190
  loc_AB6DAE: ILdRf KeyAscii
  loc_AB6DB1: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AB6DB6: IStI2 KeyAscii
  loc_AB6DB9: FFree1Str var_190
  loc_AB6DBC: FLdPr Me
  loc_AB6DBF: VCallAd Control_ID_DetaAsieFlex
  loc_AB6DC2: FStAdFunc var_88
  loc_AB6DC5: FLdPr var_88
  loc_AB6DC8: LateIdLdVar var_98 DispID_0 0
  loc_AB6DCF: CStrVarTmp
  loc_AB6DD0: FStStrNoPop var_190
  loc_AB6DD3: FnLenStr
  loc_AB6DD4: LitI2_Byte &HA
  loc_AB6DD6: CI2UI1
  loc_AB6DD8: LitI2_Byte 1
  loc_AB6DDA: SubI2
  loc_AB6DDB: CI4UI1
  loc_AB6DDC: LeI4
  loc_AB6DDD: FFree1Str var_190
  loc_AB6DE0: FFree1Ad var_88
  loc_AB6DE3: FFree1Var var_98 = ""
  loc_AB6DE6: BranchF loc_AB6E3D
  loc_AB6DE9: FLdPr Me
  loc_AB6DEC: VCallAd Control_ID_DetaAsieFlex
  loc_AB6DEF: FStAdFunc var_88
  loc_AB6DF2: FLdPr var_88
  loc_AB6DF5: LateIdLdVar var_98 DispID_0 0
  loc_AB6DFC: CStrVarTmp
  loc_AB6DFD: CVarStr var_DC
  loc_AB6E00: ILdI2 KeyAscii
  loc_AB6E03: CI4UI1
  loc_AB6E04: FLdRfVar var_CC
  loc_AB6E07: ImpAdCallFPR4  = Chr()
  loc_AB6E0C: FLdRfVar var_CC
  loc_AB6E0F: AddVar var_EC
  loc_AB6E13: CStrVarTmp
  loc_AB6E14: CVarStr var_FC
  loc_AB6E17: PopAdLdVar
  loc_AB6E18: FLdPr Me
  loc_AB6E1B: VCallAd Control_ID_DetaAsieFlex
  loc_AB6E1E: FStAdFunc var_BC
  loc_AB6E21: FLdPr var_BC
  loc_AB6E24: LateIdSt
  loc_AB6E29: FFreeAd var_88 = ""
  loc_AB6E30: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AB6E3D: Branch loc_AB6FB9
  loc_AB6E40: ILdRf var_198
  loc_AB6E43: LitI4 2
  loc_AB6E48: EqI4
  loc_AB6E49: BranchF loc_AB6EFE
  loc_AB6E4C: ILdI2 KeyAscii
  loc_AB6E4F: LitStr "."
  loc_AB6E52: ImpAdCallI2 Asc()
  loc_AB6E57: EqI2
  loc_AB6E58: BranchF loc_AB6E66
  loc_AB6E5B: LitStr ","
  loc_AB6E5E: ImpAdCallI2 Asc()
  loc_AB6E63: IStI2 KeyAscii
  loc_AB6E66: LitStr "1234567890,"
  loc_AB6E69: FStStrCopy var_190
  loc_AB6E6C: FLdRfVar var_190
  loc_AB6E6F: ILdRf KeyAscii
  loc_AB6E72: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AB6E77: IStI2 KeyAscii
  loc_AB6E7A: FFree1Str var_190
  loc_AB6E7D: FLdPr Me
  loc_AB6E80: VCallAd Control_ID_DetaAsieFlex
  loc_AB6E83: FStAdFunc var_88
  loc_AB6E86: FLdPr var_88
  loc_AB6E89: LateIdLdVar var_98 DispID_0 0
  loc_AB6E90: CStrVarTmp
  loc_AB6E91: FStStrNoPop var_190
  loc_AB6E94: FnLenStr
  loc_AB6E95: LitI4 &HC
  loc_AB6E9A: LeI4
  loc_AB6E9B: FFree1Str var_190
  loc_AB6E9E: FFree1Ad var_88
  loc_AB6EA1: FFree1Var var_98 = ""
  loc_AB6EA4: BranchF loc_AB6EFB
  loc_AB6EA7: FLdPr Me
  loc_AB6EAA: VCallAd Control_ID_DetaAsieFlex
  loc_AB6EAD: FStAdFunc var_88
  loc_AB6EB0: FLdPr var_88
  loc_AB6EB3: LateIdLdVar var_98 DispID_0 0
  loc_AB6EBA: CStrVarTmp
  loc_AB6EBB: CVarStr var_DC
  loc_AB6EBE: ILdI2 KeyAscii
  loc_AB6EC1: CI4UI1
  loc_AB6EC2: FLdRfVar var_CC
  loc_AB6EC5: ImpAdCallFPR4  = Chr()
  loc_AB6ECA: FLdRfVar var_CC
  loc_AB6ECD: AddVar var_EC
  loc_AB6ED1: CStrVarTmp
  loc_AB6ED2: CVarStr var_FC
  loc_AB6ED5: PopAdLdVar
  loc_AB6ED6: FLdPr Me
  loc_AB6ED9: VCallAd Control_ID_DetaAsieFlex
  loc_AB6EDC: FStAdFunc var_BC
  loc_AB6EDF: FLdPr var_BC
  loc_AB6EE2: LateIdSt
  loc_AB6EE7: FFreeAd var_88 = ""
  loc_AB6EEE: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AB6EFB: Branch loc_AB6FB9
  loc_AB6EFE: ILdRf var_198
  loc_AB6F01: LitI4 3
  loc_AB6F06: EqI4
  loc_AB6F07: BranchF loc_AB6FB9
  loc_AB6F0A: ILdI2 KeyAscii
  loc_AB6F0D: LitStr "."
  loc_AB6F10: ImpAdCallI2 Asc()
  loc_AB6F15: EqI2
  loc_AB6F16: BranchF loc_AB6F24
  loc_AB6F19: LitStr ","
  loc_AB6F1C: ImpAdCallI2 Asc()
  loc_AB6F21: IStI2 KeyAscii
  loc_AB6F24: LitStr "1234567890,"
  loc_AB6F27: FStStrCopy var_190
  loc_AB6F2A: FLdRfVar var_190
  loc_AB6F2D: ILdRf KeyAscii
  loc_AB6F30: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AB6F35: IStI2 KeyAscii
  loc_AB6F38: FFree1Str var_190
  loc_AB6F3B: FLdPr Me
  loc_AB6F3E: VCallAd Control_ID_DetaAsieFlex
  loc_AB6F41: FStAdFunc var_88
  loc_AB6F44: FLdPr var_88
  loc_AB6F47: LateIdLdVar var_98 DispID_0 0
  loc_AB6F4E: CStrVarTmp
  loc_AB6F4F: FStStrNoPop var_190
  loc_AB6F52: FnLenStr
  loc_AB6F53: LitI4 &HC
  loc_AB6F58: LeI4
  loc_AB6F59: FFree1Str var_190
  loc_AB6F5C: FFree1Ad var_88
  loc_AB6F5F: FFree1Var var_98 = ""
  loc_AB6F62: BranchF loc_AB6FB9
  loc_AB6F65: FLdPr Me
  loc_AB6F68: VCallAd Control_ID_DetaAsieFlex
  loc_AB6F6B: FStAdFunc var_88
  loc_AB6F6E: FLdPr var_88
  loc_AB6F71: LateIdLdVar var_98 DispID_0 0
  loc_AB6F78: CStrVarTmp
  loc_AB6F79: CVarStr var_DC
  loc_AB6F7C: ILdI2 KeyAscii
  loc_AB6F7F: CI4UI1
  loc_AB6F80: FLdRfVar var_CC
  loc_AB6F83: ImpAdCallFPR4  = Chr()
  loc_AB6F88: FLdRfVar var_CC
  loc_AB6F8B: AddVar var_EC
  loc_AB6F8F: CStrVarTmp
  loc_AB6F90: CVarStr var_FC
  loc_AB6F93: PopAdLdVar
  loc_AB6F94: FLdPr Me
  loc_AB6F97: VCallAd Control_ID_DetaAsieFlex
  loc_AB6F9A: FStAdFunc var_BC
  loc_AB6F9D: FLdPr var_BC
  loc_AB6FA0: LateIdSt
  loc_AB6FA5: FFreeAd var_88 = ""
  loc_AB6FAC: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AB6FB9: ExitProcHresult
  loc_AB6FBA: CVarStr arg_2410
End Sub

Private Sub DetaAsieFlex_LeaveCell() 'ABC2F4
  'Data Table: 43419C
  loc_ABBD48: LitI2_Byte 0
  loc_ABBD4A: CR8I2
  loc_ABBD4B: FLdPr Me
  loc_ABBD4E: MemStFPR8 global_64
  loc_ABBD51: LitI2_Byte 0
  loc_ABBD53: CR8I2
  loc_ABBD54: FLdPr Me
  loc_ABBD57: MemStFPR8 global_72
  loc_ABBD5A: FLdPr Me
  loc_ABBD5D: VCallAd Control_ID_DetaAsieFlex
  loc_ABBD60: FStAdFunc var_88
  loc_ABBD63: FLdPr var_88
  loc_ABBD66: LateIdLdVar var_98 DispID_10 0
  loc_ABBD6D: CI4Var
  loc_ABBD6F: LitI4 0
  loc_ABBD74: GtI4
  loc_ABBD75: FFree1Ad var_88
  loc_ABBD78: FFree1Var var_98 = ""
  loc_ABBD7B: BranchF loc_ABC2AA
  loc_ABBD7E: FLdPr Me
  loc_ABBD81: VCallAd Control_ID_DetaAsieFlex
  loc_ABBD84: FStAdFunc var_88
  loc_ABBD87: FLdPr var_88
  loc_ABBD8A: LateIdLdVar var_98 DispID_10 0
  loc_ABBD91: CI4Var
  loc_ABBD93: CVarI4
  loc_ABBD97: PopAdLdVar
  loc_ABBD98: LitVarI4
  loc_ABBDA0: PopAdLdVar
  loc_ABBDA1: FLdPr Me
  loc_ABBDA4: VCallAd Control_ID_DetaAsieFlex
  loc_ABBDA7: FStAdFunc var_DC
  loc_ABBDAA: FLdPr var_DC
  loc_ABBDAD: LateIdCallLdVar
  loc_ABBDB7: CStrVarTmp
  loc_ABBDB8: FStStrNoPop var_F0
  loc_ABBDBB: LitStr vbNullString
  loc_ABBDBE: NeStr
  loc_ABBDC0: FFree1Str var_F0
  loc_ABBDC3: FFreeAd var_88 = ""
  loc_ABBDCA: FFreeVar var_98 = ""
  loc_ABBDD1: BranchF loc_ABBE45
  loc_ABBDD4: FLdPr Me
  loc_ABBDD7: VCallAd Control_ID_DetaAsieFlex
  loc_ABBDDA: FStAdFunc var_88
  loc_ABBDDD: FLdPr var_88
  loc_ABBDE0: LateIdLdVar var_98 DispID_11 0
  loc_ABBDE7: CI4Var
  loc_ABBDE9: LitI4 0
  loc_ABBDEE: EqI4
  loc_ABBDEF: FFree1Ad var_88
  loc_ABBDF2: FFree1Var var_98 = ""
  loc_ABBDF5: BranchF loc_ABBE45
  loc_ABBDF8: FLdPr Me
  loc_ABBDFB: VCallAd Control_ID_DetaAsieFlex
  loc_ABBDFE: FStAdFunc var_88
  loc_ABBE01: FLdPr var_88
  loc_ABBE04: LateIdLdVar var_98 DispID_0 0
  loc_ABBE0B: CStrVarTmp
  loc_ABBE0C: FStStrNoPop var_F0
  loc_ABBE0F: LitStr vbNullString
  loc_ABBE12: NeStr
  loc_ABBE14: FFree1Str var_F0
  loc_ABBE17: FFree1Ad var_88
  loc_ABBE1A: FFree1Var var_98 = ""
  loc_ABBE1D: BranchF loc_ABBE45
  loc_ABBE20: FLdPr Me
  loc_ABBE23: VCallAd Control_ID_DetaAsieFlex
  loc_ABBE26: FStAdFunc var_88
  loc_ABBE29: FLdPr var_88
  loc_ABBE2C: LateIdLdVar var_98 DispID_0 0
  loc_ABBE33: CStrVarTmp
  loc_ABBE34: FStStrNoPop var_F0
  loc_ABBE37: Call Proc_124_13_B626F4()
  loc_ABBE3C: FFree1Str var_F0
  loc_ABBE3F: FFree1Ad var_88
  loc_ABBE42: FFree1Var var_98 = ""
  loc_ABBE45: FLdPr Me
  loc_ABBE48: VCallAd Control_ID_DetaAsieFlex
  loc_ABBE4B: FStAdFunc var_88
  loc_ABBE4E: FLdPr var_88
  loc_ABBE51: LateIdLdVar var_98 DispID_10 0
  loc_ABBE58: CI4Var
  loc_ABBE5A: CVarI4
  loc_ABBE5E: PopAdLdVar
  loc_ABBE5F: LitVarI4
  loc_ABBE67: PopAdLdVar
  loc_ABBE68: FLdPr Me
  loc_ABBE6B: VCallAd Control_ID_DetaAsieFlex
  loc_ABBE6E: FStAdFunc var_DC
  loc_ABBE71: FLdPr var_DC
  loc_ABBE74: LateIdCallLdVar
  loc_ABBE7E: CStrVarTmp
  loc_ABBE7F: FStStrNoPop var_F0
  loc_ABBE82: LitStr vbNullString
  loc_ABBE85: NeStr
  loc_ABBE87: FFree1Str var_F0
  loc_ABBE8A: FFreeAd var_88 = ""
  loc_ABBE91: FFreeVar var_98 = ""
  loc_ABBE98: BranchF loc_ABBF6C
  loc_ABBE9B: FLdPr Me
  loc_ABBE9E: VCallAd Control_ID_DetaAsieFlex
  loc_ABBEA1: FStAdFunc var_88
  loc_ABBEA4: FLdPr var_88
  loc_ABBEA7: LateIdLdVar var_98 DispID_11 0
  loc_ABBEAE: CI4Var
  loc_ABBEB0: LitI4 2
  loc_ABBEB5: EqI4
  loc_ABBEB6: FFree1Ad var_88
  loc_ABBEB9: FFree1Var var_98 = ""
  loc_ABBEBC: BranchF loc_ABBF6C
  loc_ABBEBF: FLdPr Me
  loc_ABBEC2: VCallAd Control_ID_DetaAsieFlex
  loc_ABBEC5: FStAdFunc var_88
  loc_ABBEC8: FLdPr var_88
  loc_ABBECB: LateIdLdVar var_98 DispID_0 0
  loc_ABBED2: PopAd
  loc_ABBED4: LitI4 1
  loc_ABBED9: LitI4 1
  loc_ABBEDE: LitVarStr var_A8, "0.00"
  loc_ABBEE3: FStVarCopyObj var_100
  loc_ABBEE6: FLdRfVar var_100
  loc_ABBEE9: FLdRfVar var_98
  loc_ABBEEC: CStrVarTmp
  loc_ABBEED: CVarStr var_EC
  loc_ABBEF0: FLdRfVar var_110
  loc_ABBEF3: ImpAdCallFPR4  = Format(, )
  loc_ABBEF8: FLdRfVar var_110
  loc_ABBEFB: CStrVarTmp
  loc_ABBEFC: CVarStr var_120
  loc_ABBEFF: PopAdLdVar
  loc_ABBF00: FLdPr Me
  loc_ABBF03: VCallAd Control_ID_DetaAsieFlex
  loc_ABBF06: FStAdFunc var_DC
  loc_ABBF09: FLdPr var_DC
  loc_ABBF0C: LateIdSt
  loc_ABBF11: FFreeAd var_88 = ""
  loc_ABBF18: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_110 = ""
  loc_ABBF25: FLdPr Me
  loc_ABBF28: VCallAd Control_ID_DetaAsieFlex
  loc_ABBF2B: FStAdFunc var_88
  loc_ABBF2E: FLdPr var_88
  loc_ABBF31: LateIdLdVar var_98 DispID_10 0
  loc_ABBF38: CI4Var
  loc_ABBF3A: CVarI4
  loc_ABBF3E: PopAdLdVar
  loc_ABBF3F: LitVarI4
  loc_ABBF47: PopAdLdVar
  loc_ABBF48: LitVarStr var_130, vbNullString
  loc_ABBF4D: PopAdLdVar
  loc_ABBF4E: FLdPr Me
  loc_ABBF51: VCallAd Control_ID_DetaAsieFlex
  loc_ABBF54: FStAdFunc var_DC
  loc_ABBF57: FLdPr var_DC
  loc_ABBF5A: LateIdCallSt
  loc_ABBF62: FFreeAd var_88 = ""
  loc_ABBF69: FFree1Var var_98 = ""
  loc_ABBF6C: FLdPr Me
  loc_ABBF6F: VCallAd Control_ID_DetaAsieFlex
  loc_ABBF72: FStAdFunc var_88
  loc_ABBF75: FLdPr var_88
  loc_ABBF78: LateIdLdVar var_98 DispID_10 0
  loc_ABBF7F: CI4Var
  loc_ABBF81: CVarI4
  loc_ABBF85: PopAdLdVar
  loc_ABBF86: LitVarI4
  loc_ABBF8E: PopAdLdVar
  loc_ABBF8F: FLdPr Me
  loc_ABBF92: VCallAd Control_ID_DetaAsieFlex
  loc_ABBF95: FStAdFunc var_DC
  loc_ABBF98: FLdPr var_DC
  loc_ABBF9B: LateIdCallLdVar
  loc_ABBFA5: CStrVarTmp
  loc_ABBFA6: FStStrNoPop var_F0
  loc_ABBFA9: LitStr vbNullString
  loc_ABBFAC: NeStr
  loc_ABBFAE: FFree1Str var_F0
  loc_ABBFB1: FFreeAd var_88 = ""
  loc_ABBFB8: FFreeVar var_98 = ""
  loc_ABBFBF: BranchF loc_ABC093
  loc_ABBFC2: FLdPr Me
  loc_ABBFC5: VCallAd Control_ID_DetaAsieFlex
  loc_ABBFC8: FStAdFunc var_88
  loc_ABBFCB: FLdPr var_88
  loc_ABBFCE: LateIdLdVar var_98 DispID_11 0
  loc_ABBFD5: CI4Var
  loc_ABBFD7: LitI4 3
  loc_ABBFDC: EqI4
  loc_ABBFDD: FFree1Ad var_88
  loc_ABBFE0: FFree1Var var_98 = ""
  loc_ABBFE3: BranchF loc_ABC093
  loc_ABBFE6: FLdPr Me
  loc_ABBFE9: VCallAd Control_ID_DetaAsieFlex
  loc_ABBFEC: FStAdFunc var_88
  loc_ABBFEF: FLdPr var_88
  loc_ABBFF2: LateIdLdVar var_98 DispID_0 0
  loc_ABBFF9: PopAd
  loc_ABBFFB: LitI4 1
  loc_ABC000: LitI4 1
  loc_ABC005: LitVarStr var_A8, "0.00"
  loc_ABC00A: FStVarCopyObj var_100
  loc_ABC00D: FLdRfVar var_100
  loc_ABC010: FLdRfVar var_98
  loc_ABC013: CStrVarTmp
  loc_ABC014: CVarStr var_EC
  loc_ABC017: FLdRfVar var_110
  loc_ABC01A: ImpAdCallFPR4  = Format(, )
  loc_ABC01F: FLdRfVar var_110
  loc_ABC022: CStrVarTmp
  loc_ABC023: CVarStr var_120
  loc_ABC026: PopAdLdVar
  loc_ABC027: FLdPr Me
  loc_ABC02A: VCallAd Control_ID_DetaAsieFlex
  loc_ABC02D: FStAdFunc var_DC
  loc_ABC030: FLdPr var_DC
  loc_ABC033: LateIdSt
  loc_ABC038: FFreeAd var_88 = ""
  loc_ABC03F: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_110 = ""
  loc_ABC04C: FLdPr Me
  loc_ABC04F: VCallAd Control_ID_DetaAsieFlex
  loc_ABC052: FStAdFunc var_88
  loc_ABC055: FLdPr var_88
  loc_ABC058: LateIdLdVar var_98 DispID_10 0
  loc_ABC05F: CI4Var
  loc_ABC061: CVarI4
  loc_ABC065: PopAdLdVar
  loc_ABC066: LitVarI4
  loc_ABC06E: PopAdLdVar
  loc_ABC06F: LitVarStr var_130, vbNullString
  loc_ABC074: PopAdLdVar
  loc_ABC075: FLdPr Me
  loc_ABC078: VCallAd Control_ID_DetaAsieFlex
  loc_ABC07B: FStAdFunc var_DC
  loc_ABC07E: FLdPr var_DC
  loc_ABC081: LateIdCallSt
  loc_ABC089: FFreeAd var_88 = ""
  loc_ABC090: FFree1Var var_98 = ""
  loc_ABC093: LitI2_Byte 1
  loc_ABC095: FLdPr Me
  loc_ABC098: MemLdRfVar from_stack_1.global_80
  loc_ABC09B: FLdPr Me
  loc_ABC09E: VCallAd Control_ID_DetaAsieFlex
  loc_ABC0A1: FStAdFunc var_88
  loc_ABC0A4: FLdPr var_88
  loc_ABC0A7: LateIdLdVar var_98 DispID_4 0
  loc_ABC0AE: CI4Var
  loc_ABC0B0: LitI4 1
  loc_ABC0B5: SubI4
  loc_ABC0B6: CI2I4
  loc_ABC0B7: FFree1Ad var_88
  loc_ABC0BA: FFree1Var var_98 = ""
  loc_ABC0BD: ForI2 var_144
  loc_ABC0C3: FLdPr Me
  loc_ABC0C6: MemLdI2 global_80
  loc_ABC0C9: CI4UI1
  loc_ABC0CA: CVarI4
  loc_ABC0CE: PopAdLdVar
  loc_ABC0CF: LitVarI4
  loc_ABC0D7: PopAdLdVar
  loc_ABC0D8: FLdPr Me
  loc_ABC0DB: VCallAd Control_ID_DetaAsieFlex
  loc_ABC0DE: FStAdFunc var_88
  loc_ABC0E1: FLdPr var_88
  loc_ABC0E4: LateIdCallLdVar
  loc_ABC0EE: CStrVarTmp
  loc_ABC0EF: FStStrNoPop var_F0
  loc_ABC0F2: LitStr vbNullString
  loc_ABC0F5: NeStr
  loc_ABC0F7: FFree1Str var_F0
  loc_ABC0FA: FFree1Ad var_88
  loc_ABC0FD: FFree1Var var_98 = ""
  loc_ABC100: BranchF loc_ABC29F
  loc_ABC103: FLdPr Me
  loc_ABC106: MemLdI2 global_80
  loc_ABC109: CI4UI1
  loc_ABC10A: CVarI4
  loc_ABC10E: PopAdLdVar
  loc_ABC10F: LitVarI4
  loc_ABC117: PopAdLdVar
  loc_ABC118: FLdPr Me
  loc_ABC11B: VCallAd Control_ID_DetaAsieFlex
  loc_ABC11E: FStAdFunc var_88
  loc_ABC121: FLdPr var_88
  loc_ABC124: LateIdCallLdVar
  loc_ABC12E: CStrVarTmp
  loc_ABC12F: CVarStr var_EC
  loc_ABC132: ImpAdCallI2 IsNumeric()
  loc_ABC137: FFree1Ad var_88
  loc_ABC13A: FFreeVar var_98 = ""
  loc_ABC141: BranchF loc_ABC1D1
  loc_ABC144: FLdPr Me
  loc_ABC147: MemLdI2 global_80
  loc_ABC14A: CI4UI1
  loc_ABC14B: CVarI4
  loc_ABC14F: PopAdLdVar
  loc_ABC150: LitVarI4
  loc_ABC158: PopAdLdVar
  loc_ABC159: FLdPr Me
  loc_ABC15C: VCallAd Control_ID_DetaAsieFlex
  loc_ABC15F: FStAdFunc var_88
  loc_ABC162: FLdPr var_88
  loc_ABC165: LateIdCallLdVar
  loc_ABC16F: CStrVarTmp
  loc_ABC170: CVarStr var_EC
  loc_ABC173: ImpAdCallI2 IsNumeric()
  loc_ABC178: FFree1Ad var_88
  loc_ABC17B: FFreeVar var_98 = ""
  loc_ABC182: BranchF loc_ABC1D1
  loc_ABC185: FLdPr Me
  loc_ABC188: MemLdI2 global_80
  loc_ABC18B: CI4UI1
  loc_ABC18C: CVarI4
  loc_ABC190: PopAdLdVar
  loc_ABC191: LitVarI4
  loc_ABC199: PopAdLdVar
  loc_ABC19A: FLdPr Me
  loc_ABC19D: VCallAd Control_ID_DetaAsieFlex
  loc_ABC1A0: FStAdFunc var_88
  loc_ABC1A3: FLdPr var_88
  loc_ABC1A6: LateIdCallLdVar
  loc_ABC1B0: PopAd
  loc_ABC1B2: FLdPr Me
  loc_ABC1B5: MemLdFPR8 global_64
  loc_ABC1B8: FLdRfVar var_98
  loc_ABC1BB: CStrVarTmp
  loc_ABC1BC: FStStrNoPop var_F0
  loc_ABC1BF: CR8Str
  loc_ABC1C1: AddR8
  loc_ABC1C2: FLdPr Me
  loc_ABC1C5: MemStFPR8 global_64
  loc_ABC1C8: FFree1Str var_F0
  loc_ABC1CB: FFree1Ad var_88
  loc_ABC1CE: FFree1Var var_98 = ""
  loc_ABC1D1: FLdPr Me
  loc_ABC1D4: MemLdI2 global_80
  loc_ABC1D7: CI4UI1
  loc_ABC1D8: CVarI4
  loc_ABC1DC: PopAdLdVar
  loc_ABC1DD: LitVarI4
  loc_ABC1E5: PopAdLdVar
  loc_ABC1E6: FLdPr Me
  loc_ABC1E9: VCallAd Control_ID_DetaAsieFlex
  loc_ABC1EC: FStAdFunc var_88
  loc_ABC1EF: FLdPr var_88
  loc_ABC1F2: LateIdCallLdVar
  loc_ABC1FC: CStrVarTmp
  loc_ABC1FD: CVarStr var_EC
  loc_ABC200: ImpAdCallI2 IsNumeric()
  loc_ABC205: FFree1Ad var_88
  loc_ABC208: FFreeVar var_98 = ""
  loc_ABC20F: BranchF loc_ABC29F
  loc_ABC212: FLdPr Me
  loc_ABC215: MemLdI2 global_80
  loc_ABC218: CI4UI1
  loc_ABC219: CVarI4
  loc_ABC21D: PopAdLdVar
  loc_ABC21E: LitVarI4
  loc_ABC226: PopAdLdVar
  loc_ABC227: FLdPr Me
  loc_ABC22A: VCallAd Control_ID_DetaAsieFlex
  loc_ABC22D: FStAdFunc var_88
  loc_ABC230: FLdPr var_88
  loc_ABC233: LateIdCallLdVar
  loc_ABC23D: CStrVarTmp
  loc_ABC23E: CVarStr var_EC
  loc_ABC241: ImpAdCallI2 IsNumeric()
  loc_ABC246: FFree1Ad var_88
  loc_ABC249: FFreeVar var_98 = ""
  loc_ABC250: BranchF loc_ABC29F
  loc_ABC253: FLdPr Me
  loc_ABC256: MemLdI2 global_80
  loc_ABC259: CI4UI1
  loc_ABC25A: CVarI4
  loc_ABC25E: PopAdLdVar
  loc_ABC25F: LitVarI4
  loc_ABC267: PopAdLdVar
  loc_ABC268: FLdPr Me
  loc_ABC26B: VCallAd Control_ID_DetaAsieFlex
  loc_ABC26E: FStAdFunc var_88
  loc_ABC271: FLdPr var_88
  loc_ABC274: LateIdCallLdVar
  loc_ABC27E: PopAd
  loc_ABC280: FLdPr Me
  loc_ABC283: MemLdFPR8 global_72
  loc_ABC286: FLdRfVar var_98
  loc_ABC289: CStrVarTmp
  loc_ABC28A: FStStrNoPop var_F0
  loc_ABC28D: CR8Str
  loc_ABC28F: AddR8
  loc_ABC290: FLdPr Me
  loc_ABC293: MemStFPR8 global_72
  loc_ABC296: FFree1Str var_F0
  loc_ABC299: FFree1Ad var_88
  loc_ABC29C: FFree1Var var_98 = ""
  loc_ABC29F: FLdPr Me
  loc_ABC2A2: MemLdRfVar from_stack_1.global_80
  loc_ABC2A5: NextI2 var_144, loc_ABC0C3
  loc_ABC2AA: FLdPr Me
  loc_ABC2AD: MemLdFPR8 global_64
  loc_ABC2B0: CStrR8
  loc_ABC2B2: CVarStr var_98
  loc_ABC2B5: PopAdLdVar
  loc_ABC2B6: FLdPr Me
  loc_ABC2B9: VCallAd Control_ID_TotaDebeMsk
  loc_ABC2BC: FStAdFunc var_88
  loc_ABC2BF: FLdPr var_88
  loc_ABC2C2: LateIdSt
  loc_ABC2C7: FFree1Ad var_88
  loc_ABC2CA: FFree1Var var_98 = ""
  loc_ABC2CD: FLdPr Me
  loc_ABC2D0: MemLdFPR8 global_72
  loc_ABC2D3: CStrR8
  loc_ABC2D5: CVarStr var_98
  loc_ABC2D8: PopAdLdVar
  loc_ABC2D9: FLdPr Me
  loc_ABC2DC: VCallAd Control_ID_TotaHaberMsk
  loc_ABC2DF: FStAdFunc var_88
  loc_ABC2E2: FLdPr var_88
  loc_ABC2E5: LateIdSt
  loc_ABC2EA: FFree1Ad var_88
  loc_ABC2ED: FFree1Var var_98 = ""
  loc_ABC2F0: ExitProcHresult
End Sub

Private Sub FechAsieMsk_UnknownEvent_0 '94C7A0
  'Data Table: 43419C
  loc_94C78C: FLdPr Me
  loc_94C78F: VCallAd Control_ID_FechAsieMsk
  loc_94C792: CVarAd
  loc_94C796: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C79B: FFree1Var var_94 = ""
  loc_94C79E: ExitProcHresult
End Sub

Private Function FechAsieMsk_UnknownEvent_8(arg_C) '9DDEA0
  'Data Table: 43419C
  loc_9DDDAC: FLdPr Me
  loc_9DDDAF: VCallAd Control_ID_FechAsieMsk
  loc_9DDDB2: FStAdFunc var_88
  loc_9DDDB5: FLdPr var_88
  loc_9DDDB8: LateIdLdVar var_98 DispID_13 -32767
  loc_9DDDBF: CBoolVar
  loc_9DDDC1: FLdRfVar var_9E
  loc_9DDDC4: FLdPr Me
  loc_9DDDC7: VCallAd Control_ID_cmdCancelar
  loc_9DDDCA: FStAdFunc var_9C
  loc_9DDDCD: FLdPr var_9C
  loc_9DDDD0:  = Me.Value
  loc_9DDDD5: FLdI2 var_9E
  loc_9DDDD8: NotI4
  loc_9DDDD9: AndI4
  loc_9DDDDA: FFreeAd var_88 = ""
  loc_9DDDE1: FFree1Var var_98 = ""
  loc_9DDDE4: BranchF loc_9DDE9F
  loc_9DDDE7: FLdPr Me
  loc_9DDDEA: VCallAd Control_ID_FechAsieMsk
  loc_9DDDED: FStAdFunc var_88
  loc_9DDDF0: FLdPr var_88
  loc_9DDDF3: LateIdLdVar var_98 DispID_15 0
  loc_9DDDFA: PopAd
  loc_9DDDFC: ImpAdLdI2 MemVar_C3D064
  loc_9DDDFF: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_9DDE04: FStStr var_B4
  loc_9DDE07: FLdPr Me
  loc_9DDE0A: VCallAd Control_ID_FechAsieMsk
  loc_9DDE0D: FStAdFunc var_B8
  loc_9DDE10: LitI2_Byte 0
  loc_9DDE12: PopTmpLdAd2 var_9E
  loc_9DDE15: FLdZeroAd var_B8
  loc_9DDE18: FStAdFunc var_9C
  loc_9DDE1B: FLdRfVar var_9C
  loc_9DDE1E: FLdZeroAd var_B4
  loc_9DDE21: FStStrNoPop var_A4
  loc_9DDE24: CDateStr
  loc_9DDE26: LitI2_Byte 1
  loc_9DDE28: CR8I2
  loc_9DDE29: AddR8
  loc_9DDE2A: CDateR8
  loc_9DDE2B: CStrDate
  loc_9DDE2D: FStStrNoPop var_AC
  loc_9DDE30: LitI2_Byte 0
  loc_9DDE32: LitI2_Byte &HFF
  loc_9DDE34: FLdRfVar var_98
  loc_9DDE37: CStrVarTmp
  loc_9DDE38: FStStrNoPop var_A8
  loc_9DDE3B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DDE40: FStStrNoPop var_B0
  loc_9DDE43: FLdPr Me
  loc_9DDE46: MemStStrCopy
  loc_9DDE4A: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9DDE57: FFreeAd var_88 = "": var_9C = ""
  loc_9DDE60: FFree1Var var_98 = ""
  loc_9DDE63: FLdPr Me
  loc_9DDE66: VCallAd Control_ID_FechAsieMsk
  loc_9DDE69: FStAdFunc var_BC
  loc_9DDE6C: LitNothing
  loc_9DDE6E: CastAd
  loc_9DDE71: FStAdFunc var_B8
  loc_9DDE74: FLdRfVar var_B8
  loc_9DDE77: FLdZeroAd var_BC
  loc_9DDE7A: FStAdFuncNoPop
  loc_9DDE7D: CastAd
  loc_9DDE80: FStAdFunc var_9C
  loc_9DDE83: FLdRfVar var_9C
  loc_9DDE86: FLdPr Me
  loc_9DDE89: MemLdRfVar from_stack_1.global_60
  loc_9DDE8C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DDE91: IStI2 arg_C
  loc_9DDE94: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9DDE9F: ExitProcHresult
End Function

Private Sub cmdEliminarAsientoManual_Click() 'A1A50C
  'Data Table: 43419C
  loc_A1A37C: FLdRfVar var_88
  loc_A1A37F: FLdPr Me
  loc_A1A382: MemLdRfVar from_stack_1.global_52
  loc_A1A385: NewIfNullPr clsasiento
  loc_A1A388: from_stack_1 = clsasiento.RecordCount
  loc_A1A38D: ILdRf var_88
  loc_A1A390: LitI4 0
  loc_A1A395: GtI4
  loc_A1A396: BranchF loc_A1A50A
  loc_A1A399: FLdRfVar var_B4
  loc_A1A39C: FLdRfVar var_A4
  loc_A1A39F: LitVarStr var_A0, "CodiAsie"
  loc_A1A3A4: PopAdLdVar
  loc_A1A3A5: FLdRfVar var_90
  loc_A1A3A8: FLdRfVar var_8C
  loc_A1A3AB: FLdPr Me
  loc_A1A3AE: MemLdRfVar from_stack_1.global_52
  loc_A1A3B1: NewIfNullPr clsasiento
  loc_A1A3B4: from_stack_1v = clsasiento.RsFrmGet()
  loc_A1A3B9: FLdPr var_8C
  loc_A1A3BC:  = Me.Fields
  loc_A1A3C1: FLdPr var_90
  loc_A1A3C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A3C9: FLdPr var_A4
  loc_A1A3CC:  = Me.Value
  loc_A1A3D1: FLdRfVar var_B6
  loc_A1A3D4: FLdRfVar var_B4
  loc_A1A3D7: CI2Var
  loc_A1A3D8: ImpAdLdI2 MemVar_C3D064
  loc_A1A3DB: FLdPr Me
  loc_A1A3DE: MemLdRfVar from_stack_1.global_52
  loc_A1A3E1: NewIfNullPr clsasiento
  loc_A1A3E4: from_stack_3v = clsasiento.EsAsientoManual(from_stack_1v, from_stack_2v)
  loc_A1A3E9: FLdI2 var_B6
  loc_A1A3EC: FFreeAd var_8C = "": var_90 = ""
  loc_A1A3F5: FFree1Var var_B4 = ""
  loc_A1A3F8: BranchF loc_A1A4FD
  loc_A1A3FB: FLdRfVar var_B4
  loc_A1A3FE: FLdRfVar var_A4
  loc_A1A401: LitVarStr var_A0, "CodiAsie"
  loc_A1A406: PopAdLdVar
  loc_A1A407: FLdRfVar var_90
  loc_A1A40A: FLdRfVar var_8C
  loc_A1A40D: FLdPr Me
  loc_A1A410: MemLdRfVar from_stack_1.global_52
  loc_A1A413: NewIfNullPr clsasiento
  loc_A1A416: from_stack_1v = clsasiento.RsFrmGet()
  loc_A1A41B: FLdPr var_8C
  loc_A1A41E:  = Me.Fields
  loc_A1A423: FLdPr var_90
  loc_A1A426: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A42B: FLdPr var_A4
  loc_A1A42E:  = Me.Value
  loc_A1A433: LitI2_Byte 0
  loc_A1A435: PopTmpLdAd2 var_FE
  loc_A1A438: LitI2_Byte &HFF
  loc_A1A43A: PopTmpLdAd2 var_B6
  loc_A1A43D: LitVarStr var_C8, "¿ELIMINA el Asiento Manual número: "
  loc_A1A442: FLdRfVar var_B4
  loc_A1A445: ConcatVar var_D8
  loc_A1A449: LitVarStr var_E8, "?"
  loc_A1A44E: ConcatVar var_F8
  loc_A1A452: CStrVarVal var_FC
  loc_A1A456: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_A1A45B: CI4UI1
  loc_A1A45C: LitI4 6
  loc_A1A461: EqI4
  loc_A1A462: FFree1Str var_FC
  loc_A1A465: FFreeAd var_8C = "": var_90 = ""
  loc_A1A46E: FFreeVar var_B4 = "": var_D8 = ""
  loc_A1A477: BranchF loc_A1A4FA
  loc_A1A47A: FLdRfVar var_B4
  loc_A1A47D: FLdRfVar var_A4
  loc_A1A480: LitVarStr var_A0, "CodiAsie"
  loc_A1A485: PopAdLdVar
  loc_A1A486: FLdRfVar var_90
  loc_A1A489: FLdRfVar var_8C
  loc_A1A48C: FLdPr Me
  loc_A1A48F: MemLdRfVar from_stack_1.global_52
  loc_A1A492: NewIfNullPr clsasiento
  loc_A1A495: from_stack_1v = clsasiento.RsFrmGet()
  loc_A1A49A: FLdPr var_8C
  loc_A1A49D:  = Me.Fields
  loc_A1A4A2: FLdPr var_90
  loc_A1A4A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A4AA: FLdPr var_A4
  loc_A1A4AD:  = Me.Value
  loc_A1A4B2: FLdRfVar var_B4
  loc_A1A4B5: CI2Var
  loc_A1A4B6: ImpAdLdI2 MemVar_C3D064
  loc_A1A4B9: FLdPr Me
  loc_A1A4BC: MemLdRfVar from_stack_1.global_52
  loc_A1A4BF: NewIfNullPr clsasiento
  loc_A1A4C2: Call clsasiento.EliminaAsientoManual(from_stack_1v, from_stack_2v)
  loc_A1A4C7: FFreeAd var_8C = "": var_90 = ""
  loc_A1A4D0: FFree1Var var_B4 = ""
  loc_A1A4D3: LitI4 0
  loc_A1A4D8: LitI4 0
  loc_A1A4DD: FLdPr Me
  loc_A1A4E0: MemLdRfVar from_stack_1.global_52
  loc_A1A4E3: NewIfNullPr clsasiento
  loc_A1A4E6: Call clsasiento.Encontrar(from_stack_1v, from_stack_2v)
  loc_A1A4EB: LitI2_Byte 0
  loc_A1A4ED: LitVarI2 var_B4, 0
  loc_A1A4F2: Call dgdAsiento_RowColChange(from_stack_1v, from_stack_2v)
  loc_A1A4F7: FFree1Var var_B4 = ""
  loc_A1A4FA: Branch loc_A1A50A
  loc_A1A4FD: LitI4 0
  loc_A1A502: LitStr "El Asiento NO es Manual. Verifique..."
  loc_A1A505: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1A50A: ExitProcHresult
End Sub

Private Sub cmdConfirmar_Click() 'ABED28
  'Data Table: 43419C
  loc_ABE764: FLdRfVar var_88
  loc_ABE767: FLdPr Me
  loc_ABE76A: MemLdRfVar from_stack_1.global_52
  loc_ABE76D: NewIfNullPr clsasiento
  loc_ABE770: from_stack_1 = clsasiento.RecordCount
  loc_ABE775: ILdRf var_88
  loc_ABE778: LitI4 0
  loc_ABE77D: LeI4
  loc_ABE77E: BranchF loc_ABE782
  loc_ABE781: ExitProcHresult
  loc_ABE782: LitI2_Byte 0
  loc_ABE784: PopTmpLdAd2 var_8A
  loc_ABE787: from_stack_2v = FechAsieMsk_UnknownEvent_8(from_stack_1v)
  loc_ABE78C: FLdPr Me
  loc_ABE78F: MemLdStr global_60
  loc_ABE792: LitStr vbNullString
  loc_ABE795: NeStr
  loc_ABE797: BranchF loc_ABE79B
  loc_ABE79A: ExitProcHresult
  loc_ABE79B: Call DetaAsieFlex_LeaveCell()
  loc_ABE7A0: FLdPr Me
  loc_ABE7A3: VCallAd Control_ID_TotaDebeMsk
  loc_ABE7A6: FStAdFunc var_A0
  loc_ABE7A9: FLdPr var_A0
  loc_ABE7AC: LateIdLdVar var_B0 DispID_22 0
  loc_ABE7B3: CStrVarTmp
  loc_ABE7B4: FStStrNoPop var_C8
  loc_ABE7B7: FLdPr Me
  loc_ABE7BA: VCallAd Control_ID_TotaHaberMsk
  loc_ABE7BD: FStAdFunc var_B4
  loc_ABE7C0: FLdPr var_B4
  loc_ABE7C3: LateIdLdVar var_C4 DispID_22 0
  loc_ABE7CA: CStrVarTmp
  loc_ABE7CB: FStStrNoPop var_CC
  loc_ABE7CE: NeStr
  loc_ABE7D0: FFreeStr var_C8 = ""
  loc_ABE7D7: FFreeAd var_A0 = ""
  loc_ABE7DE: FFreeVar var_B0 = ""
  loc_ABE7E5: BranchF loc_ABE7F6
  loc_ABE7E8: LitI4 0
  loc_ABE7ED: LitStr "El asiento no cuadra. Verifique..."
  loc_ABE7F0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABE7F5: ExitProcHresult
  loc_ABE7F6: FLdPr Me
  loc_ABE7F9: VCallAd Control_ID_FechAsieMsk
  loc_ABE7FC: FStAdFunc var_E4
  loc_ABE7FF: FLdPr var_E4
  loc_ABE802: LateIdLdVar var_C4 DispID_15 0
  loc_ABE809: PopAd
  loc_ABE80B: FLdRfVar var_B0
  loc_ABE80E: FLdRfVar var_E0
  loc_ABE811: LitVarStr var_DC, "FechAsie"
  loc_ABE816: PopAdLdVar
  loc_ABE817: FLdRfVar var_B4
  loc_ABE81A: FLdRfVar var_A0
  loc_ABE81D: FLdPr Me
  loc_ABE820: MemLdRfVar from_stack_1.global_52
  loc_ABE823: NewIfNullPr clsasiento
  loc_ABE826: from_stack_1v = clsasiento.RsFrmGet()
  loc_ABE82B: FLdPr var_A0
  loc_ABE82E:  = Me.Fields
  loc_ABE833: FLdPr var_B4
  loc_ABE836: from_stack_2 = Me.Item(from_stack_1)
  loc_ABE83B: FLdPr var_E0
  loc_ABE83E:  = Me.Value
  loc_ABE843: FLdRfVar var_B0
  loc_ABE846: FnCDateVar
  loc_ABE848: FLdRfVar var_C4
  loc_ABE84B: CStrVarTmp
  loc_ABE84C: FStStrNoPop var_C8
  loc_ABE84F: CDateStr
  loc_ABE851: NeR8
  loc_ABE852: FFree1Str var_C8
  loc_ABE855: FFreeAd var_A0 = "": var_B4 = "": var_E0 = ""
  loc_ABE860: FFreeVar var_B0 = ""
  loc_ABE867: BranchF loc_ABE8A5
  loc_ABE86A: FLdPr Me
  loc_ABE86D: VCallAd Control_ID_FechAsieMsk
  loc_ABE870: FStAdFunc var_A0
  loc_ABE873: FLdPr var_A0
  loc_ABE876: LateIdLdVar var_B0 DispID_15 0
  loc_ABE87D: CStrVarTmp
  loc_ABE87E: FStStrNoPop var_C8
  loc_ABE881: FLdPr Me
  loc_ABE884: MemLdRfVar from_stack_1.global_52
  loc_ABE887: NewIfNullPr clsasiento
  loc_ABE88A: Call clsasiento.ActualizaFechAsie(from_stack_1v)
  loc_ABE88F: FFree1Str var_C8
  loc_ABE892: FFree1Ad var_A0
  loc_ABE895: FFree1Var var_B0 = ""
  loc_ABE898: LitI4 0
  loc_ABE89D: LitStr "Se actualizó la Fecha del Asiento."
  loc_ABE8A0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABE8A5: FLdRfVar var_B0
  loc_ABE8A8: FLdRfVar var_E0
  loc_ABE8AB: LitVarStr var_DC, "MinuAsie"
  loc_ABE8B0: PopAdLdVar
  loc_ABE8B1: FLdRfVar var_B4
  loc_ABE8B4: FLdRfVar var_A0
  loc_ABE8B7: FLdPr Me
  loc_ABE8BA: MemLdRfVar from_stack_1.global_52
  loc_ABE8BD: NewIfNullPr clsasiento
  loc_ABE8C0: from_stack_1v = clsasiento.RsFrmGet()
  loc_ABE8C5: FLdPr var_A0
  loc_ABE8C8:  = Me.Fields
  loc_ABE8CD: FLdPr var_B4
  loc_ABE8D0: from_stack_2 = Me.Item(from_stack_1)
  loc_ABE8D5: FLdPr var_E0
  loc_ABE8D8:  = Me.Value
  loc_ABE8DD: FLdRfVar var_B0
  loc_ABE8E0: FLdRfVar var_C8
  loc_ABE8E3: FLdPr Me
  loc_ABE8E6: VCallAd Control_ID_MinuAsieTxt
  loc_ABE8E9: FStAdFunc var_E4
  loc_ABE8EC: FLdPr var_E4
  loc_ABE8EF:  = Me.Text
  loc_ABE8F4: FLdZeroAd var_C8
  loc_ABE8F7: CVarStr var_C4
  loc_ABE8FA: HardType
  loc_ABE8FB: NeVarBool
  loc_ABE8FD: FFreeAd var_A0 = "": var_B4 = "": var_E4 = ""
  loc_ABE908: FFreeVar var_B0 = ""
  loc_ABE90F: BranchF loc_ABE94A
  loc_ABE912: FLdRfVar var_C8
  loc_ABE915: FLdPr Me
  loc_ABE918: VCallAd Control_ID_MinuAsieTxt
  loc_ABE91B: FStAdFunc var_A0
  loc_ABE91E: FLdPr var_A0
  loc_ABE921:  = Me.Text
  loc_ABE926: ILdRf var_C8
  loc_ABE929: FLdPr Me
  loc_ABE92C: MemLdRfVar from_stack_1.global_52
  loc_ABE92F: NewIfNullPr clsasiento
  loc_ABE932: Call clsasiento.ActualizaMinuAsie(from_stack_1v)
  loc_ABE937: FFree1Str var_C8
  loc_ABE93A: FFree1Ad var_A0
  loc_ABE93D: LitI4 0
  loc_ABE942: LitStr "Se actualizó la Minuta del Asiento."
  loc_ABE945: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABE94A: FLdPr Me
  loc_ABE94D: VCallAd Control_ID_TotaDebeMsk
  loc_ABE950: FStAdFunc var_A0
  loc_ABE953: FLdPr var_A0
  loc_ABE956: LateIdLdVar var_B0 DispID_22 0
  loc_ABE95D: CStrVarTmp
  loc_ABE95E: FStStrNoPop var_C8
  loc_ABE961: CR8Str
  loc_ABE963: LitI2_Byte 0
  loc_ABE965: CR8I2
  loc_ABE966: EqR4
  loc_ABE967: FFree1Str var_C8
  loc_ABE96A: FFree1Ad var_A0
  loc_ABE96D: FFree1Var var_B0 = ""
  loc_ABE970: BranchF loc_ABE9A5
  loc_ABE973: LitStr "Debe ingresar los MOVIMIENTOS de ASIENTO"
  loc_ABE976: FLdPr Me
  loc_ABE979: MemStStrCopy
  loc_ABE97D: LitI4 0
  loc_ABE982: FLdPr Me
  loc_ABE985: MemLdStr global_60
  loc_ABE988: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABE98D: FLdPr Me
  loc_ABE990: VCallAd Control_ID_DetaAsieFlex
  loc_ABE993: FStAdFunc var_A0
  loc_ABE996: FLdPr var_A0
  loc_ABE999: LateIdCall
  loc_ABE9A1: FFree1Ad var_A0
  loc_ABE9A4: ExitProcHresult
  loc_ABE9A5: FLdPr Me
  loc_ABE9A8: VCallAd Control_ID_TotaHaberMsk
  loc_ABE9AB: FStAdFunc var_B4
  loc_ABE9AE: FLdPr var_B4
  loc_ABE9B1: LateIdLdVar var_C4 DispID_22 0
  loc_ABE9B8: PopAd
  loc_ABE9BA: FLdPr Me
  loc_ABE9BD: VCallAd Control_ID_TotaDebeMsk
  loc_ABE9C0: FStAdFunc var_A0
  loc_ABE9C3: FLdPr var_A0
  loc_ABE9C6: LateIdLdVar var_B0 DispID_22 0
  loc_ABE9CD: CStrVarTmp
  loc_ABE9CE: FStStrNoPop var_C8
  loc_ABE9D1: CR8Str
  loc_ABE9D3: FLdRfVar var_C4
  loc_ABE9D6: CStrVarTmp
  loc_ABE9D7: FStStrNoPop var_CC
  loc_ABE9DA: CR8Str
  loc_ABE9DC: NeR8
  loc_ABE9DD: FFreeStr var_C8 = ""
  loc_ABE9E4: FFreeAd var_A0 = ""
  loc_ABE9EB: FFreeVar var_B0 = ""
  loc_ABE9F2: BranchF loc_ABEA27
  loc_ABE9F5: LitStr "El total del DEBE no coincide con el total del HABER"
  loc_ABE9F8: FLdPr Me
  loc_ABE9FB: MemStStrCopy
  loc_ABE9FF: LitI4 0
  loc_ABEA04: FLdPr Me
  loc_ABEA07: MemLdStr global_60
  loc_ABEA0A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABEA0F: FLdPr Me
  loc_ABEA12: VCallAd Control_ID_DetaAsieFlex
  loc_ABEA15: FStAdFunc var_A0
  loc_ABEA18: FLdPr var_A0
  loc_ABEA1B: LateIdCall
  loc_ABEA23: FFree1Ad var_A0
  loc_ABEA26: ExitProcHresult
  loc_ABEA27: LitI2_Byte &HFF
  loc_ABEA29: PopTmpLdAd2 var_F6
  loc_ABEA2C: LitI2_Byte &HFF
  loc_ABEA2E: PopTmpLdAd2 var_8A
  loc_ABEA31: LitStr "¿Confirma las modificaciones de los movimientos?"
  loc_ABEA34: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_ABEA39: CI4UI1
  loc_ABEA3A: LitI4 6
  loc_ABEA3F: EqI4
  loc_ABEA40: BranchF loc_ABED0F
  loc_ABEA43: LitNothing
  loc_ABEA45: CastAd
  loc_ABEA48: CVarUnk
  loc_ABEA4C: PopAdLdVar
  loc_ABEA4D: VerifyVarObj
  loc_ABEA4F: FLdPr Me
  loc_ABEA52: VCallAd Control_ID_dgdAsiento
  loc_ABEA55: FStAdFunc var_A0
  loc_ABEA58: FLdPr var_A0
  loc_ABEA5B: LateIdStAd
  loc_ABEA63: FFree1Ad var_A0
  loc_ABEA66: FFree1Var var_B0 = ""
  loc_ABEA69: FLdPr Me
  loc_ABEA6C: MemLdRfVar from_stack_1.global_52
  loc_ABEA6F: NewIfNullPr clsasiento
  loc_ABEA72: Call clsasiento.DeleteMoviAsientos()
  loc_ABEA77: LitI2_Byte 1
  loc_ABEA79: FLdPr Me
  loc_ABEA7C: MemLdRfVar from_stack_1.global_80
  loc_ABEA7F: FLdPr Me
  loc_ABEA82: VCallAd Control_ID_DetaAsieFlex
  loc_ABEA85: FStAdFunc var_A0
  loc_ABEA88: FLdPr var_A0
  loc_ABEA8B: LateIdLdVar var_B0 DispID_4 0
  loc_ABEA92: CI4Var
  loc_ABEA94: LitI4 1
  loc_ABEA99: SubI4
  loc_ABEA9A: CI2I4
  loc_ABEA9B: FFree1Ad var_A0
  loc_ABEA9E: FFree1Var var_B0 = ""
  loc_ABEAA1: ForI2 var_FA
  loc_ABEAA7: FLdPr Me
  loc_ABEAAA: MemLdI2 global_80
  loc_ABEAAD: CI4UI1
  loc_ABEAAE: CVarI4
  loc_ABEAB2: PopAdLdVar
  loc_ABEAB3: LitVarI4
  loc_ABEABB: PopAdLdVar
  loc_ABEABC: FLdPr Me
  loc_ABEABF: VCallAd Control_ID_DetaAsieFlex
  loc_ABEAC2: FStAdFunc var_A0
  loc_ABEAC5: FLdPr var_A0
  loc_ABEAC8: LateIdCallLdVar
  loc_ABEAD2: CStrVarTmp
  loc_ABEAD3: FStStrNoPop var_C8
  loc_ABEAD6: LitStr vbNullString
  loc_ABEAD9: NeStr
  loc_ABEADB: FFree1Str var_C8
  loc_ABEADE: FFree1Ad var_A0
  loc_ABEAE1: FFree1Var var_B0 = ""
  loc_ABEAE4: BranchF loc_ABECCA
  loc_ABEAE7: FLdPr Me
  loc_ABEAEA: MemLdI2 global_80
  loc_ABEAED: CI4UI1
  loc_ABEAEE: CVarI4
  loc_ABEAF2: PopAdLdVar
  loc_ABEAF3: LitVarI4
  loc_ABEAFB: PopAdLdVar
  loc_ABEAFC: FLdPr Me
  loc_ABEAFF: VCallAd Control_ID_DetaAsieFlex
  loc_ABEB02: FStAdFunc var_A0
  loc_ABEB05: FLdPr var_A0
  loc_ABEB08: LateIdCallLdVar
  loc_ABEB12: CStrVarTmp
  loc_ABEB13: FStStrNoPop var_C8
  loc_ABEB16: LitStr vbNullString
  loc_ABEB19: NeStr
  loc_ABEB1B: FFree1Str var_C8
  loc_ABEB1E: FFree1Ad var_A0
  loc_ABEB21: FFree1Var var_B0 = ""
  loc_ABEB24: BranchF loc_ABEB6A
  loc_ABEB27: FLdPr Me
  loc_ABEB2A: MemLdI2 global_80
  loc_ABEB2D: CI4UI1
  loc_ABEB2E: CVarI4
  loc_ABEB32: PopAdLdVar
  loc_ABEB33: LitVarI4
  loc_ABEB3B: PopAdLdVar
  loc_ABEB3C: FLdPr Me
  loc_ABEB3F: VCallAd Control_ID_DetaAsieFlex
  loc_ABEB42: FStAdFunc var_A0
  loc_ABEB45: FLdPr var_A0
  loc_ABEB48: LateIdCallLdVar
  loc_ABEB52: CStrVarTmp
  loc_ABEB53: FStStrNoPop var_C8
  loc_ABEB56: CR8Str
  loc_ABEB58: FStFPR8 var_94
  loc_ABEB5B: FFree1Str var_C8
  loc_ABEB5E: FFree1Ad var_A0
  loc_ABEB61: FFree1Var var_B0 = ""
  loc_ABEB64: LitI2_Byte 0
  loc_ABEB66: CR8I2
  loc_ABEB67: FStFPR8 var_9C
  loc_ABEB6A: FLdPr Me
  loc_ABEB6D: MemLdI2 global_80
  loc_ABEB70: CI4UI1
  loc_ABEB71: CVarI4
  loc_ABEB75: PopAdLdVar
  loc_ABEB76: LitVarI4
  loc_ABEB7E: PopAdLdVar
  loc_ABEB7F: FLdPr Me
  loc_ABEB82: VCallAd Control_ID_DetaAsieFlex
  loc_ABEB85: FStAdFunc var_A0
  loc_ABEB88: FLdPr var_A0
  loc_ABEB8B: LateIdCallLdVar
  loc_ABEB95: CStrVarTmp
  loc_ABEB96: FStStrNoPop var_C8
  loc_ABEB99: LitStr vbNullString
  loc_ABEB9C: NeStr
  loc_ABEB9E: FFree1Str var_C8
  loc_ABEBA1: FFree1Ad var_A0
  loc_ABEBA4: FFree1Var var_B0 = ""
  loc_ABEBA7: BranchF loc_ABEBED
  loc_ABEBAA: FLdPr Me
  loc_ABEBAD: MemLdI2 global_80
  loc_ABEBB0: CI4UI1
  loc_ABEBB1: CVarI4
  loc_ABEBB5: PopAdLdVar
  loc_ABEBB6: LitVarI4
  loc_ABEBBE: PopAdLdVar
  loc_ABEBBF: FLdPr Me
  loc_ABEBC2: VCallAd Control_ID_DetaAsieFlex
  loc_ABEBC5: FStAdFunc var_A0
  loc_ABEBC8: FLdPr var_A0
  loc_ABEBCB: LateIdCallLdVar
  loc_ABEBD5: CStrVarTmp
  loc_ABEBD6: FStStrNoPop var_C8
  loc_ABEBD9: CR8Str
  loc_ABEBDB: FStFPR8 var_9C
  loc_ABEBDE: FFree1Str var_C8
  loc_ABEBE1: FFree1Ad var_A0
  loc_ABEBE4: FFree1Var var_B0 = ""
  loc_ABEBE7: LitI2_Byte 0
  loc_ABEBE9: CR8I2
  loc_ABEBEA: FStFPR8 var_94
  loc_ABEBED: FLdRfVar var_C4
  loc_ABEBF0: FLdRfVar var_E0
  loc_ABEBF3: LitVarStr var_DC, "PeriInfo"
  loc_ABEBF8: PopAdLdVar
  loc_ABEBF9: FLdRfVar var_B4
  loc_ABEBFC: FLdRfVar var_A0
  loc_ABEBFF: FLdPr Me
  loc_ABEC02: MemLdRfVar from_stack_1.global_52
  loc_ABEC05: NewIfNullPr clsasiento
  loc_ABEC08: from_stack_1v = clsasiento.RsFrmGet()
  loc_ABEC0D: FLdPr var_A0
  loc_ABEC10:  = Me.Fields
  loc_ABEC15: FLdPr var_B4
  loc_ABEC18: from_stack_2 = Me.Item(from_stack_1)
  loc_ABEC1D: FLdPr var_E0
  loc_ABEC20:  = Me.Value
  loc_ABEC25: FLdRfVar var_F4
  loc_ABEC28: FLdRfVar var_134
  loc_ABEC2B: LitVarStr var_10C, "CodiAsie"
  loc_ABEC30: PopAdLdVar
  loc_ABEC31: FLdRfVar var_130
  loc_ABEC34: FLdRfVar var_E4
  loc_ABEC37: FLdPr Me
  loc_ABEC3A: MemLdRfVar from_stack_1.global_52
  loc_ABEC3D: NewIfNullPr clsasiento
  loc_ABEC40: from_stack_1v = clsasiento.RsFrmGet()
  loc_ABEC45: FLdPr var_E4
  loc_ABEC48:  = Me.Fields
  loc_ABEC4D: FLdPr var_130
  loc_ABEC50: from_stack_2 = Me.Item(from_stack_1)
  loc_ABEC55: FLdPr var_134
  loc_ABEC58:  = Me.Value
  loc_ABEC5D: FLdPr Me
  loc_ABEC60: MemLdI2 global_80
  loc_ABEC63: CI4UI1
  loc_ABEC64: CVarI4
  loc_ABEC68: PopAdLdVar
  loc_ABEC69: LitVarI4
  loc_ABEC71: PopAdLdVar
  loc_ABEC72: FLdPr Me
  loc_ABEC75: VCallAd Control_ID_DetaAsieFlex
  loc_ABEC78: FStAdFunc var_158
  loc_ABEC7B: FLdPr var_158
  loc_ABEC7E: LateIdCallLdVar
  loc_ABEC88: PopAd
  loc_ABEC8A: FLdR8 var_9C
  loc_ABEC8D: FLdR8 var_94
  loc_ABEC90: FLdRfVar var_B0
  loc_ABEC93: CStrVarTmp
  loc_ABEC94: FStStrNoPop var_C8
  loc_ABEC97: FLdRfVar var_F4
  loc_ABEC9A: CI2Var
  loc_ABEC9B: FLdRfVar var_C4
  loc_ABEC9E: CI2Var
  loc_ABEC9F: FLdPr Me
  loc_ABECA2: MemLdRfVar from_stack_1.global_56
  loc_ABECA5: NewIfNullPr clsasiento
  loc_ABECA8: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_ABECAD: FFree1Str var_C8
  loc_ABECB0: FFreeAd var_A0 = "": var_B4 = "": var_E4 = "": var_130 = "": var_158 = "": var_E0 = ""
  loc_ABECC1: FFreeVar var_B0 = "": var_C4 = ""
  loc_ABECCA: FLdPr Me
  loc_ABECCD: MemLdRfVar from_stack_1.global_80
  loc_ABECD0: NextI2 var_FA, loc_ABEAA7
  loc_ABECD5: LitI4 0
  loc_ABECDA: LitStr "Se actualizaron los movimientos del asiento."
  loc_ABECDD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABECE2: FLdPr Me
  loc_ABECE5: MemLdRfVar from_stack_1.global_52
  loc_ABECE8: NewIfNullAd
  loc_ABECEB: CastAd
  loc_ABECEE: CVarUnk
  loc_ABECF2: PopAdLdVar
  loc_ABECF3: VerifyVarObj
  loc_ABECF5: FLdPr Me
  loc_ABECF8: VCallAd Control_ID_dgdAsiento
  loc_ABECFB: FStAdFunc var_A0
  loc_ABECFE: FLdPr var_A0
  loc_ABED01: LateIdStAd
  loc_ABED09: FFree1Ad var_A0
  loc_ABED0C: FFree1Var var_B0 = ""
  loc_ABED0F: LitI4 0
  loc_ABED14: LitI4 0
  loc_ABED19: FLdPr Me
  loc_ABED1C: MemLdRfVar from_stack_1.global_52
  loc_ABED1F: NewIfNullPr clsasiento
  loc_ABED22: Call clsasiento.Encontrar(from_stack_1v, from_stack_2v)
  loc_ABED27: ExitProcHresult
End Sub

Private Sub Form_Load() 'A3FB80
  'Data Table: 43419C
  loc_A3F960: LitI2_Byte 0
  loc_A3F962: CR8I2
  loc_A3F963: PopFPR4
  loc_A3F964: FLdPr Me
  loc_A3F967: Me.Left = from_stack_1s
  loc_A3F96C: LitI2_Byte 0
  loc_A3F96E: CR8I2
  loc_A3F96F: PopFPR4
  loc_A3F970: FLdPr Me
  loc_A3F973: Me.Top = from_stack_1s
  loc_A3F978: FLdPr Me
  loc_A3F97B: VCallAd Control_ID_DetaAsieFlex
  loc_A3F97E: FStAdFunc var_88
  loc_A3F981: LitVarI4
  loc_A3F989: PopAdLdVar
  loc_A3F98A: LitVarI4
  loc_A3F992: PopAdLdVar
  loc_A3F993: FLdPr var_88
  loc_A3F996: LateIdCallSt
  loc_A3F99E: LitVarI4
  loc_A3F9A6: PopAdLdVar
  loc_A3F9A7: LitVarI4
  loc_A3F9AF: PopAdLdVar
  loc_A3F9B0: FLdPr var_88
  loc_A3F9B3: LateIdCallSt
  loc_A3F9BB: LitVarI4
  loc_A3F9C3: PopAdLdVar
  loc_A3F9C4: LitVarI4
  loc_A3F9CC: PopAdLdVar
  loc_A3F9CD: FLdPr var_88
  loc_A3F9D0: LateIdCallSt
  loc_A3F9D8: LitVarI4
  loc_A3F9E0: PopAdLdVar
  loc_A3F9E1: LitVarI4
  loc_A3F9E9: PopAdLdVar
  loc_A3F9EA: FLdPr var_88
  loc_A3F9ED: LateIdCallSt
  loc_A3F9F5: LitVarI4
  loc_A3F9FD: PopAdLdVar
  loc_A3F9FE: LitVarI4
  loc_A3FA06: PopAdLdVar
  loc_A3FA07: LitVarStr var_D8, "Cta Contable"
  loc_A3FA0C: PopAdLdVar
  loc_A3FA0D: FLdPr var_88
  loc_A3FA10: LateIdCallSt
  loc_A3FA18: LitVarI4
  loc_A3FA20: PopAdLdVar
  loc_A3FA21: LitVarI4
  loc_A3FA29: PopAdLdVar
  loc_A3FA2A: LitVarStr var_D8, "Detalle"
  loc_A3FA2F: PopAdLdVar
  loc_A3FA30: FLdPr var_88
  loc_A3FA33: LateIdCallSt
  loc_A3FA3B: LitVarI4
  loc_A3FA43: PopAdLdVar
  loc_A3FA44: LitVarI4
  loc_A3FA4C: PopAdLdVar
  loc_A3FA4D: LitVarStr var_D8, "Debe"
  loc_A3FA52: PopAdLdVar
  loc_A3FA53: FLdPr var_88
  loc_A3FA56: LateIdCallSt
  loc_A3FA5E: LitVarI4
  loc_A3FA66: PopAdLdVar
  loc_A3FA67: LitVarI4
  loc_A3FA6F: PopAdLdVar
  loc_A3FA70: LitVarStr var_D8, "Haber"
  loc_A3FA75: PopAdLdVar
  loc_A3FA76: FLdPr var_88
  loc_A3FA79: LateIdCallSt
  loc_A3FA81: LitNothing
  loc_A3FA83: FStAd var_88 
  loc_A3FA87: ImpAdLdI2 MemVar_C3D064
  loc_A3FA8A: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A3FA8F: FStStr var_134
  loc_A3FA92: LitStr "SELECT asiento.*, DetaTias, FijoTias"
  loc_A3FA95: LitStr " FROM asiento"
  loc_A3FA98: ConcatStr
  loc_A3FA99: FStStrNoPop var_EC
  loc_A3FA9C: LitStr " INNER JOIN tipoasiento ON asiento.CodiTias = tipoasiento.CodiTias"
  loc_A3FA9F: ConcatStr
  loc_A3FAA0: FStStrNoPop var_F0
  loc_A3FAA3: LitStr " WHERE asiento.PeriInfo = "
  loc_A3FAA6: ConcatStr
  loc_A3FAA7: FStStrNoPop var_F4
  loc_A3FAAA: ImpAdLdI2 MemVar_C3D064
  loc_A3FAAD: CStrUI1
  loc_A3FAAF: FStStrNoPop var_F8
  loc_A3FAB2: ConcatStr
  loc_A3FAB3: FStStrNoPop var_FC
  loc_A3FAB6: LitStr " AND FechAsie > "
  loc_A3FAB9: ConcatStr
  loc_A3FABA: FStStrNoPop var_120
  loc_A3FABD: LitI4 1
  loc_A3FAC2: LitI4 1
  loc_A3FAC7: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_A3FACC: FStVarCopyObj var_11C
  loc_A3FACF: FLdRfVar var_11C
  loc_A3FAD2: FLdZeroAd var_134
  loc_A3FAD5: CVarStr var_10C
  loc_A3FAD8: ImpAdCallI2 Format$(, )
  loc_A3FADD: FStStrNoPop var_124
  loc_A3FAE0: ConcatStr
  loc_A3FAE1: FStStrNoPop var_128
  loc_A3FAE4: LitStr " AND FijoTias = 0"
  loc_A3FAE7: ConcatStr
  loc_A3FAE8: FStStrNoPop var_12C
  loc_A3FAEB: LitStr " ORDER BY PeriInfo, CodiAsie"
  loc_A3FAEE: ConcatStr
  loc_A3FAEF: FStStrNoPop var_130
  loc_A3FAF2: FLdPr Me
  loc_A3FAF5: MemLdRfVar from_stack_1.global_52
  loc_A3FAF8: NewIfNullPr clsasiento
  loc_A3FAFB: Call clsasiento.RedefineRS(from_stack_1v)
  loc_A3FB00: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_A3FB19: FFreeVar var_10C = ""
  loc_A3FB20: LitI4 0
  loc_A3FB25: LitI4 1
  loc_A3FB2A: FLdRfVar var_138
  loc_A3FB2D: Redim
  loc_A3FB37: FLdPr Me
  loc_A3FB3A: MemLdRfVar from_stack_1.global_52
  loc_A3FB3D: NewIfNullAd
  loc_A3FB40: FStAd var_13C 
  loc_A3FB44: FLdRfVar var_13C
  loc_A3FB47: CVarRef
  loc_A3FB4C: ParmAry1St
  loc_A3FB52: FLdPr Me
  loc_A3FB55: VCallAd Control_ID_dgdAsiento
  loc_A3FB58: CVarAd
  loc_A3FB5C: ParmAry1St
  loc_A3FB62: FLdRfVar var_138
  loc_A3FB65: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3FB6A: ILdRf var_13C
  loc_A3FB6D: CastAd
  loc_A3FB70: FLdPr Me
  loc_A3FB73: MemStAdFunc
  loc_A3FB77: FLdRfVar var_138
  loc_A3FB7A: Erase
  loc_A3FB7B: FFree1Ad var_13C
  loc_A3FB7E: ExitProcHresult
End Sub

Private Sub Form_Activate() '945584
  'Data Table: 43419C
  loc_945574: FLdPr Me
  loc_945577: MemLdRfVar from_stack_1.global_52
  loc_94557A: NewIfNullPr clsasiento
  loc_94557D: Call clsasiento.Requery()
  loc_945582: ExitProcHresult
End Sub

Private Function Proc_124_13_B626F4(arg_C) 'B626F4
  'Data Table: 43419C
  loc_B61BBC: ILdRf arg_C
  loc_B61BBF: FStStrCopy var_88
  loc_B61BC2: LitI4 0
  loc_B61BC7: LitI4 4
  loc_B61BCC: FLdRfVar var_8C
  loc_B61BCF: Redim
  loc_B61BD9: LitVarStr var_9C, "114"
  loc_B61BDE: LitI4 0
  loc_B61BE3: ILdRf var_8C
  loc_B61BE6: Ary1StVarCopy
  loc_B61BE8: LitVarStr var_AC, "115"
  loc_B61BED: LitI4 1
  loc_B61BF2: ILdRf var_8C
  loc_B61BF5: Ary1StVarCopy
  loc_B61BF7: LitVarStr var_BC, "116"
  loc_B61BFC: LitI4 2
  loc_B61C01: ILdRf var_8C
  loc_B61C04: Ary1StVarCopy
  loc_B61C06: LitVarStr var_CC, "1170"
  loc_B61C0B: LitI4 3
  loc_B61C10: ILdRf var_8C
  loc_B61C13: Ary1StVarCopy
  loc_B61C15: LitVarStr var_DC, "2"
  loc_B61C1A: LitI4 4
  loc_B61C1F: ILdRf var_8C
  loc_B61C22: Ary1StVarCopy
  loc_B61C24: FLdRfVar var_8C
  loc_B61C27: FLdPr Me
  loc_B61C2A: MemLdRfVar from_stack_1.global_92
  loc_B61C2D: NewIfNullRf
  loc_B61C31: ImpAdLdI2 MemVar_C3D064
  loc_B61C34: LitI2_Byte 0
  loc_B61C36: ILdRf var_88
  loc_B61C39: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B61C3E: FStStr var_E0
  loc_B61C41: FLdRfVar var_8C
  loc_B61C44: Erase
  loc_B61C45: ILdRf var_E0
  loc_B61C48: FLdPr Me
  loc_B61C4B: MemStStrCopy
  loc_B61C4F: FFree1Str var_E0
  loc_B61C52: FLdRfVar var_E0
  loc_B61C55: FLdPr Me
  loc_B61C58: MemLdRfVar from_stack_1.global_92
  loc_B61C5B: NewIfNullPr tblcuentacontable
  loc_B61C5E: from_stack_1v = tblcuentacontable.CodiTicuGet()
  loc_B61C63: ILdRf var_E0
  loc_B61C66: LitStr "1130"
  loc_B61C69: EqStr
  loc_B61C6B: FFree1Str var_E0
  loc_B61C6E: BranchF loc_B61CD5
  loc_B61C71: FLdRfVar var_FC
  loc_B61C74: FLdRfVar var_EC
  loc_B61C77: LitVarStr var_9C, "CodiTias"
  loc_B61C7C: PopAdLdVar
  loc_B61C7D: FLdRfVar var_E8
  loc_B61C80: FLdRfVar var_E4
  loc_B61C83: FLdPr Me
  loc_B61C86: MemLdRfVar from_stack_1.global_52
  loc_B61C89: NewIfNullPr clsasiento
  loc_B61C8C: from_stack_1v = clsasiento.RsFrmGet()
  loc_B61C91: FLdPr var_E4
  loc_B61C94:  = Me.Fields
  loc_B61C99: FLdPr var_E8
  loc_B61C9C: from_stack_2 = Me.Item(from_stack_1)
  loc_B61CA1: FLdPr var_EC
  loc_B61CA4:  = Me.Value
  loc_B61CA9: FLdRfVar var_FC
  loc_B61CAC: FnCStrVar
  loc_B61CAE: FStStrNoPop var_E0
  loc_B61CB1: LitStr "18"
  loc_B61CB4: EqStr
  loc_B61CB6: FFree1Str var_E0
  loc_B61CB9: FFreeAd var_E4 = "": var_E8 = ""
  loc_B61CC2: FFree1Var var_FC = ""
  loc_B61CC5: BranchF loc_B61CD2
  loc_B61CC8: LitStr vbNullString
  loc_B61CCB: FLdPr Me
  loc_B61CCE: MemStStrCopy
  loc_B61CD2: Branch loc_B62572
  loc_B61CD5: FLdRfVar var_FC
  loc_B61CD8: FLdRfVar var_EC
  loc_B61CDB: LitVarStr var_9C, "CodiTias"
  loc_B61CE0: PopAdLdVar
  loc_B61CE1: FLdRfVar var_E8
  loc_B61CE4: FLdRfVar var_E4
  loc_B61CE7: FLdPr Me
  loc_B61CEA: MemLdRfVar from_stack_1.global_52
  loc_B61CED: NewIfNullPr clsasiento
  loc_B61CF0: from_stack_1v = clsasiento.RsFrmGet()
  loc_B61CF5: FLdPr var_E4
  loc_B61CF8:  = Me.Fields
  loc_B61CFD: FLdPr var_E8
  loc_B61D00: from_stack_2 = Me.Item(from_stack_1)
  loc_B61D05: FLdPr var_EC
  loc_B61D08:  = Me.Value
  loc_B61D0D: FLdRfVar var_FC
  loc_B61D10: FnCStrVar
  loc_B61D12: FStStr var_100
  loc_B61D15: FFreeAd var_E4 = "": var_E8 = ""
  loc_B61D1E: FFree1Var var_FC = ""
  loc_B61D21: ILdRf var_100
  loc_B61D24: LitStr "7"
  loc_B61D27: EqStr
  loc_B61D29: BranchT loc_B61D37
  loc_B61D2C: ILdRf var_100
  loc_B61D2F: LitStr "8"
  loc_B61D32: EqStr
  loc_B61D34: BranchF loc_B61DAC
  loc_B61D37: LitI4 0
  loc_B61D3C: LitI4 2
  loc_B61D41: FLdRfVar var_8C
  loc_B61D44: Redim
  loc_B61D4E: LitVarStr var_9C, "5"
  loc_B61D53: LitI4 0
  loc_B61D58: ILdRf var_8C
  loc_B61D5B: Ary1StVarCopy
  loc_B61D5D: LitVarStr var_AC, "7"
  loc_B61D62: LitI4 1
  loc_B61D67: ILdRf var_8C
  loc_B61D6A: Ary1StVarCopy
  loc_B61D6C: LitVarStr var_BC, "3"
  loc_B61D71: LitI4 2
  loc_B61D76: ILdRf var_8C
  loc_B61D79: Ary1StVarCopy
  loc_B61D7B: FLdRfVar var_8C
  loc_B61D7E: FLdPr Me
  loc_B61D81: MemLdRfVar from_stack_1.global_92
  loc_B61D84: NewIfNullRf
  loc_B61D88: ImpAdLdI2 MemVar_C3D064
  loc_B61D8B: LitI2_Byte &HFF
  loc_B61D8D: ILdRf var_88
  loc_B61D90: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B61D95: FStStr var_E0
  loc_B61D98: FLdRfVar var_8C
  loc_B61D9B: Erase
  loc_B61D9C: ILdRf var_E0
  loc_B61D9F: FLdPr Me
  loc_B61DA2: MemStStrCopy
  loc_B61DA6: FFree1Str var_E0
  loc_B61DA9: Branch loc_B62572
  loc_B61DAC: ILdRf var_100
  loc_B61DAF: LitStr "15"
  loc_B61DB2: EqStr
  loc_B61DB4: BranchT loc_B61DC2
  loc_B61DB7: ILdRf var_100
  loc_B61DBA: LitStr "18"
  loc_B61DBD: EqStr
  loc_B61DBF: BranchF loc_B61E46
  loc_B61DC2: LitI4 0
  loc_B61DC7: LitI4 3
  loc_B61DCC: FLdRfVar var_8C
  loc_B61DCF: Redim
  loc_B61DD9: LitVarStr var_9C, "1"
  loc_B61DDE: LitI4 0
  loc_B61DE3: ILdRf var_8C
  loc_B61DE6: Ary1StVarCopy
  loc_B61DE8: LitVarStr var_AC, "2"
  loc_B61DED: LitI4 1
  loc_B61DF2: ILdRf var_8C
  loc_B61DF5: Ary1StVarCopy
  loc_B61DF7: LitVarStr var_BC, "3"
  loc_B61DFC: LitI4 2
  loc_B61E01: ILdRf var_8C
  loc_B61E04: Ary1StVarCopy
  loc_B61E06: LitVarStr var_CC, "4"
  loc_B61E0B: LitI4 3
  loc_B61E10: ILdRf var_8C
  loc_B61E13: Ary1StVarCopy
  loc_B61E15: FLdRfVar var_8C
  loc_B61E18: FLdPr Me
  loc_B61E1B: MemLdRfVar from_stack_1.global_92
  loc_B61E1E: NewIfNullRf
  loc_B61E22: ImpAdLdI2 MemVar_C3D064
  loc_B61E25: LitI2_Byte &HFF
  loc_B61E27: ILdRf var_88
  loc_B61E2A: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B61E2F: FStStr var_E0
  loc_B61E32: FLdRfVar var_8C
  loc_B61E35: Erase
  loc_B61E36: ILdRf var_E0
  loc_B61E39: FLdPr Me
  loc_B61E3C: MemStStrCopy
  loc_B61E40: FFree1Str var_E0
  loc_B61E43: Branch loc_B62572
  loc_B61E46: ILdRf var_100
  loc_B61E49: LitStr "31"
  loc_B61E4C: EqStr
  loc_B61E4E: BranchF loc_B61FC6
  loc_B61E51: LitStr "Municipalidad de Guaymallén"
  loc_B61E54: FStStrCopy var_104
  loc_B61E57: ILdRf var_104
  loc_B61E5A: LitStr "Municipalidad de San Carlos"
  loc_B61E5D: EqStr
  loc_B61E5F: BranchT loc_B61EA4
  loc_B61E62: ILdRf var_104
  loc_B61E65: LitStr "Municipalidad de Malargüe"
  loc_B61E68: EqStr
  loc_B61E6A: BranchT loc_B61EA4
  loc_B61E6D: ILdRf var_104
  loc_B61E70: LitStr "Municipalidad de Lavalle"
  loc_B61E73: EqStr
  loc_B61E75: BranchT loc_B61EA4
  loc_B61E78: ILdRf var_104
  loc_B61E7B: LitStr "Municipalidad de Rivadavia"
  loc_B61E7E: EqStr
  loc_B61E80: BranchT loc_B61EA4
  loc_B61E83: ILdRf var_104
  loc_B61E86: LitStr "Municipalidad de General Alvear"
  loc_B61E89: EqStr
  loc_B61E8B: BranchT loc_B61EA4
  loc_B61E8E: ILdRf var_104
  loc_B61E91: LitStr "Municipalidad de Tunuyán"
  loc_B61E94: EqStr
  loc_B61E96: BranchT loc_B61EA4
  loc_B61E99: ILdRf var_104
  loc_B61E9C: LitStr "Municipalidad de Tupungato"
  loc_B61E9F: EqStr
  loc_B61EA1: BranchF loc_B61F28
  loc_B61EA4: LitI4 0
  loc_B61EA9: LitI4 3
  loc_B61EAE: FLdRfVar var_8C
  loc_B61EB1: Redim
  loc_B61EBB: LitVarStr var_9C, "1"
  loc_B61EC0: LitI4 0
  loc_B61EC5: ILdRf var_8C
  loc_B61EC8: Ary1StVarCopy
  loc_B61ECA: LitVarStr var_AC, "2"
  loc_B61ECF: LitI4 1
  loc_B61ED4: ILdRf var_8C
  loc_B61ED7: Ary1StVarCopy
  loc_B61ED9: LitVarStr var_BC, "3"
  loc_B61EDE: LitI4 2
  loc_B61EE3: ILdRf var_8C
  loc_B61EE6: Ary1StVarCopy
  loc_B61EE8: LitVarStr var_CC, "4"
  loc_B61EED: LitI4 3
  loc_B61EF2: ILdRf var_8C
  loc_B61EF5: Ary1StVarCopy
  loc_B61EF7: FLdRfVar var_8C
  loc_B61EFA: FLdPr Me
  loc_B61EFD: MemLdRfVar from_stack_1.global_92
  loc_B61F00: NewIfNullRf
  loc_B61F04: ImpAdLdI2 MemVar_C3D064
  loc_B61F07: LitI2_Byte &HFF
  loc_B61F09: ILdRf var_88
  loc_B61F0C: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B61F11: FStStr var_E0
  loc_B61F14: FLdRfVar var_8C
  loc_B61F17: Erase
  loc_B61F18: ILdRf var_E0
  loc_B61F1B: FLdPr Me
  loc_B61F1E: MemStStrCopy
  loc_B61F22: FFree1Str var_E0
  loc_B61F25: Branch loc_B61FC3
  loc_B61F28: ILdRf var_104
  loc_B61F2B: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B61F2E: EqStr
  loc_B61F30: BranchF loc_B61FC3
  loc_B61F33: LitI4 0
  loc_B61F38: LitI4 4
  loc_B61F3D: FLdRfVar var_8C
  loc_B61F40: Redim
  loc_B61F4A: LitVarStr var_9C, "1"
  loc_B61F4F: LitI4 0
  loc_B61F54: ILdRf var_8C
  loc_B61F57: Ary1StVarCopy
  loc_B61F59: LitVarStr var_AC, "2"
  loc_B61F5E: LitI4 1
  loc_B61F63: ILdRf var_8C
  loc_B61F66: Ary1StVarCopy
  loc_B61F68: LitVarStr var_BC, "3"
  loc_B61F6D: LitI4 2
  loc_B61F72: ILdRf var_8C
  loc_B61F75: Ary1StVarCopy
  loc_B61F77: LitVarStr var_CC, "4"
  loc_B61F7C: LitI4 3
  loc_B61F81: ILdRf var_8C
  loc_B61F84: Ary1StVarCopy
  loc_B61F86: LitVarStr var_DC, "9"
  loc_B61F8B: LitI4 4
  loc_B61F90: ILdRf var_8C
  loc_B61F93: Ary1StVarCopy
  loc_B61F95: FLdRfVar var_8C
  loc_B61F98: FLdPr Me
  loc_B61F9B: MemLdRfVar from_stack_1.global_92
  loc_B61F9E: NewIfNullRf
  loc_B61FA2: ImpAdLdI2 MemVar_C3D064
  loc_B61FA5: LitI2_Byte &HFF
  loc_B61FA7: ILdRf var_88
  loc_B61FAA: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B61FAF: FStStr var_E0
  loc_B61FB2: FLdRfVar var_8C
  loc_B61FB5: Erase
  loc_B61FB6: ILdRf var_E0
  loc_B61FB9: FLdPr Me
  loc_B61FBC: MemStStrCopy
  loc_B61FC0: FFree1Str var_E0
  loc_B61FC3: Branch loc_B62572
  loc_B61FC6: ILdRf var_100
  loc_B61FC9: LitStr "32"
  loc_B61FCC: EqStr
  loc_B61FCE: BranchF loc_B62087
  loc_B61FD1: LitStr "Municipalidad de Guaymallén"
  loc_B61FD4: FStStrCopy var_108
  loc_B61FD7: ILdRf var_108
  loc_B61FDA: LitStr "Municipalidad de Maipú"
  loc_B61FDD: EqStr
  loc_B61FDF: BranchT loc_B62003
  loc_B61FE2: ILdRf var_108
  loc_B61FE5: LitStr "Municipalidad de San Carlos"
  loc_B61FE8: EqStr
  loc_B61FEA: BranchT loc_B62003
  loc_B61FED: ILdRf var_108
  loc_B61FF0: LitStr "Municipalidad de La Paz"
  loc_B61FF3: EqStr
  loc_B61FF5: BranchT loc_B62003
  loc_B61FF8: ILdRf var_108
  loc_B61FFB: LitStr "Municipalidad de Santa Rosa"
  loc_B61FFE: EqStr
  loc_B62000: BranchF loc_B62084
  loc_B62003: LitI4 0
  loc_B62008: LitI4 3
  loc_B6200D: FLdRfVar var_8C
  loc_B62010: Redim
  loc_B6201A: LitVarStr var_9C, "1"
  loc_B6201F: LitI4 0
  loc_B62024: ILdRf var_8C
  loc_B62027: Ary1StVarCopy
  loc_B62029: LitVarStr var_AC, "2"
  loc_B6202E: LitI4 1
  loc_B62033: ILdRf var_8C
  loc_B62036: Ary1StVarCopy
  loc_B62038: LitVarStr var_BC, "3"
  loc_B6203D: LitI4 2
  loc_B62042: ILdRf var_8C
  loc_B62045: Ary1StVarCopy
  loc_B62047: LitVarStr var_CC, "4"
  loc_B6204C: LitI4 3
  loc_B62051: ILdRf var_8C
  loc_B62054: Ary1StVarCopy
  loc_B62056: FLdRfVar var_8C
  loc_B62059: FLdPr Me
  loc_B6205C: MemLdRfVar from_stack_1.global_92
  loc_B6205F: NewIfNullRf
  loc_B62063: ImpAdLdI2 MemVar_C3D064
  loc_B62066: LitI2_Byte &HFF
  loc_B62068: ILdRf var_88
  loc_B6206B: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B62070: FStStr var_E0
  loc_B62073: FLdRfVar var_8C
  loc_B62076: Erase
  loc_B62077: ILdRf var_E0
  loc_B6207A: FLdPr Me
  loc_B6207D: MemStStrCopy
  loc_B62081: FFree1Str var_E0
  loc_B62084: Branch loc_B62572
  loc_B62087: ILdRf var_100
  loc_B6208A: LitStr "34"
  loc_B6208D: EqStr
  loc_B6208F: BranchF loc_B62121
  loc_B62092: LitStr "Municipalidad de Guaymallén"
  loc_B62095: LitStr "Municipalidad de General Alvear"
  loc_B62098: EqStr
  loc_B6209A: BranchF loc_B6211E
  loc_B6209D: LitI4 0
  loc_B620A2: LitI4 3
  loc_B620A7: FLdRfVar var_8C
  loc_B620AA: Redim
  loc_B620B4: LitVarStr var_9C, "1"
  loc_B620B9: LitI4 0
  loc_B620BE: ILdRf var_8C
  loc_B620C1: Ary1StVarCopy
  loc_B620C3: LitVarStr var_AC, "2"
  loc_B620C8: LitI4 1
  loc_B620CD: ILdRf var_8C
  loc_B620D0: Ary1StVarCopy
  loc_B620D2: LitVarStr var_BC, "3"
  loc_B620D7: LitI4 2
  loc_B620DC: ILdRf var_8C
  loc_B620DF: Ary1StVarCopy
  loc_B620E1: LitVarStr var_CC, "4"
  loc_B620E6: LitI4 3
  loc_B620EB: ILdRf var_8C
  loc_B620EE: Ary1StVarCopy
  loc_B620F0: FLdRfVar var_8C
  loc_B620F3: FLdPr Me
  loc_B620F6: MemLdRfVar from_stack_1.global_92
  loc_B620F9: NewIfNullRf
  loc_B620FD: ImpAdLdI2 MemVar_C3D064
  loc_B62100: LitI2_Byte &HFF
  loc_B62102: ILdRf var_88
  loc_B62105: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B6210A: FStStr var_E0
  loc_B6210D: FLdRfVar var_8C
  loc_B62110: Erase
  loc_B62111: ILdRf var_E0
  loc_B62114: FLdPr Me
  loc_B62117: MemStStrCopy
  loc_B6211B: FFree1Str var_E0
  loc_B6211E: Branch loc_B62572
  loc_B62121: ILdRf var_100
  loc_B62124: LitStr "50"
  loc_B62127: EqStr
  loc_B62129: BranchF loc_B621CA
  loc_B6212C: LitStr "Municipalidad de Guaymallén"
  loc_B6212F: LitStr "Municipalidad de Guaymallén"
  loc_B62132: EqStr
  loc_B62134: BranchF loc_B621C7
  loc_B62137: LitI4 0
  loc_B6213C: LitI4 4
  loc_B62141: FLdRfVar var_8C
  loc_B62144: Redim
  loc_B6214E: LitVarStr var_9C, "1"
  loc_B62153: LitI4 0
  loc_B62158: ILdRf var_8C
  loc_B6215B: Ary1StVarCopy
  loc_B6215D: LitVarStr var_AC, "2"
  loc_B62162: LitI4 1
  loc_B62167: ILdRf var_8C
  loc_B6216A: Ary1StVarCopy
  loc_B6216C: LitVarStr var_BC, "3"
  loc_B62171: LitI4 2
  loc_B62176: ILdRf var_8C
  loc_B62179: Ary1StVarCopy
  loc_B6217B: LitVarStr var_CC, "4"
  loc_B62180: LitI4 3
  loc_B62185: ILdRf var_8C
  loc_B62188: Ary1StVarCopy
  loc_B6218A: LitVarStr var_DC, "5"
  loc_B6218F: LitI4 4
  loc_B62194: ILdRf var_8C
  loc_B62197: Ary1StVarCopy
  loc_B62199: FLdRfVar var_8C
  loc_B6219C: FLdPr Me
  loc_B6219F: MemLdRfVar from_stack_1.global_92
  loc_B621A2: NewIfNullRf
  loc_B621A6: ImpAdLdI2 MemVar_C3D064
  loc_B621A9: LitI2_Byte &HFF
  loc_B621AB: ILdRf var_88
  loc_B621AE: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B621B3: FStStr var_E0
  loc_B621B6: FLdRfVar var_8C
  loc_B621B9: Erase
  loc_B621BA: ILdRf var_E0
  loc_B621BD: FLdPr Me
  loc_B621C0: MemStStrCopy
  loc_B621C4: FFree1Str var_E0
  loc_B621C7: Branch loc_B62572
  loc_B621CA: ILdRf var_100
  loc_B621CD: LitStr "51"
  loc_B621D0: EqStr
  loc_B621D2: BranchF loc_B62264
  loc_B621D5: LitStr "Municipalidad de Guaymallén"
  loc_B621D8: LitStr "Municipalidad de Guaymallén"
  loc_B621DB: EqStr
  loc_B621DD: BranchF loc_B62261
  loc_B621E0: LitI4 0
  loc_B621E5: LitI4 3
  loc_B621EA: FLdRfVar var_8C
  loc_B621ED: Redim
  loc_B621F7: LitVarStr var_9C, "1"
  loc_B621FC: LitI4 0
  loc_B62201: ILdRf var_8C
  loc_B62204: Ary1StVarCopy
  loc_B62206: LitVarStr var_AC, "2"
  loc_B6220B: LitI4 1
  loc_B62210: ILdRf var_8C
  loc_B62213: Ary1StVarCopy
  loc_B62215: LitVarStr var_BC, "3"
  loc_B6221A: LitI4 2
  loc_B6221F: ILdRf var_8C
  loc_B62222: Ary1StVarCopy
  loc_B62224: LitVarStr var_CC, "4"
  loc_B62229: LitI4 3
  loc_B6222E: ILdRf var_8C
  loc_B62231: Ary1StVarCopy
  loc_B62233: FLdRfVar var_8C
  loc_B62236: FLdPr Me
  loc_B62239: MemLdRfVar from_stack_1.global_92
  loc_B6223C: NewIfNullRf
  loc_B62240: ImpAdLdI2 MemVar_C3D064
  loc_B62243: LitI2_Byte &HFF
  loc_B62245: ILdRf var_88
  loc_B62248: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B6224D: FStStr var_E0
  loc_B62250: FLdRfVar var_8C
  loc_B62253: Erase
  loc_B62254: ILdRf var_E0
  loc_B62257: FLdPr Me
  loc_B6225A: MemStStrCopy
  loc_B6225E: FFree1Str var_E0
  loc_B62261: Branch loc_B62572
  loc_B62264: ILdRf var_100
  loc_B62267: LitStr "54"
  loc_B6226A: EqStr
  loc_B6226C: BranchF loc_B622E0
  loc_B6226F: LitStr "Municipalidad de Guaymallén"
  loc_B62272: LitStr "Municipalidad de Guaymallén"
  loc_B62275: EqStr
  loc_B62277: BranchF loc_B622DD
  loc_B6227A: LitI4 0
  loc_B6227F: LitI4 1
  loc_B62284: FLdRfVar var_8C
  loc_B62287: Redim
  loc_B62291: LitVarStr var_9C, "1120"
  loc_B62296: LitI4 0
  loc_B6229B: ILdRf var_8C
  loc_B6229E: Ary1StVarCopy
  loc_B622A0: LitVarStr var_AC, "2"
  loc_B622A5: LitI4 1
  loc_B622AA: ILdRf var_8C
  loc_B622AD: Ary1StVarCopy
  loc_B622AF: FLdRfVar var_8C
  loc_B622B2: FLdPr Me
  loc_B622B5: MemLdRfVar from_stack_1.global_92
  loc_B622B8: NewIfNullRf
  loc_B622BC: ImpAdLdI2 MemVar_C3D064
  loc_B622BF: LitI2_Byte &HFF
  loc_B622C1: ILdRf var_88
  loc_B622C4: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B622C9: FStStr var_E0
  loc_B622CC: FLdRfVar var_8C
  loc_B622CF: Erase
  loc_B622D0: ILdRf var_E0
  loc_B622D3: FLdPr Me
  loc_B622D6: MemStStrCopy
  loc_B622DA: FFree1Str var_E0
  loc_B622DD: Branch loc_B62572
  loc_B622E0: ILdRf var_100
  loc_B622E3: LitStr "55"
  loc_B622E6: EqStr
  loc_B622E8: BranchF loc_B6237A
  loc_B622EB: LitStr "Municipalidad de Guaymallén"
  loc_B622EE: LitStr "Municipalidad de Guaymallén"
  loc_B622F1: EqStr
  loc_B622F3: BranchF loc_B62377
  loc_B622F6: LitI4 0
  loc_B622FB: LitI4 3
  loc_B62300: FLdRfVar var_8C
  loc_B62303: Redim
  loc_B6230D: LitVarStr var_9C, "1"
  loc_B62312: LitI4 0
  loc_B62317: ILdRf var_8C
  loc_B6231A: Ary1StVarCopy
  loc_B6231C: LitVarStr var_AC, "2"
  loc_B62321: LitI4 1
  loc_B62326: ILdRf var_8C
  loc_B62329: Ary1StVarCopy
  loc_B6232B: LitVarStr var_BC, "3"
  loc_B62330: LitI4 2
  loc_B62335: ILdRf var_8C
  loc_B62338: Ary1StVarCopy
  loc_B6233A: LitVarStr var_CC, "4"
  loc_B6233F: LitI4 3
  loc_B62344: ILdRf var_8C
  loc_B62347: Ary1StVarCopy
  loc_B62349: FLdRfVar var_8C
  loc_B6234C: FLdPr Me
  loc_B6234F: MemLdRfVar from_stack_1.global_92
  loc_B62352: NewIfNullRf
  loc_B62356: ImpAdLdI2 MemVar_C3D064
  loc_B62359: LitI2_Byte &HFF
  loc_B6235B: ILdRf var_88
  loc_B6235E: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B62363: FStStr var_E0
  loc_B62366: FLdRfVar var_8C
  loc_B62369: Erase
  loc_B6236A: ILdRf var_E0
  loc_B6236D: FLdPr Me
  loc_B62370: MemStStrCopy
  loc_B62374: FFree1Str var_E0
  loc_B62377: Branch loc_B62572
  loc_B6237A: ILdRf var_100
  loc_B6237D: LitStr "57"
  loc_B62380: EqStr
  loc_B62382: BranchF loc_B62414
  loc_B62385: LitStr "Municipalidad de Guaymallén"
  loc_B62388: LitStr "Municipalidad de Guaymallén"
  loc_B6238B: EqStr
  loc_B6238D: BranchF loc_B62411
  loc_B62390: LitI4 0
  loc_B62395: LitI4 3
  loc_B6239A: FLdRfVar var_8C
  loc_B6239D: Redim
  loc_B623A7: LitVarStr var_9C, "1"
  loc_B623AC: LitI4 0
  loc_B623B1: ILdRf var_8C
  loc_B623B4: Ary1StVarCopy
  loc_B623B6: LitVarStr var_AC, "2"
  loc_B623BB: LitI4 1
  loc_B623C0: ILdRf var_8C
  loc_B623C3: Ary1StVarCopy
  loc_B623C5: LitVarStr var_BC, "3"
  loc_B623CA: LitI4 2
  loc_B623CF: ILdRf var_8C
  loc_B623D2: Ary1StVarCopy
  loc_B623D4: LitVarStr var_CC, "4"
  loc_B623D9: LitI4 3
  loc_B623DE: ILdRf var_8C
  loc_B623E1: Ary1StVarCopy
  loc_B623E3: FLdRfVar var_8C
  loc_B623E6: FLdPr Me
  loc_B623E9: MemLdRfVar from_stack_1.global_92
  loc_B623EC: NewIfNullRf
  loc_B623F0: ImpAdLdI2 MemVar_C3D064
  loc_B623F3: LitI2_Byte &HFF
  loc_B623F5: ILdRf var_88
  loc_B623F8: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B623FD: FStStr var_E0
  loc_B62400: FLdRfVar var_8C
  loc_B62403: Erase
  loc_B62404: ILdRf var_E0
  loc_B62407: FLdPr Me
  loc_B6240A: MemStStrCopy
  loc_B6240E: FFree1Str var_E0
  loc_B62411: Branch loc_B62572
  loc_B62414: ILdRf var_100
  loc_B62417: LitStr "58"
  loc_B6241A: EqStr
  loc_B6241C: BranchF loc_B6249F
  loc_B6241F: LitStr "Municipalidad de Guaymallén"
  loc_B62422: LitStr "Municipalidad de Guaymallén"
  loc_B62425: EqStr
  loc_B62427: BranchF loc_B6249C
  loc_B6242A: LitI4 0
  loc_B6242F: LitI4 2
  loc_B62434: FLdRfVar var_8C
  loc_B62437: Redim
  loc_B62441: LitVarStr var_9C, "1"
  loc_B62446: LitI4 0
  loc_B6244B: ILdRf var_8C
  loc_B6244E: Ary1StVarCopy
  loc_B62450: LitVarStr var_AC, "5"
  loc_B62455: LitI4 1
  loc_B6245A: ILdRf var_8C
  loc_B6245D: Ary1StVarCopy
  loc_B6245F: LitVarStr var_BC, "7"
  loc_B62464: LitI4 2
  loc_B62469: ILdRf var_8C
  loc_B6246C: Ary1StVarCopy
  loc_B6246E: FLdRfVar var_8C
  loc_B62471: FLdPr Me
  loc_B62474: MemLdRfVar from_stack_1.global_92
  loc_B62477: NewIfNullRf
  loc_B6247B: ImpAdLdI2 MemVar_C3D064
  loc_B6247E: LitI2_Byte &HFF
  loc_B62480: ILdRf var_88
  loc_B62483: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B62488: FStStr var_E0
  loc_B6248B: FLdRfVar var_8C
  loc_B6248E: Erase
  loc_B6248F: ILdRf var_E0
  loc_B62492: FLdPr Me
  loc_B62495: MemStStrCopy
  loc_B62499: FFree1Str var_E0
  loc_B6249C: Branch loc_B62572
  loc_B6249F: ILdRf var_100
  loc_B624A2: LitStr "60"
  loc_B624A5: EqStr
  loc_B624A7: BranchF loc_B62572
  loc_B624AA: LitStr "Municipalidad de Guaymallén"
  loc_B624AD: LitStr "Municipalidad de Guaymallén"
  loc_B624B0: EqStr
  loc_B624B2: BranchF loc_B62572
  loc_B624B5: LitI4 0
  loc_B624BA: LitI4 7
  loc_B624BF: FLdRfVar var_8C
  loc_B624C2: Redim
  loc_B624CC: LitVarStr var_9C, "1"
  loc_B624D1: LitI4 0
  loc_B624D6: ILdRf var_8C
  loc_B624D9: Ary1StVarCopy
  loc_B624DB: LitVarStr var_AC, "2"
  loc_B624E0: LitI4 1
  loc_B624E5: ILdRf var_8C
  loc_B624E8: Ary1StVarCopy
  loc_B624EA: LitVarStr var_BC, "3"
  loc_B624EF: LitI4 2
  loc_B624F4: ILdRf var_8C
  loc_B624F7: Ary1StVarCopy
  loc_B624F9: LitVarStr var_CC, "4"
  loc_B624FE: LitI4 3
  loc_B62503: ILdRf var_8C
  loc_B62506: Ary1StVarCopy
  loc_B62508: LitVarStr var_DC, "5"
  loc_B6250D: LitI4 4
  loc_B62512: ILdRf var_8C
  loc_B62515: Ary1StVarCopy
  loc_B62517: LitVarStr var_118, "6"
  loc_B6251C: LitI4 5
  loc_B62521: ILdRf var_8C
  loc_B62524: Ary1StVarCopy
  loc_B62526: LitVarStr var_128, "7"
  loc_B6252B: LitI4 6
  loc_B62530: ILdRf var_8C
  loc_B62533: Ary1StVarCopy
  loc_B62535: LitVarStr var_138, "8"
  loc_B6253A: LitI4 7
  loc_B6253F: ILdRf var_8C
  loc_B62542: Ary1StVarCopy
  loc_B62544: FLdRfVar var_8C
  loc_B62547: FLdPr Me
  loc_B6254A: MemLdRfVar from_stack_1.global_92
  loc_B6254D: NewIfNullRf
  loc_B62551: ImpAdLdI2 MemVar_C3D064
  loc_B62554: LitI2_Byte &HFF
  loc_B62556: ILdRf var_88
  loc_B62559: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B6255E: FStStr var_E0
  loc_B62561: FLdRfVar var_8C
  loc_B62564: Erase
  loc_B62565: ILdRf var_E0
  loc_B62568: FLdPr Me
  loc_B6256B: MemStStrCopy
  loc_B6256F: FFree1Str var_E0
  loc_B62572: LitVarStr var_9C, vbNullString
  loc_B62577: PopAdLdVar
  loc_B62578: FLdPr Me
  loc_B6257B: VCallAd Control_ID_DetaAsieFlex
  loc_B6257E: FStAdFunc var_E4
  loc_B62581: FLdPr var_E4
  loc_B62584: LateIdSt
  loc_B62589: FFree1Ad var_E4
  loc_B6258C: FLdPr Me
  loc_B6258F: MemLdStr global_60
  loc_B62592: LitStr vbNullString
  loc_B62595: NeStr
  loc_B62597: BranchF loc_B62652
  loc_B6259A: LitI4 0
  loc_B6259F: FLdPr Me
  loc_B625A2: MemLdStr global_60
  loc_B625A5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B625AA: FLdPr Me
  loc_B625AD: VCallAd Control_ID_DetaAsieFlex
  loc_B625B0: FStAdFunc var_E4
  loc_B625B3: FLdPr var_E4
  loc_B625B6: LateIdLdVar var_FC DispID_10 0
  loc_B625BD: CI4Var
  loc_B625BF: CVarI4
  loc_B625C3: PopAdLdVar
  loc_B625C4: LitVarI4
  loc_B625CC: PopAdLdVar
  loc_B625CD: LitVarStr var_DC, vbNullString
  loc_B625D2: PopAdLdVar
  loc_B625D3: FLdPr Me
  loc_B625D6: VCallAd Control_ID_DetaAsieFlex
  loc_B625D9: FStAdFunc var_E8
  loc_B625DC: FLdPr var_E8
  loc_B625DF: LateIdCallSt
  loc_B625E7: FFreeAd var_E4 = ""
  loc_B625EE: FFree1Var var_FC = ""
  loc_B625F1: FLdPr Me
  loc_B625F4: VCallAd Control_ID_DetaAsieFlex
  loc_B625F7: FStAdFunc var_E4
  loc_B625FA: FLdPr var_E4
  loc_B625FD: LateIdLdVar var_FC DispID_10 0
  loc_B62604: CI4Var
  loc_B62606: CVarI4
  loc_B6260A: PopAdLdVar
  loc_B6260B: LitVarI4
  loc_B62613: PopAdLdVar
  loc_B62614: LitVarStr var_DC, vbNullString
  loc_B62619: PopAdLdVar
  loc_B6261A: FLdPr Me
  loc_B6261D: VCallAd Control_ID_DetaAsieFlex
  loc_B62620: FStAdFunc var_E8
  loc_B62623: FLdPr var_E8
  loc_B62626: LateIdCallSt
  loc_B6262E: FFreeAd var_E4 = ""
  loc_B62635: FFree1Var var_FC = ""
  loc_B62638: FLdPr Me
  loc_B6263B: VCallAd Control_ID_DetaAsieFlex
  loc_B6263E: FStAdFunc var_E4
  loc_B62641: FLdPr var_E4
  loc_B62644: LateIdCall
  loc_B6264C: FFree1Ad var_E4
  loc_B6264F: Branch loc_B626F1
  loc_B62652: FLdPr Me
  loc_B62655: VCallAd Control_ID_FechAsieMsk
  loc_B62658: FStAdFunc var_E4
  loc_B6265B: FLdPr var_E4
  loc_B6265E: LateIdLdVar var_FC DispID_15 0
  loc_B62665: CStrVarTmp
  loc_B62666: PopTmpLdAdStr
  loc_B6266A: FLdPr Me
  loc_B6266D: MemLdRfVar from_stack_1.global_92
  loc_B62670: NewIfNullRf
  loc_B62674: ILdRf var_88
  loc_B62677: ImpAdLdI2 MemVar_C3D064
  loc_B6267A: CStrUI1
  loc_B6267C: FStStrNoPop var_E0
  loc_B6267F: ImpAdCallI2 Proc_259_8_ACF238(, , , )
  loc_B62684: FFreeStr var_E0 = ""
  loc_B6268B: FFree1Ad var_E4
  loc_B6268E: FFree1Var var_FC = ""
  loc_B62691: BranchF loc_B626F1
  loc_B62694: FLdPr Me
  loc_B62697: VCallAd Control_ID_DetaAsieFlex
  loc_B6269A: FStAdFunc var_E4
  loc_B6269D: FLdPr var_E4
  loc_B626A0: LateIdLdVar var_FC DispID_10 0
  loc_B626A7: CI4Var
  loc_B626A9: CVarI4
  loc_B626AD: PopAdLdVar
  loc_B626AE: LitVarI4
  loc_B626B6: PopAdLdVar
  loc_B626B7: FLdRfVar var_E0
  loc_B626BA: FLdPr Me
  loc_B626BD: MemLdRfVar from_stack_1.global_92
  loc_B626C0: NewIfNullPr tblcuentacontable
  loc_B626C3: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_B626C8: FLdZeroAd var_E0
  loc_B626CB: CVarStr var_14C
  loc_B626CE: PopAdLdVar
  loc_B626CF: FLdPr Me
  loc_B626D2: VCallAd Control_ID_DetaAsieFlex
  loc_B626D5: FStAdFunc var_E8
  loc_B626D8: FLdPr var_E8
  loc_B626DB: LateIdCallSt
  loc_B626E3: FFreeAd var_E4 = ""
  loc_B626EA: FFreeVar var_FC = ""
  loc_B626F1: ExitProcHresult
End Function
