.class public Lcom/kingroot/kinguser/cav;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cav$a;
    }
.end annotation


# instance fields
.field private bWA:Lcom/kingroot/kinguser/oo;

.field private bWB:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cav;->bWB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/od;

    invoke-direct {v0}, Lcom/kingroot/kinguser/od;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cav;->bWA:Lcom/kingroot/kinguser/oo;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/caw;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/cav;-><init>()V

    return-void
.end method

.method public static akt()Lcom/kingroot/kinguser/cav;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/cav$a;->akv()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    return-object v0
.end method

.method private aku()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/kingroot/kinguser/ck;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ck;-><init>()V

    .line 126
    const/16 v1, 0x2b2c

    new-instance v2, Lcom/kingroot/kinguser/caw;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/caw;-><init>(Lcom/kingroot/kinguser/cav;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 169
    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/cav;->bWA:Lcom/kingroot/kinguser/oo;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/oo;->a(ILcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 179
    return-void
.end method

.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/cav;->bWA:Lcom/kingroot/kinguser/oo;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/oo;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 190
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cau;Lcom/kingroot/kinguser/car;ZZZ)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/cas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/cau;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kingroot/kinguser/car;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-static {p5}, Lcom/kingroot/kinguser/cgp;->setLogEnable(Z)V

    .line 96
    sget-object v0, Lcom/kingroot/kinguser/ob;->xV:[Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->k([Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/cav;->bWB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/ccb;->w(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p2}, Lcom/kingroot/kinguser/ccb;->w(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p3}, Lcom/kingroot/kinguser/ccb;->w(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Lcom/kingroot/kinguser/bzu;->cp(Landroid/content/Context;)I

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v1

    .line 110
    if-eqz p6, :cond_1

    .line 111
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ol;->s(Z)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ol;->t(Z)V

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cav;->bWA:Lcom/kingroot/kinguser/oo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ol;->ga()Z

    move-result v2

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ol;->gb()Z

    move-result v3

    new-instance v7, Lcom/kingroot/kinguser/oc;

    invoke-direct {v7}, Lcom/kingroot/kinguser/oc;-><init>()V

    move-object v1, p1

    move/from16 v4, p7

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/kingroot/kinguser/oo;->a(Landroid/content/Context;ZZZLcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cau;Lcom/kingroot/kinguser/cgj;Lcom/kingroot/kinguser/car;)V

    .line 120
    invoke-direct {p0}, Lcom/kingroot/kinguser/cav;->aku()V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ol;->s(Z)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ol;->t(Z)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cau;ZZZ)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/cas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/cau;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/cav;->a(Landroid/content/Context;Lcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cau;Lcom/kingroot/kinguser/car;ZZZ)V

    .line 71
    return-void
.end method
