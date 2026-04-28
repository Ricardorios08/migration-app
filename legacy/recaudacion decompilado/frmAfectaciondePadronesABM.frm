VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmAfectaciondePadronesABM
  Caption = "Ordenanza Reembolsable"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmAfectaciondePadronesABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 14352
  ClientHeight = 9780
  Begin VB.Frame Frame2
    Left = 120
    Top = 5760
    Width = 5760
    Height = 960
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton CodiInmuCmd
      Left = 4320
      Top = 360
      Width = 450
      Height = 360
      TabIndex = 5
      Picture = "frmAfectaciondePadronesABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton AgregarCmd
      Left = 4920
      Top = 360
      Width = 450
      Height = 345
      TabIndex = 6
      Picture = "frmAfectaciondePadronesABM.frx":3344
      Style = 1
    End
    Begin VB.TextBox CodiInmuTxt
      ForeColor = &HFF0000&
      Left = 2760
      Top = 360
      Width = 1455
      Height = 360
      TabIndex = 4
      MaxLength = 8
      DataField = "CodiInmu"
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
    Begin VB.OptionButton Option1
      Caption = "Bimestral"
      Left = 9480
      Top = 1920
      Width = 1455
      Height = 255
      TabIndex = 12
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
    Begin VB.Label Label6
      Caption = "Código Inmueble:"
      Left = 840
      Top = 360
      Width = 1860
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 2760
    Width = 13920
    Height = 3000
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox NotaObreTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 840
      Width = 11085
      Height = 1905
      TabIndex = 3
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 3000
      DataField = "NotaObre"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "NOTA"
    End
    Begin VB.TextBox DetaObreTxt
      ForeColor = &HFF0000&
      Left = 6120
      Top = 360
      Width = 5055
      Height = 360
      TabIndex = 2
      MaxLength = 40
      DataField = "DetaObre"
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
    Begin VB.TextBox OrdeObreTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 360
      Width = 2175
      Height = 360
      TabIndex = 1
      MaxLength = 15
      DataField = "OrdeObre"
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
      Caption = "Nota:"
      Left = 1980
      Top = 840
      Width = 570
      Height = 300
      TabIndex = 14
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
      Left = 5220
      Top = 360
      Width = 810
      Height = 300
      TabIndex = 10
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
      Caption = "Odenanza/Expediente:"
      Left = 120
      Top = 360
      Width = 2430
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 10080
    Height = 1875
    TabIndex = 0
    OleObjectBlob = "frmAfectaciondePadronesABM.frx":3426
  End
  Begin MSDataGridLib.DataGrid dgdABMS2
    Left = 120
    Top = 6840
    Width = 13920
    Height = 2355
    TabIndex = 7
    OleObjectBlob = "frmAfectaciondePadronesABM.frx":3648
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmAfectaciondePadronesABM.frx":3966
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14352
    Height = 636
    TabIndex = 15
    OleObjectBlob = "frmAfectaciondePadronesABM.frx":B4E4
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 16
      TabStop = 0   'False
      Picture = "frmAfectaciondePadronesABM.frx":BA40
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmAfectaciondePadronesABM"


Private Sub CodiInmuCmd_Click() 'A87E28
  'Data Table: 47D44C
  loc_A87D98: LitVar_Missing var_A4
  loc_A87D9B: PopAdLdVar
  loc_A87D9C: LitVarI4
  loc_A87DA4: PopAdLdVar
  loc_A87DA5: ImpAdLdRf MemVar_D9477C
  loc_A87DA8: NewIfNullPr dlgBuscarInmueble
  loc_A87DAB: dlgBuscarInmueble.Show from_stack_1, from_stack_2
  loc_A87DB0: FLdRfVar var_AC
  loc_A87DB3: FLdRfVar var_A8
  loc_A87DB6: ImpAdLdRf MemVar_D9477C
  loc_A87DB9: NewIfNullPr dlgBuscarInmueble
  loc_A87DBC: from_stack_1v = dlgBuscarInmueble.global_4308268Get()
  loc_A87DC1: FLdPr var_A8
  loc_A87DC4: from_stack_1 = clsInmueble.RecordCount
  loc_A87DC9: ILdRf var_AC
  loc_A87DCC: LitI4 0
  loc_A87DD1: GtI4
  loc_A87DD2: FFree1Ad var_A8
  loc_A87DD5: BranchF loc_A87E14
  loc_A87DD8: FLdRfVar var_AC
  loc_A87DDB: FLdRfVar var_A8
  loc_A87DDE: ImpAdLdRf MemVar_D9477C
  loc_A87DE1: NewIfNullPr dlgBuscarInmueble
  loc_A87DE4: from_stack_1v = dlgBuscarInmueble.global_4308268Get()
  loc_A87DE9: FLdPr var_A8
  loc_A87DEC: from_stack_1 = clsInmueble.CodiInmu
  loc_A87DF1: ILdRf var_AC
  loc_A87DF4: CStrI4
  loc_A87DF6: FStStrNoPop var_B0
  loc_A87DF9: FLdPr Me
  loc_A87DFC: VCallAd Control_ID_CodiInmuTxt
  loc_A87DFF: FStAdFunc var_B4
  loc_A87E02: FLdPr var_B4
  loc_A87E05: Me.Text = from_stack_1
  loc_A87E0A: FFree1Str var_B0
  loc_A87E0D: FFreeAd var_A8 = ""
  loc_A87E14: FLdPr Me
  loc_A87E17: VCallAd Control_ID_CodiInmuTxt
  loc_A87E1A: CVarAd
  loc_A87E1E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A87E23: FFree1Var var_C4 = ""
  loc_A87E26: ExitProcHresult
End Sub

Private Sub AgregarCmd_Click() 'A928DC
  'Data Table: 47D44C
  loc_A92838: FLdRfVar var_8C
  loc_A9283B: FLdPr Me
  loc_A9283E: VCallAd Control_ID_CodiInmuTxt
  loc_A92841: FStAdFunc var_88
  loc_A92844: FLdPr var_88
  loc_A92847:  = Me.Text
  loc_A9284C: ILdRf var_8C
  loc_A9284F: CR8Str
  loc_A92851: LitI2_Byte 0
  loc_A92853: CR8I2
  loc_A92854: GtR4
  loc_A92855: FFree1Str var_8C
  loc_A92858: FFree1Ad var_88
  loc_A9285B: BranchF loc_A928D9
  loc_A9285E: FLdRfVar var_8C
  loc_A92861: FLdPr Me
  loc_A92864: VCallAd Control_ID_OrdeObreTxt
  loc_A92867: FStAdFunc var_88
  loc_A9286A: FLdPr var_88
  loc_A9286D:  = Me.Text
  loc_A92872: FLdRfVar var_94
  loc_A92875: FLdPr Me
  loc_A92878: VCallAd Control_ID_CodiInmuTxt
  loc_A9287B: FStAdFunc var_90
  loc_A9287E: FLdPr var_90
  loc_A92881:  = Me.Text
  loc_A92886: ILdRf var_94
  loc_A92889: CI4Str
  loc_A9288A: ILdRf var_8C
  loc_A9288D: FLdPr Me
  loc_A92890: MemLdRfVar from_stack_1.global_56
  loc_A92893: NewIfNullPr clsobreinmu
  loc_A92896: Call clsobreinmu.AddNew(from_stack_1v, from_stack_2v)
  loc_A9289B: FFreeStr var_8C = ""
  loc_A928A2: FFreeAd var_88 = ""
  loc_A928A9: LitI2_Byte 0
  loc_A928AB: CStrUI1
  loc_A928AD: FStStrNoPop var_8C
  loc_A928B0: FLdPr Me
  loc_A928B3: VCallAd Control_ID_CodiInmuTxt
  loc_A928B6: FStAdFunc var_88
  loc_A928B9: FLdPr var_88
  loc_A928BC: Me.Text = from_stack_1
  loc_A928C1: FFree1Str var_8C
  loc_A928C4: FFree1Ad var_88
  loc_A928C7: FLdPr Me
  loc_A928CA: VCallAd Control_ID_CodiInmuTxt
  loc_A928CD: CVarAd
  loc_A928D1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A928D6: FFree1Var var_A4 = ""
  loc_A928D9: ExitProcHresult
  loc_A928DA: FLdRfVar var_2B8C
End Sub

Private Sub cmdCancelar_Click() 'A8FC4C
  'Data Table: 47D44C
  loc_A8FBAC: LitI2_Byte 0
  loc_A8FBAE: FLdPr Me
  loc_A8FBB1: MemStI2 global_60
  loc_A8FBB4: LitI2_Byte 0
  loc_A8FBB6: ILdRf Me
  loc_A8FBB9: CastAd
  loc_A8FBBC: FStAdFunc var_88
  loc_A8FBBF: FLdRfVar var_88
  loc_A8FBC2: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A8FBC7: FFree1Ad var_88
  loc_A8FBCA: LitI4 0
  loc_A8FBCF: LitI4 0
  loc_A8FBD4: FLdRfVar var_8C
  loc_A8FBD7: Redim
  loc_A8FBE1: FLdPr Me
  loc_A8FBE4: VCallAd Control_ID_dgdABMS
  loc_A8FBE7: CVarAd
  loc_A8FBEB: ParmAry1St
  loc_A8FBF1: FLdRfVar var_8C
  loc_A8FBF4: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A8FBF9: FLdRfVar var_8C
  loc_A8FBFC: Erase
  loc_A8FBFD: LitI4 0
  loc_A8FC02: LitI4 0
  loc_A8FC07: FLdRfVar var_8C
  loc_A8FC0A: Redim
  loc_A8FC14: FLdPr Me
  loc_A8FC17: VCallAd Control_ID_dgdABMS2
  loc_A8FC1A: CVarAd
  loc_A8FC1E: ParmAry1St
  loc_A8FC24: FLdRfVar var_8C
  loc_A8FC27: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A8FC2C: FLdRfVar var_8C
  loc_A8FC2F: Erase
  loc_A8FC30: Call EnlazaTodo()
  loc_A8FC35: ILdRf Me
  loc_A8FC38: CastAd
  loc_A8FC3B: FStAdFunc var_88
  loc_A8FC3E: FLdRfVar var_88
  loc_A8FC41: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A8FC46: FFree1Ad var_88
  loc_A8FC49: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BAC72C
  'Data Table: 47D44C
  loc_BAC104: ILdRf Button
  loc_BAC107: FStAd var_88 
  loc_BAC10B: FLdRfVar var_90
  loc_BAC10E: FLdPr var_88
  loc_BAC111:  = Me.Key
  loc_BAC116: FLdZeroAd var_90
  loc_BAC119: FStStr var_94
  loc_BAC11C: ILdRf var_94
  loc_BAC11F: LitStr "btnCrear"
  loc_BAC122: EqStr
  loc_BAC124: BranchF loc_BAC27A
  loc_BAC127: LitI2_Byte 1
  loc_BAC129: FLdPr Me
  loc_BAC12C: MemStI2 global_60
  loc_BAC12F: ILdRf Me
  loc_BAC132: CastAd
  loc_BAC135: FStAdFunc var_98
  loc_BAC138: FLdRfVar var_98
  loc_BAC13B: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BAC140: FFree1Ad var_98
  loc_BAC143: LitI4 0
  loc_BAC148: LitI4 0
  loc_BAC14D: FLdRfVar var_9C
  loc_BAC150: Redim
  loc_BAC15A: FLdPr Me
  loc_BAC15D: VCallAd Control_ID_dgdABMS
  loc_BAC160: CVarAd
  loc_BAC164: ParmAry1St
  loc_BAC16A: FLdRfVar var_9C
  loc_BAC16D: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BAC172: FLdRfVar var_9C
  loc_BAC175: Erase
  loc_BAC176: LitI4 0
  loc_BAC17B: LitI4 0
  loc_BAC180: FLdRfVar var_9C
  loc_BAC183: Redim
  loc_BAC18D: FLdPr Me
  loc_BAC190: VCallAd Control_ID_dgdABMS2
  loc_BAC193: CVarAd
  loc_BAC197: ParmAry1St
  loc_BAC19D: FLdRfVar var_9C
  loc_BAC1A0: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BAC1A5: FLdRfVar var_9C
  loc_BAC1A8: Erase
  loc_BAC1A9: ILdRf Me
  loc_BAC1AC: CastAd
  loc_BAC1AF: FStAdFunc var_98
  loc_BAC1B2: FLdRfVar var_98
  loc_BAC1B5: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BAC1BA: FFree1Ad var_98
  loc_BAC1BD: ILdRf Me
  loc_BAC1C0: CastAd
  loc_BAC1C3: FStAdFunc var_98
  loc_BAC1C6: FLdRfVar var_98
  loc_BAC1C9: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BAC1CE: FFree1Ad var_98
  loc_BAC1D1: LitI4 0
  loc_BAC1D6: LitI4 2
  loc_BAC1DB: FLdRfVar var_9C
  loc_BAC1DE: Redim
  loc_BAC1E8: FLdPr Me
  loc_BAC1EB: VCallAd Control_ID_OrdeObreTxt
  loc_BAC1EE: CVarAd
  loc_BAC1F2: ParmAry1St
  loc_BAC1F8: FLdPr Me
  loc_BAC1FB: VCallAd Control_ID_DetaObreTxt
  loc_BAC1FE: CVarAd
  loc_BAC202: ParmAry1St
  loc_BAC208: FLdPr Me
  loc_BAC20B: VCallAd Control_ID_NotaObreTxt
  loc_BAC20E: CVarAd
  loc_BAC212: ParmAry1St
  loc_BAC218: FLdRfVar var_9C
  loc_BAC21B: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BAC220: FLdRfVar var_9C
  loc_BAC223: Erase
  loc_BAC224: LitI4 0
  loc_BAC229: LitI4 2
  loc_BAC22E: FLdRfVar var_9C
  loc_BAC231: Redim
  loc_BAC23B: FLdPr Me
  loc_BAC23E: VCallAd Control_ID_CodiInmuTxt
  loc_BAC241: CVarAd
  loc_BAC245: ParmAry1St
  loc_BAC24B: FLdPr Me
  loc_BAC24E: VCallAd Control_ID_CodiInmuCmd
  loc_BAC251: CVarAd
  loc_BAC255: ParmAry1St
  loc_BAC25B: FLdPr Me
  loc_BAC25E: VCallAd Control_ID_AgregarCmd
  loc_BAC261: CVarAd
  loc_BAC265: ParmAry1St
  loc_BAC26B: FLdRfVar var_9C
  loc_BAC26E: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BAC273: FLdRfVar var_9C
  loc_BAC276: Erase
  loc_BAC277: Branch loc_BAC728
  loc_BAC27A: ILdRf var_94
  loc_BAC27D: LitStr "btnModificar"
  loc_BAC280: EqStr
  loc_BAC282: BranchF loc_BAC3DC
  loc_BAC285: FLdRfVar var_D0
  loc_BAC288: FLdPr Me
  loc_BAC28B: MemLdRfVar from_stack_1.global_52
  loc_BAC28E: NewIfNullPr clsobrareem
  loc_BAC291: from_stack_1 = clsobrareem.RecordCount
  loc_BAC296: ILdRf var_D0
  loc_BAC299: LitI4 0
  loc_BAC29E: GtI4
  loc_BAC29F: BranchF loc_BAC3D9
  loc_BAC2A2: LitI2_Byte 2
  loc_BAC2A4: FLdPr Me
  loc_BAC2A7: MemStI2 global_60
  loc_BAC2AA: ILdRf Me
  loc_BAC2AD: CastAd
  loc_BAC2B0: FStAdFunc var_98
  loc_BAC2B3: FLdRfVar var_98
  loc_BAC2B6: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BAC2BB: FFree1Ad var_98
  loc_BAC2BE: LitI4 0
  loc_BAC2C3: LitI4 0
  loc_BAC2C8: FLdRfVar var_9C
  loc_BAC2CB: Redim
  loc_BAC2D5: FLdPr Me
  loc_BAC2D8: VCallAd Control_ID_dgdABMS
  loc_BAC2DB: CVarAd
  loc_BAC2DF: ParmAry1St
  loc_BAC2E5: FLdRfVar var_9C
  loc_BAC2E8: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BAC2ED: FLdRfVar var_9C
  loc_BAC2F0: Erase
  loc_BAC2F1: LitI4 0
  loc_BAC2F6: LitI4 0
  loc_BAC2FB: FLdRfVar var_9C
  loc_BAC2FE: Redim
  loc_BAC308: FLdPr Me
  loc_BAC30B: VCallAd Control_ID_dgdABMS2
  loc_BAC30E: CVarAd
  loc_BAC312: ParmAry1St
  loc_BAC318: FLdRfVar var_9C
  loc_BAC31B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BAC320: FLdRfVar var_9C
  loc_BAC323: Erase
  loc_BAC324: ILdRf Me
  loc_BAC327: CastAd
  loc_BAC32A: FStAdFunc var_98
  loc_BAC32D: FLdRfVar var_98
  loc_BAC330: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BAC335: FFree1Ad var_98
  loc_BAC338: LitI2_Byte 0
  loc_BAC33A: CStrUI1
  loc_BAC33C: FStStrNoPop var_90
  loc_BAC33F: FLdPr Me
  loc_BAC342: VCallAd Control_ID_CodiInmuTxt
  loc_BAC345: FStAdFunc var_98
  loc_BAC348: FLdPr var_98
  loc_BAC34B: Me.Text = from_stack_1
  loc_BAC350: FFree1Str var_90
  loc_BAC353: FFree1Ad var_98
  loc_BAC356: LitI4 0
  loc_BAC35B: LitI4 5
  loc_BAC360: FLdRfVar var_9C
  loc_BAC363: Redim
  loc_BAC36D: FLdPr Me
  loc_BAC370: VCallAd Control_ID_DetaObreTxt
  loc_BAC373: CVarAd
  loc_BAC377: ParmAry1St
  loc_BAC37D: FLdPr Me
  loc_BAC380: VCallAd Control_ID_CodiInmuTxt
  loc_BAC383: CVarAd
  loc_BAC387: ParmAry1St
  loc_BAC38D: FLdPr Me
  loc_BAC390: VCallAd Control_ID_AgregarCmd
  loc_BAC393: CVarAd
  loc_BAC397: ParmAry1St
  loc_BAC39D: FLdPr Me
  loc_BAC3A0: VCallAd Control_ID_CodiInmuCmd
  loc_BAC3A3: CVarAd
  loc_BAC3A7: ParmAry1St
  loc_BAC3AD: FLdPr Me
  loc_BAC3B0: VCallAd Control_ID_NotaObreTxt
  loc_BAC3B3: CVarAd
  loc_BAC3B7: ParmAry1St
  loc_BAC3BD: FLdPr Me
  loc_BAC3C0: VCallAd Control_ID_dgdABMS2
  loc_BAC3C3: CVarAd
  loc_BAC3C7: ParmAry1St
  loc_BAC3CD: FLdRfVar var_9C
  loc_BAC3D0: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BAC3D5: FLdRfVar var_9C
  loc_BAC3D8: Erase
  loc_BAC3D9: Branch loc_BAC728
  loc_BAC3DC: ILdRf var_94
  loc_BAC3DF: LitStr "btnEliminar"
  loc_BAC3E2: EqStr
  loc_BAC3E4: BranchF loc_BAC3EA
  loc_BAC3E7: Branch loc_BAC728
  loc_BAC3EA: ILdRf var_94
  loc_BAC3ED: LitStr "btnGuardar"
  loc_BAC3F0: EqStr
  loc_BAC3F2: BranchF loc_BAC517
  loc_BAC3F5: LitI2_Byte 0
  loc_BAC3F7: PopTmpLdAd2 var_102
  loc_BAC3FA: Call OrdeObreTxt_Validate(from_stack_1v)
  loc_BAC3FF: FLdPr Me
  loc_BAC402: MemLdStr global_64
  loc_BAC405: LitStr vbNullString
  loc_BAC408: NeStr
  loc_BAC40A: BranchF loc_BAC40E
  loc_BAC40D: ExitProcHresult
  loc_BAC40E: LitI2_Byte 0
  loc_BAC410: PopTmpLdAd2 var_102
  loc_BAC413: Call DetaObreTxt_Validate(from_stack_1v)
  loc_BAC418: FLdPr Me
  loc_BAC41B: MemLdStr global_64
  loc_BAC41E: LitStr vbNullString
  loc_BAC421: NeStr
  loc_BAC423: BranchF loc_BAC427
  loc_BAC426: ExitProcHresult
  loc_BAC427: FLdPr Me
  loc_BAC42A: MemLdI2 global_60
  loc_BAC42D: FStI2 var_104
  loc_BAC430: FLdI2 var_104
  loc_BAC433: LitI2_Byte 1
  loc_BAC435: EqI2
  loc_BAC436: BranchF loc_BAC4A1
  loc_BAC439: FLdRfVar var_90
  loc_BAC43C: FLdPr Me
  loc_BAC43F: VCallAd Control_ID_OrdeObreTxt
  loc_BAC442: FStAdFunc var_98
  loc_BAC445: FLdPr var_98
  loc_BAC448:  = Me.Text
  loc_BAC44D: FLdRfVar var_10C
  loc_BAC450: FLdPr Me
  loc_BAC453: VCallAd Control_ID_DetaObreTxt
  loc_BAC456: FStAdFunc var_108
  loc_BAC459: FLdPr var_108
  loc_BAC45C:  = Me.Text
  loc_BAC461: FLdRfVar var_114
  loc_BAC464: FLdPr Me
  loc_BAC467: VCallAd Control_ID_NotaObreTxt
  loc_BAC46A: FStAdFunc var_110
  loc_BAC46D: FLdPr var_110
  loc_BAC470:  = Me.Text
  loc_BAC475: ILdRf var_114
  loc_BAC478: ILdRf var_10C
  loc_BAC47B: ILdRf var_90
  loc_BAC47E: FLdPr Me
  loc_BAC481: MemLdRfVar from_stack_1.global_52
  loc_BAC484: NewIfNullPr clsobrareem
  loc_BAC487: Call clsobrareem.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BAC48C: FFreeStr var_90 = "": var_10C = ""
  loc_BAC495: FFreeAd var_98 = "": var_108 = ""
  loc_BAC49E: Branch loc_BAC50F
  loc_BAC4A1: FLdI2 var_104
  loc_BAC4A4: LitI2_Byte 2
  loc_BAC4A6: EqI2
  loc_BAC4A7: BranchF loc_BAC50F
  loc_BAC4AA: FLdRfVar var_90
  loc_BAC4AD: FLdPr Me
  loc_BAC4B0: VCallAd Control_ID_OrdeObreTxt
  loc_BAC4B3: FStAdFunc var_98
  loc_BAC4B6: FLdPr var_98
  loc_BAC4B9:  = Me.Text
  loc_BAC4BE: FLdRfVar var_10C
  loc_BAC4C1: FLdPr Me
  loc_BAC4C4: VCallAd Control_ID_DetaObreTxt
  loc_BAC4C7: FStAdFunc var_108
  loc_BAC4CA: FLdPr var_108
  loc_BAC4CD:  = Me.Text
  loc_BAC4D2: FLdRfVar var_114
  loc_BAC4D5: FLdPr Me
  loc_BAC4D8: VCallAd Control_ID_NotaObreTxt
  loc_BAC4DB: FStAdFunc var_110
  loc_BAC4DE: FLdPr var_110
  loc_BAC4E1:  = Me.Text
  loc_BAC4E6: ILdRf var_114
  loc_BAC4E9: ILdRf var_10C
  loc_BAC4EC: ILdRf var_90
  loc_BAC4EF: FLdPr Me
  loc_BAC4F2: MemLdRfVar from_stack_1.global_52
  loc_BAC4F5: NewIfNullPr clsobrareem
  loc_BAC4F8: Call clsobrareem.Modificar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BAC4FD: FFreeStr var_90 = "": var_10C = ""
  loc_BAC506: FFreeAd var_98 = "": var_108 = ""
  loc_BAC50F: Call cmdCancelar_Click()
  loc_BAC514: Branch loc_BAC728
  loc_BAC517: ILdRf var_94
  loc_BAC51A: LitStr "btnCancelar"
  loc_BAC51D: EqStr
  loc_BAC51F: BranchF loc_BAC52A
  loc_BAC522: Call cmdCancelar_Click()
  loc_BAC527: Branch loc_BAC728
  loc_BAC52A: ILdRf var_94
  loc_BAC52D: LitStr "btnPrimero"
  loc_BAC530: EqStr
  loc_BAC532: BranchF loc_BAC546
  loc_BAC535: FLdPr Me
  loc_BAC538: MemLdRfVar from_stack_1.global_52
  loc_BAC53B: NewIfNullPr clsobrareem
  loc_BAC53E: Call clsobrareem.MoveFirst()
  loc_BAC543: Branch loc_BAC728
  loc_BAC546: ILdRf var_94
  loc_BAC549: LitStr "btnAnterior"
  loc_BAC54C: EqStr
  loc_BAC54E: BranchF loc_BAC562
  loc_BAC551: FLdPr Me
  loc_BAC554: MemLdRfVar from_stack_1.global_52
  loc_BAC557: NewIfNullPr clsobrareem
  loc_BAC55A: Call clsobrareem.MovePrevious()
  loc_BAC55F: Branch loc_BAC728
  loc_BAC562: ILdRf var_94
  loc_BAC565: LitStr "btnSiguiente"
  loc_BAC568: EqStr
  loc_BAC56A: BranchF loc_BAC57E
  loc_BAC56D: FLdPr Me
  loc_BAC570: MemLdRfVar from_stack_1.global_52
  loc_BAC573: NewIfNullPr clsobrareem
  loc_BAC576: Call clsobrareem.MoveNext()
  loc_BAC57B: Branch loc_BAC728
  loc_BAC57E: ILdRf var_94
  loc_BAC581: LitStr "btnUltimo"
  loc_BAC584: EqStr
  loc_BAC586: BranchF loc_BAC59A
  loc_BAC589: FLdPr Me
  loc_BAC58C: MemLdRfVar from_stack_1.global_52
  loc_BAC58F: NewIfNullPr clsobrareem
  loc_BAC592: Call clsobrareem.MoveLast()
  loc_BAC597: Branch loc_BAC728
  loc_BAC59A: ILdRf var_94
  loc_BAC59D: LitStr "btnFiltrar"
  loc_BAC5A0: EqStr
  loc_BAC5A2: BranchF loc_BAC60E
  loc_BAC5A5: LitVar_Missing var_134
  loc_BAC5A8: PopAdLdVar
  loc_BAC5A9: LitVarI4
  loc_BAC5B1: PopAdLdVar
  loc_BAC5B2: ImpAdLdRf MemVar_D94790
  loc_BAC5B5: NewIfNullPr dlgFiltrarAfectaciondePadrones
  loc_BAC5B8: dlgFiltrarAfectaciondePadrones.Show from_stack_1, from_stack_2
  loc_BAC5BD: FLdRfVar var_90
  loc_BAC5C0: ImpAdLdRf MemVar_D94790
  loc_BAC5C3: NewIfNullPr dlgFiltrarAfectaciondePadrones
  loc_BAC5C6: from_stack_1v = dlgFiltrarAfectaciondePadrones.sPasaSelectGet()
  loc_BAC5CB: ILdRf var_90
  loc_BAC5CE: FLdPr Me
  loc_BAC5D1: MemLdRfVar from_stack_1.global_52
  loc_BAC5D4: NewIfNullPr clsobrareem
  loc_BAC5D7: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_BAC5DC: FFree1Str var_90
  loc_BAC5DF: FLdRfVar var_90
  loc_BAC5E2: ImpAdLdRf MemVar_D94790
  loc_BAC5E5: NewIfNullPr dlgFiltrarAfectaciondePadrones
  loc_BAC5E8: from_stack_1v = dlgFiltrarAfectaciondePadrones.sCaptionGet()
  loc_BAC5ED: FLdZeroAd var_90
  loc_BAC5F0: CVarStr var_AC
  loc_BAC5F3: PopAdLdVar
  loc_BAC5F4: FLdPr Me
  loc_BAC5F7: VCallAd Control_ID_
  loc_BAC5FA: FStAdFunc var_98
  loc_BAC5FD: FLdPr var_98
  loc_BAC600: LateIdSt
  loc_BAC605: FFree1Ad var_98
  loc_BAC608: FFree1Var var_AC = ""
  loc_BAC60B: Branch loc_BAC728
  loc_BAC60E: ILdRf var_94
  loc_BAC611: LitStr "btnBuscar"
  loc_BAC614: EqStr
  loc_BAC616: BranchF loc_BAC61C
  loc_BAC619: Branch loc_BAC728
  loc_BAC61C: ILdRf var_94
  loc_BAC61F: LitStr "btnImprimir"
  loc_BAC622: EqStr
  loc_BAC624: BranchF loc_BAC6D1
  loc_BAC627: ImpAdLdRf MemVar_D947A4
  loc_BAC62A: NewIfNullAd
  loc_BAC62D: FStAd var_138 
  loc_BAC631: FLdRfVar var_90
  loc_BAC634: FLdPr Me
  loc_BAC637: MemLdRfVar from_stack_1.global_52
  loc_BAC63A: NewIfNullPr clsobrareem
  loc_BAC63D: from_stack_1 = clsobrareem.OrdeObre
  loc_BAC642: ILdRf var_90
  loc_BAC645: FLdPr var_138
  loc_BAC648: Call rptNotificacionInmueble.OrdeObrePut(from_stack_1v)
  loc_BAC64D: FFree1Str var_90
  loc_BAC650: FLdRfVar var_D0
  loc_BAC653: FLdPr Me
  loc_BAC656: MemLdRfVar from_stack_1.global_56
  loc_BAC659: NewIfNullPr clsobreinmu
  loc_BAC65C: from_stack_1 = clsobreinmu.CodiInmu
  loc_BAC661: ILdRf var_D0
  loc_BAC664: CStrI4
  loc_BAC666: CVarStr var_AC
  loc_BAC669: PopAdLdVar
  loc_BAC66A: FLdPr var_138
  loc_BAC66D: VCallAd Control_ID_cmdCancelar
  loc_BAC670: FStAdFunc var_98
  loc_BAC673: FLdPr var_98
  loc_BAC676: LateIdSt
  loc_BAC67B: FFree1Ad var_98
  loc_BAC67E: FFree1Var var_AC = ""
  loc_BAC681: FLdPr var_138
  loc_BAC684: VCallAd Control_ID_cmdCancelar
  loc_BAC687: FStAdFunc var_98
  loc_BAC68A: FLdPr var_98
  loc_BAC68D: LateIdLdVar var_AC DispID_22 0
  loc_BAC694: CStrVarTmp
  loc_BAC695: CVarStr var_BC
  loc_BAC698: PopAdLdVar
  loc_BAC699: FLdPr var_138
  loc_BAC69C: VCallAd Control_ID_dgdABMS
  loc_BAC69F: FStAdFunc var_108
  loc_BAC6A2: FLdPr var_108
  loc_BAC6A5: LateIdSt
  loc_BAC6AA: FFreeAd var_98 = ""
  loc_BAC6B1: FFreeVar var_AC = ""
  loc_BAC6B8: LitVar_Missing var_134
  loc_BAC6BB: PopAdLdVar
  loc_BAC6BC: LitVar_Missing var_124
  loc_BAC6BF: PopAdLdVar
  loc_BAC6C0: FLdPr var_138
  loc_BAC6C3: Me.Show from_stack_1, from_stack_2
  loc_BAC6C8: LitNothing
  loc_BAC6CA: FStAd var_138 
  loc_BAC6CE: Branch loc_BAC728
  loc_BAC6D1: ILdRf var_94
  loc_BAC6D4: LitStr "btnAyuda"
  loc_BAC6D7: EqStr
  loc_BAC6D9: BranchF loc_BAC708
  loc_BAC6DC: LitVar_Missing var_E0
  loc_BAC6DF: LitVar_Missing var_CC
  loc_BAC6E2: LitVar_Missing var_BC
  loc_BAC6E5: LitI4 0
  loc_BAC6EA: LitVarStr var_124, "Opcion no disponible en esta version."
  loc_BAC6EF: FStVarCopyObj var_AC
  loc_BAC6F2: FLdRfVar var_AC
  loc_BAC6F5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BAC6FA: FFreeVar var_AC = "": var_BC = "": var_CC = ""
  loc_BAC705: Branch loc_BAC728
  loc_BAC708: ILdRf var_94
  loc_BAC70B: LitStr "btnSalir"
  loc_BAC70E: EqStr
  loc_BAC710: BranchF loc_BAC728
  loc_BAC713: ILdRf Me
  loc_BAC716: FStAdNoPop
  loc_BAC71A: ImpAdLdRf MemVar_D9C5D8
  loc_BAC71D: NewIfNullPr Global
  loc_BAC720: Global.Unload from_stack_1
  loc_BAC725: FFree1Ad var_98
  loc_BAC728: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9CADF8
  'Data Table: 47D44C
  loc_9CADE0: FLdPr Me
  loc_9CADE3: VCallAd Control_ID_dgdABMS
  loc_9CADE6: FStAdFunc var_88
  loc_9CADE9: FLdRfVar var_88
  loc_9CADEC: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CADF1: FFree1Ad var_88
  loc_9CADF4: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9CAB98
  'Data Table: 47D44C
  loc_9CAB80: FLdPr Me
  loc_9CAB83: VCallAd Control_ID_dgdABMS
  loc_9CAB86: FStAdFunc var_88
  loc_9CAB89: FLdRfVar var_88
  loc_9CAB8C: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CAB91: FFree1Ad var_88
  loc_9CAB94: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A688A4
  'Data Table: 47D44C
  loc_A68848: FLdRfVar var_B4
  loc_A6884B: FLdRfVar var_B0
  loc_A6884E: FLdI2 ColIndex
  loc_A68851: CVarI2 var_A8
  loc_A68854: PopAdLdVar
  loc_A68855: FLdPr Me
  loc_A68858: VCallAd Control_ID_dgdABMS
  loc_A6885B: FStAdFunc var_88
  loc_A6885E: FLdPr var_88
  loc_A68861: LateIdLdVar var_98 DispID_105 0
  loc_A68868: CastAdVar Me
  loc_A6886C: FStAdFunc var_AC
  loc_A6886F: FLdPr var_AC
  loc_A68872: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68877: FLdPr var_B0
  loc_A6887A:  = Me.DataField
  loc_A6887F: FLdZeroAd var_B4
  loc_A68882: PopTmpLdAdStr
  loc_A68886: FLdPr Me
  loc_A68889: MemLdRfVar from_stack_1.global_52
  loc_A6888C: NewIfNullPr clsobrareem
  loc_A6888F: Call clsobrareem.Sort(from_stack_1v)
  loc_A68894: FFree1Str var_B8
  loc_A68897: FFreeAd var_88 = "": var_AC = ""
  loc_A688A0: FFree1Var var_98 = ""
  loc_A688A3: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AB221C
  'Data Table: 47D44C
  loc_AB214C: FLdPr Me
  loc_AB214F: MemLdI2 global_60
  loc_AB2152: LitI2_Byte 0
  loc_AB2154: EqI2
  loc_AB2155: FLdRfVar var_88
  loc_AB2158: FLdPr Me
  loc_AB215B: MemLdRfVar from_stack_1.global_52
  loc_AB215E: NewIfNullPr clsobrareem
  loc_AB2161: from_stack_1 = clsobrareem.RecordCount
  loc_AB2166: ILdRf var_88
  loc_AB2169: LitI4 0
  loc_AB216E: GtI4
  loc_AB216F: AndI4
  loc_AB2170: BranchF loc_AB221A
  loc_AB2173: FLdRfVar var_8A
  loc_AB2176: FLdPr Me
  loc_AB2179: MemLdRfVar from_stack_1.global_52
  loc_AB217C: NewIfNullPr clsobrareem
  loc_AB217F: from_stack_1 = clsobrareem.BOF
  loc_AB2184: FLdI2 var_8A
  loc_AB2187: BranchF loc_AB2198
  loc_AB218A: FLdPr Me
  loc_AB218D: MemLdRfVar from_stack_1.global_52
  loc_AB2190: NewIfNullPr clsobrareem
  loc_AB2193: Call clsobrareem.MoveFirst()
  loc_AB2198: FLdRfVar var_8A
  loc_AB219B: FLdPr Me
  loc_AB219E: MemLdRfVar from_stack_1.global_52
  loc_AB21A1: NewIfNullPr clsobrareem
  loc_AB21A4: from_stack_1 = clsobrareem.EOF
  loc_AB21A9: FLdI2 var_8A
  loc_AB21AC: BranchF loc_AB21BD
  loc_AB21AF: FLdPr Me
  loc_AB21B2: MemLdRfVar from_stack_1.global_52
  loc_AB21B5: NewIfNullPr clsobrareem
  loc_AB21B8: Call clsobrareem.MoveLast()
  loc_AB21BD: LitStr "SELECT obreinmu.OrdeObre, obreinmu.CodiInmu, DetaPers, obreinmu.FenoObin, obreinmu.ObseObin FROM obreinmu "
  loc_AB21C0: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_AB21C3: ConcatStr
  loc_AB21C4: FStStrNoPop var_90
  loc_AB21C7: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_AB21CA: ConcatStr
  loc_AB21CB: FStStrNoPop var_94
  loc_AB21CE: LitStr " WHERE obreinmu.OrdeObre = '"
  loc_AB21D1: ConcatStr
  loc_AB21D2: FStStrNoPop var_9C
  loc_AB21D5: FLdRfVar var_98
  loc_AB21D8: FLdPr Me
  loc_AB21DB: MemLdRfVar from_stack_1.global_52
  loc_AB21DE: NewIfNullPr clsobrareem
  loc_AB21E1: from_stack_1 = clsobrareem.OrdeObre
  loc_AB21E6: ILdRf var_98
  loc_AB21E9: ConcatStr
  loc_AB21EA: FStStrNoPop var_A0
  loc_AB21ED: LitStr "' "
  loc_AB21F0: ConcatStr
  loc_AB21F1: FStStrNoPop var_A4
  loc_AB21F4: LitStr " ORDER BY obreinmu.OrdeObre, CodiInmu"
  loc_AB21F7: ConcatStr
  loc_AB21F8: FStStrNoPop var_A8
  loc_AB21FB: FLdPr Me
  loc_AB21FE: MemLdRfVar from_stack_1.global_56
  loc_AB2201: NewIfNullPr clsobreinmu
  loc_AB2204: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_AB2209: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = "": var_A4 = ""
  loc_AB221A: ExitProcHresult
End Sub

Private Sub OrdeObreTxt_GotFocus() '9BD620
  'Data Table: 47D44C
  loc_9BD60C: FLdPr Me
  loc_9BD60F: VCallAd Control_ID_OrdeObreTxt
  loc_9BD612: CVarAd
  loc_9BD616: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD61B: FFree1Var var_94 = ""
  loc_9BD61E: ExitProcHresult
  loc_9BD61F: ExitProcR4
End Sub

Private Sub OrdeObreTxt_Validate(Cancel As Boolean) 'AD27A0
  'Data Table: 47D44C
  loc_AD2674: FLdRfVar var_8A
  loc_AD2677: FLdPr Me
  loc_AD267A: VCallAd Control_ID_OrdeObreTxt
  loc_AD267D: FStAdFunc var_88
  loc_AD2680: FLdPr var_88
  loc_AD2683:  = Me.Enabled
  loc_AD2688: FLdI2 var_8A
  loc_AD268B: LitI2_Byte &HFF
  loc_AD268D: EqI2
  loc_AD268E: FFree1Ad var_88
  loc_AD2691: BranchF loc_AD279E
  loc_AD2694: FLdRfVar var_8A
  loc_AD2697: FLdPr Me
  loc_AD269A: VCallAd Control_ID_cmdCancelar
  loc_AD269D: FStAdFunc var_88
  loc_AD26A0: FLdPr var_88
  loc_AD26A3:  = Me.Value
  loc_AD26A8: FLdI2 var_8A
  loc_AD26AB: NotI4
  loc_AD26AC: FLdRfVar var_92
  loc_AD26AF: FLdPr Me
  loc_AD26B2: VCallAd Control_ID_OrdeObreTxt
  loc_AD26B5: FStAdFunc var_90
  loc_AD26B8: FLdPr var_90
  loc_AD26BB:  = Me.Enabled
  loc_AD26C0: FLdI2 var_92
  loc_AD26C3: AndI4
  loc_AD26C4: FFreeAd var_88 = ""
  loc_AD26CB: BranchF loc_AD279E
  loc_AD26CE: FLdRfVar var_98
  loc_AD26D1: FLdPr Me
  loc_AD26D4: VCallAd Control_ID_OrdeObreTxt
  loc_AD26D7: FStAdFunc var_88
  loc_AD26DA: FLdPr var_88
  loc_AD26DD:  = Me.Text
  loc_AD26E2: ILdRf var_98
  loc_AD26E5: LitStr "Ordenanza"
  loc_AD26E8: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AD26ED: FStStrNoPop var_9C
  loc_AD26F0: FLdPr Me
  loc_AD26F3: MemStStrCopy
  loc_AD26F7: FFreeStr var_98 = ""
  loc_AD26FE: FFree1Ad var_88
  loc_AD2701: FLdPr Me
  loc_AD2704: MemLdStr global_64
  loc_AD2707: LitStr vbNullString
  loc_AD270A: NeStr
  loc_AD270C: BranchF loc_AD2731
  loc_AD270F: FLdPr Me
  loc_AD2712: MemLdStr global_64
  loc_AD2715: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD271A: FLdPr Me
  loc_AD271D: VCallAd Control_ID_OrdeObreTxt
  loc_AD2720: CVarAd
  loc_AD2724: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD2729: FFree1Var var_AC = ""
  loc_AD272C: LitI2_Byte &HFF
  loc_AD272E: IStI2 Cancel
  loc_AD2731: FLdRfVar var_9C
  loc_AD2734: FLdRfVar var_98
  loc_AD2737: FLdPr Me
  loc_AD273A: VCallAd Control_ID_OrdeObreTxt
  loc_AD273D: FStAdFunc var_88
  loc_AD2740: FLdPr var_88
  loc_AD2743:  = Me.Text
  loc_AD2748: ILdRf var_98
  loc_AD274B: FLdPr Me
  loc_AD274E: MemLdRfVar from_stack_1.global_52
  loc_AD2751: NewIfNullPr clsobrareem
  loc_AD2754: from_stack_2v = clsobrareem.ValidaClave(from_stack_1v)
  loc_AD2759: ILdRf var_9C
  loc_AD275C: FLdPr Me
  loc_AD275F: MemStStrCopy
  loc_AD2763: FFreeStr var_98 = ""
  loc_AD276A: FFree1Ad var_88
  loc_AD276D: FLdPr Me
  loc_AD2770: MemLdStr global_64
  loc_AD2773: LitStr vbNullString
  loc_AD2776: NeStr
  loc_AD2778: BranchF loc_AD279E
  loc_AD277B: FLdPr Me
  loc_AD277E: MemLdStr global_64
  loc_AD2781: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD2786: FLdPr Me
  loc_AD2789: VCallAd Control_ID_OrdeObreTxt
  loc_AD278C: CVarAd
  loc_AD2790: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD2795: FFree1Var var_AC = ""
  loc_AD2798: LitI2_Byte &HFF
  loc_AD279A: IStI2 Cancel
  loc_AD279D: ExitProcHresult
  loc_AD279E: ExitProcHresult
  loc_AD279F: Ary1LdCy
End Sub

Private Sub CodiInmuTxt_GotFocus() '9BD470
  'Data Table: 47D44C
  loc_9BD45C: FLdPr Me
  loc_9BD45F: VCallAd Control_ID_CodiInmuTxt
  loc_9BD462: CVarAd
  loc_9BD466: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD46B: FFree1Var var_94 = ""
  loc_9BD46E: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_KeyPress(KeyAscii As Integer) '9CAE44
  'Data Table: 47D44C
  loc_9CAE2C: LitStr "0123456789"
  loc_9CAE2F: FStStrCopy var_88
  loc_9CAE32: FLdRfVar var_88
  loc_9CAE35: ILdRf KeyAscii
  loc_9CAE38: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CAE3D: IStI2 KeyAscii
  loc_9CAE40: FFree1Str var_88
  loc_9CAE43: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_Validate(Cancel As Boolean) 'ADFDE8
  'Data Table: 47D44C
  loc_ADFC98: FLdRfVar var_8A
  loc_ADFC9B: FLdPr Me
  loc_ADFC9E: VCallAd Control_ID_cmdCancelar
  loc_ADFCA1: FStAdFunc var_88
  loc_ADFCA4: FLdPr var_88
  loc_ADFCA7:  = Me.Value
  loc_ADFCAC: FLdI2 var_8A
  loc_ADFCAF: NotI4
  loc_ADFCB0: FLdRfVar var_92
  loc_ADFCB3: FLdPr Me
  loc_ADFCB6: VCallAd Control_ID_CodiInmuTxt
  loc_ADFCB9: FStAdFunc var_90
  loc_ADFCBC: FLdPr var_90
  loc_ADFCBF:  = Me.Enabled
  loc_ADFCC4: FLdI2 var_92
  loc_ADFCC7: LitI2_Byte &HFF
  loc_ADFCC9: EqI2
  loc_ADFCCA: AndI4
  loc_ADFCCB: FLdRfVar var_9C
  loc_ADFCCE: FLdPr Me
  loc_ADFCD1: VCallAd Control_ID_CodiInmuTxt
  loc_ADFCD4: FStAdFunc var_98
  loc_ADFCD7: FLdPr var_98
  loc_ADFCDA:  = Me.Text
  loc_ADFCDF: ILdRf var_9C
  loc_ADFCE2: LitStr "0"
  loc_ADFCE5: NeStr
  loc_ADFCE7: AndI4
  loc_ADFCE8: FFree1Str var_9C
  loc_ADFCEB: FFreeAd var_88 = "": var_90 = ""
  loc_ADFCF4: BranchF loc_ADFDE5
  loc_ADFCF7: LitI2_Byte 0
  loc_ADFCF9: FLdRfVar var_9C
  loc_ADFCFC: FLdPr Me
  loc_ADFCFF: VCallAd Control_ID_CodiInmuTxt
  loc_ADFD02: FStAdFunc var_88
  loc_ADFD05: FLdPr var_88
  loc_ADFD08:  = Me.Text
  loc_ADFD0D: ILdRf var_9C
  loc_ADFD10: ImpAdCallI2 Proc_18_47_B06848(, )
  loc_ADFD15: FStStrNoPop var_A0
  loc_ADFD18: FLdPr Me
  loc_ADFD1B: MemStStrCopy
  loc_ADFD1F: FFreeStr var_9C = ""
  loc_ADFD26: FFree1Ad var_88
  loc_ADFD29: FLdPr Me
  loc_ADFD2C: MemLdStr global_64
  loc_ADFD2F: LitStr vbNullString
  loc_ADFD32: NeStr
  loc_ADFD34: BranchF loc_ADFD5A
  loc_ADFD37: FLdPr Me
  loc_ADFD3A: MemLdStr global_64
  loc_ADFD3D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADFD42: FLdPr Me
  loc_ADFD45: VCallAd Control_ID_CodiInmuTxt
  loc_ADFD48: CVarAd
  loc_ADFD4C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADFD51: FFree1Var var_B0 = ""
  loc_ADFD54: LitI2_Byte &HFF
  loc_ADFD56: IStI2 Cancel
  loc_ADFD59: ExitProcHresult
  loc_ADFD5A: FLdRfVar var_9C
  loc_ADFD5D: FLdPr Me
  loc_ADFD60: VCallAd Control_ID_OrdeObreTxt
  loc_ADFD63: FStAdFunc var_88
  loc_ADFD66: FLdPr var_88
  loc_ADFD69:  = Me.Text
  loc_ADFD6E: FLdRfVar var_A0
  loc_ADFD71: FLdPr Me
  loc_ADFD74: VCallAd Control_ID_CodiInmuTxt
  loc_ADFD77: FStAdFunc var_90
  loc_ADFD7A: FLdPr var_90
  loc_ADFD7D:  = Me.Text
  loc_ADFD82: FLdRfVar var_B4
  loc_ADFD85: ILdRf var_A0
  loc_ADFD88: CI4Str
  loc_ADFD89: ILdRf var_9C
  loc_ADFD8C: FLdPr Me
  loc_ADFD8F: MemLdRfVar from_stack_1.global_56
  loc_ADFD92: NewIfNullPr clsobreinmu
  loc_ADFD95: from_stack_3v = clsobreinmu.ValidaClave(from_stack_1v, from_stack_2v)
  loc_ADFD9A: ILdRf var_B4
  loc_ADFD9D: FLdPr Me
  loc_ADFDA0: MemStStrCopy
  loc_ADFDA4: FFreeStr var_9C = "": var_A0 = ""
  loc_ADFDAD: FFreeAd var_88 = ""
  loc_ADFDB4: FLdPr Me
  loc_ADFDB7: MemLdStr global_64
  loc_ADFDBA: LitStr vbNullString
  loc_ADFDBD: NeStr
  loc_ADFDBF: BranchF loc_ADFDE5
  loc_ADFDC2: FLdPr Me
  loc_ADFDC5: MemLdStr global_64
  loc_ADFDC8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADFDCD: FLdPr Me
  loc_ADFDD0: VCallAd Control_ID_CodiInmuTxt
  loc_ADFDD3: CVarAd
  loc_ADFDD7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADFDDC: FFree1Var var_B0 = ""
  loc_ADFDDF: LitI2_Byte &HFF
  loc_ADFDE1: IStI2 Cancel
  loc_ADFDE4: ExitProcHresult
  loc_ADFDE5: ExitProcHresult
End Sub

Private Sub DetaObreTxt_GotFocus() '9BD5D8
  'Data Table: 47D44C
  loc_9BD5C4: FLdPr Me
  loc_9BD5C7: VCallAd Control_ID_DetaObreTxt
  loc_9BD5CA: CVarAd
  loc_9BD5CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD5D3: FFree1Var var_94 = ""
  loc_9BD5D6: ExitProcHresult
End Sub

Private Sub DetaObreTxt_Validate(Cancel As Boolean) 'A8FEF8
  'Data Table: 47D44C
  loc_A8FE58: FLdRfVar var_8A
  loc_A8FE5B: FLdPr Me
  loc_A8FE5E: VCallAd Control_ID_cmdCancelar
  loc_A8FE61: FStAdFunc var_88
  loc_A8FE64: FLdPr var_88
  loc_A8FE67:  = Me.Value
  loc_A8FE6C: FLdI2 var_8A
  loc_A8FE6F: NotI4
  loc_A8FE70: FLdRfVar var_92
  loc_A8FE73: FLdPr Me
  loc_A8FE76: VCallAd Control_ID_DetaObreTxt
  loc_A8FE79: FStAdFunc var_90
  loc_A8FE7C: FLdPr var_90
  loc_A8FE7F:  = Me.Enabled
  loc_A8FE84: FLdI2 var_92
  loc_A8FE87: AndI4
  loc_A8FE88: FFreeAd var_88 = ""
  loc_A8FE8F: BranchF loc_A8FEF5
  loc_A8FE92: FLdRfVar var_98
  loc_A8FE95: FLdPr Me
  loc_A8FE98: VCallAd Control_ID_DetaObreTxt
  loc_A8FE9B: FStAdFunc var_88
  loc_A8FE9E: FLdPr var_88
  loc_A8FEA1:  = Me.Text
  loc_A8FEA6: ILdRf var_98
  loc_A8FEA9: LitStr "Ordenanza"
  loc_A8FEAC: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A8FEB1: FStStrNoPop var_9C
  loc_A8FEB4: FLdPr Me
  loc_A8FEB7: MemStStrCopy
  loc_A8FEBB: FFreeStr var_98 = ""
  loc_A8FEC2: FFree1Ad var_88
  loc_A8FEC5: FLdPr Me
  loc_A8FEC8: MemLdStr global_64
  loc_A8FECB: LitStr vbNullString
  loc_A8FECE: NeStr
  loc_A8FED0: BranchF loc_A8FEF5
  loc_A8FED3: FLdPr Me
  loc_A8FED6: MemLdStr global_64
  loc_A8FED9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8FEDE: FLdPr Me
  loc_A8FEE1: VCallAd Control_ID_DetaObreTxt
  loc_A8FEE4: CVarAd
  loc_A8FEE8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8FEED: FFree1Var var_AC = ""
  loc_A8FEF0: LitI2_Byte &HFF
  loc_A8FEF2: IStI2 Cancel
  loc_A8FEF5: ExitProcHresult
End Sub

Private Sub Form_Load() 'AFDBC4
  'Data Table: 47D44C
  loc_AFD9F8: LitI2_Byte 0
  loc_AFD9FA: CR8I2
  loc_AFD9FB: PopFPR4
  loc_AFD9FC: FLdPr Me
  loc_AFD9FF: Me.Left = from_stack_1s
  loc_AFDA04: LitI2_Byte 0
  loc_AFDA06: CR8I2
  loc_AFDA07: PopFPR4
  loc_AFDA08: FLdPr Me
  loc_AFDA0B: Me.Top = from_stack_1s
  loc_AFDA10: LitStr "SELECT OrdeObre, DetaObre, FealObre, NotaObre FROM obrareem ORDER BY OrdeObre"
  loc_AFDA13: FLdPr Me
  loc_AFDA16: MemLdRfVar from_stack_1.global_52
  loc_AFDA19: NewIfNullPr clsobrareem
  loc_AFDA1C: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_AFDA21: FLdRfVar var_88
  loc_AFDA24: FLdPr Me
  loc_AFDA27: MemLdRfVar from_stack_1.global_52
  loc_AFDA2A: NewIfNullPr clsobrareem
  loc_AFDA2D: from_stack_1 = clsobrareem.RecordCount
  loc_AFDA32: ILdRf var_88
  loc_AFDA35: LitI4 0
  loc_AFDA3A: GtI4
  loc_AFDA3B: BranchF loc_AFDA9E
  loc_AFDA3E: LitStr "SELECT obreinmu.OrdeObre, obreinmu.CodiInmu, DetaPers, obreinmu.FenoObin, obreinmu.ObseObin FROM obreinmu "
  loc_AFDA41: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_AFDA44: ConcatStr
  loc_AFDA45: FStStrNoPop var_8C
  loc_AFDA48: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_AFDA4B: ConcatStr
  loc_AFDA4C: FStStrNoPop var_90
  loc_AFDA4F: LitStr " WHERE obreinmu.OrdeObre = '"
  loc_AFDA52: ConcatStr
  loc_AFDA53: FStStrNoPop var_98
  loc_AFDA56: FLdRfVar var_94
  loc_AFDA59: FLdPr Me
  loc_AFDA5C: MemLdRfVar from_stack_1.global_52
  loc_AFDA5F: NewIfNullPr clsobrareem
  loc_AFDA62: from_stack_1 = clsobrareem.OrdeObre
  loc_AFDA67: ILdRf var_94
  loc_AFDA6A: ConcatStr
  loc_AFDA6B: FStStrNoPop var_9C
  loc_AFDA6E: LitStr "' "
  loc_AFDA71: ConcatStr
  loc_AFDA72: FStStrNoPop var_A0
  loc_AFDA75: LitStr " ORDER BY obreinmu.OrdeObre, CodiInmu"
  loc_AFDA78: ConcatStr
  loc_AFDA79: FStStrNoPop var_A4
  loc_AFDA7C: FLdPr Me
  loc_AFDA7F: MemLdRfVar from_stack_1.global_56
  loc_AFDA82: NewIfNullPr clsobreinmu
  loc_AFDA85: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_AFDA8A: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = "": var_A0 = ""
  loc_AFDA9B: Branch loc_AFDAD6
  loc_AFDA9E: LitStr "SELECT obreinmu.OrdeObre, obreinmu.CodiInmu, DetaPers, obreinmu.FenoObin, obreinmu.ObseObin FROM obreinmu "
  loc_AFDAA1: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_AFDAA4: ConcatStr
  loc_AFDAA5: FStStrNoPop var_8C
  loc_AFDAA8: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_AFDAAB: ConcatStr
  loc_AFDAAC: FStStrNoPop var_90
  loc_AFDAAF: LitStr " WHERE obreinmu.OrdeObre = ''"
  loc_AFDAB2: ConcatStr
  loc_AFDAB3: FStStrNoPop var_94
  loc_AFDAB6: LitStr " ORDER BY obreinmu.OrdeObre, CodiInmu"
  loc_AFDAB9: ConcatStr
  loc_AFDABA: FStStrNoPop var_98
  loc_AFDABD: FLdPr Me
  loc_AFDAC0: MemLdRfVar from_stack_1.global_56
  loc_AFDAC3: NewIfNullPr clsobreinmu
  loc_AFDAC6: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_AFDACB: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_AFDAD6: LitI4 0
  loc_AFDADB: LitI4 1
  loc_AFDAE0: FLdRfVar var_A8
  loc_AFDAE3: Redim
  loc_AFDAED: FLdPr Me
  loc_AFDAF0: MemLdRfVar from_stack_1.global_52
  loc_AFDAF3: NewIfNullAd
  loc_AFDAF6: FStAd var_AC 
  loc_AFDAFA: FLdRfVar var_AC
  loc_AFDAFD: CVarRef
  loc_AFDB02: ParmAry1St
  loc_AFDB08: FLdPr Me
  loc_AFDB0B: VCallAd Control_ID_dgdABMS
  loc_AFDB0E: CVarAd
  loc_AFDB12: ParmAry1St
  loc_AFDB18: FLdRfVar var_A8
  loc_AFDB1B: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AFDB20: ILdRf var_AC
  loc_AFDB23: CastAd
  loc_AFDB26: FLdPr Me
  loc_AFDB29: MemStAdFunc
  loc_AFDB2D: FLdRfVar var_A8
  loc_AFDB30: Erase
  loc_AFDB31: FFree1Ad var_AC
  loc_AFDB34: LitI4 0
  loc_AFDB39: LitI4 1
  loc_AFDB3E: FLdRfVar var_A8
  loc_AFDB41: Redim
  loc_AFDB4B: FLdPr Me
  loc_AFDB4E: MemLdRfVar from_stack_1.global_56
  loc_AFDB51: NewIfNullAd
  loc_AFDB54: FStAd var_AC 
  loc_AFDB58: FLdRfVar var_AC
  loc_AFDB5B: CVarRef
  loc_AFDB60: ParmAry1St
  loc_AFDB66: FLdPr Me
  loc_AFDB69: VCallAd Control_ID_dgdABMS2
  loc_AFDB6C: CVarAd
  loc_AFDB70: ParmAry1St
  loc_AFDB76: FLdRfVar var_A8
  loc_AFDB79: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AFDB7E: ILdRf var_AC
  loc_AFDB81: CastAd
  loc_AFDB84: FLdPr Me
  loc_AFDB87: MemStAdFunc
  loc_AFDB8B: FLdRfVar var_A8
  loc_AFDB8E: Erase
  loc_AFDB8F: FFree1Ad var_AC
  loc_AFDB92: Call EnlazaTodo()
  loc_AFDB97: ILdRf Me
  loc_AFDB9A: CastAd
  loc_AFDB9D: FStAdFunc var_AC
  loc_AFDBA0: FLdRfVar var_AC
  loc_AFDBA3: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AFDBA8: FFree1Ad var_AC
  loc_AFDBAB: LitI2_Byte 0
  loc_AFDBAD: ILdRf Me
  loc_AFDBB0: CastAd
  loc_AFDBB3: FStAdFunc var_AC
  loc_AFDBB6: FLdRfVar var_AC
  loc_AFDBB9: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AFDBBE: FFree1Ad var_AC
  loc_AFDBC1: ExitProcHresult
  loc_AFDBC2: ExitProcCy
End Sub

Private Sub Form_Activate() 'A61A40
  'Data Table: 47D44C
  loc_A619E4: FLdRfVar var_C2
  loc_A619E7: FLdRfVar var_C0
  loc_A619EA: LitVarI2 var_B8, 1
  loc_A619EF: FLdPr Me
  loc_A619F2: VCallAd Control_ID_tlbABMS
  loc_A619F5: FStAdFunc var_88
  loc_A619F8: FLdPr var_88
  loc_A619FB: LateIdLdVar var_98 DispID_3 0
  loc_A61A02: CastAdVar Me
  loc_A61A06: FStAdFunc var_BC
  loc_A61A09: FLdPr var_BC
  loc_A61A0C:  = Me.Buttons.ControlDefault
  loc_A61A11: FLdPr var_C0
  loc_A61A14:  = Me.Enabled
  loc_A61A19: FLdI2 var_C2
  loc_A61A1C: FFreeAd var_88 = "": var_BC = ""
  loc_A61A25: FFreeVar var_98 = ""
  loc_A61A2C: BranchF loc_A61A3D
  loc_A61A2F: FLdPr Me
  loc_A61A32: MemLdRfVar from_stack_1.global_52
  loc_A61A35: NewIfNullPr clsobrareem
  loc_A61A38: Call clsobrareem.Requery()
  loc_A61A3D: ExitProcHresult
  loc_A61A3E: UMiCy
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9CAA1C
  'Data Table: 47D44C
  loc_9CAA04: ILdI2 KeyCode
  loc_9CAA07: ILdRf Me
  loc_9CAA0A: CastAd
  loc_9CAA0D: FStAdFunc var_88
  loc_9CAA10: FLdRfVar var_88
  loc_9CAA13: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9CAA18: FFree1Ad var_88
  loc_9CAA1B: ExitProcHresult
End Sub

Private Sub NotaObreTxt_GotFocus() '9BD500
  'Data Table: 47D44C
  loc_9BD4EC: FLdPr Me
  loc_9BD4EF: VCallAd Control_ID_NotaObreTxt
  loc_9BD4F2: CVarAd
  loc_9BD4F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD4FB: FFree1Var var_94 = ""
  loc_9BD4FE: ExitProcHresult
  loc_9BD4FF: PopAdLdVar
End Sub

Private Sub NotaObreTxt_Validate(Cancel As Boolean) 'A90450
  'Data Table: 47D44C
  loc_A903B0: FLdRfVar var_8A
  loc_A903B3: FLdPr Me
  loc_A903B6: VCallAd Control_ID_cmdCancelar
  loc_A903B9: FStAdFunc var_88
  loc_A903BC: FLdPr var_88
  loc_A903BF:  = Me.Value
  loc_A903C4: FLdI2 var_8A
  loc_A903C7: NotI4
  loc_A903C8: FLdRfVar var_92
  loc_A903CB: FLdPr Me
  loc_A903CE: VCallAd Control_ID_NotaObreTxt
  loc_A903D1: FStAdFunc var_90
  loc_A903D4: FLdPr var_90
  loc_A903D7:  = Me.Enabled
  loc_A903DC: FLdI2 var_92
  loc_A903DF: AndI4
  loc_A903E0: FFreeAd var_88 = ""
  loc_A903E7: BranchF loc_A9044D
  loc_A903EA: FLdRfVar var_98
  loc_A903ED: FLdPr Me
  loc_A903F0: VCallAd Control_ID_NotaObreTxt
  loc_A903F3: FStAdFunc var_88
  loc_A903F6: FLdPr var_88
  loc_A903F9:  = Me.Text
  loc_A903FE: ILdRf var_98
  loc_A90401: LitStr "Ordenanza"
  loc_A90404: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90409: FStStrNoPop var_9C
  loc_A9040C: FLdPr Me
  loc_A9040F: MemStStrCopy
  loc_A90413: FFreeStr var_98 = ""
  loc_A9041A: FFree1Ad var_88
  loc_A9041D: FLdPr Me
  loc_A90420: MemLdStr global_64
  loc_A90423: LitStr vbNullString
  loc_A90426: NeStr
  loc_A90428: BranchF loc_A9044D
  loc_A9042B: FLdPr Me
  loc_A9042E: MemLdStr global_64
  loc_A90431: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A90436: FLdPr Me
  loc_A90439: VCallAd Control_ID_NotaObreTxt
  loc_A9043C: CVarAd
  loc_A90440: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90445: FFree1Var var_AC = ""
  loc_A90448: LitI2_Byte &HFF
  loc_A9044A: IStI2 Cancel
  loc_A9044D: ExitProcHresult
  loc_A9044E: CStr2Ansi
End Sub

Private Sub dgdABMS2_UnknownEvent_0 '9CAAB4
  'Data Table: 47D44C
  loc_9CAA9C: FLdPr Me
  loc_9CAA9F: VCallAd Control_ID_dgdABMS2
  loc_9CAAA2: FStAdFunc var_88
  loc_9CAAA5: FLdRfVar var_88
  loc_9CAAA8: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CAAAD: FFree1Ad var_88
  loc_9CAAB0: ExitProcHresult
End Sub

Private Sub dgdABMS2_UnknownEvent_1 '9CAA68
  'Data Table: 47D44C
  loc_9CAA50: FLdPr Me
  loc_9CAA53: VCallAd Control_ID_dgdABMS2
  loc_9CAA56: FStAdFunc var_88
  loc_9CAA59: FLdRfVar var_88
  loc_9CAA5C: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CAA61: FFree1Ad var_88
  loc_9CAA64: ExitProcHresult
  loc_9CAA65: ThisVCallAd
End Sub

Private Sub dgdABMS2_HeadClick(ColIndex As Integer) 'A68E68
  'Data Table: 47D44C
  loc_A68E0C: FLdRfVar var_B4
  loc_A68E0F: FLdRfVar var_B0
  loc_A68E12: FLdI2 ColIndex
  loc_A68E15: CVarI2 var_A8
  loc_A68E18: PopAdLdVar
  loc_A68E19: FLdPr Me
  loc_A68E1C: VCallAd Control_ID_dgdABMS2
  loc_A68E1F: FStAdFunc var_88
  loc_A68E22: FLdPr var_88
  loc_A68E25: LateIdLdVar var_98 DispID_105 0
  loc_A68E2C: CastAdVar Me
  loc_A68E30: FStAdFunc var_AC
  loc_A68E33: FLdPr var_AC
  loc_A68E36: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68E3B: FLdPr var_B0
  loc_A68E3E:  = Me.DataField
  loc_A68E43: FLdZeroAd var_B4
  loc_A68E46: PopTmpLdAdStr
  loc_A68E4A: FLdPr Me
  loc_A68E4D: MemLdRfVar from_stack_1.global_56
  loc_A68E50: NewIfNullPr clsobreinmu
  loc_A68E53: Call clsobreinmu.Sort(from_stack_1v)
  loc_A68E58: FFree1Str var_B8
  loc_A68E5B: FFreeAd var_88 = "": var_AC = ""
  loc_A68E64: FFree1Var var_98 = ""
  loc_A68E67: ExitProcHresult
End Sub

Private Sub dgdABMS2_KeyDown(KeyCode As Integer, Shift As Integer) 'AB8278
  'Data Table: 47D44C
  loc_AB8194: ILdI2 KeyCode
  loc_AB8197: CI4UI1
  loc_AB8198: LitI4 &H2E
  loc_AB819D: EqI4
  loc_AB819E: FLdPr Me
  loc_AB81A1: MemLdI2 global_60
  loc_AB81A4: LitI2_Byte 1
  loc_AB81A6: EqI2
  loc_AB81A7: FLdPr Me
  loc_AB81AA: MemLdI2 global_60
  loc_AB81AD: LitI2_Byte 2
  loc_AB81AF: EqI2
  loc_AB81B0: OrI4
  loc_AB81B1: AndI4
  loc_AB81B2: BranchF loc_AB8275
  loc_AB81B5: FLdRfVar var_88
  loc_AB81B8: FLdPr Me
  loc_AB81BB: MemLdRfVar from_stack_1.global_56
  loc_AB81BE: NewIfNullPr clsobreinmu
  loc_AB81C1: from_stack_1 = clsobreinmu.RecordCount
  loc_AB81C6: ILdRf var_88
  loc_AB81C9: LitI4 0
  loc_AB81CE: GtI4
  loc_AB81CF: BranchF loc_AB8275
  loc_AB81D2: FLdRfVar var_98
  loc_AB81D5: FLdPr Me
  loc_AB81D8: MemLdRfVar from_stack_1.global_56
  loc_AB81DB: NewIfNullPr clsobreinmu
  loc_AB81DE: from_stack_1 = clsobreinmu.FenoObin
  loc_AB81E3: FLdRfVar var_98
  loc_AB81E6: ImpAdCallI2 IsNull()
  loc_AB81EB: NotI4
  loc_AB81EC: FFree1Var var_98 = ""
  loc_AB81EF: BranchF loc_AB81FB
  loc_AB81F2: LitStr "No se puede eliminar el padrón porque esta notificado"
  loc_AB81F5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB81FA: ExitProcHresult
  loc_AB81FB: LitVar_Missing var_108
  loc_AB81FE: LitVar_Missing var_E8
  loc_AB8201: LitVarStr var_B8, "InfoGov"
  loc_AB8206: FStVarCopyObj var_C8
  loc_AB8209: FLdRfVar var_C8
  loc_AB820C: LitI4 4
  loc_AB8211: LitVarStr var_A8, "¿Desea borrar el inmueble?"
  loc_AB8216: FStVarCopyObj var_98
  loc_AB8219: FLdRfVar var_98
  loc_AB821C: ImpAdCallI2 MsgBox(, , , , )
  loc_AB8221: LitI4 6
  loc_AB8226: EqI4
  loc_AB8227: FFreeVar var_98 = "": var_C8 = "": var_E8 = ""
  loc_AB8232: BranchF loc_AB8275
  loc_AB8235: FLdRfVar var_10C
  loc_AB8238: FLdPr Me
  loc_AB823B: MemLdRfVar from_stack_1.global_52
  loc_AB823E: NewIfNullPr clsobrareem
  loc_AB8241: from_stack_1 = clsobrareem.OrdeObre
  loc_AB8246: FLdRfVar var_88
  loc_AB8249: FLdPr Me
  loc_AB824C: MemLdRfVar from_stack_1.global_56
  loc_AB824F: NewIfNullPr clsobreinmu
  loc_AB8252: from_stack_1 = clsobreinmu.CodiInmu
  loc_AB8257: FLdRfVar var_110
  loc_AB825A: ILdRf var_88
  loc_AB825D: ILdRf var_10C
  loc_AB8260: FLdPr Me
  loc_AB8263: MemLdRfVar from_stack_1.global_56
  loc_AB8266: NewIfNullPr clsobreinmu
  loc_AB8269: from_stack_3v = clsobreinmu.Eliminar(from_stack_1v, from_stack_2v)
  loc_AB826E: FFreeStr var_10C = ""
  loc_AB8275: ExitProcHresult
  loc_AB8276: ILdRf var_2B01
End Sub

Public Sub EnlazaTodo() 'AB84CC
  'Data Table: 47D44C
  loc_AB83EC: LitI4 0
  loc_AB83F1: LitI4 3
  loc_AB83F6: FLdRfVar var_88
  loc_AB83F9: Redim
  loc_AB8403: FLdPr Me
  loc_AB8406: MemLdRfVar from_stack_1.global_52
  loc_AB8409: NewIfNullAd
  loc_AB840C: FStAd var_8C 
  loc_AB8410: FLdRfVar var_8C
  loc_AB8413: CVarRef
  loc_AB8418: ParmAry1St
  loc_AB841E: FLdPr Me
  loc_AB8421: VCallAd Control_ID_OrdeObreTxt
  loc_AB8424: CVarAd
  loc_AB8428: ParmAry1St
  loc_AB842E: FLdPr Me
  loc_AB8431: VCallAd Control_ID_DetaObreTxt
  loc_AB8434: CVarAd
  loc_AB8438: ParmAry1St
  loc_AB843E: FLdPr Me
  loc_AB8441: VCallAd Control_ID_NotaObreTxt
  loc_AB8444: CVarAd
  loc_AB8448: ParmAry1St
  loc_AB844E: FLdRfVar var_88
  loc_AB8451: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB8456: ILdRf var_8C
  loc_AB8459: CastAd
  loc_AB845C: FLdPr Me
  loc_AB845F: MemStAdFunc
  loc_AB8463: FLdRfVar var_88
  loc_AB8466: Erase
  loc_AB8467: FFree1Ad var_8C
  loc_AB846A: LitI4 0
  loc_AB846F: LitI4 1
  loc_AB8474: FLdRfVar var_88
  loc_AB8477: Redim
  loc_AB8481: FLdPr Me
  loc_AB8484: MemLdRfVar from_stack_1.global_56
  loc_AB8487: NewIfNullAd
  loc_AB848A: FStAd var_8C 
  loc_AB848E: FLdRfVar var_8C
  loc_AB8491: CVarRef
  loc_AB8496: ParmAry1St
  loc_AB849C: FLdPr Me
  loc_AB849F: VCallAd Control_ID_CodiInmuTxt
  loc_AB84A2: CVarAd
  loc_AB84A6: ParmAry1St
  loc_AB84AC: FLdRfVar var_88
  loc_AB84AF: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB84B4: ILdRf var_8C
  loc_AB84B7: CastAd
  loc_AB84BA: FLdPr Me
  loc_AB84BD: MemStAdFunc
  loc_AB84C1: FLdRfVar var_88
  loc_AB84C4: Erase
  loc_AB84C5: FFree1Ad var_8C
  loc_AB84C8: ExitProcHresult
  loc_AB84C9: UMiCy
  loc_AB84CA: ModI4
End Sub
