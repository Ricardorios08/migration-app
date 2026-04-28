VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmConsultaPorExpediente
  Caption = "Consulta por Expediente"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmConsultaPorExpediente.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14625
  ClientHeight = 7530
  Begin VB.CommandButton cmdImprimirOP
    Caption = "Orden Pago"
    Left = 8880
    Top = 240
    Width = 1335
    Height = 735
    TabIndex = 6
    Picture = "frmConsultaPorExpediente.frx":08CA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton cmdImprimir
    Caption = "Volante"
    Left = 7440
    Top = 240
    Width = 1215
    Height = 735
    TabIndex = 3
    Picture = "frmConsultaPorExpediente.frx":1194
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton cmdBuscar
    Left = 6720
    Top = 240
    Width = 495
    Height = 495
    TabIndex = 2
    Picture = "frmConsultaPorExpediente.frx":1A5E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.ComboBox cboExorImpu
    Left = 2760
    Top = 240
    Width = 3735
    Height = 420
    TabIndex = 1
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
  Begin VB.CommandButton cmdSalir
    Left = 13440
    Top = 240
    Width = 855
    Height = 615
    TabIndex = 5
    Picture = "frmConsultaPorExpediente.frx":1B58
    Style = 1
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 14295
    Height = 6135
    TabIndex = 4
    OleObjectBlob = "frmConsultaPorExpediente.frx":1DAA
  End
  Begin VB.Label Label2
    Caption = "Expediente Principal:"
    Left = 240
    Top = 240
    Width = 2370
    Height = 435
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
  End
End

Attribute VB_Name = "frmConsultaPorExpediente"


Private Sub cmdBuscar_Click() 'B1E5C8
  'Data Table: 427508
  loc_B1DD38: LitI2_Byte 0
  loc_B1DD3A: FLdPr Me
  loc_B1DD3D: VCallAd Control_ID_cmdImprimirOP
  loc_B1DD40: FStAdFunc var_88
  loc_B1DD43: FLdPr var_88
  loc_B1DD46: Me.Enabled = from_stack_1b
  loc_B1DD4B: FFree1Ad var_88
  loc_B1DD4E: FLdPr Me
  loc_B1DD51: MemLdRfVar from_stack_1.global_52
  loc_B1DD54: NewIfNullAd
  loc_B1DD57: FStAd var_8C 
  loc_B1DD5B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B1DD5E: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_B1DD61: ConcatStr
  loc_B1DD62: FStStrNoPop var_90
  loc_B1DD65: LitStr " PeriInfo year(4) NOT NULL DEFAULT '0000',"
  loc_B1DD68: ConcatStr
  loc_B1DD69: FStStrNoPop var_94
  loc_B1DD6C: LitStr " CucuPers char(11) NOT NULL DEFAULT '',"
  loc_B1DD6F: ConcatStr
  loc_B1DD70: FStStrNoPop var_98
  loc_B1DD73: LitStr " ExorImpu varchar(250) NOT NULL DEFAULT '',"
  loc_B1DD76: ConcatStr
  loc_B1DD77: FStStrNoPop var_9C
  loc_B1DD7A: LitStr " ExpeImpu varchar(250) NOT NULL DEFAULT '',"
  loc_B1DD7D: ConcatStr
  loc_B1DD7E: FStStrNoPop var_A0
  loc_B1DD81: LitStr " Tipo varchar(25) NOT NULL DEFAULT '',"
  loc_B1DD84: ConcatStr
  loc_B1DD85: FStStrNoPop var_A4
  loc_B1DD88: LitStr " SaldPrevImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_B1DD8B: ConcatStr
  loc_B1DD8C: FStStrNoPop var_A8
  loc_B1DD8F: LitStr " ReapImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_B1DD92: ConcatStr
  loc_B1DD93: FStStrNoPop var_AC
  loc_B1DD96: LitStr " ResiImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_B1DD99: ConcatStr
  loc_B1DD9A: FStStrNoPop var_B0
  loc_B1DD9D: LitStr " DeexImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_B1DDA0: ConcatStr
  loc_B1DDA1: FStStrNoPop var_B4
  loc_B1DDA4: LitStr " PagaImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_B1DDA7: ConcatStr
  loc_B1DDA8: FStStrNoPop var_B8
  loc_B1DDAB: LitStr " FechImpu date DEFAULT NULL,"
  loc_B1DDAE: ConcatStr
  loc_B1DDAF: FStStrNoPop var_BC
  loc_B1DDB2: LitStr " NumeFact char(15) NOT NULL DEFAULT '',"
  loc_B1DDB5: ConcatStr
  loc_B1DDB6: FStStrNoPop var_C0
  loc_B1DDB9: LitStr " FefaImpu date DEFAULT NULL,"
  loc_B1DDBC: ConcatStr
  loc_B1DDBD: FStStrNoPop var_C4
  loc_B1DDC0: LitStr " NumeOrpa int(8) NOT NULL DEFAULT '0',"
  loc_B1DDC3: ConcatStr
  loc_B1DDC4: FStStrNoPop var_C8
  loc_B1DDC7: LitStr " FereOrpa date DEFAULT NULL,"
  loc_B1DDCA: ConcatStr
  loc_B1DDCB: FStStrNoPop var_CC
  loc_B1DDCE: LitStr " FearOrpa date DEFAULT NULL,"
  loc_B1DDD1: ConcatStr
  loc_B1DDD2: FStStrNoPop var_D0
  loc_B1DDD5: LitStr " ArchOrpa VARCHAR(8) NOT NULL DEFAULT '',"
  loc_B1DDD8: ConcatStr
  loc_B1DDD9: FStStrNoPop var_D4
  loc_B1DDDC: LitStr " Orden int(8) NOT NULL DEFAULT '0',"
  loc_B1DDDF: ConcatStr
  loc_B1DDE0: FStStrNoPop var_D8
  loc_B1DDE3: LitStr " Suborden int(8) NOT NULL AUTO_INCREMENT,"
  loc_B1DDE6: ConcatStr
  loc_B1DDE7: FStStrNoPop var_DC
  loc_B1DDEA: LitStr " primary key (Suborden), Key idxtmp(CucuPers)"
  loc_B1DDED: ConcatStr
  loc_B1DDEE: FStStrNoPop var_E0
  loc_B1DDF1: LitStr " ) ENGINE=InnoDB;"
  loc_B1DDF4: ConcatStr
  loc_B1DDF5: FStStrNoPop var_E4
  loc_B1DDF8: FLdPr var_8C
  loc_B1DDFB: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1DE00: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B1DE2F: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,SaldPrevImpu,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1DE32: LitStr " SELECT PeriInfo, 0 CucuPers, ExorImpu, '' ExpeImpu, 'Imputac.', Sum(PrevImpu-DefiImpu) SaldPrevImpu, 0, 0, 0, 0, Max(FechImpu) FechImpu, '', NULL, 0, NULL, NULL, '', 0"
  loc_B1DE35: ConcatStr
  loc_B1DE36: FStStrNoPop var_90
  loc_B1DE39: LitStr " FROM imputacion"
  loc_B1DE3C: ConcatStr
  loc_B1DE3D: FStStrNoPop var_94
  loc_B1DE40: LitStr " WHERE PeriInfo = "
  loc_B1DE43: ConcatStr
  loc_B1DE44: FStStrNoPop var_98
  loc_B1DE47: ImpAdLdI2 MemVar_C3D064
  loc_B1DE4A: CStrUI1
  loc_B1DE4C: FStStrNoPop var_9C
  loc_B1DE4F: ConcatStr
  loc_B1DE50: FStStrNoPop var_A0
  loc_B1DE53: LitStr " AND imputacion.ExorImpu = '"
  loc_B1DE56: ConcatStr
  loc_B1DE57: FStStrNoPop var_A8
  loc_B1DE5A: FLdRfVar var_A4
  loc_B1DE5D: FLdPr Me
  loc_B1DE60: VCallAd Control_ID_cboExorImpu
  loc_B1DE63: FStAdFunc var_88
  loc_B1DE66: FLdPr var_88
  loc_B1DE69:  = Me.Text
  loc_B1DE6E: ILdRf var_A4
  loc_B1DE71: ConcatStr
  loc_B1DE72: FStStrNoPop var_AC
  loc_B1DE75: LitStr "'"
  loc_B1DE78: ConcatStr
  loc_B1DE79: FStStrNoPop var_B0
  loc_B1DE7C: LitStr " AND (PrevImpu != 0 OR DefiImpu != 0)"
  loc_B1DE7F: ConcatStr
  loc_B1DE80: FStStrNoPop var_B4
  loc_B1DE83: LitStr " GROUP BY True"
  loc_B1DE86: ConcatStr
  loc_B1DE87: FStStrNoPop var_B8
  loc_B1DE8A: LitStr " HAVING SaldPrevImpu <> 0"
  loc_B1DE8D: ConcatStr
  loc_B1DE8E: FStStrNoPop var_BC
  loc_B1DE91: LitStr " ORDER BY FechImpu;"
  loc_B1DE94: ConcatStr
  loc_B1DE95: FStStrNoPop var_C0
  loc_B1DE98: FLdPr var_8C
  loc_B1DE9B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1DEA0: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_A4 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1DEBD: FFree1Ad var_88
  loc_B1DEC0: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1DEC3: LitStr " SELECT PeriInfo, CucuPers, ExorImpu, '' ExpeImpu, 'Imputac.', Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, 0, 0, 0, Max(FechImpu) FechImpu, '', NULL, 0, NULL, NULL, '', 1"
  loc_B1DEC6: ConcatStr
  loc_B1DEC7: FStStrNoPop var_90
  loc_B1DECA: LitStr " FROM imputacion"
  loc_B1DECD: ConcatStr
  loc_B1DECE: FStStrNoPop var_94
  loc_B1DED1: LitStr " WHERE PeriInfo = "
  loc_B1DED4: ConcatStr
  loc_B1DED5: FStStrNoPop var_98
  loc_B1DED8: ImpAdLdI2 MemVar_C3D064
  loc_B1DEDB: CStrUI1
  loc_B1DEDD: FStStrNoPop var_9C
  loc_B1DEE0: ConcatStr
  loc_B1DEE1: FStStrNoPop var_A0
  loc_B1DEE4: LitStr " AND imputacion.ExorImpu = '"
  loc_B1DEE7: ConcatStr
  loc_B1DEE8: FStStrNoPop var_A8
  loc_B1DEEB: FLdRfVar var_A4
  loc_B1DEEE: FLdPr Me
  loc_B1DEF1: VCallAd Control_ID_cboExorImpu
  loc_B1DEF4: FStAdFunc var_88
  loc_B1DEF7: FLdPr var_88
  loc_B1DEFA:  = Me.Text
  loc_B1DEFF: ILdRf var_A4
  loc_B1DF02: ConcatStr
  loc_B1DF03: FStStrNoPop var_AC
  loc_B1DF06: LitStr "'"
  loc_B1DF09: ConcatStr
  loc_B1DF0A: FStStrNoPop var_B0
  loc_B1DF0D: LitStr " AND (DefiImpu != 0 OR DeveImpu != 0)"
  loc_B1DF10: ConcatStr
  loc_B1DF11: FStStrNoPop var_B4
  loc_B1DF14: LitStr " GROUP BY CucuPers"
  loc_B1DF17: ConcatStr
  loc_B1DF18: FStStrNoPop var_B8
  loc_B1DF1B: LitStr " HAVING ReapImpu <> 0"
  loc_B1DF1E: ConcatStr
  loc_B1DF1F: FStStrNoPop var_BC
  loc_B1DF22: LitStr " ORDER BY FechImpu;"
  loc_B1DF25: ConcatStr
  loc_B1DF26: FStStrNoPop var_C0
  loc_B1DF29: FLdPr var_8C
  loc_B1DF2C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1DF31: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_A4 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1DF4E: FFree1Ad var_88
  loc_B1DF51: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1DF54: LitStr " SELECT i.PeriInfo, i.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, i.ExpeImpu, 'Imputac.', 0, Sum(DeveImpu)-Sum(MapaImpu) ResiImpu, 0, 0"
  loc_B1DF57: ConcatStr
  loc_B1DF58: FStStrNoPop var_90
  loc_B1DF5B: LitStr " , Max(FechImpu)"
  loc_B1DF5E: ConcatStr
  loc_B1DF5F: FStStrNoPop var_94
  loc_B1DF62: LitStr " , NumeFact factura"
  loc_B1DF65: ConcatStr
  loc_B1DF66: FStStrNoPop var_98
  loc_B1DF69: LitStr ", Max(FefaDeve) FefaDeve, 0, NULL, NULL, '', 2"
  loc_B1DF6C: ConcatStr
  loc_B1DF6D: FStStrNoPop var_9C
  loc_B1DF70: LitStr " FROM imputacion i"
  loc_B1DF73: ConcatStr
  loc_B1DF74: FStStrNoPop var_A0
  loc_B1DF77: LitStr " WHERE i.PeriInfo = "
  loc_B1DF7A: ConcatStr
  loc_B1DF7B: FStStrNoPop var_A4
  loc_B1DF7E: ImpAdLdI2 MemVar_C3D064
  loc_B1DF81: CStrUI1
  loc_B1DF83: FStStrNoPop var_A8
  loc_B1DF86: ConcatStr
  loc_B1DF87: FStStrNoPop var_AC
  loc_B1DF8A: LitStr " AND i.ExorImpu = '"
  loc_B1DF8D: ConcatStr
  loc_B1DF8E: FStStrNoPop var_B4
  loc_B1DF91: FLdRfVar var_B0
  loc_B1DF94: FLdPr Me
  loc_B1DF97: VCallAd Control_ID_cboExorImpu
  loc_B1DF9A: FStAdFunc var_88
  loc_B1DF9D: FLdPr var_88
  loc_B1DFA0:  = Me.Text
  loc_B1DFA5: ILdRf var_B0
  loc_B1DFA8: ConcatStr
  loc_B1DFA9: FStStrNoPop var_B8
  loc_B1DFAC: LitStr "'"
  loc_B1DFAF: ConcatStr
  loc_B1DFB0: FStStrNoPop var_BC
  loc_B1DFB3: LitStr " AND (DeveImpu != 0 OR MapaImpu != 0)"
  loc_B1DFB6: ConcatStr
  loc_B1DFB7: FStStrNoPop var_C0
  loc_B1DFBA: LitStr " GROUP BY CucuPers, ExpeImpu, factura"
  loc_B1DFBD: ConcatStr
  loc_B1DFBE: FStStrNoPop var_C4
  loc_B1DFC1: LitStr " HAVING ResiImpu <> 0"
  loc_B1DFC4: ConcatStr
  loc_B1DFC5: FStStrNoPop var_C8
  loc_B1DFC8: LitStr " ORDER BY FefaDeve;"
  loc_B1DFCB: ConcatStr
  loc_B1DFCC: FStStrNoPop var_CC
  loc_B1DFCF: FLdPr var_8C
  loc_B1DFD2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1DFD7: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B1DFFA: FFree1Ad var_88
  loc_B1DFFD: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1E000: LitStr " SELECT d.PeriInfo, d.CucuPers, Group_concat(Distinct d.ExorImpu) ExorImpu, d.ExpeImpu, 'Déb.Extr.', 0"
  loc_B1E003: ConcatStr
  loc_B1E004: FStStrNoPop var_90
  loc_B1E007: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) ResiImpu, 0, 0"
  loc_B1E00A: ConcatStr
  loc_B1E00B: FStStrNoPop var_94
  loc_B1E00E: LitStr " , Max(FechDebi)"
  loc_B1E011: ConcatStr
  loc_B1E012: FStStrNoPop var_98
  loc_B1E015: LitStr " , d.NumeFact factura"
  loc_B1E018: ConcatStr
  loc_B1E019: FStStrNoPop var_9C
  loc_B1E01C: LitStr ", Max(FechDebi) FefaDeve, 0, NULL, NULL, '', 2"
  loc_B1E01F: ConcatStr
  loc_B1E020: FStStrNoPop var_A0
  loc_B1E023: LitStr " FROM debito d"
  loc_B1E026: ConcatStr
  loc_B1E027: FStStrNoPop var_A4
  loc_B1E02A: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_B1E02D: ConcatStr
  loc_B1E02E: FStStrNoPop var_A8
  loc_B1E031: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_B1E034: ConcatStr
  loc_B1E035: FStStrNoPop var_AC
  loc_B1E038: LitStr " WHERE d.PeriInfo = "
  loc_B1E03B: ConcatStr
  loc_B1E03C: FStStrNoPop var_B0
  loc_B1E03F: ImpAdLdI2 MemVar_C3D064
  loc_B1E042: CStrUI1
  loc_B1E044: FStStrNoPop var_B4
  loc_B1E047: ConcatStr
  loc_B1E048: FStStrNoPop var_B8
  loc_B1E04B: LitStr " AND d.FeanDebi IS NULL"
  loc_B1E04E: ConcatStr
  loc_B1E04F: FStStrNoPop var_BC
  loc_B1E052: LitStr " AND d.ExorImpu = '"
  loc_B1E055: ConcatStr
  loc_B1E056: FStStrNoPop var_C4
  loc_B1E059: FLdRfVar var_C0
  loc_B1E05C: FLdPr Me
  loc_B1E05F: VCallAd Control_ID_cboExorImpu
  loc_B1E062: FStAdFunc var_88
  loc_B1E065: FLdPr var_88
  loc_B1E068:  = Me.Text
  loc_B1E06D: ILdRf var_C0
  loc_B1E070: ConcatStr
  loc_B1E071: FStStrNoPop var_C8
  loc_B1E074: LitStr "'"
  loc_B1E077: ConcatStr
  loc_B1E078: FStStrNoPop var_CC
  loc_B1E07B: LitStr " /*AND FeanLiqu IS NULL*/"
  loc_B1E07E: ConcatStr
  loc_B1E07F: FStStrNoPop var_D0
  loc_B1E082: LitStr " GROUP BY d.NumeDebi /* ExpeImpu, ExorImpu, CucuPers */"
  loc_B1E085: ConcatStr
  loc_B1E086: FStStrNoPop var_D4
  loc_B1E089: LitStr " HAVING ResiImpu > 0"
  loc_B1E08C: ConcatStr
  loc_B1E08D: FStStrNoPop var_D8
  loc_B1E090: FLdPr var_8C
  loc_B1E093: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E098: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B1E0C1: FFree1Ad var_88
  loc_B1E0C4: LitStr "Municipalidad de Guaymallén"
  loc_B1E0C7: LitStr "Municipalidad de Guaymallén"
  loc_B1E0CA: EqStr
  loc_B1E0CC: ImpAdLdI2 MemVar_C3D064
  loc_B1E0CF: LitI2 2018
  loc_B1E0D2: EqI2
  loc_B1E0D3: AndI4
  loc_B1E0D4: BranchF loc_B1E18F
  loc_B1E0D7: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1E0DA: LitStr " SELECT i.PeriInfo, i.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, i.ExpeImpu, 'Imputac.', 0, 0, Sum(MapaImpu)-Sum(PagaImpu) DeexImpu, 0"
  loc_B1E0DD: ConcatStr
  loc_B1E0DE: FStStrNoPop var_90
  loc_B1E0E1: LitStr " , Max(FechImpu) FechImpu"
  loc_B1E0E4: ConcatStr
  loc_B1E0E5: FStStrNoPop var_94
  loc_B1E0E8: LitStr " , NumeFact factura"
  loc_B1E0EB: ConcatStr
  loc_B1E0EC: FStStrNoPop var_98
  loc_B1E0EF: LitStr " , NULL, i.NumeOrpa, FereOrpa, NULL, ArchOrpa, 3"
  loc_B1E0F2: ConcatStr
  loc_B1E0F3: FStStrNoPop var_9C
  loc_B1E0F6: LitStr " FROM imputacion i"
  loc_B1E0F9: ConcatStr
  loc_B1E0FA: FStStrNoPop var_A0
  loc_B1E0FD: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = i.PeriInfo AND o.NumeOrpa = i.NumeOrpa"
  loc_B1E100: ConcatStr
  loc_B1E101: FStStrNoPop var_A4
  loc_B1E104: LitStr " WHERE i.PeriInfo = "
  loc_B1E107: ConcatStr
  loc_B1E108: FStStrNoPop var_A8
  loc_B1E10B: ImpAdLdI2 MemVar_C3D064
  loc_B1E10E: CStrUI1
  loc_B1E110: FStStrNoPop var_AC
  loc_B1E113: ConcatStr
  loc_B1E114: FStStrNoPop var_B0
  loc_B1E117: LitStr " AND i.ExorImpu = '"
  loc_B1E11A: ConcatStr
  loc_B1E11B: FStStrNoPop var_B8
  loc_B1E11E: FLdRfVar var_B4
  loc_B1E121: FLdPr Me
  loc_B1E124: VCallAd Control_ID_cboExorImpu
  loc_B1E127: FStAdFunc var_88
  loc_B1E12A: FLdPr var_88
  loc_B1E12D:  = Me.Text
  loc_B1E132: ILdRf var_B4
  loc_B1E135: ConcatStr
  loc_B1E136: FStStrNoPop var_BC
  loc_B1E139: LitStr "'"
  loc_B1E13C: ConcatStr
  loc_B1E13D: FStStrNoPop var_C0
  loc_B1E140: LitStr " AND (MapaImpu<>0 OR PagaImpu<>0)"
  loc_B1E143: ConcatStr
  loc_B1E144: FStStrNoPop var_C4
  loc_B1E147: LitStr " GROUP BY i.ExpeImpu, NumeOrpa"
  loc_B1E14A: ConcatStr
  loc_B1E14B: FStStrNoPop var_C8
  loc_B1E14E: LitStr " HAVING DeexImpu <> 0"
  loc_B1E151: ConcatStr
  loc_B1E152: FStStrNoPop var_CC
  loc_B1E155: LitStr " ORDER BY FechImpu;"
  loc_B1E158: ConcatStr
  loc_B1E159: FStStrNoPop var_D0
  loc_B1E15C: FLdPr var_8C
  loc_B1E15F: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E164: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B1E189: FFree1Ad var_88
  loc_B1E18C: Branch loc_B1E244
  loc_B1E18F: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1E192: LitStr " SELECT i.PeriInfo, i.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, i.ExpeImpu, 'Imputac.', 0, 0, Sum(MapaImpu)-Sum(PagaImpu) DeexImpu, 0"
  loc_B1E195: ConcatStr
  loc_B1E196: FStStrNoPop var_90
  loc_B1E199: LitStr " , Max(FechImpu) FechImpu"
  loc_B1E19C: ConcatStr
  loc_B1E19D: FStStrNoPop var_94
  loc_B1E1A0: LitStr " , NumeFact factura"
  loc_B1E1A3: ConcatStr
  loc_B1E1A4: FStStrNoPop var_98
  loc_B1E1A7: LitStr " , NULL, i.NumeOrpa, FereOrpa, NULL, ArchOrpa, 3"
  loc_B1E1AA: ConcatStr
  loc_B1E1AB: FStStrNoPop var_9C
  loc_B1E1AE: LitStr " FROM imputacion i"
  loc_B1E1B1: ConcatStr
  loc_B1E1B2: FStStrNoPop var_A0
  loc_B1E1B5: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = i.PeriInfo AND o.NumeOrpa = i.NumeOrpa"
  loc_B1E1B8: ConcatStr
  loc_B1E1B9: FStStrNoPop var_A4
  loc_B1E1BC: LitStr " WHERE i.PeriInfo = "
  loc_B1E1BF: ConcatStr
  loc_B1E1C0: FStStrNoPop var_A8
  loc_B1E1C3: ImpAdLdI2 MemVar_C3D064
  loc_B1E1C6: CStrUI1
  loc_B1E1C8: FStStrNoPop var_AC
  loc_B1E1CB: ConcatStr
  loc_B1E1CC: FStStrNoPop var_B0
  loc_B1E1CF: LitStr " AND i.ExorImpu = '"
  loc_B1E1D2: ConcatStr
  loc_B1E1D3: FStStrNoPop var_B8
  loc_B1E1D6: FLdRfVar var_B4
  loc_B1E1D9: FLdPr Me
  loc_B1E1DC: VCallAd Control_ID_cboExorImpu
  loc_B1E1DF: FStAdFunc var_88
  loc_B1E1E2: FLdPr var_88
  loc_B1E1E5:  = Me.Text
  loc_B1E1EA: ILdRf var_B4
  loc_B1E1ED: ConcatStr
  loc_B1E1EE: FStStrNoPop var_BC
  loc_B1E1F1: LitStr "'"
  loc_B1E1F4: ConcatStr
  loc_B1E1F5: FStStrNoPop var_C0
  loc_B1E1F8: LitStr " AND (MapaImpu<>0 OR PagaImpu<>0)"
  loc_B1E1FB: ConcatStr
  loc_B1E1FC: FStStrNoPop var_C4
  loc_B1E1FF: LitStr " GROUP BY i.ExpeImpu, NumeOrpa, factura"
  loc_B1E202: ConcatStr
  loc_B1E203: FStStrNoPop var_C8
  loc_B1E206: LitStr " HAVING DeexImpu <> 0"
  loc_B1E209: ConcatStr
  loc_B1E20A: FStStrNoPop var_CC
  loc_B1E20D: LitStr " ORDER BY FechImpu;"
  loc_B1E210: ConcatStr
  loc_B1E211: FStStrNoPop var_D0
  loc_B1E214: FLdPr var_8C
  loc_B1E217: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E21C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B1E241: FFree1Ad var_88
  loc_B1E244: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1E247: LitStr " SELECT o.PeriInfo, ld.CucuPers, Group_concat(Distinct d.ExorImpu) ExorImpu, o.ExpeImpu, 'Déb.Extr.', 0, 0, Sum(ImpoImpu) DeexImpu, 0"
  loc_B1E24A: ConcatStr
  loc_B1E24B: FStStrNoPop var_90
  loc_B1E24E: LitStr ", FechOrpa"
  loc_B1E251: ConcatStr
  loc_B1E252: FStStrNoPop var_94
  loc_B1E255: LitStr ", ld.NumeFact factura"
  loc_B1E258: ConcatStr
  loc_B1E259: FStStrNoPop var_98
  loc_B1E25C: LitStr ", FechOrpa FefaDeve, o.NumeOrpa, FereOrpa"
  loc_B1E25F: ConcatStr
  loc_B1E260: FStStrNoPop var_9C
  loc_B1E263: LitStr ", (SELECT Max(FechCaja) FROM liquidaneto ln WHERE ln.PeriInfo = o.PeriInfo AND ln.ExpeImpu = o.ExpeImpu AND ln.NumeLiqu = o.NumeLiqu AND ln.CucuPers = ld.CucuPers) FechCaja, ArchOrpa, 3"
  loc_B1E266: ConcatStr
  loc_B1E267: FStStrNoPop var_A0
  loc_B1E26A: LitStr " FROM ordenpago o"
  loc_B1E26D: ConcatStr
  loc_B1E26E: FStStrNoPop var_A4
  loc_B1E271: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu"
  loc_B1E274: ConcatStr
  loc_B1E275: FStStrNoPop var_A8
  loc_B1E278: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_B1E27B: ConcatStr
  loc_B1E27C: FStStrNoPop var_AC
  loc_B1E27F: LitStr " AND d.ExorImpu = '"
  loc_B1E282: ConcatStr
  loc_B1E283: FStStrNoPop var_B4
  loc_B1E286: FLdRfVar var_B0
  loc_B1E289: FLdPr Me
  loc_B1E28C: VCallAd Control_ID_cboExorImpu
  loc_B1E28F: FStAdFunc var_88
  loc_B1E292: FLdPr var_88
  loc_B1E295:  = Me.Text
  loc_B1E29A: ILdRf var_B0
  loc_B1E29D: ConcatStr
  loc_B1E29E: FStStrNoPop var_B8
  loc_B1E2A1: LitStr "'"
  loc_B1E2A4: ConcatStr
  loc_B1E2A5: FStStrNoPop var_BC
  loc_B1E2A8: LitStr " WHERE o.PeriInfo = "
  loc_B1E2AB: ConcatStr
  loc_B1E2AC: FStStrNoPop var_C0
  loc_B1E2AF: ImpAdLdI2 MemVar_C3D064
  loc_B1E2B2: CStrUI1
  loc_B1E2B4: FStStrNoPop var_C4
  loc_B1E2B7: ConcatStr
  loc_B1E2B8: FStStrNoPop var_C8
  loc_B1E2BB: LitStr " AND TipoOrpa = 'Debito' AND FeanOrpa IS NULL"
  loc_B1E2BE: ConcatStr
  loc_B1E2BF: FStStrNoPop var_CC
  loc_B1E2C2: LitStr " GROUP BY o.ExpeImpu, NumeOrpa, factura"
  loc_B1E2C5: ConcatStr
  loc_B1E2C6: FStStrNoPop var_D0
  loc_B1E2C9: LitStr " HAVING DeexImpu <> 0 AND FechCaja IS NULL"
  loc_B1E2CC: ConcatStr
  loc_B1E2CD: FStStrNoPop var_D4
  loc_B1E2D0: LitStr " ORDER BY FefaDeve;"
  loc_B1E2D3: ConcatStr
  loc_B1E2D4: FStStrNoPop var_D8
  loc_B1E2D7: FLdPr var_8C
  loc_B1E2DA: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E2DF: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B1E308: FFree1Ad var_88
  loc_B1E30B: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1E30E: LitStr " SELECT i.PeriInfo, i.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, i.ExpeImpu, 'Imputac.', 0, 0, 0, Sum(PagaImpu) PagaImpu"
  loc_B1E311: ConcatStr
  loc_B1E312: FStStrNoPop var_90
  loc_B1E315: LitStr " , Max(FechImpu) FechImpu, NumeFact factura, NULL, i.NumeOrpa, FereOrpa"
  loc_B1E318: ConcatStr
  loc_B1E319: FStStrNoPop var_94
  loc_B1E31C: LitStr ", (SELECT Max(FechCaja) FROM liquidaneto ln WHERE ln.PeriInfo = i.PeriInfo AND ln.ExpeImpu = i.ExpeImpu AND ln.NumeLiqu = i.NumeLiqu AND ln.CucuPers = i.CucuPers) FechCaja, ArchOrpa, 4"
  loc_B1E31F: ConcatStr
  loc_B1E320: FStStrNoPop var_98
  loc_B1E323: LitStr " FROM imputacion i"
  loc_B1E326: ConcatStr
  loc_B1E327: FStStrNoPop var_9C
  loc_B1E32A: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = i.PeriInfo AND ordenpago.NumeOrpa = i.NumeOrpa"
  loc_B1E32D: ConcatStr
  loc_B1E32E: FStStrNoPop var_A0
  loc_B1E331: LitStr " WHERE i.PeriInfo = "
  loc_B1E334: ConcatStr
  loc_B1E335: FStStrNoPop var_A4
  loc_B1E338: ImpAdLdI2 MemVar_C3D064
  loc_B1E33B: CStrUI1
  loc_B1E33D: FStStrNoPop var_A8
  loc_B1E340: ConcatStr
  loc_B1E341: FStStrNoPop var_AC
  loc_B1E344: LitStr " AND i.ExorImpu = '"
  loc_B1E347: ConcatStr
  loc_B1E348: FStStrNoPop var_B4
  loc_B1E34B: FLdRfVar var_B0
  loc_B1E34E: FLdPr Me
  loc_B1E351: VCallAd Control_ID_cboExorImpu
  loc_B1E354: FStAdFunc var_88
  loc_B1E357: FLdPr var_88
  loc_B1E35A:  = Me.Text
  loc_B1E35F: ILdRf var_B0
  loc_B1E362: ConcatStr
  loc_B1E363: FStStrNoPop var_B8
  loc_B1E366: LitStr "'"
  loc_B1E369: ConcatStr
  loc_B1E36A: FStStrNoPop var_BC
  loc_B1E36D: LitStr " GROUP BY ExpeImpu, i.NumeLiqu, i.CucuPers, NumeOrpa, factura"
  loc_B1E370: ConcatStr
  loc_B1E371: FStStrNoPop var_C0
  loc_B1E374: LitStr " HAVING PagaImpu <> 0"
  loc_B1E377: ConcatStr
  loc_B1E378: FStStrNoPop var_C4
  loc_B1E37B: LitStr " ORDER BY FechImpu;"
  loc_B1E37E: ConcatStr
  loc_B1E37F: FStStrNoPop var_C8
  loc_B1E382: FLdPr var_8C
  loc_B1E385: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E38A: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B1E3AB: FFree1Ad var_88
  loc_B1E3AE: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaImpu,NumeOrpa,FereOrpa,FearOrpa,ArchOrpa,Orden)"
  loc_B1E3B1: LitStr " SELECT o.PeriInfo, ld.CucuPers, Group_concat(Distinct d.ExorImpu) ExorImpu, o.ExpeImpu, 'Déb.Extr.', 0, 0, 0, Sum(ImpoImpu) PagaImpu"
  loc_B1E3B4: ConcatStr
  loc_B1E3B5: FStStrNoPop var_90
  loc_B1E3B8: LitStr ", FechOrpa"
  loc_B1E3BB: ConcatStr
  loc_B1E3BC: FStStrNoPop var_94
  loc_B1E3BF: LitStr ", ld.NumeFact factura"
  loc_B1E3C2: ConcatStr
  loc_B1E3C3: FStStrNoPop var_98
  loc_B1E3C6: LitStr ", FechOrpa FefaDeve, o.NumeOrpa, FereOrpa"
  loc_B1E3C9: ConcatStr
  loc_B1E3CA: FStStrNoPop var_9C
  loc_B1E3CD: LitStr ", (SELECT Max(FechCaja) FROM liquidaneto ln WHERE ln.PeriInfo = o.PeriInfo AND ln.ExpeImpu = o.ExpeImpu AND ln.NumeLiqu = o.NumeLiqu AND ln.CucuPers = ld.CucuPers) FechCaja, ArchOrpa, 4"
  loc_B1E3D0: ConcatStr
  loc_B1E3D1: FStStrNoPop var_A0
  loc_B1E3D4: LitStr " FROM ordenpago o"
  loc_B1E3D7: ConcatStr
  loc_B1E3D8: FStStrNoPop var_A4
  loc_B1E3DB: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu"
  loc_B1E3DE: ConcatStr
  loc_B1E3DF: FStStrNoPop var_A8
  loc_B1E3E2: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_B1E3E5: ConcatStr
  loc_B1E3E6: FStStrNoPop var_AC
  loc_B1E3E9: LitStr " AND d.ExorImpu = '"
  loc_B1E3EC: ConcatStr
  loc_B1E3ED: FStStrNoPop var_B4
  loc_B1E3F0: FLdRfVar var_B0
  loc_B1E3F3: FLdPr Me
  loc_B1E3F6: VCallAd Control_ID_cboExorImpu
  loc_B1E3F9: FStAdFunc var_88
  loc_B1E3FC: FLdPr var_88
  loc_B1E3FF:  = Me.Text
  loc_B1E404: ILdRf var_B0
  loc_B1E407: ConcatStr
  loc_B1E408: FStStrNoPop var_B8
  loc_B1E40B: LitStr "'"
  loc_B1E40E: ConcatStr
  loc_B1E40F: FStStrNoPop var_BC
  loc_B1E412: LitStr " WHERE o.PeriInfo = "
  loc_B1E415: ConcatStr
  loc_B1E416: FStStrNoPop var_C0
  loc_B1E419: ImpAdLdI2 MemVar_C3D064
  loc_B1E41C: CStrUI1
  loc_B1E41E: FStStrNoPop var_C4
  loc_B1E421: ConcatStr
  loc_B1E422: FStStrNoPop var_C8
  loc_B1E425: LitStr " AND TipoOrpa = 'Debito' AND FeanOrpa IS NULL"
  loc_B1E428: ConcatStr
  loc_B1E429: FStStrNoPop var_CC
  loc_B1E42C: LitStr " GROUP BY o.ExpeImpu, o.NumeOrpa, factura"
  loc_B1E42F: ConcatStr
  loc_B1E430: FStStrNoPop var_D0
  loc_B1E433: LitStr " HAVING PagaImpu <> 0 AND FechCaja IS NOT NULL"
  loc_B1E436: ConcatStr
  loc_B1E437: FStStrNoPop var_D4
  loc_B1E43A: LitStr " ORDER BY FefaDeve;"
  loc_B1E43D: ConcatStr
  loc_B1E43E: FStStrNoPop var_D8
  loc_B1E441: FLdPr var_8C
  loc_B1E444: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E449: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B1E472: FFree1Ad var_88
  loc_B1E475: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp;"
  loc_B1E478: LitStr " CREATE TEMPORARY TABLE tmp"
  loc_B1E47B: ConcatStr
  loc_B1E47C: FStStrNoPop var_90
  loc_B1E47F: LitStr " SELECT * FROM tmovi;"
  loc_B1E482: ConcatStr
  loc_B1E483: FStStrNoPop var_94
  loc_B1E486: FLdPr var_8C
  loc_B1E489: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E48E: FFreeStr var_90 = ""
  loc_B1E495: LitStr "SELECT PeriInfo, tmovi.CucuPers, IFNULL(DetaProv,'') DetaProv, ExorImpu, ExpeImpu, Tipo, Sum(SaldPrevImpu) SaldPrevImpu, Sum(ReapImpu) ReapImpu, Sum(ResiImpu) ResiImpu, Sum(DeexImpu) DeexImpu, Sum(PagaImpu) PagaImpu, FechImpu, NumeFact, FefaImpu, NumeOrpa, FereOrpa, FearOrpa, ArchOrpa"
  loc_B1E498: LitStr ", (SELECT Count(PeriInfo) FROM tmp WHERE tmp.PeriInfo = tmovi.PeriInfo AND tmp.NumeOrpa = tmovi.NumeOrpa AND tmp.NumeOrpa > 0) RowSpan"
  loc_B1E49B: ConcatStr
  loc_B1E49C: FStStrNoPop var_90
  loc_B1E49F: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,(SELECT Sum(ImpoCheq) FROM cheque WHERE cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa AND cheque.CucuPers = tmovi.CucuPers AND NumeMoba > 0 AND FeanCheq IS NULL), 0) ImpoCheq"
  loc_B1E4A2: ConcatStr
  loc_B1E4A3: FStStrNoPop var_94
  loc_B1E4A6: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,(SELECT Sum(ImpoLine) FROM liquidacion l INNER JOIN liquidaneto ln ON ln.PeriInfo = l.PeriInfo AND ln.ExpeImpu = l.ExpeImpu AND ln.NumeLiqu = l.NumeLiqu AND CodiRete > 0 WHERE l.PeriInfo = tmovi.PeriInfo AND l.NumeOrpa = tmovi.NumeOrpa AND ln.CucuPers = tmovi.CucuPers), 0) TotaRete"
  loc_B1E4A9: ConcatStr
  loc_B1E4AA: FStStrNoPop var_98
  loc_B1E4AD: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,CONVERT((SELECT Group_Concat(Distinct CodiBanc) FROM cheque WHERE cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa AND NumeMoba > 0 AND FeanCheq IS NULL),CHAR), '') DistBanc"
  loc_B1E4B0: ConcatStr
  loc_B1E4B1: FStStrNoPop var_9C
  loc_B1E4B4: LitStr " FROM tmovi"
  loc_B1E4B7: ConcatStr
  loc_B1E4B8: FStStrNoPop var_A0
  loc_B1E4BB: LitStr " LEFT JOIN proveedor ON proveedor.CucuPers = tmovi.CucuPers"
  loc_B1E4BE: ConcatStr
  loc_B1E4BF: FStStrNoPop var_A4
  loc_B1E4C2: LitStr " GROUP BY Orden, Suborden, ExorImpu, ExpeImpu, NumeOrpa, NumeFact"
  loc_B1E4C5: ConcatStr
  loc_B1E4C6: FStStrNoPop var_A8
  loc_B1E4C9: LitStr " ORDER BY Orden, Suborden, ExorImpu, ExpeImpu, NumeOrpa, NumeFact;"
  loc_B1E4CC: ConcatStr
  loc_B1E4CD: FStStrNoPop var_AC
  loc_B1E4D0: FLdPr var_8C
  loc_B1E4D3: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1E4D8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B1E4EB: FLdRfVar var_E8
  loc_B1E4EE: FLdPr var_8C
  loc_B1E4F1: from_stack_1 = clsbase.RecordCount
  loc_B1E4F6: ILdRf var_E8
  loc_B1E4F9: LitI4 0
  loc_B1E4FE: EqI4
  loc_B1E4FF: BranchF loc_B1E526
  loc_B1E502: LitI4 0
  loc_B1E507: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B1E50A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1E50F: ILdRf Me
  loc_B1E512: CastAd
  loc_B1E515: FStAdFunc var_88
  loc_B1E518: FLdRfVar var_88
  loc_B1E51B: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_B1E520: FFree1Ad var_88
  loc_B1E523: Branch loc_B1E5BE
  loc_B1E526: FLdPr Me
  loc_B1E529: MemLdRfVar from_stack_1.global_52
  loc_B1E52C: NewIfNullAd
  loc_B1E52F: FStAd var_EC 
  loc_B1E533: FLdRfVar var_EC
  loc_B1E536: CVarRef
  loc_B1E53B: ILdRf Me
  loc_B1E53E: CastAd
  loc_B1E541: FStAdFunc var_88
  loc_B1E544: FLdRfVar var_88
  loc_B1E547: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_B1E54C: ILdRf var_EC
  loc_B1E54F: CastAd
  loc_B1E552: FLdPr Me
  loc_B1E555: MemStAdFunc
  loc_B1E559: FFreeAd var_88 = ""
  loc_B1E560: LitI4 0
  loc_B1E565: LitI4 1
  loc_B1E56A: FLdRfVar var_100
  loc_B1E56D: Redim
  loc_B1E577: FLdPr Me
  loc_B1E57A: MemLdRfVar from_stack_1.global_52
  loc_B1E57D: NewIfNullAd
  loc_B1E580: FStAd var_88 
  loc_B1E584: FLdRfVar var_88
  loc_B1E587: CVarRef
  loc_B1E58C: ParmAry1St
  loc_B1E592: FLdPr Me
  loc_B1E595: VCallAd Control_ID_dgdABMS
  loc_B1E598: CVarAd
  loc_B1E59C: ParmAry1St
  loc_B1E5A2: FLdRfVar var_100
  loc_B1E5A5: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_B1E5AA: ILdRf var_88
  loc_B1E5AD: CastAd
  loc_B1E5B0: FLdPr Me
  loc_B1E5B3: MemStAdFunc
  loc_B1E5B7: FLdRfVar var_100
  loc_B1E5BA: Erase
  loc_B1E5BB: FFree1Ad var_88
  loc_B1E5BE: LitNothing
  loc_B1E5C0: FStAd var_8C 
  loc_B1E5C4: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '95C00C
  'Data Table: 427508
  loc_95BFF4: ILdRf Me
  loc_95BFF7: FStAdNoPop
  loc_95BFFB: ImpAdLdRf MemVar_C44F9C
  loc_95BFFE: NewIfNullPr Me
  loc_95C001: Me.Global.Unload from_stack_1
  loc_95C006: FFree1Ad var_88
  loc_95C009: ExitProcHresult
End Sub

Private Sub cmdImprimirOP_Click() 'A025B4
  'Data Table: 427508
  loc_A02464: FLdRfVar var_8C
  loc_A02467: FLdPr Me
  loc_A0246A: MemLdRfVar from_stack_1.global_52
  loc_A0246D: NewIfNullPr clsbase
  loc_A02470: from_stack_1 = clsbase.RecordCount
  loc_A02475: ILdRf var_8C
  loc_A02478: LitI4 0
  loc_A0247D: GtI4
  loc_A0247E: BranchF loc_A0259B
  loc_A02481: FLdRfVar var_B8
  loc_A02484: FLdRfVar var_A8
  loc_A02487: LitVarStr var_A4, "NumeOrpa"
  loc_A0248C: PopAdLdVar
  loc_A0248D: FLdRfVar var_94
  loc_A02490: FLdRfVar var_90
  loc_A02493: FLdPr Me
  loc_A02496: MemLdRfVar from_stack_1.global_52
  loc_A02499: NewIfNullPr clsbase
  loc_A0249C: from_stack_1v = clsbase.RsFrmGet()
  loc_A024A1: FLdPr var_90
  loc_A024A4:  = Me.Fields
  loc_A024A9: FLdPr var_94
  loc_A024AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A024B1: FLdPr var_A8
  loc_A024B4:  = Me.Value
  loc_A024B9: FLdRfVar var_B8
  loc_A024BC: LitVarStr var_C8, vbNullString
  loc_A024C1: HardType
  loc_A024C2: NeVarBool
  loc_A024C4: FFreeAd var_90 = "": var_94 = ""
  loc_A024CD: FFree1Var var_B8 = ""
  loc_A024D0: BranchF loc_A0259B
  loc_A024D3: FLdRfVar var_B8
  loc_A024D6: FLdRfVar var_A8
  loc_A024D9: LitVarStr var_A4, "PeriInfo"
  loc_A024DE: PopAdLdVar
  loc_A024DF: FLdRfVar var_94
  loc_A024E2: FLdRfVar var_90
  loc_A024E5: FLdPr Me
  loc_A024E8: MemLdRfVar from_stack_1.global_52
  loc_A024EB: NewIfNullPr clsbase
  loc_A024EE: from_stack_1v = clsbase.RsFrmGet()
  loc_A024F3: FLdPr var_90
  loc_A024F6:  = Me.Fields
  loc_A024FB: FLdPr var_94
  loc_A024FE: from_stack_2 = Me.Item(from_stack_1)
  loc_A02503: FLdPr var_A8
  loc_A02506:  = Me.Value
  loc_A0250B: FLdRfVar var_B8
  loc_A0250E: CStrVarTmp
  loc_A0250F: FStStrNoPop var_DC
  loc_A02512: ImpAdLdRf MemVar_C3DAD4
  loc_A02515: NewIfNullPr rptOrdenPago
  loc_A02518: VCallAd Control_ID_cboPeriodo
  loc_A0251B: FStAdFunc var_E0
  loc_A0251E: FLdPr var_E0
  loc_A02521: rptOrdenPago.ComboBox.Text = from_stack_1
  loc_A02526: FFree1Str var_DC
  loc_A02529: FFreeAd var_90 = "": var_94 = "": var_A8 = ""
  loc_A02534: FFree1Var var_B8 = ""
  loc_A02537: FLdRfVar var_B8
  loc_A0253A: FLdRfVar var_A8
  loc_A0253D: LitVarStr var_A4, "NumeOrpa"
  loc_A02542: PopAdLdVar
  loc_A02543: FLdRfVar var_94
  loc_A02546: FLdRfVar var_90
  loc_A02549: FLdPr Me
  loc_A0254C: MemLdRfVar from_stack_1.global_52
  loc_A0254F: NewIfNullPr clsbase
  loc_A02552: from_stack_1v = clsbase.RsFrmGet()
  loc_A02557: FLdPr var_90
  loc_A0255A:  = Me.Fields
  loc_A0255F: FLdPr var_94
  loc_A02562: from_stack_2 = Me.Item(from_stack_1)
  loc_A02567: FLdPr var_A8
  loc_A0256A:  = Me.Value
  loc_A0256F: FLdRfVar var_B8
  loc_A02572: CStrVarTmp
  loc_A02573: FStStrNoPop var_DC
  loc_A02576: ImpAdLdRf MemVar_C3DAD4
  loc_A02579: NewIfNullPr rptOrdenPago
  loc_A0257C: VCallAd Control_ID_NumeOrpaTxt
  loc_A0257F: FStAdFunc var_E0
  loc_A02582: FLdPr var_E0
  loc_A02585: rptOrdenPago.TextBox.Text = from_stack_1
  loc_A0258A: FFree1Str var_DC
  loc_A0258D: FFreeAd var_90 = "": var_94 = "": var_A8 = ""
  loc_A02598: FFree1Var var_B8 = ""
  loc_A0259B: LitVar_Missing var_C8
  loc_A0259E: PopAdLdVar
  loc_A0259F: LitVarI4
  loc_A025A7: PopAdLdVar
  loc_A025A8: ImpAdLdRf MemVar_C3DAD4
  loc_A025AB: NewIfNullPr rptOrdenPago
  loc_A025AE: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_A025B3: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() '998524
  'Data Table: 427508
  loc_9984C0: ImpAdLdRf MemVar_C3D9BC
  loc_9984C3: NewIfNullAd
  loc_9984C6: CastAd
  loc_9984C9: FStAdFuncNoPop
  loc_9984CC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9984D1: FFree1Ad var_88
  loc_9984D4: FLdRfVar var_8C
  loc_9984D7: FLdPr Me
  loc_9984DA: VCallAd Control_ID_cboExorImpu
  loc_9984DD: FStAdFunc var_88
  loc_9984E0: FLdPr var_88
  loc_9984E3:  = Me.Text
  loc_9984E8: ILdRf var_8C
  loc_9984EB: ImpAdLdRf MemVar_C3D9BC
  loc_9984EE: NewIfNullPr rptVolantedeImputaciones
  loc_9984F1: VCallAd Control_ID_cboExorImpu
  loc_9984F4: FStAdFunc var_90
  loc_9984F7: FLdPr var_90
  loc_9984FA: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_9984FF: FFree1Str var_8C
  loc_998502: FFreeAd var_88 = ""
  loc_998509: LitVar_Missing var_B0
  loc_99850C: PopAdLdVar
  loc_99850D: LitVarI4
  loc_998515: PopAdLdVar
  loc_998516: ImpAdLdRf MemVar_C3D9BC
  loc_998519: NewIfNullPr rptVolantedeImputaciones
  loc_99851C: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_998521: ExitProcHresult
  loc_998522: FStStrNoPop var_6FB0
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95C694
  'Data Table: 427508
  loc_95C67C: FLdPr Me
  loc_95C67F: VCallAd Control_ID_dgdABMS
  loc_95C682: FStAdFunc var_88
  loc_95C685: FLdRfVar var_88
  loc_95C688: ImpAdCallFPR4  = Proc_264_0_9758D8()
  loc_95C68D: FFree1Ad var_88
  loc_95C690: ExitProcHresult
  loc_95C691: MemLdI2 global_1096
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95623C
  'Data Table: 427508
  loc_956224: FLdPr Me
  loc_956227: VCallAd Control_ID_dgdABMS
  loc_95622A: FStAdFunc var_88
  loc_95622D: FLdRfVar var_88
  loc_956230: ImpAdCallFPR4  = Proc_264_1_96D788()
  loc_956235: FFree1Ad var_88
  loc_956238: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99EA34
  'Data Table: 427508
  loc_99E9D8: FLdRfVar var_B4
  loc_99E9DB: FLdRfVar var_B0
  loc_99E9DE: FLdI2 ColIndex
  loc_99E9E1: CVarI2 var_A8
  loc_99E9E4: PopAdLdVar
  loc_99E9E5: FLdPr Me
  loc_99E9E8: VCallAd Control_ID_dgdABMS
  loc_99E9EB: FStAdFunc var_88
  loc_99E9EE: FLdPr var_88
  loc_99E9F1: LateIdLdVar var_98 DispID_105 0
  loc_99E9F8: CastAdVar Me
  loc_99E9FC: FStAdFunc var_AC
  loc_99E9FF: FLdPr var_AC
  loc_99EA02: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99EA07: FLdPr var_B0
  loc_99EA0A:  = Me.DataField
  loc_99EA0F: FLdZeroAd var_B4
  loc_99EA12: CVarStr var_D4
  loc_99EA15: PopAdLdVar
  loc_99EA16: FLdRfVar var_C4
  loc_99EA19: LdPrVar
  loc_99EA1B: LateMemCall
  loc_99EA21: FFreeAd var_88 = "": var_AC = ""
  loc_99EA2A: FFreeVar var_98 = ""
  loc_99EA31: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) '9A91A0
  'Data Table: 427508
  loc_9A9118: FLdRfVar var_88
  loc_9A911B: FLdPr Me
  loc_9A911E: MemLdRfVar from_stack_1.global_52
  loc_9A9121: NewIfNullPr clsbase
  loc_9A9124: from_stack_1 = clsbase.RecordCount
  loc_9A9129: ILdRf var_88
  loc_9A912C: LitI4 0
  loc_9A9131: GtI4
  loc_9A9132: BranchF loc_9A919D
  loc_9A9135: FLdRfVar var_B4
  loc_9A9138: FLdRfVar var_A4
  loc_9A913B: LitVarStr var_A0, "NumeOrpa"
  loc_9A9140: PopAdLdVar
  loc_9A9141: FLdRfVar var_90
  loc_9A9144: FLdRfVar var_8C
  loc_9A9147: FLdPr Me
  loc_9A914A: MemLdRfVar from_stack_1.global_52
  loc_9A914D: NewIfNullPr clsbase
  loc_9A9150: from_stack_1v = clsbase.RsFrmGet()
  loc_9A9155: FLdPr var_8C
  loc_9A9158:  = Me.Fields
  loc_9A915D: FLdPr var_90
  loc_9A9160: from_stack_2 = Me.Item(from_stack_1)
  loc_9A9165: FLdPr var_A4
  loc_9A9168:  = Me.Value
  loc_9A916D: FLdRfVar var_B4
  loc_9A9170: LitVarStr var_C4, "0"
  loc_9A9175: HardType
  loc_9A9176: NeVarBool
  loc_9A9178: FFreeAd var_8C = "": var_90 = ""
  loc_9A9181: FFree1Var var_B4 = ""
  loc_9A9184: BranchF loc_9A919D
  loc_9A9187: LitI2_Byte &HFF
  loc_9A9189: FLdPr Me
  loc_9A918C: VCallAd Control_ID_cmdImprimirOP
  loc_9A918F: FStAdFunc var_8C
  loc_9A9192: FLdPr var_8C
  loc_9A9195: Me.Enabled = from_stack_1b
  loc_9A919A: FFree1Ad var_8C
  loc_9A919D: ExitProcHresult
End Sub

Private Sub cboExorImpu_KeyPress(KeyAscii As Integer) '976114
  'Data Table: 427508
  loc_9760EC: FLdPr Me
  loc_9760EF: VCallAd Control_ID_cboExorImpu
  loc_9760F2: FStAdFunc var_8C
  loc_9760F5: ILdI2 KeyAscii
  loc_9760F8: FLdZeroAd var_8C
  loc_9760FB: FStAdFunc var_88
  loc_9760FE: FLdRfVar var_88
  loc_976101: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_976106: IStI2 KeyAscii
  loc_976109: FFreeAd var_88 = ""
  loc_976110: ExitProcHresult
  loc_976111: FFree1Var cboExorImpu_KeyPressDE = ""
End Sub

Private Sub Form_Load() 'A117EC
  'Data Table: 427508
  loc_A1169C: LitStr "SELECT DISTINCT ExorImpu"
  loc_A1169F: LitStr " FROM ("
  loc_A116A2: ConcatStr
  loc_A116A3: FStStrNoPop var_88
  loc_A116A6: LitStr " SELECT DISTINCT ExorImpu FROM imputacion WHERE PeriInfo = "
  loc_A116A9: ConcatStr
  loc_A116AA: FStStrNoPop var_8C
  loc_A116AD: ImpAdLdI2 MemVar_C3D064
  loc_A116B0: CStrUI1
  loc_A116B2: FStStrNoPop var_90
  loc_A116B5: ConcatStr
  loc_A116B6: FStStrNoPop var_94
  loc_A116B9: LitStr " Union All"
  loc_A116BC: ConcatStr
  loc_A116BD: FStStrNoPop var_98
  loc_A116C0: LitStr " SELECT DISTINCT ExorImpu FROM debito WHERE PeriInfo = "
  loc_A116C3: ConcatStr
  loc_A116C4: FStStrNoPop var_9C
  loc_A116C7: ImpAdLdI2 MemVar_C3D064
  loc_A116CA: CStrUI1
  loc_A116CC: FStStrNoPop var_A0
  loc_A116CF: ConcatStr
  loc_A116D0: FStStrNoPop var_A4
  loc_A116D3: LitStr " ) AS tbl"
  loc_A116D6: ConcatStr
  loc_A116D7: FStStrNoPop var_A8
  loc_A116DA: LitStr " ORDER BY ExorImpu;"
  loc_A116DD: ConcatStr
  loc_A116DE: FStStrNoPop var_AC
  loc_A116E1: FLdPr Me
  loc_A116E4: MemLdRfVar from_stack_1.global_52
  loc_A116E7: NewIfNullPr clsbase
  loc_A116EA: Call clsbase.RedefineRS(from_stack_1v)
  loc_A116EF: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A11706: FLdPr Me
  loc_A11709: VCallAd Control_ID_cboExorImpu
  loc_A1170C: FStAdFunc var_B0
  loc_A1170F: FLdPr var_B0
  loc_A11712: Me.Clear
  loc_A11717: FFree1Ad var_B0
  loc_A1171A: FLdRfVar var_B4
  loc_A1171D: FLdPr Me
  loc_A11720: MemLdRfVar from_stack_1.global_52
  loc_A11723: NewIfNullPr clsbase
  loc_A11726: from_stack_1 = clsbase.RecordCount
  loc_A1172B: ILdRf var_B4
  loc_A1172E: LitI4 0
  loc_A11733: GtI4
  loc_A11734: BranchF loc_A117D3
  loc_A11737: FLdPr Me
  loc_A1173A: MemLdRfVar from_stack_1.global_52
  loc_A1173D: NewIfNullPr clsbase
  loc_A11740: Call clsbase.MoveFirst()
  loc_A11745: FLdRfVar var_B6
  loc_A11748: FLdPr Me
  loc_A1174B: MemLdRfVar from_stack_1.global_52
  loc_A1174E: NewIfNullPr clsbase
  loc_A11751: from_stack_1 = clsbase.EOF
  loc_A11756: FLdI2 var_B6
  loc_A11759: NotI4
  loc_A1175A: BranchF loc_A117D3
  loc_A1175D: LitVar_Missing var_F0
  loc_A11760: PopAdLdVar
  loc_A11761: FLdRfVar var_E0
  loc_A11764: FLdRfVar var_D0
  loc_A11767: LitVarStr var_CC, "ExorImpu"
  loc_A1176C: PopAdLdVar
  loc_A1176D: FLdRfVar var_BC
  loc_A11770: FLdRfVar var_B0
  loc_A11773: FLdPr Me
  loc_A11776: MemLdRfVar from_stack_1.global_52
  loc_A11779: NewIfNullPr clsbase
  loc_A1177C: from_stack_1v = clsbase.RsFrmGet()
  loc_A11781: FLdPr var_B0
  loc_A11784:  = Me.Fields
  loc_A11789: FLdPr var_BC
  loc_A1178C: from_stack_2 = Me.Item(from_stack_1)
  loc_A11791: FLdPr var_D0
  loc_A11794:  = Me.Value
  loc_A11799: FLdRfVar var_E0
  loc_A1179C: CStrVarTmp
  loc_A1179D: FStStrNoPop var_88
  loc_A117A0: FLdPr Me
  loc_A117A3: VCallAd Control_ID_cboExorImpu
  loc_A117A6: FStAdFunc var_F4
  loc_A117A9: FLdPr var_F4
  loc_A117AC: Me.AddItem from_stack_1, from_stack_2
  loc_A117B1: FFree1Str var_88
  loc_A117B4: FFreeAd var_B0 = "": var_BC = "": var_D0 = ""
  loc_A117BF: FFree1Var var_E0 = ""
  loc_A117C2: FLdPr Me
  loc_A117C5: MemLdRfVar from_stack_1.global_52
  loc_A117C8: NewIfNullPr clsbase
  loc_A117CB: Call clsbase.MoveSiguiente()
  loc_A117D0: Branch loc_A11745
  loc_A117D3: LitI2_Byte 0
  loc_A117D5: FLdPr Me
  loc_A117D8: VCallAd Control_ID_cmdImprimirOP
  loc_A117DB: FStAdFunc var_B0
  loc_A117DE: FLdPr var_B0
  loc_A117E1: Me.Enabled = from_stack_1b
  loc_A117E6: FFree1Ad var_B0
  loc_A117E9: ExitProcHresult
End Sub
