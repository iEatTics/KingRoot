.class public Lcom/kingroot/kinguser/ccp;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private bXg:Lcom/kingroot/kinguser/cdj;

.field private bXh:Lcom/kingroot/kinguser/cdg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingroot/kinguser/ccp;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingroot/kinguser/ccp;->bXg:Lcom/kingroot/kinguser/cdj;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingroot/kinguser/ccp;->bXh:Lcom/kingroot/kinguser/cdg;

    invoke-static/range {p10 .. p10}, Lcom/kingroot/kinguser/cdo;->a(Z)V

    iput-object p1, p0, Lcom/kingroot/kinguser/ccp;->a:Landroid/content/Context;

    new-instance v1, Lcom/kingroot/kinguser/cdj;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/kingroot/kinguser/cdj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/kingroot/kinguser/ccp;->bXg:Lcom/kingroot/kinguser/cdj;

    new-instance v1, Lcom/kingroot/kinguser/cdg;

    iget-object v2, p0, Lcom/kingroot/kinguser/ccp;->bXg:Lcom/kingroot/kinguser/cdj;

    move/from16 v0, p7

    invoke-direct {v1, p1, v2, v0}, Lcom/kingroot/kinguser/cdg;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/cdj;I)V

    iput-object v1, p0, Lcom/kingroot/kinguser/ccp;->bXh:Lcom/kingroot/kinguser/cdg;

    return-void
.end method


# virtual methods
.method public akJ()Lcom/kingroot/kinguser/cdj;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/ccp;->bXg:Lcom/kingroot/kinguser/cdj;

    return-object v0
.end method
