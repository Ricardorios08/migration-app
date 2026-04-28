VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmRecaudadorABM
  Caption = "Recaudador"
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmRecaudadorABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 8592
  ClientHeight = 6516
  Begin VB.Frame Frame1
    Left = 120
    Top = 3960
    Width = 8280
    Height = 2280
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
    Begin VB.TextBox MatrRecaTxt
      Left = 1650
      Top = 1440
      Width = 1455
      Height = 420
      TabIndex = 8
      MaxLength = 8
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
    Begin VB.TextBox DetaRecaTxt
      Left = 1650
      Top = 885
      Width = 6135
      Height = 420
      TabIndex = 2
      MaxLength = 40
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
    Begin VB.TextBox CodiRecaTxt
      Left = 1650
      Top = 405
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 3
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
    Begin VB.Label Label1
      Caption = "Matricula:"
      Left = 510
      Top = 1440
      Width = 1020
      Height = 300
      TabIndex = 9
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
    Begin VB.Label Label3
      Caption = "Recaudador:"
      Left = 150
      Top = 885
      Width = 1380
      Height = 300
      TabIndex = 5
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
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 720
      Top = 405
      Width = 810
      Height = 300
      TabIndex = 4
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 780
    Width = 8280
    Height = 3075
    TabIndex = 0
    OleObjectBlob = "frmRecaudadorABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmRecaudadorABM.frx":3436
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 8592
    Height = 636
    TabIndex = 6
    OleObjectBlob = "frmRecaudadorABM.frx":AFB4
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 7
      TabStop = 0   'False
      Picture = "frmRecaudadorABM.frx":B510
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmRecaudadorABM"


Private Sub DetaRecaTxt_GotFocus() '9BD230
  'Data Table: 440700
  loc_9BD21C: FLdPr Me
  loc_9BD21F: VCallAd Control_ID_DetaRecaTxt
  loc_9BD222: CVarAd
  loc_9BD226: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD22B: FFree1Var var_94 = ""
  loc_9BD22E: ExitProcHresult
End Sub

Private Sub DetaRecaTxt_Validate(Cancel As Boolean) 'A900C0
  'Data Table: 440700
  loc_A90020: FLdRfVar var_8A
  loc_A90023: FLdPr Me
  loc_A90026: VCallAd Control_ID_cmdCancelar
  loc_A90029: FStAdFunc var_88
  loc_A9002C: FLdPr var_88
  loc_A9002F:  = Me.Value
  loc_A90034: FLdI2 var_8A
  loc_A90037: NotI4
  loc_A90038: FLdRfVar var_92
  loc_A9003B: FLdPr Me
  loc_A9003E: VCallAd Control_ID_DetaRecaTxt
  loc_A90041: FStAdFunc var_90
  loc_A90044: FLdPr var_90
  loc_A90047:  = Me.Enabled
  loc_A9004C: FLdI2 var_92
  loc_A9004F: AndI4
  loc_A90050: FFreeAd var_88 = ""
  loc_A90057: BranchF loc_A900BD
  loc_A9005A: FLdRfVar var_98
  loc_A9005D: FLdPr Me
  loc_A90060: VCallAd Control_ID_DetaRecaTxt
  loc_A90063: FStAdFunc var_88
  loc_A90066: FLdPr var_88
  loc_A90069:  = Me.Text
  loc_A9006E: ILdRf var_98
  loc_A90071: LitStr "recaudador"
  loc_A90074: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90079: FStStrNoPop var_9C
  loc_A9007C: FLdPr Me
  loc_A9007F: MemStStrCopy
  loc_A90083: FFreeStr var_98 = ""
  loc_A9008A: FFree1Ad var_88
  loc_A9008D: FLdPr Me
  loc_A90090: MemLdStr global_60
  loc_A90093: LitStr vbNullString
  loc_A90096: NeStr
  loc_A90098: BranchF loc_A900BD
  loc_A9009B: FLdPr Me
  loc_A9009E: MemLdStr global_60
  loc_A900A1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A900A6: FLdPr Me
  loc_A900A9: VCallAd Control_ID_DetaRecaTxt
  loc_A900AC: CVarAd
  loc_A900B0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A900B5: FFree1Var var_AC = ""
  loc_A900B8: LitI2_Byte &HFF
  loc_A900BA: IStI2 Cancel
  loc_A900BD: ExitProcHresult
  loc_A900BE: NotI4
End Sub

Private Sub Form_Load() 'AC2128
  'Data Table: 440700
  loc_AC202C: LitI2_Byte 0
  loc_AC202E: CR8I2
  loc_AC202F: PopFPR4
  loc_AC2030: FLdPr Me
  loc_AC2033: Me.Left = from_stack_1s
  loc_AC2038: LitI2_Byte 0
  loc_AC203A: CR8I2
  loc_AC203B: PopFPR4
  loc_AC203C: FLdPr Me
  loc_AC203F: Me.Top = from_stack_1s
  loc_AC2044: LitStr "SELECT * FROM recaudador ORDER BY CodiReca"
  loc_AC2047: FLdPr Me
  loc_AC204A: MemLdRfVar from_stack_1.global_52
  loc_AC204D: NewIfNullPr clsrecaudador
  loc_AC2050: Call clsrecaudador.RedefineRS(from_stack_1v)
  loc_AC2055: LitStr "CodiReca"
  loc_AC2058: FLdPr Me
  loc_AC205B: VCallAd Control_ID_CodiRecaTxt
  loc_AC205E: FStAdFunc var_88
  loc_AC2061: FLdPr var_88
  loc_AC2064: Me.DataField = from_stack_1
  loc_AC2069: FFree1Ad var_88
  loc_AC206C: LitStr "DetaReca"
  loc_AC206F: FLdPr Me
  loc_AC2072: VCallAd Control_ID_DetaRecaTxt
  loc_AC2075: FStAdFunc var_88
  loc_AC2078: FLdPr var_88
  loc_AC207B: Me.DataField = from_stack_1
  loc_AC2080: FFree1Ad var_88
  loc_AC2083: LitStr "MatrReca"
  loc_AC2086: FLdPr Me
  loc_AC2089: VCallAd Control_ID_MatrRecaTxt
  loc_AC208C: FStAdFunc var_88
  loc_AC208F: FLdPr var_88
  loc_AC2092: Me.DataField = from_stack_1
  loc_AC2097: FFree1Ad var_88
  loc_AC209A: LitI4 0
  loc_AC209F: LitI4 1
  loc_AC20A4: FLdRfVar var_8C
  loc_AC20A7: Redim
  loc_AC20B1: FLdPr Me
  loc_AC20B4: MemLdRfVar from_stack_1.global_52
  loc_AC20B7: NewIfNullAd
  loc_AC20BA: FStAd var_88 
  loc_AC20BE: FLdRfVar var_88
  loc_AC20C1: CVarRef
  loc_AC20C6: ParmAry1St
  loc_AC20CC: FLdPr Me
  loc_AC20CF: VCallAd Control_ID_dgdABMS
  loc_AC20D2: CVarAd
  loc_AC20D6: ParmAry1St
  loc_AC20DC: FLdRfVar var_8C
  loc_AC20DF: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AC20E4: ILdRf var_88
  loc_AC20E7: CastAd
  loc_AC20EA: FLdPr Me
  loc_AC20ED: MemStAdFunc
  loc_AC20F1: FLdRfVar var_8C
  loc_AC20F4: Erase
  loc_AC20F5: FFree1Ad var_88
  loc_AC20F8: Call EnlazaTodo()
  loc_AC20FD: ILdRf Me
  loc_AC2100: CastAd
  loc_AC2103: FStAdFunc var_88
  loc_AC2106: FLdRfVar var_88
  loc_AC2109: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AC210E: FFree1Ad var_88
  loc_AC2111: LitI2_Byte 0
  loc_AC2113: ILdRf Me
  loc_AC2116: CastAd
  loc_AC2119: FStAdFunc var_88
  loc_AC211C: FLdRfVar var_88
  loc_AC211F: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AC2124: FFree1Ad var_88
  loc_AC2127: ExitProcHresult
End Sub

Private Sub Form_Activate() '9B66F8
  'Data Table: 440700
  loc_9B66E8: FLdPr Me
  loc_9B66EB: MemLdRfVar from_stack_1.global_52
  loc_9B66EE: NewIfNullPr clsrecaudador
  loc_9B66F1: Call clsrecaudador.Requery()
  loc_9B66F6: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9DA11C
  'Data Table: 440700
  loc_9DA104: ILdI2 KeyCode
  loc_9DA107: ILdRf Me
  loc_9DA10A: CastAd
  loc_9DA10D: FStAdFunc var_88
  loc_9DA110: FLdRfVar var_88
  loc_9DA113: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9DA118: FFree1Ad var_88
  loc_9DA11B: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A9F47C
  'Data Table: 440700
  loc_A9F3D0: LitI2_Byte 0
  loc_A9F3D2: ILdRf Me
  loc_A9F3D5: CastAd
  loc_A9F3D8: FStAdFunc var_88
  loc_A9F3DB: FLdRfVar var_88
  loc_A9F3DE: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A9F3E3: FFree1Ad var_88
  loc_A9F3E6: LitI4 0
  loc_A9F3EB: LitI4 0
  loc_A9F3F0: FLdRfVar var_8C
  loc_A9F3F3: Redim
  loc_A9F3FD: FLdPr Me
  loc_A9F400: VCallAd Control_ID_dgdABMS
  loc_A9F403: CVarAd
  loc_A9F407: ParmAry1St
  loc_A9F40D: FLdRfVar var_8C
  loc_A9F410: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A9F415: FLdRfVar var_8C
  loc_A9F418: Erase
  loc_A9F419: FLdPr Me
  loc_A9F41C: MemLdRfVar from_stack_1.global_52
  loc_A9F41F: NewIfNullPr clsrecaudador
  loc_A9F422: Call clsrecaudador.Requery()
  loc_A9F427: FLdPr Me
  loc_A9F42A: MemLdI2 global_56
  loc_A9F42D: LitI2_Byte 2
  loc_A9F42F: EqI2
  loc_A9F430: BranchF loc_A9F45F
  loc_A9F433: FLdRfVar var_A0
  loc_A9F436: FLdPr Me
  loc_A9F439: VCallAd Control_ID_CodiRecaTxt
  loc_A9F43C: FStAdFunc var_88
  loc_A9F43F: FLdPr var_88
  loc_A9F442:  = Me.Text
  loc_A9F447: ILdRf var_A0
  loc_A9F44A: CI4Str
  loc_A9F44B: FLdPr Me
  loc_A9F44E: MemLdRfVar from_stack_1.global_52
  loc_A9F451: NewIfNullPr clsrecaudador
  loc_A9F454: Call clsrecaudador.Encontrar(from_stack_1v)
  loc_A9F459: FFree1Str var_A0
  loc_A9F45C: FFree1Ad var_88
  loc_A9F45F: Call EnlazaTodo()
  loc_A9F464: ILdRf Me
  loc_A9F467: CastAd
  loc_A9F46A: FStAdFunc var_88
  loc_A9F46D: FLdRfVar var_88
  loc_A9F470: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A9F475: FFree1Ad var_88
  loc_A9F478: ExitProcHresult
End Sub

Private Sub MatrRecaTxt_GotFocus() '9BCFF0
  'Data Table: 440700
  loc_9BCFDC: FLdPr Me
  loc_9BCFDF: VCallAd Control_ID_MatrRecaTxt
  loc_9BCFE2: CVarAd
  loc_9BCFE6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCFEB: FFree1Var var_94 = ""
  loc_9BCFEE: ExitProcHresult
End Sub

Private Sub MatrRecaTxt_KeyPress(KeyAscii As Integer) '9DAA04
  'Data Table: 440700
  loc_9DA9EC: LitStr "0123456789"
  loc_9DA9EF: FStStrCopy var_88
  loc_9DA9F2: FLdRfVar var_88
  loc_9DA9F5: ILdRf KeyAscii
  loc_9DA9F8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA9FD: IStI2 KeyAscii
  loc_9DAA00: FFree1Str var_88
  loc_9DAA03: ExitProcHresult
End Sub

Private Sub MatrRecaTxt_Validate(Cancel As Boolean) 'A854E0
  'Data Table: 440700
  loc_A85454: FLdRfVar var_8A
  loc_A85457: FLdPr Me
  loc_A8545A: VCallAd Control_ID_MatrRecaTxt
  loc_A8545D: FStAdFunc var_88
  loc_A85460: FLdPr var_88
  loc_A85463:  = Me.Enabled
  loc_A85468: FLdI2 var_8A
  loc_A8546B: LitI2_Byte &HFF
  loc_A8546D: EqI2
  loc_A8546E: FFree1Ad var_88
  loc_A85471: BranchF loc_A854DC
  loc_A85474: FLdRfVar var_90
  loc_A85477: FLdPr Me
  loc_A8547A: VCallAd Control_ID_MatrRecaTxt
  loc_A8547D: FStAdFunc var_88
  loc_A85480: FLdPr var_88
  loc_A85483:  = Me.Text
  loc_A85488: LitI2_Byte 0
  loc_A8548A: LitI2_Byte 0
  loc_A8548C: ILdRf var_90
  loc_A8548F: LitStr "Matricula"
  loc_A85492: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A85497: FStStrNoPop var_94
  loc_A8549A: FLdPr Me
  loc_A8549D: MemStStrCopy
  loc_A854A1: FFreeStr var_90 = ""
  loc_A854A8: FFree1Ad var_88
  loc_A854AB: FLdPr Me
  loc_A854AE: MemLdStr global_60
  loc_A854B1: LitStr vbNullString
  loc_A854B4: NeStr
  loc_A854B6: BranchF loc_A854DC
  loc_A854B9: FLdPr Me
  loc_A854BC: MemLdStr global_60
  loc_A854BF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A854C4: FLdPr Me
  loc_A854C7: VCallAd Control_ID_MatrRecaTxt
  loc_A854CA: CVarAd
  loc_A854CE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A854D3: FFree1Var var_A4 = ""
  loc_A854D6: LitI2_Byte &HFF
  loc_A854D8: IStI2 Cancel
  loc_A854DB: ExitProcHresult
  loc_A854DC: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A66D18
  'Data Table: 440700
  loc_A66CBC: FLdRfVar var_B4
  loc_A66CBF: FLdRfVar var_B0
  loc_A66CC2: FLdI2 ColIndex
  loc_A66CC5: CVarI2 var_A8
  loc_A66CC8: PopAdLdVar
  loc_A66CC9: FLdPr Me
  loc_A66CCC: VCallAd Control_ID_dgdABMS
  loc_A66CCF: FStAdFunc var_88
  loc_A66CD2: FLdPr var_88
  loc_A66CD5: LateIdLdVar var_98 DispID_105 0
  loc_A66CDC: CastAdVar Me
  loc_A66CE0: FStAdFunc var_AC
  loc_A66CE3: FLdPr var_AC
  loc_A66CE6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66CEB: FLdPr var_B0
  loc_A66CEE:  = Me.DataField
  loc_A66CF3: FLdZeroAd var_B4
  loc_A66CF6: PopTmpLdAdStr
  loc_A66CFA: FLdPr Me
  loc_A66CFD: MemLdRfVar from_stack_1.global_52
  loc_A66D00: NewIfNullPr clsrecaudador
  loc_A66D03: Call clsrecaudador.Sort(from_stack_1v)
  loc_A66D08: FFree1Str var_B8
  loc_A66D0B: FFreeAd var_88 = "": var_AC = ""
  loc_A66D14: FFree1Var var_98 = ""
  loc_A66D17: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B8CD54
  'Data Table: 440700
  loc_B8C810: ILdRf Button
  loc_B8C813: FStAd var_88 
  loc_B8C817: FLdRfVar var_90
  loc_B8C81A: FLdPr var_88
  loc_B8C81D:  = Me.Key
  loc_B8C822: FLdZeroAd var_90
  loc_B8C825: FStStr var_94
  loc_B8C828: ILdRf var_94
  loc_B8C82B: LitStr "btnCrear"
  loc_B8C82E: EqStr
  loc_B8C830: BranchF loc_B8C91E
  loc_B8C833: LitI2_Byte 1
  loc_B8C835: FLdPr Me
  loc_B8C838: MemStI2 global_56
  loc_B8C83B: ILdRf Me
  loc_B8C83E: CastAd
  loc_B8C841: FStAdFunc var_98
  loc_B8C844: FLdRfVar var_98
  loc_B8C847: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8C84C: FFree1Ad var_98
  loc_B8C84F: LitI4 0
  loc_B8C854: LitI4 0
  loc_B8C859: FLdRfVar var_9C
  loc_B8C85C: Redim
  loc_B8C866: FLdPr Me
  loc_B8C869: VCallAd Control_ID_dgdABMS
  loc_B8C86C: CVarAd
  loc_B8C870: ParmAry1St
  loc_B8C876: FLdRfVar var_9C
  loc_B8C879: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8C87E: FLdRfVar var_9C
  loc_B8C881: Erase
  loc_B8C882: ILdRf Me
  loc_B8C885: CastAd
  loc_B8C888: FStAdFunc var_98
  loc_B8C88B: FLdRfVar var_98
  loc_B8C88E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8C893: FFree1Ad var_98
  loc_B8C896: ILdRf Me
  loc_B8C899: CastAd
  loc_B8C89C: FStAdFunc var_98
  loc_B8C89F: FLdRfVar var_98
  loc_B8C8A2: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B8C8A7: FFree1Ad var_98
  loc_B8C8AA: LitI2_Byte 0
  loc_B8C8AC: CStrUI1
  loc_B8C8AE: FStStrNoPop var_90
  loc_B8C8B1: FLdPr Me
  loc_B8C8B4: VCallAd Control_ID_CodiRecaTxt
  loc_B8C8B7: FStAdFunc var_98
  loc_B8C8BA: FLdPr var_98
  loc_B8C8BD: Me.Text = from_stack_1
  loc_B8C8C2: FFree1Str var_90
  loc_B8C8C5: FFree1Ad var_98
  loc_B8C8C8: LitI4 0
  loc_B8C8CD: LitI4 2
  loc_B8C8D2: FLdRfVar var_9C
  loc_B8C8D5: Redim
  loc_B8C8DF: FLdPr Me
  loc_B8C8E2: VCallAd Control_ID_CodiRecaTxt
  loc_B8C8E5: CVarAd
  loc_B8C8E9: ParmAry1St
  loc_B8C8EF: FLdPr Me
  loc_B8C8F2: VCallAd Control_ID_DetaRecaTxt
  loc_B8C8F5: CVarAd
  loc_B8C8F9: ParmAry1St
  loc_B8C8FF: FLdPr Me
  loc_B8C902: VCallAd Control_ID_MatrRecaTxt
  loc_B8C905: CVarAd
  loc_B8C909: ParmAry1St
  loc_B8C90F: FLdRfVar var_9C
  loc_B8C912: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8C917: FLdRfVar var_9C
  loc_B8C91A: Erase
  loc_B8C91B: Branch loc_B8CD53
  loc_B8C91E: ILdRf var_94
  loc_B8C921: LitStr "btnModificar"
  loc_B8C924: EqStr
  loc_B8C926: BranchF loc_B8C9EF
  loc_B8C929: FLdRfVar var_D0
  loc_B8C92C: FLdPr Me
  loc_B8C92F: MemLdRfVar from_stack_1.global_52
  loc_B8C932: NewIfNullPr clsrecaudador
  loc_B8C935: from_stack_1 = clsrecaudador.RecordCount
  loc_B8C93A: ILdRf var_D0
  loc_B8C93D: LitI4 0
  loc_B8C942: GtI4
  loc_B8C943: BranchF loc_B8C9EC
  loc_B8C946: LitI2_Byte 2
  loc_B8C948: FLdPr Me
  loc_B8C94B: MemStI2 global_56
  loc_B8C94E: ILdRf Me
  loc_B8C951: CastAd
  loc_B8C954: FStAdFunc var_98
  loc_B8C957: FLdRfVar var_98
  loc_B8C95A: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8C95F: FFree1Ad var_98
  loc_B8C962: LitI4 0
  loc_B8C967: LitI4 0
  loc_B8C96C: FLdRfVar var_9C
  loc_B8C96F: Redim
  loc_B8C979: FLdPr Me
  loc_B8C97C: VCallAd Control_ID_dgdABMS
  loc_B8C97F: CVarAd
  loc_B8C983: ParmAry1St
  loc_B8C989: FLdRfVar var_9C
  loc_B8C98C: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8C991: FLdRfVar var_9C
  loc_B8C994: Erase
  loc_B8C995: ILdRf Me
  loc_B8C998: CastAd
  loc_B8C99B: FStAdFunc var_98
  loc_B8C99E: FLdRfVar var_98
  loc_B8C9A1: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8C9A6: FFree1Ad var_98
  loc_B8C9A9: LitI4 0
  loc_B8C9AE: LitI4 1
  loc_B8C9B3: FLdRfVar var_9C
  loc_B8C9B6: Redim
  loc_B8C9C0: FLdPr Me
  loc_B8C9C3: VCallAd Control_ID_DetaRecaTxt
  loc_B8C9C6: CVarAd
  loc_B8C9CA: ParmAry1St
  loc_B8C9D0: FLdPr Me
  loc_B8C9D3: VCallAd Control_ID_MatrRecaTxt
  loc_B8C9D6: CVarAd
  loc_B8C9DA: ParmAry1St
  loc_B8C9E0: FLdRfVar var_9C
  loc_B8C9E3: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8C9E8: FLdRfVar var_9C
  loc_B8C9EB: Erase
  loc_B8C9EC: Branch loc_B8CD53
  loc_B8C9EF: ILdRf var_94
  loc_B8C9F2: LitStr "btnEliminar"
  loc_B8C9F5: EqStr
  loc_B8C9F7: BranchF loc_B8C9FD
  loc_B8C9FA: Branch loc_B8CD53
  loc_B8C9FD: ILdRf var_94
  loc_B8CA00: LitStr "btnGuardar"
  loc_B8CA03: EqStr
  loc_B8CA05: BranchF loc_B8CC4F
  loc_B8CA08: FLdPr Me
  loc_B8CA0B: MemLdI2 global_56
  loc_B8CA0E: FStI2 var_D2
  loc_B8CA11: FLdI2 var_D2
  loc_B8CA14: LitI2_Byte 1
  loc_B8CA16: EqI2
  loc_B8CA17: BranchF loc_B8CAE5
  loc_B8CA1A: LitI2_Byte &HFF
  loc_B8CA1C: PopTmpLdAd2 var_D4
  loc_B8CA1F: Call CodiRecaTxt_Validate(from_stack_1v)
  loc_B8CA24: FLdPr Me
  loc_B8CA27: MemLdStr global_60
  loc_B8CA2A: LitStr vbNullString
  loc_B8CA2D: NeStr
  loc_B8CA2F: BranchF loc_B8CA33
  loc_B8CA32: ExitProcHresult
  loc_B8CA33: LitI2_Byte &HFF
  loc_B8CA35: PopTmpLdAd2 var_D4
  loc_B8CA38: Call DetaRecaTxt_Validate(from_stack_1v)
  loc_B8CA3D: FLdPr Me
  loc_B8CA40: MemLdStr global_60
  loc_B8CA43: LitStr vbNullString
  loc_B8CA46: NeStr
  loc_B8CA48: BranchF loc_B8CA4C
  loc_B8CA4B: ExitProcHresult
  loc_B8CA4C: LitI2_Byte &HFF
  loc_B8CA4E: PopTmpLdAd2 var_D4
  loc_B8CA51: Call MatrRecaTxt_Validate(from_stack_1v)
  loc_B8CA56: FLdPr Me
  loc_B8CA59: MemLdStr global_60
  loc_B8CA5C: LitStr vbNullString
  loc_B8CA5F: NeStr
  loc_B8CA61: BranchF loc_B8CA65
  loc_B8CA64: ExitProcHresult
  loc_B8CA65: LitI2_Byte 0
  loc_B8CA67: ILdRf Me
  loc_B8CA6A: CastAd
  loc_B8CA6D: FStAdFunc var_98
  loc_B8CA70: FLdRfVar var_98
  loc_B8CA73: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B8CA78: FFree1Ad var_98
  loc_B8CA7B: FLdRfVar var_DC
  loc_B8CA7E: FLdPr Me
  loc_B8CA81: VCallAd Control_ID_CodiRecaTxt
  loc_B8CA84: FStAdFunc var_D8
  loc_B8CA87: FLdPr var_D8
  loc_B8CA8A:  = Me.Text
  loc_B8CA8F: FLdRfVar var_E4
  loc_B8CA92: FLdPr Me
  loc_B8CA95: VCallAd Control_ID_DetaRecaTxt
  loc_B8CA98: FStAdFunc var_E0
  loc_B8CA9B: FLdPr var_E0
  loc_B8CA9E:  = Me.Text
  loc_B8CAA3: FLdRfVar var_90
  loc_B8CAA6: FLdPr Me
  loc_B8CAA9: VCallAd Control_ID_MatrRecaTxt
  loc_B8CAAC: FStAdFunc var_98
  loc_B8CAAF: FLdPr var_98
  loc_B8CAB2:  = Me.Text
  loc_B8CAB7: ILdRf var_90
  loc_B8CABA: CI4Str
  loc_B8CABB: ILdRf var_E4
  loc_B8CABE: ILdRf var_DC
  loc_B8CAC1: CI4Str
  loc_B8CAC2: FLdPr Me
  loc_B8CAC5: MemLdRfVar from_stack_1.global_52
  loc_B8CAC8: NewIfNullPr clsrecaudador
  loc_B8CACB: Call clsrecaudador.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B8CAD0: FFreeStr var_DC = "": var_E4 = ""
  loc_B8CAD9: FFreeAd var_98 = "": var_D8 = ""
  loc_B8CAE2: Branch loc_B8CBA1
  loc_B8CAE5: FLdI2 var_D2
  loc_B8CAE8: LitI2_Byte 2
  loc_B8CAEA: EqI2
  loc_B8CAEB: BranchF loc_B8CBA1
  loc_B8CAEE: LitI2_Byte 0
  loc_B8CAF0: PopTmpLdAd2 var_D4
  loc_B8CAF3: Call DetaRecaTxt_Validate(from_stack_1v)
  loc_B8CAF8: FLdPr Me
  loc_B8CAFB: MemLdStr global_60
  loc_B8CAFE: LitStr vbNullString
  loc_B8CB01: NeStr
  loc_B8CB03: BranchF loc_B8CB07
  loc_B8CB06: ExitProcHresult
  loc_B8CB07: LitI2_Byte 0
  loc_B8CB09: PopTmpLdAd2 var_D4
  loc_B8CB0C: Call MatrRecaTxt_Validate(from_stack_1v)
  loc_B8CB11: FLdPr Me
  loc_B8CB14: MemLdStr global_60
  loc_B8CB17: LitStr vbNullString
  loc_B8CB1A: NeStr
  loc_B8CB1C: BranchF loc_B8CB20
  loc_B8CB1F: ExitProcHresult
  loc_B8CB20: LitI2_Byte 0
  loc_B8CB22: ILdRf Me
  loc_B8CB25: CastAd
  loc_B8CB28: FStAdFunc var_98
  loc_B8CB2B: FLdRfVar var_98
  loc_B8CB2E: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B8CB33: FFree1Ad var_98
  loc_B8CB36: FLdPr Me
  loc_B8CB39: VCallAd Control_ID_DetaRecaTxt
  loc_B8CB3C: CVarAd
  loc_B8CB40: FLdRfVar var_BC
  loc_B8CB43: ImpAdCallFPR4  = Trim()
  loc_B8CB48: FLdRfVar var_BC
  loc_B8CB4B: CStrVarVal var_90
  loc_B8CB4F: FLdPr Me
  loc_B8CB52: MemLdRfVar from_stack_1.global_52
  loc_B8CB55: NewIfNullPr clsrecaudador
  loc_B8CB58: clsrecaudador.DetaReca = from_stack_1v
  loc_B8CB5D: FFree1Str var_90
  loc_B8CB60: FFreeVar var_AC = ""
  loc_B8CB67: FLdRfVar var_90
  loc_B8CB6A: FLdPr Me
  loc_B8CB6D: VCallAd Control_ID_MatrRecaTxt
  loc_B8CB70: FStAdFunc var_98
  loc_B8CB73: FLdPr var_98
  loc_B8CB76:  = Me.Text
  loc_B8CB7B: ILdRf var_90
  loc_B8CB7E: CI4Str
  loc_B8CB7F: FLdPr Me
  loc_B8CB82: MemLdRfVar from_stack_1.global_52
  loc_B8CB85: NewIfNullPr clsrecaudador
  loc_B8CB88: clsrecaudador.MatrReca = from_stack_1v
  loc_B8CB8D: FFree1Str var_90
  loc_B8CB90: FFree1Ad var_98
  loc_B8CB93: FLdPr Me
  loc_B8CB96: MemLdRfVar from_stack_1.global_52
  loc_B8CB99: NewIfNullPr clsrecaudador
  loc_B8CB9C: Call clsrecaudador.Update()
  loc_B8CBA1: ILdRf Me
  loc_B8CBA4: CastAd
  loc_B8CBA7: FStAdFunc var_98
  loc_B8CBAA: FLdRfVar var_98
  loc_B8CBAD: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B8CBB2: FFree1Ad var_98
  loc_B8CBB5: LitI2_Byte 0
  loc_B8CBB7: FLdPr Me
  loc_B8CBBA: MemStI2 global_56
  loc_B8CBBD: FLdPr Me
  loc_B8CBC0: MemLdRfVar from_stack_1.global_52
  loc_B8CBC3: NewIfNullPr clsrecaudador
  loc_B8CBC6: Call clsrecaudador.Requery()
  loc_B8CBCB: FLdRfVar var_D0
  loc_B8CBCE: FLdPr Me
  loc_B8CBD1: MemLdRfVar from_stack_1.global_52
  loc_B8CBD4: NewIfNullPr clsrecaudador
  loc_B8CBD7: from_stack_1 = clsrecaudador.RecordCount
  loc_B8CBDC: ILdRf var_D0
  loc_B8CBDF: LitI4 0
  loc_B8CBE4: GtI4
  loc_B8CBE5: BranchF loc_B8CC14
  loc_B8CBE8: FLdRfVar var_90
  loc_B8CBEB: FLdPr Me
  loc_B8CBEE: VCallAd Control_ID_CodiRecaTxt
  loc_B8CBF1: FStAdFunc var_98
  loc_B8CBF4: FLdPr var_98
  loc_B8CBF7:  = Me.Text
  loc_B8CBFC: ILdRf var_90
  loc_B8CBFF: CI4Str
  loc_B8CC00: FLdPr Me
  loc_B8CC03: MemLdRfVar from_stack_1.global_52
  loc_B8CC06: NewIfNullPr clsrecaudador
  loc_B8CC09: Call clsrecaudador.Encontrar(from_stack_1v)
  loc_B8CC0E: FFree1Str var_90
  loc_B8CC11: FFree1Ad var_98
  loc_B8CC14: Call EnlazaTodo()
  loc_B8CC19: LitI4 0
  loc_B8CC1E: LitI4 0
  loc_B8CC23: FLdRfVar var_9C
  loc_B8CC26: Redim
  loc_B8CC30: FLdPr Me
  loc_B8CC33: VCallAd Control_ID_dgdABMS
  loc_B8CC36: CVarAd
  loc_B8CC3A: ParmAry1St
  loc_B8CC40: FLdRfVar var_9C
  loc_B8CC43: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8CC48: FLdRfVar var_9C
  loc_B8CC4B: Erase
  loc_B8CC4C: Branch loc_B8CD53
  loc_B8CC4F: ILdRf var_94
  loc_B8CC52: LitStr "btnCancelar"
  loc_B8CC55: EqStr
  loc_B8CC57: BranchF loc_B8CC62
  loc_B8CC5A: Call cmdCancelar_Click()
  loc_B8CC5F: Branch loc_B8CD53
  loc_B8CC62: ILdRf var_94
  loc_B8CC65: LitStr "btnPrimero"
  loc_B8CC68: EqStr
  loc_B8CC6A: BranchF loc_B8CC7E
  loc_B8CC6D: FLdPr Me
  loc_B8CC70: MemLdRfVar from_stack_1.global_52
  loc_B8CC73: NewIfNullPr clsrecaudador
  loc_B8CC76: Call clsrecaudador.MoveFirst()
  loc_B8CC7B: Branch loc_B8CD53
  loc_B8CC7E: ILdRf var_94
  loc_B8CC81: LitStr "btnAnterior"
  loc_B8CC84: EqStr
  loc_B8CC86: BranchF loc_B8CC9A
  loc_B8CC89: FLdPr Me
  loc_B8CC8C: MemLdRfVar from_stack_1.global_52
  loc_B8CC8F: NewIfNullPr clsrecaudador
  loc_B8CC92: Call clsrecaudador.MovePrevious()
  loc_B8CC97: Branch loc_B8CD53
  loc_B8CC9A: ILdRf var_94
  loc_B8CC9D: LitStr "btnSiguiente"
  loc_B8CCA0: EqStr
  loc_B8CCA2: BranchF loc_B8CCB6
  loc_B8CCA5: FLdPr Me
  loc_B8CCA8: MemLdRfVar from_stack_1.global_52
  loc_B8CCAB: NewIfNullPr clsrecaudador
  loc_B8CCAE: Call clsrecaudador.MoveNext()
  loc_B8CCB3: Branch loc_B8CD53
  loc_B8CCB6: ILdRf var_94
  loc_B8CCB9: LitStr "btnUltimo"
  loc_B8CCBC: EqStr
  loc_B8CCBE: BranchF loc_B8CCD2
  loc_B8CCC1: FLdPr Me
  loc_B8CCC4: MemLdRfVar from_stack_1.global_52
  loc_B8CCC7: NewIfNullPr clsrecaudador
  loc_B8CCCA: Call clsrecaudador.MoveLast()
  loc_B8CCCF: Branch loc_B8CD53
  loc_B8CCD2: ILdRf var_94
  loc_B8CCD5: LitStr "btnFiltrar"
  loc_B8CCD8: EqStr
  loc_B8CCDA: BranchF loc_B8CCE0
  loc_B8CCDD: Branch loc_B8CD53
  loc_B8CCE0: ILdRf var_94
  loc_B8CCE3: LitStr "btnBuscar"
  loc_B8CCE6: EqStr
  loc_B8CCE8: BranchF loc_B8CCEE
  loc_B8CCEB: Branch loc_B8CD53
  loc_B8CCEE: ILdRf var_94
  loc_B8CCF1: LitStr "btnImprimir"
  loc_B8CCF4: EqStr
  loc_B8CCF6: BranchF loc_B8CCFC
  loc_B8CCF9: Branch loc_B8CD53
  loc_B8CCFC: ILdRf var_94
  loc_B8CCFF: LitStr "btnAyuda"
  loc_B8CD02: EqStr
  loc_B8CD04: BranchF loc_B8CD33
  loc_B8CD07: LitVar_Missing var_134
  loc_B8CD0A: LitVar_Missing var_CC
  loc_B8CD0D: LitVar_Missing var_BC
  loc_B8CD10: LitI4 0
  loc_B8CD15: LitVarStr var_F4, "Opcion no disponible en esta version."
  loc_B8CD1A: FStVarCopyObj var_AC
  loc_B8CD1D: FLdRfVar var_AC
  loc_B8CD20: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B8CD25: FFreeVar var_AC = "": var_BC = "": var_CC = ""
  loc_B8CD30: Branch loc_B8CD53
  loc_B8CD33: ILdRf var_94
  loc_B8CD36: LitStr "btnSalir"
  loc_B8CD39: EqStr
  loc_B8CD3B: BranchF loc_B8CD53
  loc_B8CD3E: ILdRf Me
  loc_B8CD41: FStAdNoPop
  loc_B8CD45: ImpAdLdRf MemVar_D9C5D8
  loc_B8CD48: NewIfNullPr Global
  loc_B8CD4B: Global.Unload from_stack_1
  loc_B8CD50: FFree1Ad var_98
  loc_B8CD53: ExitProcHresult
End Sub

Private Sub CodiRecaTxt_GotFocus() '9BD278
  'Data Table: 440700
  loc_9BD264: FLdPr Me
  loc_9BD267: VCallAd Control_ID_CodiRecaTxt
  loc_9BD26A: CVarAd
  loc_9BD26E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD273: FFree1Var var_94 = ""
  loc_9BD276: ExitProcHresult
End Sub

Private Sub CodiRecaTxt_KeyPress(KeyAscii As Integer) '9DA168
  'Data Table: 440700
  loc_9DA150: LitStr "0123456789"
  loc_9DA153: FStStrCopy var_88
  loc_9DA156: FLdRfVar var_88
  loc_9DA159: ILdRf KeyAscii
  loc_9DA15C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA161: IStI2 KeyAscii
  loc_9DA164: FFree1Str var_88
  loc_9DA167: ExitProcHresult
End Sub

Private Sub CodiRecaTxt_Validate(Cancel As Boolean) 'ABCB34
  'Data Table: 440700
  loc_ABCA3C: FLdRfVar var_8A
  loc_ABCA3F: FLdPr Me
  loc_ABCA42: VCallAd Control_ID_CodiRecaTxt
  loc_ABCA45: FStAdFunc var_88
  loc_ABCA48: FLdPr var_88
  loc_ABCA4B:  = Me.Enabled
  loc_ABCA50: FLdI2 var_8A
  loc_ABCA53: LitI2_Byte &HFF
  loc_ABCA55: EqI2
  loc_ABCA56: FFree1Ad var_88
  loc_ABCA59: BranchF loc_ABCB33
  loc_ABCA5C: FLdRfVar var_90
  loc_ABCA5F: FLdPr Me
  loc_ABCA62: VCallAd Control_ID_CodiRecaTxt
  loc_ABCA65: FStAdFunc var_88
  loc_ABCA68: FLdPr var_88
  loc_ABCA6B:  = Me.Text
  loc_ABCA70: LitI2_Byte 0
  loc_ABCA72: LitI2_Byte 0
  loc_ABCA74: ILdRf var_90
  loc_ABCA77: LitStr "codigo"
  loc_ABCA7A: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ABCA7F: FStStrNoPop var_94
  loc_ABCA82: FLdPr Me
  loc_ABCA85: MemStStrCopy
  loc_ABCA89: FFreeStr var_90 = ""
  loc_ABCA90: FFree1Ad var_88
  loc_ABCA93: FLdPr Me
  loc_ABCA96: MemLdStr global_60
  loc_ABCA99: LitStr vbNullString
  loc_ABCA9C: NeStr
  loc_ABCA9E: BranchF loc_ABCAC4
  loc_ABCAA1: FLdPr Me
  loc_ABCAA4: MemLdStr global_60
  loc_ABCAA7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABCAAC: FLdPr Me
  loc_ABCAAF: VCallAd Control_ID_CodiRecaTxt
  loc_ABCAB2: CVarAd
  loc_ABCAB6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABCABB: FFree1Var var_A4 = ""
  loc_ABCABE: LitI2_Byte &HFF
  loc_ABCAC0: IStI2 Cancel
  loc_ABCAC3: ExitProcHresult
  loc_ABCAC4: FLdRfVar var_94
  loc_ABCAC7: FLdRfVar var_90
  loc_ABCACA: FLdPr Me
  loc_ABCACD: VCallAd Control_ID_CodiRecaTxt
  loc_ABCAD0: FStAdFunc var_88
  loc_ABCAD3: FLdPr var_88
  loc_ABCAD6:  = Me.Text
  loc_ABCADB: ILdRf var_90
  loc_ABCADE: CI2Str
  loc_ABCAE0: FLdPr Me
  loc_ABCAE3: MemLdRfVar from_stack_1.global_52
  loc_ABCAE6: NewIfNullPr clsrecaudador
  loc_ABCAE9: from_stack_2v = clsrecaudador.ValidaClave(from_stack_1v)
  loc_ABCAEE: ILdRf var_94
  loc_ABCAF1: FLdPr Me
  loc_ABCAF4: MemStStrCopy
  loc_ABCAF8: FFreeStr var_90 = ""
  loc_ABCAFF: FFree1Ad var_88
  loc_ABCB02: FLdPr Me
  loc_ABCB05: MemLdStr global_60
  loc_ABCB08: LitStr vbNullString
  loc_ABCB0B: NeStr
  loc_ABCB0D: BranchF loc_ABCB33
  loc_ABCB10: FLdPr Me
  loc_ABCB13: MemLdStr global_60
  loc_ABCB16: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABCB1B: FLdPr Me
  loc_ABCB1E: VCallAd Control_ID_CodiRecaTxt
  loc_ABCB21: CVarAd
  loc_ABCB25: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABCB2A: FFree1Var var_A4 = ""
  loc_ABCB2D: LitI2_Byte &HFF
  loc_ABCB2F: IStI2 Cancel
  loc_ABCB32: ExitProcHresult
  loc_ABCB33: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A85408
  'Data Table: 440700
  loc_A85388: LitI4 0
  loc_A8538D: LitI4 3
  loc_A85392: FLdRfVar var_88
  loc_A85395: Redim
  loc_A8539F: FLdPr Me
  loc_A853A2: MemLdRfVar from_stack_1.global_52
  loc_A853A5: NewIfNullAd
  loc_A853A8: FStAd var_8C 
  loc_A853AC: FLdRfVar var_8C
  loc_A853AF: CVarRef
  loc_A853B4: ParmAry1St
  loc_A853BA: FLdPr Me
  loc_A853BD: VCallAd Control_ID_CodiRecaTxt
  loc_A853C0: CVarAd
  loc_A853C4: ParmAry1St
  loc_A853CA: FLdPr Me
  loc_A853CD: VCallAd Control_ID_DetaRecaTxt
  loc_A853D0: CVarAd
  loc_A853D4: ParmAry1St
  loc_A853DA: FLdPr Me
  loc_A853DD: VCallAd Control_ID_MatrRecaTxt
  loc_A853E0: CVarAd
  loc_A853E4: ParmAry1St
  loc_A853EA: FLdRfVar var_88
  loc_A853ED: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A853F2: ILdRf var_8C
  loc_A853F5: CastAd
  loc_A853F8: FLdPr Me
  loc_A853FB: MemStAdFunc
  loc_A853FF: FLdRfVar var_88
  loc_A85402: Erase
  loc_A85403: FFree1Ad var_8C
  loc_A85406: ExitProcHresult
End Sub
