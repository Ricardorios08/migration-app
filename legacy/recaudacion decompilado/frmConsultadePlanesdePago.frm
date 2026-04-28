VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmConsultadePlanesdePago
  Caption = "Consulta de Planes de Pago"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15312
  ClientHeight = 10476
  Begin VB.CommandButton ImprimirCmd
    Left = 14400
    Top = 960
    Width = 576
    Height = 588
    TabIndex = 21
    Picture = "frmConsultadePlanesdePago.frx":0000
    Style = 1
  End
  Begin VB.Frame fraCuil
    Caption = "C.U.I.L. - C.U.I.T."
    Left = 9600
    Top = 720
    Width = 4572
    Height = 855
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
    Begin VB.TextBox CuilPers
      ForeColor = &HFF0000&
      Left = 2280
      Top = 360
      Width = 1815
      Height = 345
      TabIndex = 9
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
    Begin VB.Label Label4
      Caption = "C.U.I.L. - C.U.I.T.:"
      Left = 360
      Top = 360
      Width = 1845
      Height = 300
      TabIndex = 16
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
  Begin VB.Frame fraFacilidad
    Caption = "Numero de Facilidad "
    Left = 120
    Top = 720
    Width = 3375
    Height = 855
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton BuscaNumeroFacilidadCmd
      Left = 2760
      Top = 360
      Width = 450
      Height = 345
      TabIndex = 2
      Picture = "frmConsultadePlanesdePago.frx":0102
      Style = 1
    End
    Begin VB.TextBox CodiFapaTxt
      ForeColor = &HFF0000&
      Left = 1200
      Top = 360
      Width = 1455
      Height = 345
      Text = "0"
      TabIndex = 1
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
    Begin VB.Label Label3
      Caption = "Numero:"
      Left = 240
      Top = 360
      Width = 900
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame fraCuenta
    Caption = "Numero de Cuenta"
    Left = 3720
    Top = 720
    Width = 5655
    Height = 855
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
    Begin VB.CommandButton BuscaNumeroCuentaCmd
      Left = 4920
      Top = 360
      Width = 450
      Height = 345
      TabIndex = 7
      Picture = "frmConsultadePlanesdePago.frx":01E4
      Style = 1
    End
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 120
      Top = 360
      Width = 2175
      Height = 420
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
    Begin VB.CommandButton NumeCtaCmd
      Left = 4320
      Top = 360
      Width = 450
      Height = 345
      TabIndex = 6
      Picture = "frmConsultadePlanesdePago.frx":02C6
      Style = 1
    End
    Begin VB.TextBox NumeCtaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 360
      Width = 1695
      Height = 345
      TabIndex = 5
      MaxLength = 11
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
  Begin VB.TextBox txtTotal
    BackColor = &H80000004&
    Left = 9360
    Top = 9960
    Width = 1335
    Height = 360
    TabIndex = 14
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotaCapi
    BackColor = &H80000004&
    Left = 5520
    Top = 9960
    Width = 1335
    Height = 360
    TabIndex = 11
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton SalirCmd
    Left = 14040
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 10
    Picture = "frmConsultadePlanesdePago.frx":03C0
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSDataGridLib.DataGrid dgdDetaFapa
    Left = 120
    Top = 4560
    Width = 15012
    Height = 2892
    TabIndex = 17
    OleObjectBlob = "frmConsultadePlanesdePago.frx":0612
  End
  Begin MSDataGridLib.DataGrid dgdFaciPago
    Left = 120
    Top = 2640
    Width = 15132
    Height = 1692
    TabIndex = 18
    OleObjectBlob = "frmConsultadePlanesdePago.frx":0ED4
  End
  Begin MSDataGridLib.DataGrid dgdFaciaApre
    Left = 120
    Top = 7680
    Width = 3372
    Height = 1572
    TabIndex = 19
    OleObjectBlob = "frmConsultadePlanesdePago.frx":1B74
  End
  Begin MSDataGridLib.DataGrid dgdFacictacte
    Left = 5400
    Top = 7680
    Width = 6612
    Height = 2172
    TabIndex = 20
    OleObjectBlob = "frmConsultadePlanesdePago.frx":1D74
  End
  Begin VB.Label DetaPersFirmanteLbl
    ForeColor = &HFF0000&
    Left = 6600
    Top = 2160
    Width = 5172
    Height = 252
    TabIndex = 29
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
    Caption = "Apellido y Nombre:"
    Left = 4560
    Top = 2160
    Width = 1968
    Height = 300
    TabIndex = 28
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
  Begin VB.Label CucuPersFirmanterLbl
    ForeColor = &HFF0000&
    Left = 1920
    Top = 2160
    Width = 1692
    Height = 252
    TabIndex = 27
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
  Begin VB.Label Label5
    Caption = "CUIL Fimante:"
    Left = 240
    Top = 2160
    Width = 1512
    Height = 300
    TabIndex = 26
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
  Begin VB.Label Label9
    Caption = "CUIL Titular:"
    Left = 240
    Top = 1680
    Width = 1320
    Height = 300
    TabIndex = 25
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
  Begin VB.Label Label1
    Caption = "Apellido y Nombre:"
    Left = 4560
    Top = 1680
    Width = 1968
    Height = 300
    TabIndex = 24
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
  Begin VB.Label DetaPersTitularLbl
    ForeColor = &HFF0000&
    Left = 6600
    Top = 1680
    Width = 5172
    Height = 252
    TabIndex = 23
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
  Begin VB.Label CucuPersTitularLbl
    ForeColor = &HFF0000&
    Left = 1680
    Top = 1680
    Width = 1692
    Height = 252
    TabIndex = 22
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
  Begin VB.Label Label8
    Caption = "Pendiente:"
    Left = 7920
    Top = 9960
    Width = 1305
    Height = 300
    TabIndex = 13
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Total Pagado:"
    Left = 3840
    Top = 9960
    Width = 1680
    Height = 300
    TabIndex = 12
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmConsultadePlanesdePago"


Private Sub dgdFaciPago_HeadClick(ColIndex As Integer) 'A678A0
  'Data Table: 4D1F2C
  loc_A67844: FLdRfVar var_B4
  loc_A67847: FLdRfVar var_B0
  loc_A6784A: FLdI2 ColIndex
  loc_A6784D: CVarI2 var_A8
  loc_A67850: PopAdLdVar
  loc_A67851: FLdPr Me
  loc_A67854: VCallAd Control_ID_dgdFaciPago
  loc_A67857: FStAdFunc var_88
  loc_A6785A: FLdPr var_88
  loc_A6785D: LateIdLdVar var_98 DispID_105 0
  loc_A67864: CastAdVar Me
  loc_A67868: FStAdFunc var_AC
  loc_A6786B: FLdPr var_AC
  loc_A6786E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67873: FLdPr var_B0
  loc_A67876:  = Me.DataField
  loc_A6787B: FLdZeroAd var_B4
  loc_A6787E: PopTmpLdAdStr
  loc_A67882: FLdPr Me
  loc_A67885: MemLdRfVar from_stack_1.global_52
  loc_A67888: NewIfNullPr clsfacipago
  loc_A6788B: Call clsfacipago.Sort(from_stack_1v)
  loc_A67890: FFree1Str var_B8
  loc_A67893: FFreeAd var_88 = "": var_AC = ""
  loc_A6789C: FFree1Var var_98 = ""
  loc_A6789F: ExitProcHresult
End Sub

Private Sub dgdFaciPago_RowColChange(LastRow As Variant, LastCol As Integer) 'B3B750
  'Data Table: 4D1F2C
  loc_B3B43C: FLdRfVar var_88
  loc_B3B43F: FLdPr Me
  loc_B3B442: MemLdRfVar from_stack_1.global_52
  loc_B3B445: NewIfNullPr clsfacipago
  loc_B3B448: from_stack_1 = clsfacipago.RecordCount
  loc_B3B44D: ILdRf var_88
  loc_B3B450: LitI4 0
  loc_B3B455: GtI4
  loc_B3B456: FLdPr Me
  loc_B3B459: MemLdI2 global_72
  loc_B3B45C: LitI2_Byte &HFF
  loc_B3B45E: EqI2
  loc_B3B45F: AndI4
  loc_B3B460: BranchF loc_B3B74C
  loc_B3B463: LitI2_Byte 0
  loc_B3B465: CR8I2
  loc_B3B466: FLdPr Me
  loc_B3B469: MemStFPR8 global_76
  loc_B3B46C: LitI2_Byte 0
  loc_B3B46E: CR8I2
  loc_B3B46F: FLdPr Me
  loc_B3B472: MemStFPR8 global_84
  loc_B3B475: FLdRfVar var_8A
  loc_B3B478: FLdPr Me
  loc_B3B47B: MemLdRfVar from_stack_1.global_52
  loc_B3B47E: NewIfNullPr clsfacipago
  loc_B3B481: from_stack_1 = clsfacipago.BOF
  loc_B3B486: FLdI2 var_8A
  loc_B3B489: BranchF loc_B3B49A
  loc_B3B48C: FLdPr Me
  loc_B3B48F: MemLdRfVar from_stack_1.global_52
  loc_B3B492: NewIfNullPr clsfacipago
  loc_B3B495: Call clsfacipago.MoveFirst()
  loc_B3B49A: FLdRfVar var_8A
  loc_B3B49D: FLdPr Me
  loc_B3B4A0: MemLdRfVar from_stack_1.global_52
  loc_B3B4A3: NewIfNullPr clsfacipago
  loc_B3B4A6: from_stack_1 = clsfacipago.EOF
  loc_B3B4AB: FLdI2 var_8A
  loc_B3B4AE: BranchF loc_B3B4BF
  loc_B3B4B1: FLdPr Me
  loc_B3B4B4: MemLdRfVar from_stack_1.global_52
  loc_B3B4B7: NewIfNullPr clsfacipago
  loc_B3B4BA: Call clsfacipago.MoveLast()
  loc_B3B4BF: FLdRfVar var_88
  loc_B3B4C2: FLdPr Me
  loc_B3B4C5: MemLdRfVar from_stack_1.global_52
  loc_B3B4C8: NewIfNullPr clsfacipago
  loc_B3B4CB: from_stack_1 = clsfacipago.CodiFapa
  loc_B3B4D0: LitI2_Byte 0
  loc_B3B4D2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B3B4D7: FStFPR8 var_98
  loc_B3B4DA: LitStr "tmp_DetaFapaConsulta"
  loc_B3B4DD: FLdFPR8 var_98
  loc_B3B4E0: CStrDate
  loc_B3B4E2: FStStrNoPop var_90
  loc_B3B4E5: ILdRf var_88
  loc_B3B4E8: FLdPr Me
  loc_B3B4EB: MemLdRfVar from_stack_1.global_56
  loc_B3B4EE: NewIfNullPr clsdetafapa
  loc_B3B4F1: Call clsdetafapa.CreaTemporalConsultaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B3B4F6: FFree1Str var_90
  loc_B3B4F9: LitStr "SELECT * FROM tmp_DetaFapaConsulta ORDER BY CodiFapa, CuotDefa"
  loc_B3B4FC: FLdPr Me
  loc_B3B4FF: MemLdRfVar from_stack_1.global_56
  loc_B3B502: NewIfNullPr clsdetafapa
  loc_B3B505: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B3B50A: FLdRfVar var_88
  loc_B3B50D: FLdPr Me
  loc_B3B510: MemLdRfVar from_stack_1.global_56
  loc_B3B513: NewIfNullPr clsdetafapa
  loc_B3B516: from_stack_1 = clsdetafapa.RecordCount
  loc_B3B51B: ILdRf var_88
  loc_B3B51E: LitI4 0
  loc_B3B523: GtI4
  loc_B3B524: BranchF loc_B3B61B
  loc_B3B527: FLdPr Me
  loc_B3B52A: MemLdRfVar from_stack_1.global_56
  loc_B3B52D: NewIfNullPr clsdetafapa
  loc_B3B530: Call clsdetafapa.MoveFirst()
  loc_B3B535: FLdRfVar var_8A
  loc_B3B538: FLdPr Me
  loc_B3B53B: MemLdRfVar from_stack_1.global_56
  loc_B3B53E: NewIfNullPr clsdetafapa
  loc_B3B541: from_stack_1 = clsdetafapa.EOF
  loc_B3B546: FLdI2 var_8A
  loc_B3B549: NotI4
  loc_B3B54A: BranchF loc_B3B61B
  loc_B3B54D: FLdRfVar var_A8
  loc_B3B550: FLdPr Me
  loc_B3B553: MemLdRfVar from_stack_1.global_56
  loc_B3B556: NewIfNullPr clsdetafapa
  loc_B3B559: from_stack_1 = clsdetafapa.FepaDefa
  loc_B3B55E: FLdRfVar var_A8
  loc_B3B561: ImpAdCallI2 IsNull()
  loc_B3B566: NotI4
  loc_B3B567: FFree1Var var_A8 = ""
  loc_B3B56A: BranchF loc_B3B5AC
  loc_B3B56D: FLdRfVar var_98
  loc_B3B570: FLdPr Me
  loc_B3B573: MemLdRfVar from_stack_1.global_56
  loc_B3B576: NewIfNullPr clsdetafapa
  loc_B3B579: from_stack_1 = clsdetafapa.TotaDefa
  loc_B3B57E: LitI4 2
  loc_B3B583: FLdPr Me
  loc_B3B586: MemLdFPR8 global_76
  loc_B3B589: FLdFPR8 var_98
  loc_B3B58C: FnCDblR8
  loc_B3B58E: AddR8
  loc_B3B58F: CVarR8
  loc_B3B593: FLdRfVar var_C8
  loc_B3B596: ImpAdCallFPR4  = Round(, )
  loc_B3B59B: FLdRfVar var_C8
  loc_B3B59E: CR4Var
  loc_B3B59F: FLdPr Me
  loc_B3B5A2: MemStFPR8 global_76
  loc_B3B5A5: FFreeVar var_A8 = ""
  loc_B3B5AC: FLdRfVar var_A8
  loc_B3B5AF: FLdPr Me
  loc_B3B5B2: MemLdRfVar from_stack_1.global_56
  loc_B3B5B5: NewIfNullPr clsdetafapa
  loc_B3B5B8: from_stack_1 = clsdetafapa.FepaDefa
  loc_B3B5BD: FLdRfVar var_A8
  loc_B3B5C0: ImpAdCallI2 IsNull()
  loc_B3B5C5: FFree1Var var_A8 = ""
  loc_B3B5C8: BranchF loc_B3B60A
  loc_B3B5CB: FLdRfVar var_98
  loc_B3B5CE: FLdPr Me
  loc_B3B5D1: MemLdRfVar from_stack_1.global_56
  loc_B3B5D4: NewIfNullPr clsdetafapa
  loc_B3B5D7: from_stack_1 = clsdetafapa.TotaDefa
  loc_B3B5DC: LitI4 2
  loc_B3B5E1: FLdPr Me
  loc_B3B5E4: MemLdFPR8 global_84
  loc_B3B5E7: FLdFPR8 var_98
  loc_B3B5EA: FnCDblR8
  loc_B3B5EC: AddR8
  loc_B3B5ED: CVarR8
  loc_B3B5F1: FLdRfVar var_C8
  loc_B3B5F4: ImpAdCallFPR4  = Round(, )
  loc_B3B5F9: FLdRfVar var_C8
  loc_B3B5FC: CR4Var
  loc_B3B5FD: FLdPr Me
  loc_B3B600: MemStFPR8 global_84
  loc_B3B603: FFreeVar var_A8 = ""
  loc_B3B60A: FLdPr Me
  loc_B3B60D: MemLdRfVar from_stack_1.global_56
  loc_B3B610: NewIfNullPr clsdetafapa
  loc_B3B613: Call clsdetafapa.MoveSiguiente()
  loc_B3B618: Branch loc_B3B535
  loc_B3B61B: LitStr "SELECT faciapre.NumeApre, AutoApre FROM faciapre "
  loc_B3B61E: LitStr " INNER JOIN apremio ON apremio.NumeApre = faciapre.NumeApre"
  loc_B3B621: ConcatStr
  loc_B3B622: FStStrNoPop var_90
  loc_B3B625: LitStr " WHERE CodiFapa = "
  loc_B3B628: ConcatStr
  loc_B3B629: FStStrNoPop var_CC
  loc_B3B62C: FLdRfVar var_88
  loc_B3B62F: FLdPr Me
  loc_B3B632: MemLdRfVar from_stack_1.global_52
  loc_B3B635: NewIfNullPr clsfacipago
  loc_B3B638: from_stack_1 = clsfacipago.CodiFapa
  loc_B3B63D: ILdRf var_88
  loc_B3B640: CStrI4
  loc_B3B642: FStStrNoPop var_D0
  loc_B3B645: ConcatStr
  loc_B3B646: FStStrNoPop var_D4
  loc_B3B649: LitStr " GROUP BY faciapre.NumeApre"
  loc_B3B64C: ConcatStr
  loc_B3B64D: FStStrNoPop var_D8
  loc_B3B650: FLdPr Me
  loc_B3B653: MemLdRfVar from_stack_1.global_60
  loc_B3B656: NewIfNullPr clsdetafapa
  loc_B3B659: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B3B65E: FFreeStr var_90 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B3B66B: LitStr "SELECT CuotDefa, PeriCtct, BimeCtct, CodiConc, CapiFacc FROM facictacte "
  loc_B3B66E: LitStr " WHERE CodiFapa = "
  loc_B3B671: ConcatStr
  loc_B3B672: FStStrNoPop var_90
  loc_B3B675: FLdRfVar var_88
  loc_B3B678: FLdPr Me
  loc_B3B67B: MemLdRfVar from_stack_1.global_52
  loc_B3B67E: NewIfNullPr clsfacipago
  loc_B3B681: from_stack_1 = clsfacipago.CodiFapa
  loc_B3B686: ILdRf var_88
  loc_B3B689: CStrI4
  loc_B3B68B: FStStrNoPop var_CC
  loc_B3B68E: ConcatStr
  loc_B3B68F: FStStrNoPop var_D0
  loc_B3B692: LitStr " ORDER BY CodiFapa, CuotDefa, PeriCtct, BimeCtct, CodiConc"
  loc_B3B695: ConcatStr
  loc_B3B696: FStStrNoPop var_D4
  loc_B3B699: FLdPr Me
  loc_B3B69C: MemLdRfVar from_stack_1.global_64
  loc_B3B69F: NewIfNullPr clsdetafapa
  loc_B3B6A2: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B3B6A7: FFreeStr var_90 = "": var_CC = "": var_D0 = ""
  loc_B3B6B2: LitI4 1
  loc_B3B6B7: LitI4 1
  loc_B3B6BC: LitVarStr var_E8, "0.00"
  loc_B3B6C1: FStVarCopyObj var_A8
  loc_B3B6C4: FLdRfVar var_A8
  loc_B3B6C7: FLdPr Me
  loc_B3B6CA: MemLdRfVar from_stack_1.global_76
  loc_B3B6CD: CVarRef
  loc_B3B6D2: FLdRfVar var_C8
  loc_B3B6D5: ImpAdCallFPR4  = Format(, )
  loc_B3B6DA: FLdRfVar var_C8
  loc_B3B6DD: CStrVarVal var_90
  loc_B3B6E1: FLdPr Me
  loc_B3B6E4: VCallAd Control_ID_txtTotaCapi
  loc_B3B6E7: FStAdFunc var_EC
  loc_B3B6EA: FLdPr var_EC
  loc_B3B6ED: Me.Text = from_stack_1
  loc_B3B6F2: FFree1Str var_90
  loc_B3B6F5: FFree1Ad var_EC
  loc_B3B6F8: FFreeVar var_A8 = ""
  loc_B3B6FF: LitI4 1
  loc_B3B704: LitI4 1
  loc_B3B709: LitVarStr var_E8, "0.00"
  loc_B3B70E: FStVarCopyObj var_A8
  loc_B3B711: FLdRfVar var_A8
  loc_B3B714: FLdPr Me
  loc_B3B717: MemLdRfVar from_stack_1.global_84
  loc_B3B71A: CVarRef
  loc_B3B71F: FLdRfVar var_C8
  loc_B3B722: ImpAdCallFPR4  = Format(, )
  loc_B3B727: FLdRfVar var_C8
  loc_B3B72A: CStrVarVal var_90
  loc_B3B72E: FLdPr Me
  loc_B3B731: VCallAd Control_ID_txtTotal
  loc_B3B734: FStAdFunc var_EC
  loc_B3B737: FLdPr var_EC
  loc_B3B73A: Me.Text = from_stack_1
  loc_B3B73F: FFree1Str var_90
  loc_B3B742: FFree1Ad var_EC
  loc_B3B745: FFreeVar var_A8 = ""
  loc_B3B74C: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9DB040
  'Data Table: 4D1F2C
  loc_9DB028: ILdRf Me
  loc_9DB02B: FStAdNoPop
  loc_9DB02F: ImpAdLdRf MemVar_D9C5D8
  loc_9DB032: NewIfNullPr Global
  loc_9DB035: Global.Unload from_stack_1
  loc_9DB03A: FFree1Ad var_88
  loc_9DB03D: ExitProcHresult
End Sub

Private Sub dgdDetaFapa_HeadClick(ColIndex As Integer) 'A67A8C
  'Data Table: 4D1F2C
  loc_A67A30: FLdRfVar var_B4
  loc_A67A33: FLdRfVar var_B0
  loc_A67A36: FLdI2 ColIndex
  loc_A67A39: CVarI2 var_A8
  loc_A67A3C: PopAdLdVar
  loc_A67A3D: FLdPr Me
  loc_A67A40: VCallAd Control_ID_dgdDetaFapa
  loc_A67A43: FStAdFunc var_88
  loc_A67A46: FLdPr var_88
  loc_A67A49: LateIdLdVar var_98 DispID_105 0
  loc_A67A50: CastAdVar Me
  loc_A67A54: FStAdFunc var_AC
  loc_A67A57: FLdPr var_AC
  loc_A67A5A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67A5F: FLdPr var_B0
  loc_A67A62:  = Me.DataField
  loc_A67A67: FLdZeroAd var_B4
  loc_A67A6A: PopTmpLdAdStr
  loc_A67A6E: FLdPr Me
  loc_A67A71: MemLdRfVar from_stack_1.global_56
  loc_A67A74: NewIfNullPr clsdetafapa
  loc_A67A77: Call clsdetafapa.Sort(from_stack_1v)
  loc_A67A7C: FFree1Str var_B8
  loc_A67A7F: FFreeAd var_88 = "": var_AC = ""
  loc_A67A88: FFree1Var var_98 = ""
  loc_A67A8B: ExitProcHresult
End Sub

Private Sub NumeCtaCmd_Click() 'B4CEA4
  'Data Table: 4D1F2C
  loc_B4CB0C: FLdRfVar var_8A
  loc_B4CB0F: FLdPr Me
  loc_B4CB12: VCallAd Control_ID_OficinaCbo
  loc_B4CB15: FStAdFunc var_88
  loc_B4CB18: FLdPr var_88
  loc_B4CB1B:  = Me.ListIndex
  loc_B4CB20: FLdI2 var_8A
  loc_B4CB23: FStI2 var_8C
  loc_B4CB26: FFree1Ad var_88
  loc_B4CB29: FLdI2 var_8C
  loc_B4CB2C: LitI2_Byte 0
  loc_B4CB2E: EqI2
  loc_B4CB2F: BranchF loc_B4CB3D
  loc_B4CB32: LitI2_Byte 1
  loc_B4CB34: CUI1I2
  loc_B4CB36: ImpAdStUI1 MemVar_D93038
  loc_B4CB3A: Branch loc_B4CBB2
  loc_B4CB3D: FLdI2 var_8C
  loc_B4CB40: LitI2_Byte 1
  loc_B4CB42: EqI2
  loc_B4CB43: BranchF loc_B4CB51
  loc_B4CB46: LitI2_Byte 2
  loc_B4CB48: CUI1I2
  loc_B4CB4A: ImpAdStUI1 MemVar_D93038
  loc_B4CB4E: Branch loc_B4CBB2
  loc_B4CB51: FLdI2 var_8C
  loc_B4CB54: LitI2_Byte 2
  loc_B4CB56: EqI2
  loc_B4CB57: BranchF loc_B4CB65
  loc_B4CB5A: LitI2_Byte 3
  loc_B4CB5C: CUI1I2
  loc_B4CB5E: ImpAdStUI1 MemVar_D93038
  loc_B4CB62: Branch loc_B4CBB2
  loc_B4CB65: FLdI2 var_8C
  loc_B4CB68: LitI2_Byte 3
  loc_B4CB6A: EqI2
  loc_B4CB6B: BranchF loc_B4CB79
  loc_B4CB6E: LitI2_Byte 4
  loc_B4CB70: CUI1I2
  loc_B4CB72: ImpAdStUI1 MemVar_D93038
  loc_B4CB76: Branch loc_B4CBB2
  loc_B4CB79: FLdI2 var_8C
  loc_B4CB7C: LitI2_Byte 4
  loc_B4CB7E: EqI2
  loc_B4CB7F: BranchF loc_B4CB8D
  loc_B4CB82: LitI2_Byte 5
  loc_B4CB84: CUI1I2
  loc_B4CB86: ImpAdStUI1 MemVar_D93038
  loc_B4CB8A: Branch loc_B4CBB2
  loc_B4CB8D: FLdI2 var_8C
  loc_B4CB90: LitI2_Byte 5
  loc_B4CB92: EqI2
  loc_B4CB93: BranchF loc_B4CBA1
  loc_B4CB96: LitI2_Byte 6
  loc_B4CB98: CUI1I2
  loc_B4CB9A: ImpAdStUI1 MemVar_D93038
  loc_B4CB9E: Branch loc_B4CBB2
  loc_B4CBA1: FLdI2 var_8C
  loc_B4CBA4: LitI2_Byte 6
  loc_B4CBA6: EqI2
  loc_B4CBA7: BranchF loc_B4CBB2
  loc_B4CBAA: LitI2_Byte 7
  loc_B4CBAC: CUI1I2
  loc_B4CBAE: ImpAdStUI1 MemVar_D93038
  loc_B4CBB2: LitVar_Missing var_AC
  loc_B4CBB5: PopAdLdVar
  loc_B4CBB6: LitVarI4
  loc_B4CBBE: PopAdLdVar
  loc_B4CBBF: ImpAdLdRf MemVar_D94034
  loc_B4CBC2: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4CBC5: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B4CBCA: FLdRfVar var_B0
  loc_B4CBCD: FLdRfVar var_88
  loc_B4CBD0: ImpAdLdRf MemVar_D94034
  loc_B4CBD3: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4CBD6: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4CBDB: FLdPr var_88
  loc_B4CBDE: from_stack_1 = clsbase.RecordCount
  loc_B4CBE3: ILdRf var_B0
  loc_B4CBE6: LitI4 0
  loc_B4CBEB: GtI4
  loc_B4CBEC: FFree1Ad var_88
  loc_B4CBEF: BranchF loc_B4CE8F
  loc_B4CBF2: FLdRfVar var_CC
  loc_B4CBF5: FLdRfVar var_BC
  loc_B4CBF8: LitVarStr var_9C, "CodiOfic"
  loc_B4CBFD: PopAdLdVar
  loc_B4CBFE: FLdRfVar var_B8
  loc_B4CC01: FLdRfVar var_B4
  loc_B4CC04: FLdRfVar var_88
  loc_B4CC07: ImpAdLdRf MemVar_D94034
  loc_B4CC0A: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4CC0D: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4CC12: FLdPr var_88
  loc_B4CC15: from_stack_1v = clsbase.RsFrmGet()
  loc_B4CC1A: FLdPr var_B4
  loc_B4CC1D:  = Me.Fields
  loc_B4CC22: FLdPr var_B8
  loc_B4CC25: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CC2A: FLdPr var_BC
  loc_B4CC2D:  = Me.Value
  loc_B4CC32: FLdRfVar var_CC
  loc_B4CC35: FStVar var_DC
  loc_B4CC39: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B4CC44: FLdRfVar var_DC
  loc_B4CC47: LitVarI2 var_9C, 1
  loc_B4CC4C: HardType
  loc_B4CC4D: EqVarBool
  loc_B4CC4F: BranchF loc_B4CC89
  loc_B4CC52: FLdRfVar var_E0
  loc_B4CC55: LitI2_Byte 0
  loc_B4CC57: FLdPr Me
  loc_B4CC5A: VCallAd Control_ID_OficinaCbo
  loc_B4CC5D: FStAdFunc var_88
  loc_B4CC60: FLdPr var_88
  loc_B4CC63: from_stack_2 = Me.List(from_stack_1)
  loc_B4CC68: ILdRf var_E0
  loc_B4CC6B: FLdPr Me
  loc_B4CC6E: VCallAd Control_ID_OficinaCbo
  loc_B4CC71: FStAdFunc var_B4
  loc_B4CC74: FLdPr var_B4
  loc_B4CC77: Me.Text = from_stack_1
  loc_B4CC7C: FFree1Str var_E0
  loc_B4CC7F: FFreeAd var_88 = ""
  loc_B4CC86: Branch loc_B4CE24
  loc_B4CC89: FLdRfVar var_DC
  loc_B4CC8C: LitVarI2 var_9C, 2
  loc_B4CC91: HardType
  loc_B4CC92: EqVarBool
  loc_B4CC94: BranchF loc_B4CCCE
  loc_B4CC97: FLdRfVar var_E0
  loc_B4CC9A: LitI2_Byte 1
  loc_B4CC9C: FLdPr Me
  loc_B4CC9F: VCallAd Control_ID_OficinaCbo
  loc_B4CCA2: FStAdFunc var_88
  loc_B4CCA5: FLdPr var_88
  loc_B4CCA8: from_stack_2 = Me.List(from_stack_1)
  loc_B4CCAD: ILdRf var_E0
  loc_B4CCB0: FLdPr Me
  loc_B4CCB3: VCallAd Control_ID_OficinaCbo
  loc_B4CCB6: FStAdFunc var_B4
  loc_B4CCB9: FLdPr var_B4
  loc_B4CCBC: Me.Text = from_stack_1
  loc_B4CCC1: FFree1Str var_E0
  loc_B4CCC4: FFreeAd var_88 = ""
  loc_B4CCCB: Branch loc_B4CE24
  loc_B4CCCE: FLdRfVar var_DC
  loc_B4CCD1: LitVarI2 var_9C, 3
  loc_B4CCD6: HardType
  loc_B4CCD7: EqVarBool
  loc_B4CCD9: BranchF loc_B4CD13
  loc_B4CCDC: FLdRfVar var_E0
  loc_B4CCDF: LitI2_Byte 2
  loc_B4CCE1: FLdPr Me
  loc_B4CCE4: VCallAd Control_ID_OficinaCbo
  loc_B4CCE7: FStAdFunc var_88
  loc_B4CCEA: FLdPr var_88
  loc_B4CCED: from_stack_2 = Me.List(from_stack_1)
  loc_B4CCF2: ILdRf var_E0
  loc_B4CCF5: FLdPr Me
  loc_B4CCF8: VCallAd Control_ID_OficinaCbo
  loc_B4CCFB: FStAdFunc var_B4
  loc_B4CCFE: FLdPr var_B4
  loc_B4CD01: Me.Text = from_stack_1
  loc_B4CD06: FFree1Str var_E0
  loc_B4CD09: FFreeAd var_88 = ""
  loc_B4CD10: Branch loc_B4CE24
  loc_B4CD13: FLdRfVar var_DC
  loc_B4CD16: LitVarI2 var_9C, 4
  loc_B4CD1B: HardType
  loc_B4CD1C: EqVarBool
  loc_B4CD1E: BranchF loc_B4CD58
  loc_B4CD21: FLdRfVar var_E0
  loc_B4CD24: LitI2_Byte 3
  loc_B4CD26: FLdPr Me
  loc_B4CD29: VCallAd Control_ID_OficinaCbo
  loc_B4CD2C: FStAdFunc var_88
  loc_B4CD2F: FLdPr var_88
  loc_B4CD32: from_stack_2 = Me.List(from_stack_1)
  loc_B4CD37: ILdRf var_E0
  loc_B4CD3A: FLdPr Me
  loc_B4CD3D: VCallAd Control_ID_OficinaCbo
  loc_B4CD40: FStAdFunc var_B4
  loc_B4CD43: FLdPr var_B4
  loc_B4CD46: Me.Text = from_stack_1
  loc_B4CD4B: FFree1Str var_E0
  loc_B4CD4E: FFreeAd var_88 = ""
  loc_B4CD55: Branch loc_B4CE24
  loc_B4CD58: FLdRfVar var_DC
  loc_B4CD5B: LitVarI2 var_9C, 5
  loc_B4CD60: HardType
  loc_B4CD61: EqVarBool
  loc_B4CD63: BranchF loc_B4CD9D
  loc_B4CD66: FLdRfVar var_E0
  loc_B4CD69: LitI2_Byte 4
  loc_B4CD6B: FLdPr Me
  loc_B4CD6E: VCallAd Control_ID_OficinaCbo
  loc_B4CD71: FStAdFunc var_88
  loc_B4CD74: FLdPr var_88
  loc_B4CD77: from_stack_2 = Me.List(from_stack_1)
  loc_B4CD7C: ILdRf var_E0
  loc_B4CD7F: FLdPr Me
  loc_B4CD82: VCallAd Control_ID_OficinaCbo
  loc_B4CD85: FStAdFunc var_B4
  loc_B4CD88: FLdPr var_B4
  loc_B4CD8B: Me.Text = from_stack_1
  loc_B4CD90: FFree1Str var_E0
  loc_B4CD93: FFreeAd var_88 = ""
  loc_B4CD9A: Branch loc_B4CE24
  loc_B4CD9D: FLdRfVar var_DC
  loc_B4CDA0: LitVarI2 var_9C, 6
  loc_B4CDA5: HardType
  loc_B4CDA6: EqVarBool
  loc_B4CDA8: BranchF loc_B4CDE2
  loc_B4CDAB: FLdRfVar var_E0
  loc_B4CDAE: LitI2_Byte 5
  loc_B4CDB0: FLdPr Me
  loc_B4CDB3: VCallAd Control_ID_OficinaCbo
  loc_B4CDB6: FStAdFunc var_88
  loc_B4CDB9: FLdPr var_88
  loc_B4CDBC: from_stack_2 = Me.List(from_stack_1)
  loc_B4CDC1: ILdRf var_E0
  loc_B4CDC4: FLdPr Me
  loc_B4CDC7: VCallAd Control_ID_OficinaCbo
  loc_B4CDCA: FStAdFunc var_B4
  loc_B4CDCD: FLdPr var_B4
  loc_B4CDD0: Me.Text = from_stack_1
  loc_B4CDD5: FFree1Str var_E0
  loc_B4CDD8: FFreeAd var_88 = ""
  loc_B4CDDF: Branch loc_B4CE24
  loc_B4CDE2: FLdRfVar var_DC
  loc_B4CDE5: LitVarI2 var_9C, 7
  loc_B4CDEA: HardType
  loc_B4CDEB: EqVarBool
  loc_B4CDED: BranchF loc_B4CE24
  loc_B4CDF0: FLdRfVar var_E0
  loc_B4CDF3: LitI2_Byte 6
  loc_B4CDF5: FLdPr Me
  loc_B4CDF8: VCallAd Control_ID_OficinaCbo
  loc_B4CDFB: FStAdFunc var_88
  loc_B4CDFE: FLdPr var_88
  loc_B4CE01: from_stack_2 = Me.List(from_stack_1)
  loc_B4CE06: ILdRf var_E0
  loc_B4CE09: FLdPr Me
  loc_B4CE0C: VCallAd Control_ID_OficinaCbo
  loc_B4CE0F: FStAdFunc var_B4
  loc_B4CE12: FLdPr var_B4
  loc_B4CE15: Me.Text = from_stack_1
  loc_B4CE1A: FFree1Str var_E0
  loc_B4CE1D: FFreeAd var_88 = ""
  loc_B4CE24: FLdRfVar var_CC
  loc_B4CE27: FLdRfVar var_BC
  loc_B4CE2A: LitVarStr var_9C, "CuenCtct"
  loc_B4CE2F: PopAdLdVar
  loc_B4CE30: FLdRfVar var_B8
  loc_B4CE33: FLdRfVar var_B4
  loc_B4CE36: FLdRfVar var_88
  loc_B4CE39: ImpAdLdRf MemVar_D94034
  loc_B4CE3C: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4CE3F: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4CE44: FLdPr var_88
  loc_B4CE47: from_stack_1v = clsbase.RsFrmGet()
  loc_B4CE4C: FLdPr var_B4
  loc_B4CE4F:  = Me.Fields
  loc_B4CE54: FLdPr var_B8
  loc_B4CE57: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CE5C: FLdPr var_BC
  loc_B4CE5F:  = Me.Value
  loc_B4CE64: FLdRfVar var_CC
  loc_B4CE67: CStrVarTmp
  loc_B4CE68: FStStrNoPop var_E0
  loc_B4CE6B: FLdPr Me
  loc_B4CE6E: VCallAd Control_ID_NumeCtaTxt
  loc_B4CE71: FStAdFunc var_E4
  loc_B4CE74: FLdPr var_E4
  loc_B4CE77: Me.Text = from_stack_1
  loc_B4CE7C: FFree1Str var_E0
  loc_B4CE7F: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B4CE8C: FFree1Var var_CC = ""
  loc_B4CE8F: FLdPr Me
  loc_B4CE92: VCallAd Control_ID_NumeCtaTxt
  loc_B4CE95: CVarAd
  loc_B4CE99: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4CE9E: FFree1Var var_CC = ""
  loc_B4CEA1: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() '9C6B30
  'Data Table: 4D1F2C
  loc_9C6B1C: FLdPrThis
  loc_9C6B1D: VCallAd Control_ID_NumeCtaTxt
  loc_9C6B20: CVarAd
  loc_9C6B24: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C6B29: FFree1Var var_94 = ""
  loc_9C6B2C: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) '9DAFF4
  'Data Table: 4D1F2C
  loc_9DAFDC: LitStr "1234567890"
  loc_9DAFDF: FStStrCopy var_88
  loc_9DAFE2: FLdRfVar var_88
  loc_9DAFE5: ILdRf KeyAscii
  loc_9DAFE8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DAFED: IStI2 KeyAscii
  loc_9DAFF0: FFree1Str var_88
  loc_9DAFF3: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_LostFocus() 'A5DA34
  'Data Table: 4D1F2C
  loc_A5D9D4: FLdRfVar var_8A
  loc_A5D9D7: FLdPr Me
  loc_A5D9DA: VCallAd Control_ID_NumeCtaTxt
  loc_A5D9DD: FStAdFunc var_88
  loc_A5D9E0: FLdPr var_88
  loc_A5D9E3:  = Me.Enabled
  loc_A5D9E8: FLdI2 var_8A
  loc_A5D9EB: FFree1Ad var_88
  loc_A5D9EE: BranchF loc_A5DA31
  loc_A5D9F1: FLdRfVar var_90
  loc_A5D9F4: FLdPr Me
  loc_A5D9F7: VCallAd Control_ID_NumeCtaTxt
  loc_A5D9FA: FStAdFunc var_88
  loc_A5D9FD: FLdPr var_88
  loc_A5DA00:  = Me.Text
  loc_A5DA05: FLdZeroAd var_90
  loc_A5DA08: CVarStr var_A0
  loc_A5DA0B: ImpAdCallI2 IsNumeric()
  loc_A5DA10: NotI4
  loc_A5DA11: FFree1Ad var_88
  loc_A5DA14: FFree1Var var_A0 = ""
  loc_A5DA17: BranchF loc_A5DA31
  loc_A5DA1A: LitStr "0"
  loc_A5DA1D: FLdPr Me
  loc_A5DA20: VCallAd Control_ID_NumeCtaTxt
  loc_A5DA23: FStAdFunc var_88
  loc_A5DA26: FLdPr var_88
  loc_A5DA29: Me.Text = from_stack_1
  loc_A5DA2E: FFree1Ad var_88
  loc_A5DA31: ExitProcHresult
End Sub

Private Sub ImprimirCmd_Click() 'A8F388
  'Data Table: 4D1F2C
  loc_A8F2E4: ImpAdLdRf MemVar_D94740
  loc_A8F2E7: NewIfNullAd
  loc_A8F2EA: CastAd
  loc_A8F2ED: FStAdFuncNoPop
  loc_A8F2F0: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A8F2F5: FFree1Ad var_88
  loc_A8F2F8: ImpAdLdRf MemVar_D94740
  loc_A8F2FB: NewIfNullAd
  loc_A8F2FE: FStAd var_8C 
  loc_A8F302: FLdRfVar var_90
  loc_A8F305: FLdPr Me
  loc_A8F308: MemLdRfVar from_stack_1.global_52
  loc_A8F30B: NewIfNullPr clsfacipago
  loc_A8F30E: from_stack_1 = clsfacipago.RecordCount
  loc_A8F313: ILdRf var_90
  loc_A8F316: LitI4 0
  loc_A8F31B: GtI4
  loc_A8F31C: BranchF loc_A8F352
  loc_A8F31F: FLdRfVar var_90
  loc_A8F322: FLdPr Me
  loc_A8F325: MemLdRfVar from_stack_1.global_52
  loc_A8F328: NewIfNullPr clsfacipago
  loc_A8F32B: from_stack_1 = clsfacipago.CodiFapa
  loc_A8F330: ILdRf var_90
  loc_A8F333: CStrI4
  loc_A8F335: FStStrNoPop var_94
  loc_A8F338: FLdPr var_8C
  loc_A8F33B: VCallAd Control_ID_Label3
  loc_A8F33E: FStAdFunc var_88
  loc_A8F341: FLdPr var_88
  loc_A8F344: Me.Text = from_stack_1
  loc_A8F349: FFree1Str var_94
  loc_A8F34C: FFree1Ad var_88
  loc_A8F34F: Branch loc_A8F369
  loc_A8F352: LitStr "0"
  loc_A8F355: FLdPr var_8C
  loc_A8F358: VCallAd Control_ID_Label3
  loc_A8F35B: FStAdFunc var_88
  loc_A8F35E: FLdPr var_88
  loc_A8F361: Me.Text = from_stack_1
  loc_A8F366: FFree1Ad var_88
  loc_A8F369: LitVar_Missing var_B4
  loc_A8F36C: PopAdLdVar
  loc_A8F36D: LitVarI4
  loc_A8F375: PopAdLdVar
  loc_A8F376: FLdPr var_8C
  loc_A8F379: Me.Show from_stack_1, from_stack_2
  loc_A8F37E: LitNothing
  loc_A8F380: FStAd var_8C 
  loc_A8F384: ExitProcHresult
End Sub

Private Sub BuscaNumeroCuentaCmd_Click() 'B66ADC
  'Data Table: 4D1F2C
  loc_B66694: FLdRfVar var_8A
  loc_B66697: FLdPr Me
  loc_B6669A: VCallAd Control_ID_OficinaCbo
  loc_B6669D: FStAdFunc var_88
  loc_B666A0: FLdPr var_88
  loc_B666A3:  = Me.ListIndex
  loc_B666A8: FLdI2 var_8A
  loc_B666AB: FStI2 var_8C
  loc_B666AE: FFree1Ad var_88
  loc_B666B1: FLdI2 var_8C
  loc_B666B4: LitI2_Byte 0
  loc_B666B6: EqI2
  loc_B666B7: BranchF loc_B666C5
  loc_B666BA: LitI2_Byte 1
  loc_B666BC: CUI1I2
  loc_B666BE: ImpAdStUI1 MemVar_D93038
  loc_B666C2: Branch loc_B6673A
  loc_B666C5: FLdI2 var_8C
  loc_B666C8: LitI2_Byte 1
  loc_B666CA: EqI2
  loc_B666CB: BranchF loc_B666D9
  loc_B666CE: LitI2_Byte 2
  loc_B666D0: CUI1I2
  loc_B666D2: ImpAdStUI1 MemVar_D93038
  loc_B666D6: Branch loc_B6673A
  loc_B666D9: FLdI2 var_8C
  loc_B666DC: LitI2_Byte 2
  loc_B666DE: EqI2
  loc_B666DF: BranchF loc_B666ED
  loc_B666E2: LitI2_Byte 3
  loc_B666E4: CUI1I2
  loc_B666E6: ImpAdStUI1 MemVar_D93038
  loc_B666EA: Branch loc_B6673A
  loc_B666ED: FLdI2 var_8C
  loc_B666F0: LitI2_Byte 3
  loc_B666F2: EqI2
  loc_B666F3: BranchF loc_B66701
  loc_B666F6: LitI2_Byte 4
  loc_B666F8: CUI1I2
  loc_B666FA: ImpAdStUI1 MemVar_D93038
  loc_B666FE: Branch loc_B6673A
  loc_B66701: FLdI2 var_8C
  loc_B66704: LitI2_Byte 4
  loc_B66706: EqI2
  loc_B66707: BranchF loc_B66715
  loc_B6670A: LitI2_Byte 5
  loc_B6670C: CUI1I2
  loc_B6670E: ImpAdStUI1 MemVar_D93038
  loc_B66712: Branch loc_B6673A
  loc_B66715: FLdI2 var_8C
  loc_B66718: LitI2_Byte 5
  loc_B6671A: EqI2
  loc_B6671B: BranchF loc_B66729
  loc_B6671E: LitI2_Byte 6
  loc_B66720: CUI1I2
  loc_B66722: ImpAdStUI1 MemVar_D93038
  loc_B66726: Branch loc_B6673A
  loc_B66729: FLdI2 var_8C
  loc_B6672C: LitI2_Byte 6
  loc_B6672E: EqI2
  loc_B6672F: BranchF loc_B6673A
  loc_B66732: LitI2_Byte 7
  loc_B66734: CUI1I2
  loc_B66736: ImpAdStUI1 MemVar_D93038
  loc_B6673A: FLdRfVar var_90
  loc_B6673D: FLdPr Me
  loc_B66740: VCallAd Control_ID_NumeCtaTxt
  loc_B66743: FStAdFunc var_88
  loc_B66746: FLdPr var_88
  loc_B66749:  = Me.Text
  loc_B6674E: ILdRf var_90
  loc_B66751: LitStr vbNullString
  loc_B66754: EqStr
  loc_B66756: FLdRfVar var_98
  loc_B66759: FLdPr Me
  loc_B6675C: VCallAd Control_ID_NumeCtaTxt
  loc_B6675F: FStAdFunc var_94
  loc_B66762: FLdPr var_94
  loc_B66765:  = Me.Text
  loc_B6676A: ILdRf var_98
  loc_B6676D: LitStr "0"
  loc_B66770: EqStr
  loc_B66772: OrI4
  loc_B66773: FFreeStr var_90 = ""
  loc_B6677A: FFreeAd var_88 = ""
  loc_B66781: BranchF loc_B66792
  loc_B66784: LitStr "Ingrese el numero de cuenta"
  loc_B66787: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6678C: Call Proc_110_15_B20AE4()
  loc_B66791: ExitProcHresult
  loc_B66792: LitI2_Byte 0
  loc_B66794: CR8I2
  loc_B66795: FLdPr Me
  loc_B66798: MemStFPR8 global_76
  loc_B6679B: LitI2_Byte 0
  loc_B6679D: CR8I2
  loc_B6679E: FLdPr Me
  loc_B667A1: MemStFPR8 global_84
  loc_B667A4: LitI2_Byte &HFF
  loc_B667A6: FLdPr Me
  loc_B667A9: MemStI2 global_72
  loc_B667AC: LitStr "SELECT * FROM facipago "
  loc_B667AF: LitStr " WHERE CodiOfic = "
  loc_B667B2: ConcatStr
  loc_B667B3: FStStrNoPop var_90
  loc_B667B6: ImpAdLdUI1
  loc_B667BA: CStrI2
  loc_B667BC: FStStrNoPop var_98
  loc_B667BF: ConcatStr
  loc_B667C0: FStStrNoPop var_9C
  loc_B667C3: LitStr " AND CuenCtct = '"
  loc_B667C6: ConcatStr
  loc_B667C7: FStStrNoPop var_A4
  loc_B667CA: FLdRfVar var_A0
  loc_B667CD: FLdPr Me
  loc_B667D0: VCallAd Control_ID_NumeCtaTxt
  loc_B667D3: FStAdFunc var_88
  loc_B667D6: FLdPr var_88
  loc_B667D9:  = Me.Text
  loc_B667DE: ILdRf var_A0
  loc_B667E1: ConcatStr
  loc_B667E2: FStStrNoPop var_A8
  loc_B667E5: LitStr "'"
  loc_B667E8: ConcatStr
  loc_B667E9: FStStrNoPop var_AC
  loc_B667EC: LitStr " ORDER BY facipago.CodiFapa"
  loc_B667EF: ConcatStr
  loc_B667F0: FStStrNoPop var_B0
  loc_B667F3: FLdPr Me
  loc_B667F6: MemLdRfVar from_stack_1.global_52
  loc_B667F9: NewIfNullPr clsfacipago
  loc_B667FC: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_B66801: FFreeStr var_90 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = "": var_AC = ""
  loc_B66814: FFree1Ad var_88
  loc_B66817: FLdRfVar var_B4
  loc_B6681A: FLdPr Me
  loc_B6681D: MemLdRfVar from_stack_1.global_52
  loc_B66820: NewIfNullPr clsfacipago
  loc_B66823: from_stack_1 = clsfacipago.RecordCount
  loc_B66828: ILdRf var_B4
  loc_B6682B: LitI4 0
  loc_B66830: GtI4
  loc_B66831: BranchF loc_B66A3C
  loc_B66834: LitI2_Byte 0
  loc_B66836: CR8I2
  loc_B66837: FLdPr Me
  loc_B6683A: MemStFPR8 global_76
  loc_B6683D: LitI2_Byte 0
  loc_B6683F: CR8I2
  loc_B66840: FLdPr Me
  loc_B66843: MemStFPR8 global_84
  loc_B66846: FLdRfVar var_B4
  loc_B66849: FLdPr Me
  loc_B6684C: MemLdRfVar from_stack_1.global_52
  loc_B6684F: NewIfNullPr clsfacipago
  loc_B66852: from_stack_1 = clsfacipago.CodiFapa
  loc_B66857: LitI2_Byte 0
  loc_B66859: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B6685E: FStFPR8 var_BC
  loc_B66861: LitStr "tmp_DetaFapaConsulta"
  loc_B66864: FLdFPR8 var_BC
  loc_B66867: CStrDate
  loc_B66869: FStStrNoPop var_90
  loc_B6686C: ILdRf var_B4
  loc_B6686F: FLdPr Me
  loc_B66872: MemLdRfVar from_stack_1.global_56
  loc_B66875: NewIfNullPr clsdetafapa
  loc_B66878: Call clsdetafapa.CreaTemporalConsultaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B6687D: FFree1Str var_90
  loc_B66880: LitStr "SELECT * FROM tmp_DetaFapaConsulta ORDER BY CodiFapa, CuotDefa"
  loc_B66883: FLdPr Me
  loc_B66886: MemLdRfVar from_stack_1.global_56
  loc_B66889: NewIfNullPr clsdetafapa
  loc_B6688C: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B66891: FLdRfVar var_B4
  loc_B66894: FLdPr Me
  loc_B66897: MemLdRfVar from_stack_1.global_56
  loc_B6689A: NewIfNullPr clsdetafapa
  loc_B6689D: from_stack_1 = clsdetafapa.RecordCount
  loc_B668A2: ILdRf var_B4
  loc_B668A5: LitI4 0
  loc_B668AA: GtI4
  loc_B668AB: BranchF loc_B669A2
  loc_B668AE: FLdPr Me
  loc_B668B1: MemLdRfVar from_stack_1.global_56
  loc_B668B4: NewIfNullPr clsdetafapa
  loc_B668B7: Call clsdetafapa.MoveFirst()
  loc_B668BC: FLdRfVar var_8A
  loc_B668BF: FLdPr Me
  loc_B668C2: MemLdRfVar from_stack_1.global_56
  loc_B668C5: NewIfNullPr clsdetafapa
  loc_B668C8: from_stack_1 = clsdetafapa.EOF
  loc_B668CD: FLdI2 var_8A
  loc_B668D0: NotI4
  loc_B668D1: BranchF loc_B669A2
  loc_B668D4: FLdRfVar var_CC
  loc_B668D7: FLdPr Me
  loc_B668DA: MemLdRfVar from_stack_1.global_56
  loc_B668DD: NewIfNullPr clsdetafapa
  loc_B668E0: from_stack_1 = clsdetafapa.FepaDefa
  loc_B668E5: FLdRfVar var_CC
  loc_B668E8: ImpAdCallI2 IsNull()
  loc_B668ED: NotI4
  loc_B668EE: FFree1Var var_CC = ""
  loc_B668F1: BranchF loc_B66933
  loc_B668F4: FLdRfVar var_BC
  loc_B668F7: FLdPr Me
  loc_B668FA: MemLdRfVar from_stack_1.global_56
  loc_B668FD: NewIfNullPr clsdetafapa
  loc_B66900: from_stack_1 = clsdetafapa.TotaDefa
  loc_B66905: LitI4 2
  loc_B6690A: FLdPr Me
  loc_B6690D: MemLdFPR8 global_76
  loc_B66910: FLdFPR8 var_BC
  loc_B66913: FnCDblR8
  loc_B66915: AddR8
  loc_B66916: CVarR8
  loc_B6691A: FLdRfVar var_EC
  loc_B6691D: ImpAdCallFPR4  = Round(, )
  loc_B66922: FLdRfVar var_EC
  loc_B66925: CR4Var
  loc_B66926: FLdPr Me
  loc_B66929: MemStFPR8 global_76
  loc_B6692C: FFreeVar var_CC = ""
  loc_B66933: FLdRfVar var_CC
  loc_B66936: FLdPr Me
  loc_B66939: MemLdRfVar from_stack_1.global_56
  loc_B6693C: NewIfNullPr clsdetafapa
  loc_B6693F: from_stack_1 = clsdetafapa.FepaDefa
  loc_B66944: FLdRfVar var_CC
  loc_B66947: ImpAdCallI2 IsNull()
  loc_B6694C: FFree1Var var_CC = ""
  loc_B6694F: BranchF loc_B66991
  loc_B66952: FLdRfVar var_BC
  loc_B66955: FLdPr Me
  loc_B66958: MemLdRfVar from_stack_1.global_56
  loc_B6695B: NewIfNullPr clsdetafapa
  loc_B6695E: from_stack_1 = clsdetafapa.TotaDefa
  loc_B66963: LitI4 2
  loc_B66968: FLdPr Me
  loc_B6696B: MemLdFPR8 global_84
  loc_B6696E: FLdFPR8 var_BC
  loc_B66971: FnCDblR8
  loc_B66973: AddR8
  loc_B66974: CVarR8
  loc_B66978: FLdRfVar var_EC
  loc_B6697B: ImpAdCallFPR4  = Round(, )
  loc_B66980: FLdRfVar var_EC
  loc_B66983: CR4Var
  loc_B66984: FLdPr Me
  loc_B66987: MemStFPR8 global_84
  loc_B6698A: FFreeVar var_CC = ""
  loc_B66991: FLdPr Me
  loc_B66994: MemLdRfVar from_stack_1.global_56
  loc_B66997: NewIfNullPr clsdetafapa
  loc_B6699A: Call clsdetafapa.MoveSiguiente()
  loc_B6699F: Branch loc_B668BC
  loc_B669A2: LitStr "SELECT faciapre.NumeApre, AutoApre FROM faciapre "
  loc_B669A5: LitStr " INNER JOIN apremio ON apremio.NumeApre = faciapre.NumeApre"
  loc_B669A8: ConcatStr
  loc_B669A9: FStStrNoPop var_90
  loc_B669AC: LitStr " WHERE CodiFapa = "
  loc_B669AF: ConcatStr
  loc_B669B0: FStStrNoPop var_98
  loc_B669B3: FLdRfVar var_B4
  loc_B669B6: FLdPr Me
  loc_B669B9: MemLdRfVar from_stack_1.global_52
  loc_B669BC: NewIfNullPr clsfacipago
  loc_B669BF: from_stack_1 = clsfacipago.CodiFapa
  loc_B669C4: ILdRf var_B4
  loc_B669C7: CStrI4
  loc_B669C9: FStStrNoPop var_9C
  loc_B669CC: ConcatStr
  loc_B669CD: FStStrNoPop var_A0
  loc_B669D0: LitStr " GROUP BY faciapre.NumeApre"
  loc_B669D3: ConcatStr
  loc_B669D4: FStStrNoPop var_A4
  loc_B669D7: FLdPr Me
  loc_B669DA: MemLdRfVar from_stack_1.global_60
  loc_B669DD: NewIfNullPr clsdetafapa
  loc_B669E0: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B669E5: FFreeStr var_90 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B669F2: LitStr "SELECT CuotDefa, PeriCtct, BimeCtct, CodiConc, CapiFacc FROM facictacte "
  loc_B669F5: LitStr " WHERE CodiFapa = "
  loc_B669F8: ConcatStr
  loc_B669F9: FStStrNoPop var_90
  loc_B669FC: FLdRfVar var_B4
  loc_B669FF: FLdPr Me
  loc_B66A02: MemLdRfVar from_stack_1.global_52
  loc_B66A05: NewIfNullPr clsfacipago
  loc_B66A08: from_stack_1 = clsfacipago.CodiFapa
  loc_B66A0D: ILdRf var_B4
  loc_B66A10: CStrI4
  loc_B66A12: FStStrNoPop var_98
  loc_B66A15: ConcatStr
  loc_B66A16: FStStrNoPop var_9C
  loc_B66A19: LitStr " ORDER BY CodiFapa, CuotDefa, PeriCtct, BimeCtct, CodiConc"
  loc_B66A1C: ConcatStr
  loc_B66A1D: FStStrNoPop var_A0
  loc_B66A20: FLdPr Me
  loc_B66A23: MemLdRfVar from_stack_1.global_64
  loc_B66A26: NewIfNullPr clsdetafapa
  loc_B66A29: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B66A2E: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B66A39: Branch loc_B66A41
  loc_B66A3C: Call Proc_110_15_B20AE4()
  loc_B66A41: LitI4 1
  loc_B66A46: LitI4 1
  loc_B66A4B: LitVarStr var_FC, "0.00"
  loc_B66A50: FStVarCopyObj var_CC
  loc_B66A53: FLdRfVar var_CC
  loc_B66A56: FLdPr Me
  loc_B66A59: MemLdRfVar from_stack_1.global_76
  loc_B66A5C: CVarRef
  loc_B66A61: FLdRfVar var_EC
  loc_B66A64: ImpAdCallFPR4  = Format(, )
  loc_B66A69: FLdRfVar var_EC
  loc_B66A6C: CStrVarVal var_90
  loc_B66A70: FLdPr Me
  loc_B66A73: VCallAd Control_ID_txtTotaCapi
  loc_B66A76: FStAdFunc var_88
  loc_B66A79: FLdPr var_88
  loc_B66A7C: Me.Text = from_stack_1
  loc_B66A81: FFree1Str var_90
  loc_B66A84: FFree1Ad var_88
  loc_B66A87: FFreeVar var_CC = ""
  loc_B66A8E: LitI4 1
  loc_B66A93: LitI4 1
  loc_B66A98: LitVarStr var_FC, "0.00"
  loc_B66A9D: FStVarCopyObj var_CC
  loc_B66AA0: FLdRfVar var_CC
  loc_B66AA3: FLdPr Me
  loc_B66AA6: MemLdRfVar from_stack_1.global_84
  loc_B66AA9: CVarRef
  loc_B66AAE: FLdRfVar var_EC
  loc_B66AB1: ImpAdCallFPR4  = Format(, )
  loc_B66AB6: FLdRfVar var_EC
  loc_B66AB9: CStrVarVal var_90
  loc_B66ABD: FLdPr Me
  loc_B66AC0: VCallAd Control_ID_txtTotal
  loc_B66AC3: FStAdFunc var_88
  loc_B66AC6: FLdPr var_88
  loc_B66AC9: Me.Text = from_stack_1
  loc_B66ACE: FFree1Str var_90
  loc_B66AD1: FFree1Ad var_88
  loc_B66AD4: FFreeVar var_CC = ""
  loc_B66ADB: ExitProcHresult
End Sub

Private Sub BuscaNumeroFacilidadCmd_Click() 'BB17D8
  'Data Table: 4D1F2C
  loc_BB1170: FLdRfVar var_8A
  loc_BB1173: FLdPr Me
  loc_BB1176: VCallAd Control_ID_OficinaCbo
  loc_BB1179: FStAdFunc var_88
  loc_BB117C: FLdPr var_88
  loc_BB117F:  = Me.ListIndex
  loc_BB1184: FLdI2 var_8A
  loc_BB1187: FStI2 var_8C
  loc_BB118A: FFree1Ad var_88
  loc_BB118D: FLdI2 var_8C
  loc_BB1190: LitI2_Byte 0
  loc_BB1192: EqI2
  loc_BB1193: BranchF loc_BB11A1
  loc_BB1196: LitI2_Byte 1
  loc_BB1198: CUI1I2
  loc_BB119A: ImpAdStUI1 MemVar_D93038
  loc_BB119E: Branch loc_BB1216
  loc_BB11A1: FLdI2 var_8C
  loc_BB11A4: LitI2_Byte 1
  loc_BB11A6: EqI2
  loc_BB11A7: BranchF loc_BB11B5
  loc_BB11AA: LitI2_Byte 2
  loc_BB11AC: CUI1I2
  loc_BB11AE: ImpAdStUI1 MemVar_D93038
  loc_BB11B2: Branch loc_BB1216
  loc_BB11B5: FLdI2 var_8C
  loc_BB11B8: LitI2_Byte 2
  loc_BB11BA: EqI2
  loc_BB11BB: BranchF loc_BB11C9
  loc_BB11BE: LitI2_Byte 3
  loc_BB11C0: CUI1I2
  loc_BB11C2: ImpAdStUI1 MemVar_D93038
  loc_BB11C6: Branch loc_BB1216
  loc_BB11C9: FLdI2 var_8C
  loc_BB11CC: LitI2_Byte 3
  loc_BB11CE: EqI2
  loc_BB11CF: BranchF loc_BB11DD
  loc_BB11D2: LitI2_Byte 4
  loc_BB11D4: CUI1I2
  loc_BB11D6: ImpAdStUI1 MemVar_D93038
  loc_BB11DA: Branch loc_BB1216
  loc_BB11DD: FLdI2 var_8C
  loc_BB11E0: LitI2_Byte 4
  loc_BB11E2: EqI2
  loc_BB11E3: BranchF loc_BB11F1
  loc_BB11E6: LitI2_Byte 5
  loc_BB11E8: CUI1I2
  loc_BB11EA: ImpAdStUI1 MemVar_D93038
  loc_BB11EE: Branch loc_BB1216
  loc_BB11F1: FLdI2 var_8C
  loc_BB11F4: LitI2_Byte 5
  loc_BB11F6: EqI2
  loc_BB11F7: BranchF loc_BB1205
  loc_BB11FA: LitI2_Byte 6
  loc_BB11FC: CUI1I2
  loc_BB11FE: ImpAdStUI1 MemVar_D93038
  loc_BB1202: Branch loc_BB1216
  loc_BB1205: FLdI2 var_8C
  loc_BB1208: LitI2_Byte 6
  loc_BB120A: EqI2
  loc_BB120B: BranchF loc_BB1216
  loc_BB120E: LitI2_Byte 7
  loc_BB1210: CUI1I2
  loc_BB1212: ImpAdStUI1 MemVar_D93038
  loc_BB1216: LitStr vbNullString
  loc_BB1219: FLdPr Me
  loc_BB121C: VCallAd Control_ID_CucuPersTitularLbl
  loc_BB121F: FStAdFunc var_88
  loc_BB1222: FLdPr var_88
  loc_BB1225: Me.Caption = from_stack_1
  loc_BB122A: FFree1Ad var_88
  loc_BB122D: LitStr vbNullString
  loc_BB1230: FLdPr Me
  loc_BB1233: VCallAd Control_ID_DetaPersTitularLbl
  loc_BB1236: FStAdFunc var_88
  loc_BB1239: FLdPr var_88
  loc_BB123C: Me.Caption = from_stack_1
  loc_BB1241: FFree1Ad var_88
  loc_BB1244: LitStr vbNullString
  loc_BB1247: FLdPr Me
  loc_BB124A: VCallAd Control_ID_CucuPersFirmanterLbl
  loc_BB124D: FStAdFunc var_88
  loc_BB1250: FLdPr var_88
  loc_BB1253: Me.Caption = from_stack_1
  loc_BB1258: FFree1Ad var_88
  loc_BB125B: LitStr vbNullString
  loc_BB125E: FLdPr Me
  loc_BB1261: VCallAd Control_ID_DetaPersFirmanteLbl
  loc_BB1264: FStAdFunc var_88
  loc_BB1267: FLdPr var_88
  loc_BB126A: Me.Caption = from_stack_1
  loc_BB126F: FFree1Ad var_88
  loc_BB1272: LitI2_Byte 0
  loc_BB1274: CR8I2
  loc_BB1275: FLdPr Me
  loc_BB1278: MemStFPR8 global_76
  loc_BB127B: LitI2_Byte 0
  loc_BB127D: CR8I2
  loc_BB127E: FLdPr Me
  loc_BB1281: MemStFPR8 global_84
  loc_BB1284: LitI2_Byte 0
  loc_BB1286: FLdPr Me
  loc_BB1289: MemStI2 global_72
  loc_BB128C: LitI2_Byte 0
  loc_BB128E: PopTmpLdAd2 var_8A
  loc_BB1291: Call CodiFapaTxt_Validate(from_stack_1v)
  loc_BB1296: FLdPr Me
  loc_BB1299: MemLdStr global_68
  loc_BB129C: LitStr vbNullString
  loc_BB129F: NeStr
  loc_BB12A1: BranchF loc_BB12A5
  loc_BB12A4: ExitProcHresult
  loc_BB12A5: FLdRfVar var_90
  loc_BB12A8: FLdPr Me
  loc_BB12AB: VCallAd Control_ID_CodiFapaTxt
  loc_BB12AE: FStAdFunc var_88
  loc_BB12B1: FLdPr var_88
  loc_BB12B4:  = Me.Text
  loc_BB12B9: ILdRf var_90
  loc_BB12BC: CR8Str
  loc_BB12BE: LitI2_Byte 0
  loc_BB12C0: CR8I2
  loc_BB12C1: EqR4
  loc_BB12C2: FFree1Str var_90
  loc_BB12C5: FFree1Ad var_88
  loc_BB12C8: BranchF loc_BB12D9
  loc_BB12CB: LitStr "No puede ser cero el numero de la facilidad de pago"
  loc_BB12CE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB12D3: Call Proc_110_15_B20AE4()
  loc_BB12D8: ExitProcHresult
  loc_BB12D9: LitStr "SELECT facipago.*, DetaPers FROM facipago "
  loc_BB12DC: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = facipago.CucuPers"
  loc_BB12DF: ConcatStr
  loc_BB12E0: FStStrNoPop var_90
  loc_BB12E3: LitStr " WHERE CodiFapa = "
  loc_BB12E6: ConcatStr
  loc_BB12E7: FStStrNoPop var_98
  loc_BB12EA: FLdRfVar var_94
  loc_BB12ED: FLdPr Me
  loc_BB12F0: VCallAd Control_ID_CodiFapaTxt
  loc_BB12F3: FStAdFunc var_88
  loc_BB12F6: FLdPr var_88
  loc_BB12F9:  = Me.Text
  loc_BB12FE: ILdRf var_94
  loc_BB1301: ConcatStr
  loc_BB1302: FStStrNoPop var_9C
  loc_BB1305: LitStr " ORDER BY facipago.CodiFapa"
  loc_BB1308: ConcatStr
  loc_BB1309: FStStrNoPop var_A0
  loc_BB130C: FLdPr Me
  loc_BB130F: MemLdRfVar from_stack_1.global_52
  loc_BB1312: NewIfNullPr clsfacipago
  loc_BB1315: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_BB131A: FFreeStr var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_BB1327: FFree1Ad var_88
  loc_BB132A: FLdRfVar var_A4
  loc_BB132D: FLdPr Me
  loc_BB1330: MemLdRfVar from_stack_1.global_52
  loc_BB1333: NewIfNullPr clsfacipago
  loc_BB1336: from_stack_1 = clsfacipago.RecordCount
  loc_BB133B: ILdRf var_A4
  loc_BB133E: LitI4 0
  loc_BB1343: GtI4
  loc_BB1344: BranchF loc_BB1772
  loc_BB1347: LitI2_Byte 0
  loc_BB1349: CR8I2
  loc_BB134A: FLdPr Me
  loc_BB134D: MemStFPR8 global_76
  loc_BB1350: LitI2_Byte 0
  loc_BB1352: CR8I2
  loc_BB1353: FLdPr Me
  loc_BB1356: MemStFPR8 global_84
  loc_BB1359: FLdRfVar var_90
  loc_BB135C: FLdPr Me
  loc_BB135F: MemLdRfVar from_stack_1.global_52
  loc_BB1362: NewIfNullPr clsfacipago
  loc_BB1365: from_stack_1 = clsfacipago.CucuPers
  loc_BB136A: LitI4 1
  loc_BB136F: LitI4 1
  loc_BB1374: LitVarStr var_C4, "##-########-#"
  loc_BB1379: FStVarCopyObj var_D4
  loc_BB137C: FLdRfVar var_D4
  loc_BB137F: FLdZeroAd var_90
  loc_BB1382: CVarStr var_B4
  loc_BB1385: ImpAdCallI2 Format$(, )
  loc_BB138A: FStStrNoPop var_94
  loc_BB138D: FLdPr Me
  loc_BB1390: VCallAd Control_ID_CucuPersTitularLbl
  loc_BB1393: FStAdFunc var_88
  loc_BB1396: FLdPr var_88
  loc_BB1399: Me.Caption = from_stack_1
  loc_BB139E: FFree1Str var_94
  loc_BB13A1: FFree1Ad var_88
  loc_BB13A4: FFreeVar var_B4 = ""
  loc_BB13AB: FLdRfVar var_B4
  loc_BB13AE: FLdRfVar var_DC
  loc_BB13B1: LitVarStr var_C4, "DetaPers"
  loc_BB13B6: PopAdLdVar
  loc_BB13B7: FLdRfVar var_D8
  loc_BB13BA: FLdRfVar var_88
  loc_BB13BD: FLdPr Me
  loc_BB13C0: MemLdRfVar from_stack_1.global_52
  loc_BB13C3: NewIfNullPr clsfacipago
  loc_BB13C6: from_stack_1v = clsfacipago.RsFrmGet()
  loc_BB13CB: FLdPr var_88
  loc_BB13CE:  = Me.Fields
  loc_BB13D3: FLdPr var_D8
  loc_BB13D6: from_stack_2 = Me.Item(from_stack_1)
  loc_BB13DB: FLdPr var_DC
  loc_BB13DE:  = Me.Value
  loc_BB13E3: FLdRfVar var_B4
  loc_BB13E6: CStrVarTmp
  loc_BB13E7: FStStrNoPop var_90
  loc_BB13EA: FLdPr Me
  loc_BB13ED: VCallAd Control_ID_DetaPersTitularLbl
  loc_BB13F0: FStAdFunc var_E0
  loc_BB13F3: FLdPr var_E0
  loc_BB13F6: Me.Caption = from_stack_1
  loc_BB13FB: FFree1Str var_90
  loc_BB13FE: FFreeAd var_88 = "": var_D8 = "": var_DC = ""
  loc_BB1409: FFree1Var var_B4 = ""
  loc_BB140C: FLdRfVar var_DC
  loc_BB140F: LitVarStr var_C4, "CufiFapa"
  loc_BB1414: PopAdLdVar
  loc_BB1415: FLdRfVar var_D8
  loc_BB1418: FLdRfVar var_88
  loc_BB141B: FLdPr Me
  loc_BB141E: MemLdRfVar from_stack_1.global_52
  loc_BB1421: NewIfNullPr clsfacipago
  loc_BB1424: from_stack_1v = clsfacipago.RsFrmGet()
  loc_BB1429: FLdPr var_88
  loc_BB142C:  = Me.Fields
  loc_BB1431: FLdPr var_D8
  loc_BB1434: from_stack_2 = Me.Item(from_stack_1)
  loc_BB1439: LitI4 1
  loc_BB143E: LitI4 1
  loc_BB1443: LitVarStr var_F0, "##-########-#"
  loc_BB1448: FStVarCopyObj var_D4
  loc_BB144B: FLdRfVar var_D4
  loc_BB144E: FLdZeroAd var_DC
  loc_BB1451: CVarAd
  loc_BB1455: ImpAdCallI2 Format$(, )
  loc_BB145A: FStStrNoPop var_90
  loc_BB145D: FLdPr Me
  loc_BB1460: VCallAd Control_ID_CucuPersFirmanterLbl
  loc_BB1463: FStAdFunc var_E0
  loc_BB1466: FLdPr var_E0
  loc_BB1469: Me.Caption = from_stack_1
  loc_BB146E: FFree1Str var_90
  loc_BB1471: FFreeAd var_88 = "": var_D8 = ""
  loc_BB147A: FFreeVar var_B4 = ""
  loc_BB1481: FLdRfVar var_B4
  loc_BB1484: FLdRfVar var_DC
  loc_BB1487: LitVarStr var_C4, "FirmFapa"
  loc_BB148C: PopAdLdVar
  loc_BB148D: FLdRfVar var_D8
  loc_BB1490: FLdRfVar var_88
  loc_BB1493: FLdPr Me
  loc_BB1496: MemLdRfVar from_stack_1.global_52
  loc_BB1499: NewIfNullPr clsfacipago
  loc_BB149C: from_stack_1v = clsfacipago.RsFrmGet()
  loc_BB14A1: FLdPr var_88
  loc_BB14A4:  = Me.Fields
  loc_BB14A9: FLdPr var_D8
  loc_BB14AC: from_stack_2 = Me.Item(from_stack_1)
  loc_BB14B1: FLdPr var_DC
  loc_BB14B4:  = Me.Value
  loc_BB14B9: FLdRfVar var_B4
  loc_BB14BC: CStrVarTmp
  loc_BB14BD: FStStrNoPop var_90
  loc_BB14C0: FLdPr Me
  loc_BB14C3: VCallAd Control_ID_DetaPersFirmanteLbl
  loc_BB14C6: FStAdFunc var_E0
  loc_BB14C9: FLdPr var_E0
  loc_BB14CC: Me.Caption = from_stack_1
  loc_BB14D1: FFree1Str var_90
  loc_BB14D4: FFreeAd var_88 = "": var_D8 = "": var_DC = ""
  loc_BB14DF: FFree1Var var_B4 = ""
  loc_BB14E2: FLdRfVar var_A4
  loc_BB14E5: FLdPr Me
  loc_BB14E8: MemLdRfVar from_stack_1.global_52
  loc_BB14EB: NewIfNullPr clsfacipago
  loc_BB14EE: from_stack_1 = clsfacipago.CodiFapa
  loc_BB14F3: LitI2_Byte 0
  loc_BB14F5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BB14FA: FStFPR8 var_F8
  loc_BB14FD: LitStr "tmp_DetaFapaConsulta"
  loc_BB1500: FLdFPR8 var_F8
  loc_BB1503: CStrDate
  loc_BB1505: FStStrNoPop var_90
  loc_BB1508: ILdRf var_A4
  loc_BB150B: FLdPr Me
  loc_BB150E: MemLdRfVar from_stack_1.global_56
  loc_BB1511: NewIfNullPr clsdetafapa
  loc_BB1514: Call clsdetafapa.CreaTemporalConsultaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BB1519: FFree1Str var_90
  loc_BB151C: LitStr "SELECT * FROM tmp_DetaFapaConsulta ORDER BY CodiFapa, CuotDefa"
  loc_BB151F: FLdPr Me
  loc_BB1522: MemLdRfVar from_stack_1.global_56
  loc_BB1525: NewIfNullPr clsdetafapa
  loc_BB1528: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_BB152D: FLdRfVar var_A4
  loc_BB1530: FLdPr Me
  loc_BB1533: MemLdRfVar from_stack_1.global_56
  loc_BB1536: NewIfNullPr clsdetafapa
  loc_BB1539: from_stack_1 = clsdetafapa.RecordCount
  loc_BB153E: ILdRf var_A4
  loc_BB1541: LitI4 0
  loc_BB1546: GtI4
  loc_BB1547: BranchF loc_BB163E
  loc_BB154A: FLdPr Me
  loc_BB154D: MemLdRfVar from_stack_1.global_56
  loc_BB1550: NewIfNullPr clsdetafapa
  loc_BB1553: Call clsdetafapa.MoveFirst()
  loc_BB1558: FLdRfVar var_8A
  loc_BB155B: FLdPr Me
  loc_BB155E: MemLdRfVar from_stack_1.global_56
  loc_BB1561: NewIfNullPr clsdetafapa
  loc_BB1564: from_stack_1 = clsdetafapa.EOF
  loc_BB1569: FLdI2 var_8A
  loc_BB156C: NotI4
  loc_BB156D: BranchF loc_BB163E
  loc_BB1570: FLdRfVar var_B4
  loc_BB1573: FLdPr Me
  loc_BB1576: MemLdRfVar from_stack_1.global_56
  loc_BB1579: NewIfNullPr clsdetafapa
  loc_BB157C: from_stack_1 = clsdetafapa.FepaDefa
  loc_BB1581: FLdRfVar var_B4
  loc_BB1584: ImpAdCallI2 IsNull()
  loc_BB1589: NotI4
  loc_BB158A: FFree1Var var_B4 = ""
  loc_BB158D: BranchF loc_BB15CF
  loc_BB1590: FLdRfVar var_F8
  loc_BB1593: FLdPr Me
  loc_BB1596: MemLdRfVar from_stack_1.global_56
  loc_BB1599: NewIfNullPr clsdetafapa
  loc_BB159C: from_stack_1 = clsdetafapa.TotaDefa
  loc_BB15A1: LitI4 2
  loc_BB15A6: FLdPr Me
  loc_BB15A9: MemLdFPR8 global_76
  loc_BB15AC: FLdFPR8 var_F8
  loc_BB15AF: FnCDblR8
  loc_BB15B1: AddR8
  loc_BB15B2: CVarR8
  loc_BB15B6: FLdRfVar var_D4
  loc_BB15B9: ImpAdCallFPR4  = Round(, )
  loc_BB15BE: FLdRfVar var_D4
  loc_BB15C1: CR4Var
  loc_BB15C2: FLdPr Me
  loc_BB15C5: MemStFPR8 global_76
  loc_BB15C8: FFreeVar var_B4 = ""
  loc_BB15CF: FLdRfVar var_B4
  loc_BB15D2: FLdPr Me
  loc_BB15D5: MemLdRfVar from_stack_1.global_56
  loc_BB15D8: NewIfNullPr clsdetafapa
  loc_BB15DB: from_stack_1 = clsdetafapa.FepaDefa
  loc_BB15E0: FLdRfVar var_B4
  loc_BB15E3: ImpAdCallI2 IsNull()
  loc_BB15E8: FFree1Var var_B4 = ""
  loc_BB15EB: BranchF loc_BB162D
  loc_BB15EE: FLdRfVar var_F8
  loc_BB15F1: FLdPr Me
  loc_BB15F4: MemLdRfVar from_stack_1.global_56
  loc_BB15F7: NewIfNullPr clsdetafapa
  loc_BB15FA: from_stack_1 = clsdetafapa.TotaDefa
  loc_BB15FF: LitI4 2
  loc_BB1604: FLdPr Me
  loc_BB1607: MemLdFPR8 global_84
  loc_BB160A: FLdFPR8 var_F8
  loc_BB160D: FnCDblR8
  loc_BB160F: AddR8
  loc_BB1610: CVarR8
  loc_BB1614: FLdRfVar var_D4
  loc_BB1617: ImpAdCallFPR4  = Round(, )
  loc_BB161C: FLdRfVar var_D4
  loc_BB161F: CR4Var
  loc_BB1620: FLdPr Me
  loc_BB1623: MemStFPR8 global_84
  loc_BB1626: FFreeVar var_B4 = ""
  loc_BB162D: FLdPr Me
  loc_BB1630: MemLdRfVar from_stack_1.global_56
  loc_BB1633: NewIfNullPr clsdetafapa
  loc_BB1636: Call clsdetafapa.MoveSiguiente()
  loc_BB163B: Branch loc_BB1558
  loc_BB163E: LitStr "SELECT faciapre.NumeApre, AutoApre FROM faciapre "
  loc_BB1641: LitStr " INNER JOIN apremio ON apremio.NumeApre = faciapre.NumeApre"
  loc_BB1644: ConcatStr
  loc_BB1645: FStStrNoPop var_90
  loc_BB1648: LitStr " WHERE CodiFapa = "
  loc_BB164B: ConcatStr
  loc_BB164C: FStStrNoPop var_94
  loc_BB164F: FLdRfVar var_A4
  loc_BB1652: FLdPr Me
  loc_BB1655: MemLdRfVar from_stack_1.global_52
  loc_BB1658: NewIfNullPr clsfacipago
  loc_BB165B: from_stack_1 = clsfacipago.CodiFapa
  loc_BB1660: ILdRf var_A4
  loc_BB1663: CStrI4
  loc_BB1665: FStStrNoPop var_98
  loc_BB1668: ConcatStr
  loc_BB1669: FStStrNoPop var_9C
  loc_BB166C: LitStr " GROUP BY faciapre.NumeApre"
  loc_BB166F: ConcatStr
  loc_BB1670: FStStrNoPop var_A0
  loc_BB1673: FLdPr Me
  loc_BB1676: MemLdRfVar from_stack_1.global_60
  loc_BB1679: NewIfNullPr clsdetafapa
  loc_BB167C: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_BB1681: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_BB168E: LitStr "SELECT CuotDefa, PeriCtct, BimeCtct, CodiConc, CapiFacc FROM facictacte "
  loc_BB1691: LitStr " WHERE CodiFapa = "
  loc_BB1694: ConcatStr
  loc_BB1695: FStStrNoPop var_90
  loc_BB1698: FLdRfVar var_A4
  loc_BB169B: FLdPr Me
  loc_BB169E: MemLdRfVar from_stack_1.global_52
  loc_BB16A1: NewIfNullPr clsfacipago
  loc_BB16A4: from_stack_1 = clsfacipago.CodiFapa
  loc_BB16A9: ILdRf var_A4
  loc_BB16AC: CStrI4
  loc_BB16AE: FStStrNoPop var_94
  loc_BB16B1: ConcatStr
  loc_BB16B2: FStStrNoPop var_98
  loc_BB16B5: LitStr " ORDER BY CodiFapa, CuotDefa, PeriCtct, BimeCtct, CodiConc"
  loc_BB16B8: ConcatStr
  loc_BB16B9: FStStrNoPop var_9C
  loc_BB16BC: FLdPr Me
  loc_BB16BF: MemLdRfVar from_stack_1.global_64
  loc_BB16C2: NewIfNullPr clsdetafapa
  loc_BB16C5: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_BB16CA: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_BB16D5: LitI4 1
  loc_BB16DA: LitI4 1
  loc_BB16DF: LitVarStr var_F0, "0.00"
  loc_BB16E4: FStVarCopyObj var_B4
  loc_BB16E7: FLdRfVar var_B4
  loc_BB16EA: FLdPr Me
  loc_BB16ED: MemLdRfVar from_stack_1.global_76
  loc_BB16F0: CVarRef
  loc_BB16F5: FLdRfVar var_D4
  loc_BB16F8: ImpAdCallFPR4  = Format(, )
  loc_BB16FD: FLdRfVar var_D4
  loc_BB1700: CStrVarVal var_90
  loc_BB1704: FLdPr Me
  loc_BB1707: VCallAd Control_ID_txtTotaCapi
  loc_BB170A: FStAdFunc var_88
  loc_BB170D: FLdPr var_88
  loc_BB1710: Me.Text = from_stack_1
  loc_BB1715: FFree1Str var_90
  loc_BB1718: FFree1Ad var_88
  loc_BB171B: FFreeVar var_B4 = ""
  loc_BB1722: LitI4 1
  loc_BB1727: LitI4 1
  loc_BB172C: LitVarStr var_F0, "0.00"
  loc_BB1731: FStVarCopyObj var_B4
  loc_BB1734: FLdRfVar var_B4
  loc_BB1737: FLdPr Me
  loc_BB173A: MemLdRfVar from_stack_1.global_84
  loc_BB173D: CVarRef
  loc_BB1742: FLdRfVar var_D4
  loc_BB1745: ImpAdCallFPR4  = Format(, )
  loc_BB174A: FLdRfVar var_D4
  loc_BB174D: CStrVarVal var_90
  loc_BB1751: FLdPr Me
  loc_BB1754: VCallAd Control_ID_txtTotal
  loc_BB1757: FStAdFunc var_88
  loc_BB175A: FLdPr var_88
  loc_BB175D: Me.Text = from_stack_1
  loc_BB1762: FFree1Str var_90
  loc_BB1765: FFree1Ad var_88
  loc_BB1768: FFreeVar var_B4 = ""
  loc_BB176F: Branch loc_BB17D6
  loc_BB1772: LitStr vbNullString
  loc_BB1775: FLdPr Me
  loc_BB1778: VCallAd Control_ID_CucuPersTitularLbl
  loc_BB177B: FStAdFunc var_88
  loc_BB177E: FLdPr var_88
  loc_BB1781: Me.Caption = from_stack_1
  loc_BB1786: FFree1Ad var_88
  loc_BB1789: LitStr vbNullString
  loc_BB178C: FLdPr Me
  loc_BB178F: VCallAd Control_ID_DetaPersTitularLbl
  loc_BB1792: FStAdFunc var_88
  loc_BB1795: FLdPr var_88
  loc_BB1798: Me.Caption = from_stack_1
  loc_BB179D: FFree1Ad var_88
  loc_BB17A0: LitStr vbNullString
  loc_BB17A3: FLdPr Me
  loc_BB17A6: VCallAd Control_ID_CucuPersFirmanterLbl
  loc_BB17A9: FStAdFunc var_88
  loc_BB17AC: FLdPr var_88
  loc_BB17AF: Me.Caption = from_stack_1
  loc_BB17B4: FFree1Ad var_88
  loc_BB17B7: LitStr vbNullString
  loc_BB17BA: FLdPr Me
  loc_BB17BD: VCallAd Control_ID_DetaPersFirmanteLbl
  loc_BB17C0: FStAdFunc var_88
  loc_BB17C3: FLdPr var_88
  loc_BB17C6: Me.Caption = from_stack_1
  loc_BB17CB: FFree1Ad var_88
  loc_BB17CE: LitStr "No existe el plan de pago. Verifique..."
  loc_BB17D1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB17D6: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_GotFocus() '9C71A8
  'Data Table: 4D1F2C
  loc_9C7194: FLdPr Me
  loc_9C7197: VCallAd Control_ID_CodiFapaTxt
  loc_9C719A: CVarAd
  loc_9C719E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C71A3: FFree1Var var_94 = ""
  loc_9C71A6: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_KeyPress(KeyAscii As Integer) 'ABAF74
  'Data Table: 4D1F2C
  loc_ABAE90: LitStr "0123456789 "
  loc_ABAE93: FStStrCopy var_88
  loc_ABAE96: FLdRfVar var_88
  loc_ABAE99: ILdRf KeyAscii
  loc_ABAE9C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_ABAEA1: IStI2 KeyAscii
  loc_ABAEA4: FFree1Str var_88
  loc_ABAEA7: ILdI2 KeyAscii
  loc_ABAEAA: LitI2_Byte &H20
  loc_ABAEAC: EqI2
  loc_ABAEAD: BranchF loc_ABAF72
  loc_ABAEB0: LitI2_Byte 0
  loc_ABAEB2: IStI2 KeyAscii
  loc_ABAEB5: LitVar_Missing var_A8
  loc_ABAEB8: PopAdLdVar
  loc_ABAEB9: LitVarI4
  loc_ABAEC1: PopAdLdVar
  loc_ABAEC2: ImpAdLdRf MemVar_D942A0
  loc_ABAEC5: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABAEC8: dlgBuscarFacilidaddePago.Show from_stack_1, from_stack_2
  loc_ABAECD: FLdRfVar var_B0
  loc_ABAED0: FLdRfVar var_AC
  loc_ABAED3: ImpAdLdRf MemVar_D942A0
  loc_ABAED6: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABAED9: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_ABAEDE: FLdPr var_AC
  loc_ABAEE1: from_stack_1 = clsbase.RecordCount
  loc_ABAEE6: ILdRf var_B0
  loc_ABAEE9: LitI4 0
  loc_ABAEEE: GtI4
  loc_ABAEEF: FFree1Ad var_AC
  loc_ABAEF2: BranchF loc_ABAF60
  loc_ABAEF5: FLdRfVar var_CC
  loc_ABAEF8: FLdRfVar var_BC
  loc_ABAEFB: LitVarStr var_98, "CodiFapa"
  loc_ABAF00: PopAdLdVar
  loc_ABAF01: FLdRfVar var_B8
  loc_ABAF04: FLdRfVar var_B4
  loc_ABAF07: FLdRfVar var_AC
  loc_ABAF0A: ImpAdLdRf MemVar_D942A0
  loc_ABAF0D: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABAF10: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_ABAF15: FLdPr var_AC
  loc_ABAF18: from_stack_1v = clsbase.RsFrmGet()
  loc_ABAF1D: FLdPr var_B4
  loc_ABAF20:  = Me.Fields
  loc_ABAF25: FLdPr var_B8
  loc_ABAF28: from_stack_2 = Me.Item(from_stack_1)
  loc_ABAF2D: FLdPr var_BC
  loc_ABAF30:  = Me.Value
  loc_ABAF35: FLdRfVar var_CC
  loc_ABAF38: CStrVarTmp
  loc_ABAF39: FStStrNoPop var_88
  loc_ABAF3C: FLdPr Me
  loc_ABAF3F: VCallAd Control_ID_CodiFapaTxt
  loc_ABAF42: FStAdFunc var_D0
  loc_ABAF45: FLdPr var_D0
  loc_ABAF48: Me.Text = from_stack_1
  loc_ABAF4D: FFree1Str var_88
  loc_ABAF50: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_ABAF5D: FFree1Var var_CC = ""
  loc_ABAF60: FLdPr Me
  loc_ABAF63: VCallAd Control_ID_CodiFapaTxt
  loc_ABAF66: CVarAd
  loc_ABAF6A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABAF6F: FFree1Var var_CC = ""
  loc_ABAF72: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_Validate(Cancel As Boolean) 'A70AB4
  'Data Table: 4D1F2C
  loc_A70A48: FLdRfVar var_8C
  loc_A70A4B: FLdPr Me
  loc_A70A4E: VCallAd Control_ID_CodiFapaTxt
  loc_A70A51: FStAdFunc var_88
  loc_A70A54: FLdPr var_88
  loc_A70A57:  = Me.Text
  loc_A70A5C: LitI2_Byte &HFF
  loc_A70A5E: LitI2_Byte 0
  loc_A70A60: ILdRf var_8C
  loc_A70A63: LitStr "el plan de pago "
  loc_A70A66: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A70A6B: FStStrNoPop var_90
  loc_A70A6E: FLdPr Me
  loc_A70A71: MemStStrCopy
  loc_A70A75: FFreeStr var_8C = ""
  loc_A70A7C: FFree1Ad var_88
  loc_A70A7F: FLdPr Me
  loc_A70A82: MemLdStr global_68
  loc_A70A85: LitStr vbNullString
  loc_A70A88: NeStr
  loc_A70A8A: BranchF loc_A70AB0
  loc_A70A8D: FLdPr Me
  loc_A70A90: MemLdStr global_68
  loc_A70A93: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A70A98: FLdPr Me
  loc_A70A9B: VCallAd Control_ID_CodiFapaTxt
  loc_A70A9E: CVarAd
  loc_A70AA2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A70AA7: FFree1Var var_A0 = ""
  loc_A70AAA: LitI2_Byte &HFF
  loc_A70AAC: IStI2 Cancel
  loc_A70AAF: ExitProcHresult
  loc_A70AB0: ExitProcHresult
End Sub

Private Sub Form_Load() 'B108C8
  'Data Table: 4D1F2C
  loc_B10684: LitVar_Missing var_94
  loc_B10687: PopAdLdVar
  loc_B10688: LitStr "Inmueble"
  loc_B1068B: FLdPr Me
  loc_B1068E: VCallAd Control_ID_OficinaCbo
  loc_B10691: FStAdFunc var_98
  loc_B10694: FLdPr var_98
  loc_B10697: Me.AddItem from_stack_1, from_stack_2
  loc_B1069C: FFree1Ad var_98
  loc_B1069F: LitVar_Missing var_94
  loc_B106A2: PopAdLdVar
  loc_B106A3: LitStr "Comercio"
  loc_B106A6: FLdPr Me
  loc_B106A9: VCallAd Control_ID_OficinaCbo
  loc_B106AC: FStAdFunc var_98
  loc_B106AF: FLdPr var_98
  loc_B106B2: Me.AddItem from_stack_1, from_stack_2
  loc_B106B7: FFree1Ad var_98
  loc_B106BA: LitVar_Missing var_94
  loc_B106BD: PopAdLdVar
  loc_B106BE: LitStr "Deudores Varios"
  loc_B106C1: FLdPr Me
  loc_B106C4: VCallAd Control_ID_OficinaCbo
  loc_B106C7: FStAdFunc var_98
  loc_B106CA: FLdPr var_98
  loc_B106CD: Me.AddItem from_stack_1, from_stack_2
  loc_B106D2: FFree1Ad var_98
  loc_B106D5: LitVar_Missing var_94
  loc_B106D8: PopAdLdVar
  loc_B106D9: LitStr "Cementerio"
  loc_B106DC: FLdPr Me
  loc_B106DF: VCallAd Control_ID_OficinaCbo
  loc_B106E2: FStAdFunc var_98
  loc_B106E5: FLdPr var_98
  loc_B106E8: Me.AddItem from_stack_1, from_stack_2
  loc_B106ED: FFree1Ad var_98
  loc_B106F0: LitVar_Missing var_94
  loc_B106F3: PopAdLdVar
  loc_B106F4: LitStr "Transito"
  loc_B106F7: FLdPr Me
  loc_B106FA: VCallAd Control_ID_OficinaCbo
  loc_B106FD: FStAdFunc var_98
  loc_B10700: FLdPr var_98
  loc_B10703: Me.AddItem from_stack_1, from_stack_2
  loc_B10708: FFree1Ad var_98
  loc_B1070B: LitVar_Missing var_94
  loc_B1070E: PopAdLdVar
  loc_B1070F: LitStr "Publicidad"
  loc_B10712: FLdPr Me
  loc_B10715: VCallAd Control_ID_OficinaCbo
  loc_B10718: FStAdFunc var_98
  loc_B1071B: FLdPr var_98
  loc_B1071E: Me.AddItem from_stack_1, from_stack_2
  loc_B10723: FFree1Ad var_98
  loc_B10726: LitVar_Missing var_94
  loc_B10729: PopAdLdVar
  loc_B1072A: LitStr "Antena"
  loc_B1072D: FLdPr Me
  loc_B10730: VCallAd Control_ID_OficinaCbo
  loc_B10733: FStAdFunc var_98
  loc_B10736: FLdPr var_98
  loc_B10739: Me.AddItem from_stack_1, from_stack_2
  loc_B1073E: FFree1Ad var_98
  loc_B10741: LitI4 0
  loc_B10746: LitI4 1
  loc_B1074B: FLdRfVar var_9C
  loc_B1074E: Redim
  loc_B10758: FLdPr Me
  loc_B1075B: MemLdRfVar from_stack_1.global_52
  loc_B1075E: NewIfNullAd
  loc_B10761: FStAd var_98 
  loc_B10765: FLdRfVar var_98
  loc_B10768: CVarRef
  loc_B1076D: ParmAry1St
  loc_B10773: FLdPr Me
  loc_B10776: VCallAd Control_ID_dgdFaciPago
  loc_B10779: CVarAd
  loc_B1077D: ParmAry1St
  loc_B10783: FLdRfVar var_9C
  loc_B10786: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B1078B: ILdRf var_98
  loc_B1078E: CastAd
  loc_B10791: FLdPr Me
  loc_B10794: MemStAdFunc
  loc_B10798: FLdRfVar var_9C
  loc_B1079B: Erase
  loc_B1079C: FFree1Ad var_98
  loc_B1079F: LitI4 0
  loc_B107A4: LitI4 1
  loc_B107A9: FLdRfVar var_9C
  loc_B107AC: Redim
  loc_B107B6: FLdPr Me
  loc_B107B9: MemLdRfVar from_stack_1.global_56
  loc_B107BC: NewIfNullAd
  loc_B107BF: FStAd var_98 
  loc_B107C3: FLdRfVar var_98
  loc_B107C6: CVarRef
  loc_B107CB: ParmAry1St
  loc_B107D1: FLdPr Me
  loc_B107D4: VCallAd Control_ID_dgdDetaFapa
  loc_B107D7: CVarAd
  loc_B107DB: ParmAry1St
  loc_B107E1: FLdRfVar var_9C
  loc_B107E4: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B107E9: ILdRf var_98
  loc_B107EC: CastAd
  loc_B107EF: FLdPr Me
  loc_B107F2: MemStAdFunc
  loc_B107F6: FLdRfVar var_9C
  loc_B107F9: Erase
  loc_B107FA: FFree1Ad var_98
  loc_B107FD: LitI4 0
  loc_B10802: LitI4 1
  loc_B10807: FLdRfVar var_9C
  loc_B1080A: Redim
  loc_B10814: FLdPr Me
  loc_B10817: MemLdRfVar from_stack_1.global_60
  loc_B1081A: NewIfNullAd
  loc_B1081D: FStAd var_98 
  loc_B10821: FLdRfVar var_98
  loc_B10824: CVarRef
  loc_B10829: ParmAry1St
  loc_B1082F: FLdPr Me
  loc_B10832: VCallAd Control_ID_dgdFaciaApre
  loc_B10835: CVarAd
  loc_B10839: ParmAry1St
  loc_B1083F: FLdRfVar var_9C
  loc_B10842: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B10847: ILdRf var_98
  loc_B1084A: CastAd
  loc_B1084D: FLdPr Me
  loc_B10850: MemStAdFunc
  loc_B10854: FLdRfVar var_9C
  loc_B10857: Erase
  loc_B10858: FFree1Ad var_98
  loc_B1085B: LitI4 0
  loc_B10860: LitI4 1
  loc_B10865: FLdRfVar var_9C
  loc_B10868: Redim
  loc_B10872: FLdPr Me
  loc_B10875: MemLdRfVar from_stack_1.global_64
  loc_B10878: NewIfNullAd
  loc_B1087B: FStAd var_98 
  loc_B1087F: FLdRfVar var_98
  loc_B10882: CVarRef
  loc_B10887: ParmAry1St
  loc_B1088D: FLdPr Me
  loc_B10890: VCallAd Control_ID_dgdFacictacte
  loc_B10893: CVarAd
  loc_B10897: ParmAry1St
  loc_B1089D: FLdRfVar var_9C
  loc_B108A0: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B108A5: ILdRf var_98
  loc_B108A8: CastAd
  loc_B108AB: FLdPr Me
  loc_B108AE: MemStAdFunc
  loc_B108B2: FLdRfVar var_9C
  loc_B108B5: Erase
  loc_B108B6: FFree1Ad var_98
  loc_B108B9: Call Proc_110_15_B20AE4()
  loc_B108BE: LitI2_Byte 0
  loc_B108C0: FLdPr Me
  loc_B108C3: MemStI2 global_72
  loc_B108C6: ExitProcHresult
End Sub

Private Function Proc_110_15_B20AE4() 'B20AE4
  'Data Table: 4D1F2C
  loc_B2083C: LitStr "SELECT * FROM facipago WHERE CodiFapa = 0 ORDER BY facipago.CodiFapa"
  loc_B2083F: FLdPr Me
  loc_B20842: MemLdRfVar from_stack_1.global_52
  loc_B20845: NewIfNullPr clsfacipago
  loc_B20848: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_B2084D: LitI2_Byte 0
  loc_B2084F: CR8I2
  loc_B20850: FLdPr Me
  loc_B20853: MemStFPR8 global_76
  loc_B20856: LitI2_Byte 0
  loc_B20858: CR8I2
  loc_B20859: FLdPr Me
  loc_B2085C: MemStFPR8 global_84
  loc_B2085F: LitI2_Byte 0
  loc_B20861: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B20866: FStFPR8 var_90
  loc_B20869: LitStr "tmp_DetaFapaConsulta"
  loc_B2086C: FLdFPR8 var_90
  loc_B2086F: CStrDate
  loc_B20871: FStStrNoPop var_88
  loc_B20874: LitI4 0
  loc_B20879: FLdPr Me
  loc_B2087C: MemLdRfVar from_stack_1.global_56
  loc_B2087F: NewIfNullPr clsdetafapa
  loc_B20882: Call clsdetafapa.CreaTemporalConsultaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B20887: FFree1Str var_88
  loc_B2088A: LitStr "SELECT * FROM tmp_DetaFapaConsulta ORDER BY CodiFapa, CuotDefa"
  loc_B2088D: FLdPr Me
  loc_B20890: MemLdRfVar from_stack_1.global_56
  loc_B20893: NewIfNullPr clsdetafapa
  loc_B20896: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B2089B: FLdRfVar var_94
  loc_B2089E: FLdPr Me
  loc_B208A1: MemLdRfVar from_stack_1.global_56
  loc_B208A4: NewIfNullPr clsdetafapa
  loc_B208A7: from_stack_1 = clsdetafapa.RecordCount
  loc_B208AC: ILdRf var_94
  loc_B208AF: LitI4 0
  loc_B208B4: GtI4
  loc_B208B5: BranchF loc_B209AC
  loc_B208B8: FLdPr Me
  loc_B208BB: MemLdRfVar from_stack_1.global_56
  loc_B208BE: NewIfNullPr clsdetafapa
  loc_B208C1: Call clsdetafapa.MoveFirst()
  loc_B208C6: FLdRfVar var_96
  loc_B208C9: FLdPr Me
  loc_B208CC: MemLdRfVar from_stack_1.global_56
  loc_B208CF: NewIfNullPr clsdetafapa
  loc_B208D2: from_stack_1 = clsdetafapa.EOF
  loc_B208D7: FLdI2 var_96
  loc_B208DA: NotI4
  loc_B208DB: BranchF loc_B209AC
  loc_B208DE: FLdRfVar var_A8
  loc_B208E1: FLdPr Me
  loc_B208E4: MemLdRfVar from_stack_1.global_56
  loc_B208E7: NewIfNullPr clsdetafapa
  loc_B208EA: from_stack_1 = clsdetafapa.FepaDefa
  loc_B208EF: FLdRfVar var_A8
  loc_B208F2: ImpAdCallI2 IsNull()
  loc_B208F7: NotI4
  loc_B208F8: FFree1Var var_A8 = ""
  loc_B208FB: BranchF loc_B2093D
  loc_B208FE: FLdRfVar var_90
  loc_B20901: FLdPr Me
  loc_B20904: MemLdRfVar from_stack_1.global_56
  loc_B20907: NewIfNullPr clsdetafapa
  loc_B2090A: from_stack_1 = clsdetafapa.TotaDefa
  loc_B2090F: LitI4 2
  loc_B20914: FLdPr Me
  loc_B20917: MemLdFPR8 global_76
  loc_B2091A: FLdFPR8 var_90
  loc_B2091D: FnCDblR8
  loc_B2091F: AddR8
  loc_B20920: CVarR8
  loc_B20924: FLdRfVar var_C8
  loc_B20927: ImpAdCallFPR4  = Round(, )
  loc_B2092C: FLdRfVar var_C8
  loc_B2092F: CR4Var
  loc_B20930: FLdPr Me
  loc_B20933: MemStFPR8 global_76
  loc_B20936: FFreeVar var_A8 = ""
  loc_B2093D: FLdRfVar var_A8
  loc_B20940: FLdPr Me
  loc_B20943: MemLdRfVar from_stack_1.global_56
  loc_B20946: NewIfNullPr clsdetafapa
  loc_B20949: from_stack_1 = clsdetafapa.FepaDefa
  loc_B2094E: FLdRfVar var_A8
  loc_B20951: ImpAdCallI2 IsNull()
  loc_B20956: FFree1Var var_A8 = ""
  loc_B20959: BranchF loc_B2099B
  loc_B2095C: FLdRfVar var_90
  loc_B2095F: FLdPr Me
  loc_B20962: MemLdRfVar from_stack_1.global_56
  loc_B20965: NewIfNullPr clsdetafapa
  loc_B20968: from_stack_1 = clsdetafapa.TotaDefa
  loc_B2096D: LitI4 2
  loc_B20972: FLdPr Me
  loc_B20975: MemLdFPR8 global_84
  loc_B20978: FLdFPR8 var_90
  loc_B2097B: FnCDblR8
  loc_B2097D: AddR8
  loc_B2097E: CVarR8
  loc_B20982: FLdRfVar var_C8
  loc_B20985: ImpAdCallFPR4  = Round(, )
  loc_B2098A: FLdRfVar var_C8
  loc_B2098D: CR4Var
  loc_B2098E: FLdPr Me
  loc_B20991: MemStFPR8 global_84
  loc_B20994: FFreeVar var_A8 = ""
  loc_B2099B: FLdPr Me
  loc_B2099E: MemLdRfVar from_stack_1.global_56
  loc_B209A1: NewIfNullPr clsdetafapa
  loc_B209A4: Call clsdetafapa.MoveSiguiente()
  loc_B209A9: Branch loc_B208C6
  loc_B209AC: LitStr "SELECT faciapre.NumeApre, AutoApre FROM faciapre "
  loc_B209AF: LitStr " INNER JOIN apremio ON apremio.NumeApre = faciapre.NumeApre"
  loc_B209B2: ConcatStr
  loc_B209B3: FStStrNoPop var_88
  loc_B209B6: LitStr " WHERE CodiFapa = 0 GROUP BY faciapre.NumeApre"
  loc_B209B9: ConcatStr
  loc_B209BA: FStStrNoPop var_CC
  loc_B209BD: FLdPr Me
  loc_B209C0: MemLdRfVar from_stack_1.global_60
  loc_B209C3: NewIfNullPr clsdetafapa
  loc_B209C6: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B209CB: FFreeStr var_88 = ""
  loc_B209D2: LitStr "SELECT CuotDefa, PeriCtct, BimeCtct, CodiConc, CapiFacc FROM facictacte "
  loc_B209D5: LitStr " WHERE CodiFapa = 0 ORDER BY CodiFapa, CuotDefa, PeriCtct, BimeCtct, CodiConc"
  loc_B209D8: ConcatStr
  loc_B209D9: FStStrNoPop var_88
  loc_B209DC: FLdPr Me
  loc_B209DF: MemLdRfVar from_stack_1.global_64
  loc_B209E2: NewIfNullPr clsdetafapa
  loc_B209E5: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B209EA: FFree1Str var_88
  loc_B209ED: LitI4 1
  loc_B209F2: LitI4 1
  loc_B209F7: LitVarStr var_DC, "0.00"
  loc_B209FC: FStVarCopyObj var_A8
  loc_B209FF: FLdRfVar var_A8
  loc_B20A02: FLdPr Me
  loc_B20A05: MemLdRfVar from_stack_1.global_76
  loc_B20A08: CVarRef
  loc_B20A0D: FLdRfVar var_C8
  loc_B20A10: ImpAdCallFPR4  = Format(, )
  loc_B20A15: FLdRfVar var_C8
  loc_B20A18: CStrVarVal var_88
  loc_B20A1C: FLdPr Me
  loc_B20A1F: VCallAd Control_ID_txtTotaCapi
  loc_B20A22: FStAdFunc var_E0
  loc_B20A25: FLdPr var_E0
  loc_B20A28: Me.Text = from_stack_1
  loc_B20A2D: FFree1Str var_88
  loc_B20A30: FFree1Ad var_E0
  loc_B20A33: FFreeVar var_A8 = ""
  loc_B20A3A: LitI4 1
  loc_B20A3F: LitI4 1
  loc_B20A44: LitVarStr var_DC, "0.00"
  loc_B20A49: FStVarCopyObj var_A8
  loc_B20A4C: FLdRfVar var_A8
  loc_B20A4F: FLdPr Me
  loc_B20A52: MemLdRfVar from_stack_1.global_84
  loc_B20A55: CVarRef
  loc_B20A5A: FLdRfVar var_C8
  loc_B20A5D: ImpAdCallFPR4  = Format(, )
  loc_B20A62: FLdRfVar var_C8
  loc_B20A65: CStrVarVal var_88
  loc_B20A69: FLdPr Me
  loc_B20A6C: VCallAd Control_ID_txtTotal
  loc_B20A6F: FStAdFunc var_E0
  loc_B20A72: FLdPr var_E0
  loc_B20A75: Me.Text = from_stack_1
  loc_B20A7A: FFree1Str var_88
  loc_B20A7D: FFree1Ad var_E0
  loc_B20A80: FFreeVar var_A8 = ""
  loc_B20A87: LitStr vbNullString
  loc_B20A8A: FLdPr Me
  loc_B20A8D: VCallAd Control_ID_CucuPersTitularLbl
  loc_B20A90: FStAdFunc var_E0
  loc_B20A93: FLdPr var_E0
  loc_B20A96: Me.Caption = from_stack_1
  loc_B20A9B: FFree1Ad var_E0
  loc_B20A9E: LitStr vbNullString
  loc_B20AA1: FLdPr Me
  loc_B20AA4: VCallAd Control_ID_DetaPersTitularLbl
  loc_B20AA7: FStAdFunc var_E0
  loc_B20AAA: FLdPr var_E0
  loc_B20AAD: Me.Caption = from_stack_1
  loc_B20AB2: FFree1Ad var_E0
  loc_B20AB5: LitStr vbNullString
  loc_B20AB8: FLdPr Me
  loc_B20ABB: VCallAd Control_ID_CucuPersFirmanterLbl
  loc_B20ABE: FStAdFunc var_E0
  loc_B20AC1: FLdPr var_E0
  loc_B20AC4: Me.Caption = from_stack_1
  loc_B20AC9: FFree1Ad var_E0
  loc_B20ACC: LitStr vbNullString
  loc_B20ACF: FLdPr Me
  loc_B20AD2: VCallAd Control_ID_DetaPersFirmanteLbl
  loc_B20AD5: FStAdFunc var_E0
  loc_B20AD8: FLdPr var_E0
  loc_B20ADB: Me.Caption = from_stack_1
  loc_B20AE0: FFree1Ad var_E0
  loc_B20AE3: ExitProcHresult
End Function
