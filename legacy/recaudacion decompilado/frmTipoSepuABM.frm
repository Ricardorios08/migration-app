VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmTipoSepuABM
  Caption = "Tipo de Sepultura"
  WindowState = 2
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmTipoSepuABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 13068
  ClientHeight = 7908
  Begin VB.Frame Frame1
    Left = 120
    Top = 3960
    Width = 8280
    Height = 2280
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
    Begin VB.ComboBox FijoTiseCbo
      ForeColor = &HFF0000&
      Left = 1680
      Top = 1320
      Width = 855
      Height = 420
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
    Begin VB.TextBox DetaTiseTxt
      ForeColor = &HFF0000&
      Left = 1650
      Top = 840
      Width = 6135
      Height = 360
      TabIndex = 2
      MaxLength = 30
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
    Begin VB.TextBox CodiTiseTxt
      ForeColor = &HFF0000&
      Left = 1650
      Top = 405
      Width = 615
      Height = 360
      TabIndex = 1
      MaxLength = 2
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
      Caption = "Fijo:"
      Left = 1095
      Top = 1440
      Width = 435
      Height = 300
      TabIndex = 7
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
      Caption = "Detalle:"
      Left = 720
      Top = 960
      Width = 810
      Height = 300
      TabIndex = 6
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 780
    Width = 8280
    Height = 3075
    TabIndex = 0
    OleObjectBlob = "frmTipoSepuABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTipoSepuABM.frx":34B0
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13068
    Height = 636
    TabIndex = 8
    OleObjectBlob = "frmTipoSepuABM.frx":B02E
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 9
      TabStop = 0   'False
      Picture = "frmTipoSepuABM.frx":B58A
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmTipoSepuABM"


Private Sub Form_Load() 'AD51B0
  'Data Table: 439EF0
  loc_AD507C: LitI2_Byte 0
  loc_AD507E: CR8I2
  loc_AD507F: PopFPR4
  loc_AD5080: FLdPr Me
  loc_AD5083: Me.Left = from_stack_1s
  loc_AD5088: LitI2_Byte 0
  loc_AD508A: CR8I2
  loc_AD508B: PopFPR4
  loc_AD508C: FLdPr Me
  loc_AD508F: Me.Top = from_stack_1s
  loc_AD5094: LitStr "SELECT * FROM tiposepu ORDER BY CodiTise"
  loc_AD5097: FLdPr Me
  loc_AD509A: MemLdRfVar from_stack_1.global_52
  loc_AD509D: NewIfNullPr clstiposepu
  loc_AD50A0: Call clstiposepu.RedefineRS(from_stack_1v)
  loc_AD50A5: LitStr "CodiTise"
  loc_AD50A8: FLdPr Me
  loc_AD50AB: VCallAd Control_ID_CodiTiseTxt
  loc_AD50AE: FStAdFunc var_88
  loc_AD50B1: FLdPr var_88
  loc_AD50B4: Me.DataField = from_stack_1
  loc_AD50B9: FFree1Ad var_88
  loc_AD50BC: LitStr "DetaTise"
  loc_AD50BF: FLdPr Me
  loc_AD50C2: VCallAd Control_ID_DetaTiseTxt
  loc_AD50C5: FStAdFunc var_88
  loc_AD50C8: FLdPr var_88
  loc_AD50CB: Me.DataField = from_stack_1
  loc_AD50D0: FFree1Ad var_88
  loc_AD50D3: LitStr "FijoTise"
  loc_AD50D6: FLdPr Me
  loc_AD50D9: VCallAd Control_ID_FijoTiseCbo
  loc_AD50DC: FStAdFunc var_88
  loc_AD50DF: FLdPr var_88
  loc_AD50E2: Me.DataField = from_stack_1
  loc_AD50E7: FFree1Ad var_88
  loc_AD50EA: LitI4 0
  loc_AD50EF: LitI4 1
  loc_AD50F4: FLdRfVar var_8C
  loc_AD50F7: Redim
  loc_AD5101: FLdPr Me
  loc_AD5104: MemLdRfVar from_stack_1.global_52
  loc_AD5107: NewIfNullAd
  loc_AD510A: FStAd var_88 
  loc_AD510E: FLdRfVar var_88
  loc_AD5111: CVarRef
  loc_AD5116: ParmAry1St
  loc_AD511C: FLdPr Me
  loc_AD511F: VCallAd Control_ID_dgdABMS
  loc_AD5122: CVarAd
  loc_AD5126: ParmAry1St
  loc_AD512C: FLdRfVar var_8C
  loc_AD512F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AD5134: ILdRf var_88
  loc_AD5137: CastAd
  loc_AD513A: FLdPr Me
  loc_AD513D: MemStAdFunc
  loc_AD5141: FLdRfVar var_8C
  loc_AD5144: Erase
  loc_AD5145: FFree1Ad var_88
  loc_AD5148: Call EnlazaTodo()
  loc_AD514D: ILdRf Me
  loc_AD5150: CastAd
  loc_AD5153: FStAdFunc var_88
  loc_AD5156: FLdRfVar var_88
  loc_AD5159: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AD515E: FFree1Ad var_88
  loc_AD5161: LitI2_Byte 0
  loc_AD5163: ILdRf Me
  loc_AD5166: CastAd
  loc_AD5169: FStAdFunc var_88
  loc_AD516C: FLdRfVar var_88
  loc_AD516F: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AD5174: FFree1Ad var_88
  loc_AD5177: LitVar_Missing var_9C
  loc_AD517A: PopAdLdVar
  loc_AD517B: LitStr "Si"
  loc_AD517E: FLdPr Me
  loc_AD5181: VCallAd Control_ID_FijoTiseCbo
  loc_AD5184: FStAdFunc var_88
  loc_AD5187: FLdPr var_88
  loc_AD518A: Me.AddItem from_stack_1, from_stack_2
  loc_AD518F: FFree1Ad var_88
  loc_AD5192: LitVar_Missing var_9C
  loc_AD5195: PopAdLdVar
  loc_AD5196: LitStr "No"
  loc_AD5199: FLdPr Me
  loc_AD519C: VCallAd Control_ID_FijoTiseCbo
  loc_AD519F: FStAdFunc var_88
  loc_AD51A2: FLdPr var_88
  loc_AD51A5: Me.AddItem from_stack_1, from_stack_2
  loc_AD51AA: FFree1Ad var_88
  loc_AD51AD: ExitProcHresult
  loc_AD51AE: IDvI4
End Sub

Private Sub Form_Activate() 'A62300
  'Data Table: 439EF0
  loc_A622A4: FLdRfVar var_C2
  loc_A622A7: FLdRfVar var_C0
  loc_A622AA: LitVarI2 var_B8, 1
  loc_A622AF: FLdPr Me
  loc_A622B2: VCallAd Control_ID_tlbABMS
  loc_A622B5: FStAdFunc var_88
  loc_A622B8: FLdPr var_88
  loc_A622BB: LateIdLdVar var_98 DispID_3 0
  loc_A622C2: CastAdVar Me
  loc_A622C6: FStAdFunc var_BC
  loc_A622C9: FLdPr var_BC
  loc_A622CC:  = Me.Buttons.ControlDefault
  loc_A622D1: FLdPr var_C0
  loc_A622D4:  = Me.Enabled
  loc_A622D9: FLdI2 var_C2
  loc_A622DC: FFreeAd var_88 = "": var_BC = ""
  loc_A622E5: FFreeVar var_98 = ""
  loc_A622EC: BranchF loc_A622FD
  loc_A622EF: FLdPr Me
  loc_A622F2: MemLdRfVar from_stack_1.global_52
  loc_A622F5: NewIfNullPr clstiposepu
  loc_A622F8: Call clstiposepu.Requery()
  loc_A622FD: ExitProcHresult
  loc_A622FE: ConcatStr
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D434C
  'Data Table: 439EF0
  loc_9D4334: ILdI2 KeyCode
  loc_9D4337: ILdRf Me
  loc_9D433A: CastAd
  loc_9D433D: FStAdFunc var_88
  loc_9D4340: FLdRfVar var_88
  loc_9D4343: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D4348: FFree1Ad var_88
  loc_9D434B: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_GotFocus() '9BF168
  'Data Table: 439EF0
  loc_9BF154: FLdPr Me
  loc_9BF157: VCallAd Control_ID_CodiTiseTxt
  loc_9BF15A: CVarAd
  loc_9BF15E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF163: FFree1Var var_94 = ""
  loc_9BF166: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_KeyPress(KeyAscii As Integer) '9D43E4
  'Data Table: 439EF0
  loc_9D43CC: LitStr "0123456789"
  loc_9D43CF: FStStrCopy var_88
  loc_9D43D2: FLdRfVar var_88
  loc_9D43D5: ILdRf KeyAscii
  loc_9D43D8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D43DD: IStI2 KeyAscii
  loc_9D43E0: FFree1Str var_88
  loc_9D43E3: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_Validate(Cancel As Boolean) 'ABE604
  'Data Table: 439EF0
  loc_ABE50C: FLdRfVar var_8A
  loc_ABE50F: FLdPr Me
  loc_ABE512: VCallAd Control_ID_CodiTiseTxt
  loc_ABE515: FStAdFunc var_88
  loc_ABE518: FLdPr var_88
  loc_ABE51B:  = Me.Enabled
  loc_ABE520: FLdI2 var_8A
  loc_ABE523: LitI2_Byte &HFF
  loc_ABE525: EqI2
  loc_ABE526: FFree1Ad var_88
  loc_ABE529: BranchF loc_ABE603
  loc_ABE52C: FLdRfVar var_90
  loc_ABE52F: FLdPr Me
  loc_ABE532: VCallAd Control_ID_CodiTiseTxt
  loc_ABE535: FStAdFunc var_88
  loc_ABE538: FLdPr var_88
  loc_ABE53B:  = Me.Text
  loc_ABE540: LitI2_Byte 0
  loc_ABE542: LitI2_Byte 0
  loc_ABE544: ILdRf var_90
  loc_ABE547: LitStr "codigo"
  loc_ABE54A: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ABE54F: FStStrNoPop var_94
  loc_ABE552: FLdPr Me
  loc_ABE555: MemStStrCopy
  loc_ABE559: FFreeStr var_90 = ""
  loc_ABE560: FFree1Ad var_88
  loc_ABE563: FLdPr Me
  loc_ABE566: MemLdStr global_60
  loc_ABE569: LitStr vbNullString
  loc_ABE56C: NeStr
  loc_ABE56E: BranchF loc_ABE594
  loc_ABE571: FLdPr Me
  loc_ABE574: MemLdStr global_60
  loc_ABE577: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE57C: FLdPr Me
  loc_ABE57F: VCallAd Control_ID_CodiTiseTxt
  loc_ABE582: CVarAd
  loc_ABE586: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE58B: FFree1Var var_A4 = ""
  loc_ABE58E: LitI2_Byte &HFF
  loc_ABE590: IStI2 Cancel
  loc_ABE593: ExitProcHresult
  loc_ABE594: FLdRfVar var_94
  loc_ABE597: FLdRfVar var_90
  loc_ABE59A: FLdPr Me
  loc_ABE59D: VCallAd Control_ID_CodiTiseTxt
  loc_ABE5A0: FStAdFunc var_88
  loc_ABE5A3: FLdPr var_88
  loc_ABE5A6:  = Me.Text
  loc_ABE5AB: ILdRf var_90
  loc_ABE5AE: CI2Str
  loc_ABE5B0: FLdPr Me
  loc_ABE5B3: MemLdRfVar from_stack_1.global_52
  loc_ABE5B6: NewIfNullPr clstiposepu
  loc_ABE5B9: from_stack_2v = clstiposepu.ValidaClave(from_stack_1v)
  loc_ABE5BE: ILdRf var_94
  loc_ABE5C1: FLdPr Me
  loc_ABE5C4: MemStStrCopy
  loc_ABE5C8: FFreeStr var_90 = ""
  loc_ABE5CF: FFree1Ad var_88
  loc_ABE5D2: FLdPr Me
  loc_ABE5D5: MemLdStr global_60
  loc_ABE5D8: LitStr vbNullString
  loc_ABE5DB: NeStr
  loc_ABE5DD: BranchF loc_ABE603
  loc_ABE5E0: FLdPr Me
  loc_ABE5E3: MemLdStr global_60
  loc_ABE5E6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE5EB: FLdPr Me
  loc_ABE5EE: VCallAd Control_ID_CodiTiseTxt
  loc_ABE5F1: CVarAd
  loc_ABE5F5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE5FA: FFree1Var var_A4 = ""
  loc_ABE5FD: LitI2_Byte &HFF
  loc_ABE5FF: IStI2 Cancel
  loc_ABE602: ExitProcHresult
  loc_ABE603: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A769F0
  'Data Table: 439EF0
  loc_A76984: LitI2_Byte 0
  loc_A76986: FLdPr Me
  loc_A76989: MemStI2 global_56
  loc_A7698C: LitI2_Byte 0
  loc_A7698E: ILdRf Me
  loc_A76991: CastAd
  loc_A76994: FStAdFunc var_88
  loc_A76997: FLdRfVar var_88
  loc_A7699A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A7699F: FFree1Ad var_88
  loc_A769A2: LitI4 0
  loc_A769A7: LitI4 0
  loc_A769AC: FLdRfVar var_8C
  loc_A769AF: Redim
  loc_A769B9: FLdPr Me
  loc_A769BC: VCallAd Control_ID_dgdABMS
  loc_A769BF: CVarAd
  loc_A769C3: ParmAry1St
  loc_A769C9: FLdRfVar var_8C
  loc_A769CC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A769D1: FLdRfVar var_8C
  loc_A769D4: Erase
  loc_A769D5: Call EnlazaTodo()
  loc_A769DA: ILdRf Me
  loc_A769DD: CastAd
  loc_A769E0: FStAdFunc var_88
  loc_A769E3: FLdRfVar var_88
  loc_A769E6: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A769EB: FFree1Ad var_88
  loc_A769EE: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A660EC
  'Data Table: 439EF0
  loc_A66090: FLdRfVar var_B4
  loc_A66093: FLdRfVar var_B0
  loc_A66096: FLdI2 ColIndex
  loc_A66099: CVarI2 var_A8
  loc_A6609C: PopAdLdVar
  loc_A6609D: FLdPr Me
  loc_A660A0: VCallAd Control_ID_dgdABMS
  loc_A660A3: FStAdFunc var_88
  loc_A660A6: FLdPr var_88
  loc_A660A9: LateIdLdVar var_98 DispID_105 0
  loc_A660B0: CastAdVar Me
  loc_A660B4: FStAdFunc var_AC
  loc_A660B7: FLdPr var_AC
  loc_A660BA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A660BF: FLdPr var_B0
  loc_A660C2:  = Me.DataField
  loc_A660C7: FLdZeroAd var_B4
  loc_A660CA: PopTmpLdAdStr
  loc_A660CE: FLdPr Me
  loc_A660D1: MemLdRfVar from_stack_1.global_52
  loc_A660D4: NewIfNullPr clstiposepu
  loc_A660D7: Call clstiposepu.Sort(from_stack_1v)
  loc_A660DC: FFree1Str var_B8
  loc_A660DF: FFreeAd var_88 = "": var_AC = ""
  loc_A660E8: FFree1Var var_98 = ""
  loc_A660EB: ExitProcHresult
End Sub

Private Sub DetaTiseTxt_GotFocus() '9BF288
  'Data Table: 439EF0
  loc_9BF274: FLdPr Me
  loc_9BF277: VCallAd Control_ID_DetaTiseTxt
  loc_9BF27A: CVarAd
  loc_9BF27E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF283: FFree1Var var_94 = ""
  loc_9BF286: ExitProcHresult
End Sub

Private Sub DetaTiseTxt_Validate(Cancel As Boolean) 'A8FE14
  'Data Table: 439EF0
  loc_A8FD74: FLdRfVar var_8A
  loc_A8FD77: FLdPr Me
  loc_A8FD7A: VCallAd Control_ID_cmdCancelar
  loc_A8FD7D: FStAdFunc var_88
  loc_A8FD80: FLdPr var_88
  loc_A8FD83:  = Me.Value
  loc_A8FD88: FLdI2 var_8A
  loc_A8FD8B: NotI4
  loc_A8FD8C: FLdRfVar var_92
  loc_A8FD8F: FLdPr Me
  loc_A8FD92: VCallAd Control_ID_DetaTiseTxt
  loc_A8FD95: FStAdFunc var_90
  loc_A8FD98: FLdPr var_90
  loc_A8FD9B:  = Me.Enabled
  loc_A8FDA0: FLdI2 var_92
  loc_A8FDA3: AndI4
  loc_A8FDA4: FFreeAd var_88 = ""
  loc_A8FDAB: BranchF loc_A8FE11
  loc_A8FDAE: FLdRfVar var_98
  loc_A8FDB1: FLdPr Me
  loc_A8FDB4: VCallAd Control_ID_DetaTiseTxt
  loc_A8FDB7: FStAdFunc var_88
  loc_A8FDBA: FLdPr var_88
  loc_A8FDBD:  = Me.Text
  loc_A8FDC2: ILdRf var_98
  loc_A8FDC5: LitStr "la sepultura"
  loc_A8FDC8: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A8FDCD: FStStrNoPop var_9C
  loc_A8FDD0: FLdPr Me
  loc_A8FDD3: MemStStrCopy
  loc_A8FDD7: FFreeStr var_98 = ""
  loc_A8FDDE: FFree1Ad var_88
  loc_A8FDE1: FLdPr Me
  loc_A8FDE4: MemLdStr global_60
  loc_A8FDE7: LitStr vbNullString
  loc_A8FDEA: NeStr
  loc_A8FDEC: BranchF loc_A8FE11
  loc_A8FDEF: FLdPr Me
  loc_A8FDF2: MemLdStr global_60
  loc_A8FDF5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8FDFA: FLdPr Me
  loc_A8FDFD: VCallAd Control_ID_DetaTiseTxt
  loc_A8FE00: CVarAd
  loc_A8FE04: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8FE09: FFree1Var var_AC = ""
  loc_A8FE0C: LitI2_Byte &HFF
  loc_A8FE0E: IStI2 Cancel
  loc_A8FE11: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B6ACCC
  'Data Table: 439EF0
  loc_B6A86C: ILdRf Button
  loc_B6A86F: FStAd var_88 
  loc_B6A873: FLdRfVar var_90
  loc_B6A876: FLdPr var_88
  loc_B6A879:  = Me.Key
  loc_B6A87E: FLdZeroAd var_90
  loc_B6A881: FStStr var_94
  loc_B6A884: ILdRf var_94
  loc_B6A887: LitStr "btnCrear"
  loc_B6A88A: EqStr
  loc_B6A88C: BranchF loc_B6A98C
  loc_B6A88F: LitI2_Byte 1
  loc_B6A891: FLdPr Me
  loc_B6A894: MemStI2 global_56
  loc_B6A897: ILdRf Me
  loc_B6A89A: CastAd
  loc_B6A89D: FStAdFunc var_98
  loc_B6A8A0: FLdRfVar var_98
  loc_B6A8A3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B6A8A8: FFree1Ad var_98
  loc_B6A8AB: LitI4 0
  loc_B6A8B0: LitI4 0
  loc_B6A8B5: FLdRfVar var_9C
  loc_B6A8B8: Redim
  loc_B6A8C2: FLdPr Me
  loc_B6A8C5: VCallAd Control_ID_dgdABMS
  loc_B6A8C8: CVarAd
  loc_B6A8CC: ParmAry1St
  loc_B6A8D2: FLdRfVar var_9C
  loc_B6A8D5: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B6A8DA: FLdRfVar var_9C
  loc_B6A8DD: Erase
  loc_B6A8DE: ILdRf Me
  loc_B6A8E1: CastAd
  loc_B6A8E4: FStAdFunc var_98
  loc_B6A8E7: FLdRfVar var_98
  loc_B6A8EA: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B6A8EF: FFree1Ad var_98
  loc_B6A8F2: ILdRf Me
  loc_B6A8F5: CastAd
  loc_B6A8F8: FStAdFunc var_98
  loc_B6A8FB: FLdRfVar var_98
  loc_B6A8FE: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B6A903: FFree1Ad var_98
  loc_B6A906: FLdRfVar var_B0
  loc_B6A909: FLdPr Me
  loc_B6A90C: MemLdRfVar from_stack_1.global_52
  loc_B6A90F: NewIfNullPr clstiposepu
  loc_B6A912: from_stack_1v = clstiposepu.NuevoRegistro()
  loc_B6A917: ILdRf var_B0
  loc_B6A91A: CStrI4
  loc_B6A91C: FStStrNoPop var_90
  loc_B6A91F: FLdPr Me
  loc_B6A922: VCallAd Control_ID_CodiTiseTxt
  loc_B6A925: FStAdFunc var_98
  loc_B6A928: FLdPr var_98
  loc_B6A92B: Me.Text = from_stack_1
  loc_B6A930: FFree1Str var_90
  loc_B6A933: FFree1Ad var_98
  loc_B6A936: LitI4 0
  loc_B6A93B: LitI4 2
  loc_B6A940: FLdRfVar var_9C
  loc_B6A943: Redim
  loc_B6A94D: FLdPr Me
  loc_B6A950: VCallAd Control_ID_CodiTiseTxt
  loc_B6A953: CVarAd
  loc_B6A957: ParmAry1St
  loc_B6A95D: FLdPr Me
  loc_B6A960: VCallAd Control_ID_DetaTiseTxt
  loc_B6A963: CVarAd
  loc_B6A967: ParmAry1St
  loc_B6A96D: FLdPr Me
  loc_B6A970: VCallAd Control_ID_FijoTiseCbo
  loc_B6A973: CVarAd
  loc_B6A977: ParmAry1St
  loc_B6A97D: FLdRfVar var_9C
  loc_B6A980: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6A985: FLdRfVar var_9C
  loc_B6A988: Erase
  loc_B6A989: Branch loc_B6ACCA
  loc_B6A98C: ILdRf var_94
  loc_B6A98F: LitStr "btnModificar"
  loc_B6A992: EqStr
  loc_B6A994: BranchF loc_B6AA87
  loc_B6A997: FLdRfVar var_B0
  loc_B6A99A: FLdPr Me
  loc_B6A99D: MemLdRfVar from_stack_1.global_52
  loc_B6A9A0: NewIfNullPr clstiposepu
  loc_B6A9A3: from_stack_1 = clstiposepu.RecordCount
  loc_B6A9A8: ILdRf var_B0
  loc_B6A9AB: LitI4 0
  loc_B6A9B0: GtI4
  loc_B6A9B1: BranchF loc_B6AA84
  loc_B6A9B4: FLdRfVar var_90
  loc_B6A9B7: FLdPr Me
  loc_B6A9BA: MemLdRfVar from_stack_1.global_52
  loc_B6A9BD: NewIfNullPr clstiposepu
  loc_B6A9C0: from_stack_1 = clstiposepu.FijoTise
  loc_B6A9C5: ILdRf var_90
  loc_B6A9C8: LitStr "No"
  loc_B6A9CB: EqStr
  loc_B6A9CD: FFree1Str var_90
  loc_B6A9D0: BranchF loc_B6AA7C
  loc_B6A9D3: LitI2_Byte 2
  loc_B6A9D5: FLdPr Me
  loc_B6A9D8: MemStI2 global_56
  loc_B6A9DB: ILdRf Me
  loc_B6A9DE: CastAd
  loc_B6A9E1: FStAdFunc var_98
  loc_B6A9E4: FLdRfVar var_98
  loc_B6A9E7: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B6A9EC: FFree1Ad var_98
  loc_B6A9EF: LitI4 0
  loc_B6A9F4: LitI4 0
  loc_B6A9F9: FLdRfVar var_9C
  loc_B6A9FC: Redim
  loc_B6AA06: FLdPr Me
  loc_B6AA09: VCallAd Control_ID_dgdABMS
  loc_B6AA0C: CVarAd
  loc_B6AA10: ParmAry1St
  loc_B6AA16: FLdRfVar var_9C
  loc_B6AA19: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B6AA1E: FLdRfVar var_9C
  loc_B6AA21: Erase
  loc_B6AA22: ILdRf Me
  loc_B6AA25: CastAd
  loc_B6AA28: FStAdFunc var_98
  loc_B6AA2B: FLdRfVar var_98
  loc_B6AA2E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B6AA33: FFree1Ad var_98
  loc_B6AA36: LitI4 0
  loc_B6AA3B: LitI4 1
  loc_B6AA40: FLdRfVar var_9C
  loc_B6AA43: Redim
  loc_B6AA4D: FLdPr Me
  loc_B6AA50: VCallAd Control_ID_DetaTiseTxt
  loc_B6AA53: CVarAd
  loc_B6AA57: ParmAry1St
  loc_B6AA5D: FLdPr Me
  loc_B6AA60: VCallAd Control_ID_FijoTiseCbo
  loc_B6AA63: CVarAd
  loc_B6AA67: ParmAry1St
  loc_B6AA6D: FLdRfVar var_9C
  loc_B6AA70: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6AA75: FLdRfVar var_9C
  loc_B6AA78: Erase
  loc_B6AA79: Branch loc_B6AA84
  loc_B6AA7C: LitStr "No se puede modificar"
  loc_B6AA7F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6AA84: Branch loc_B6ACCA
  loc_B6AA87: ILdRf var_94
  loc_B6AA8A: LitStr "btnEliminar"
  loc_B6AA8D: EqStr
  loc_B6AA8F: BranchF loc_B6AA95
  loc_B6AA92: Branch loc_B6ACCA
  loc_B6AA95: ILdRf var_94
  loc_B6AA98: LitStr "btnGuardar"
  loc_B6AA9B: EqStr
  loc_B6AA9D: BranchF loc_B6ABC6
  loc_B6AAA0: LitI2_Byte 0
  loc_B6AAA2: PopTmpLdAd2 var_D2
  loc_B6AAA5: Call CodiTiseTxt_Validate(from_stack_1v)
  loc_B6AAAA: FLdPr Me
  loc_B6AAAD: MemLdStr global_60
  loc_B6AAB0: LitStr vbNullString
  loc_B6AAB3: NeStr
  loc_B6AAB5: BranchF loc_B6AAB9
  loc_B6AAB8: ExitProcHresult
  loc_B6AAB9: LitI2_Byte 0
  loc_B6AABB: PopTmpLdAd2 var_D2
  loc_B6AABE: Call DetaTiseTxt_Validate(from_stack_1v)
  loc_B6AAC3: FLdPr Me
  loc_B6AAC6: MemLdStr global_60
  loc_B6AAC9: LitStr vbNullString
  loc_B6AACC: NeStr
  loc_B6AACE: BranchF loc_B6AAD2
  loc_B6AAD1: ExitProcHresult
  loc_B6AAD2: FLdPr Me
  loc_B6AAD5: MemLdI2 global_56
  loc_B6AAD8: FStI2 var_D4
  loc_B6AADB: FLdI2 var_D4
  loc_B6AADE: LitI2_Byte 1
  loc_B6AAE0: EqI2
  loc_B6AAE1: BranchF loc_B6AB4E
  loc_B6AAE4: FLdRfVar var_90
  loc_B6AAE7: FLdPr Me
  loc_B6AAEA: VCallAd Control_ID_CodiTiseTxt
  loc_B6AAED: FStAdFunc var_98
  loc_B6AAF0: FLdPr var_98
  loc_B6AAF3:  = Me.Text
  loc_B6AAF8: FLdRfVar var_DC
  loc_B6AAFB: FLdPr Me
  loc_B6AAFE: VCallAd Control_ID_DetaTiseTxt
  loc_B6AB01: FStAdFunc var_D8
  loc_B6AB04: FLdPr var_D8
  loc_B6AB07:  = Me.Text
  loc_B6AB0C: FLdRfVar var_E4
  loc_B6AB0F: FLdPr Me
  loc_B6AB12: VCallAd Control_ID_FijoTiseCbo
  loc_B6AB15: FStAdFunc var_E0
  loc_B6AB18: FLdPr var_E0
  loc_B6AB1B:  = Me.Text
  loc_B6AB20: ILdRf var_E4
  loc_B6AB23: ILdRf var_DC
  loc_B6AB26: ILdRf var_90
  loc_B6AB29: CUI1Str
  loc_B6AB2B: FLdPr Me
  loc_B6AB2E: MemLdRfVar from_stack_1.global_52
  loc_B6AB31: NewIfNullPr clstiposepu
  loc_B6AB34: Call clstiposepu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B6AB39: FFreeStr var_90 = "": var_DC = ""
  loc_B6AB42: FFreeAd var_98 = "": var_D8 = ""
  loc_B6AB4B: Branch loc_B6ABBE
  loc_B6AB4E: FLdI2 var_D4
  loc_B6AB51: LitI2_Byte 2
  loc_B6AB53: EqI2
  loc_B6AB54: BranchF loc_B6ABBE
  loc_B6AB57: FLdRfVar var_90
  loc_B6AB5A: FLdPr Me
  loc_B6AB5D: VCallAd Control_ID_CodiTiseTxt
  loc_B6AB60: FStAdFunc var_98
  loc_B6AB63: FLdPr var_98
  loc_B6AB66:  = Me.Text
  loc_B6AB6B: FLdRfVar var_DC
  loc_B6AB6E: FLdPr Me
  loc_B6AB71: VCallAd Control_ID_DetaTiseTxt
  loc_B6AB74: FStAdFunc var_D8
  loc_B6AB77: FLdPr var_D8
  loc_B6AB7A:  = Me.Text
  loc_B6AB7F: FLdRfVar var_E4
  loc_B6AB82: FLdPr Me
  loc_B6AB85: VCallAd Control_ID_FijoTiseCbo
  loc_B6AB88: FStAdFunc var_E0
  loc_B6AB8B: FLdPr var_E0
  loc_B6AB8E:  = Me.Text
  loc_B6AB93: ILdRf var_E4
  loc_B6AB96: ILdRf var_DC
  loc_B6AB99: ILdRf var_90
  loc_B6AB9C: CUI1Str
  loc_B6AB9E: FLdPr Me
  loc_B6ABA1: MemLdRfVar from_stack_1.global_52
  loc_B6ABA4: NewIfNullPr clstiposepu
  loc_B6ABA7: Call clstiposepu.Modificar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B6ABAC: FFreeStr var_90 = "": var_DC = ""
  loc_B6ABB5: FFreeAd var_98 = "": var_D8 = ""
  loc_B6ABBE: Call cmdCancelar_Click()
  loc_B6ABC3: Branch loc_B6ACCA
  loc_B6ABC6: ILdRf var_94
  loc_B6ABC9: LitStr "btnCancelar"
  loc_B6ABCC: EqStr
  loc_B6ABCE: BranchF loc_B6ABD9
  loc_B6ABD1: Call cmdCancelar_Click()
  loc_B6ABD6: Branch loc_B6ACCA
  loc_B6ABD9: ILdRf var_94
  loc_B6ABDC: LitStr "btnPrimero"
  loc_B6ABDF: EqStr
  loc_B6ABE1: BranchF loc_B6ABF5
  loc_B6ABE4: FLdPr Me
  loc_B6ABE7: MemLdRfVar from_stack_1.global_52
  loc_B6ABEA: NewIfNullPr clstiposepu
  loc_B6ABED: Call clstiposepu.MoveFirst()
  loc_B6ABF2: Branch loc_B6ACCA
  loc_B6ABF5: ILdRf var_94
  loc_B6ABF8: LitStr "btnAnterior"
  loc_B6ABFB: EqStr
  loc_B6ABFD: BranchF loc_B6AC11
  loc_B6AC00: FLdPr Me
  loc_B6AC03: MemLdRfVar from_stack_1.global_52
  loc_B6AC06: NewIfNullPr clstiposepu
  loc_B6AC09: Call clstiposepu.MovePrevious()
  loc_B6AC0E: Branch loc_B6ACCA
  loc_B6AC11: ILdRf var_94
  loc_B6AC14: LitStr "btnSiguiente"
  loc_B6AC17: EqStr
  loc_B6AC19: BranchF loc_B6AC2D
  loc_B6AC1C: FLdPr Me
  loc_B6AC1F: MemLdRfVar from_stack_1.global_52
  loc_B6AC22: NewIfNullPr clstiposepu
  loc_B6AC25: Call clstiposepu.MoveNext()
  loc_B6AC2A: Branch loc_B6ACCA
  loc_B6AC2D: ILdRf var_94
  loc_B6AC30: LitStr "btnUltimo"
  loc_B6AC33: EqStr
  loc_B6AC35: BranchF loc_B6AC49
  loc_B6AC38: FLdPr Me
  loc_B6AC3B: MemLdRfVar from_stack_1.global_52
  loc_B6AC3E: NewIfNullPr clstiposepu
  loc_B6AC41: Call clstiposepu.MoveLast()
  loc_B6AC46: Branch loc_B6ACCA
  loc_B6AC49: ILdRf var_94
  loc_B6AC4C: LitStr "btnFiltrar"
  loc_B6AC4F: EqStr
  loc_B6AC51: BranchF loc_B6AC57
  loc_B6AC54: Branch loc_B6ACCA
  loc_B6AC57: ILdRf var_94
  loc_B6AC5A: LitStr "btnBuscar"
  loc_B6AC5D: EqStr
  loc_B6AC5F: BranchF loc_B6AC65
  loc_B6AC62: Branch loc_B6ACCA
  loc_B6AC65: ILdRf var_94
  loc_B6AC68: LitStr "btnImprimir"
  loc_B6AC6B: EqStr
  loc_B6AC6D: BranchF loc_B6AC73
  loc_B6AC70: Branch loc_B6ACCA
  loc_B6AC73: ILdRf var_94
  loc_B6AC76: LitStr "btnAyuda"
  loc_B6AC79: EqStr
  loc_B6AC7B: BranchF loc_B6ACAA
  loc_B6AC7E: LitVar_Missing var_134
  loc_B6AC81: LitVar_Missing var_D0
  loc_B6AC84: LitVar_Missing var_C0
  loc_B6AC87: LitI4 0
  loc_B6AC8C: LitVarStr var_F4, "Opcion no disponible en esta version."
  loc_B6AC91: FStVarCopyObj var_AC
  loc_B6AC94: FLdRfVar var_AC
  loc_B6AC97: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B6AC9C: FFreeVar var_AC = "": var_C0 = "": var_D0 = ""
  loc_B6ACA7: Branch loc_B6ACCA
  loc_B6ACAA: ILdRf var_94
  loc_B6ACAD: LitStr "btnSalir"
  loc_B6ACB0: EqStr
  loc_B6ACB2: BranchF loc_B6ACCA
  loc_B6ACB5: ILdRf Me
  loc_B6ACB8: FStAdNoPop
  loc_B6ACBC: ImpAdLdRf MemVar_D9C5D8
  loc_B6ACBF: NewIfNullPr Global
  loc_B6ACC2: Global.Unload from_stack_1
  loc_B6ACC7: FFree1Ad var_98
  loc_B6ACCA: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A84418
  'Data Table: 439EF0
  loc_A84398: LitI4 0
  loc_A8439D: LitI4 3
  loc_A843A2: FLdRfVar var_88
  loc_A843A5: Redim
  loc_A843AF: FLdPr Me
  loc_A843B2: MemLdRfVar from_stack_1.global_52
  loc_A843B5: NewIfNullAd
  loc_A843B8: FStAd var_8C 
  loc_A843BC: FLdRfVar var_8C
  loc_A843BF: CVarRef
  loc_A843C4: ParmAry1St
  loc_A843CA: FLdPr Me
  loc_A843CD: VCallAd Control_ID_CodiTiseTxt
  loc_A843D0: CVarAd
  loc_A843D4: ParmAry1St
  loc_A843DA: FLdPr Me
  loc_A843DD: VCallAd Control_ID_DetaTiseTxt
  loc_A843E0: CVarAd
  loc_A843E4: ParmAry1St
  loc_A843EA: FLdPr Me
  loc_A843ED: VCallAd Control_ID_FijoTiseCbo
  loc_A843F0: CVarAd
  loc_A843F4: ParmAry1St
  loc_A843FA: FLdRfVar var_88
  loc_A843FD: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A84402: ILdRf var_8C
  loc_A84405: CastAd
  loc_A84408: FLdPr Me
  loc_A8440B: MemStAdFunc
  loc_A8440F: FLdRfVar var_88
  loc_A84412: Erase
  loc_A84413: FFree1Ad var_8C
  loc_A84416: ExitProcHresult
End Sub
