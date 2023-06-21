.class public Lcom/kingroot/kinguser/pe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private yB:Lcom/kingroot/kinguser/cbh;

.field private ym:Lcom/kingroot/kinguser/pv;

.field private yo:Lcom/kingroot/kinguser/cbe;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;Lcom/kingroot/kinguser/cbh;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/cbe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/cbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/kingroot/kinguser/pe;->ym:Lcom/kingroot/kinguser/pv;

    .line 22
    iput-object v0, p0, Lcom/kingroot/kinguser/pe;->yo:Lcom/kingroot/kinguser/cbe;

    .line 24
    iput-object v0, p0, Lcom/kingroot/kinguser/pe;->yB:Lcom/kingroot/kinguser/cbh;

    .line 27
    iput-object p3, p0, Lcom/kingroot/kinguser/pe;->yB:Lcom/kingroot/kinguser/cbh;

    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/pe;->ym:Lcom/kingroot/kinguser/pv;

    .line 29
    iput-object p2, p0, Lcom/kingroot/kinguser/pe;->yo:Lcom/kingroot/kinguser/cbe;

    .line 30
    return-void
.end method


# virtual methods
.method public ax(I)Lcom/kingroot/kinguser/pu;
    .locals 3

    .prologue
    .line 33
    sparse-switch p1, :sswitch_data_0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/pe;->yB:Lcom/kingroot/kinguser/cbh;

    :goto_0
    return-object v0

    .line 35
    :sswitch_0
    new-instance v0, Lcom/kingroot/kinguser/ow;

    iget-object v1, p0, Lcom/kingroot/kinguser/pe;->yo:Lcom/kingroot/kinguser/cbe;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ow;-><init>(Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 41
    :sswitch_1
    new-instance v0, Lcom/kingroot/kinguser/os;

    iget-object v1, p0, Lcom/kingroot/kinguser/pe;->ym:Lcom/kingroot/kinguser/pv;

    iget-object v2, p0, Lcom/kingroot/kinguser/pe;->yo:Lcom/kingroot/kinguser/cbe;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/os;-><init>(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 43
    :sswitch_2
    new-instance v0, Lcom/kingroot/kinguser/ov;

    iget-object v1, p0, Lcom/kingroot/kinguser/pe;->ym:Lcom/kingroot/kinguser/pv;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ov;-><init>(Lcom/kingroot/kinguser/pv;)V

    goto :goto_0

    .line 50
    :sswitch_3
    new-instance v0, Lcom/kingroot/kinguser/ou;

    iget-object v1, p0, Lcom/kingroot/kinguser/pe;->ym:Lcom/kingroot/kinguser/pv;

    iget-object v2, p0, Lcom/kingroot/kinguser/pe;->yo:Lcom/kingroot/kinguser/cbe;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ou;-><init>(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 52
    :sswitch_4
    new-instance v0, Lcom/kingroot/kinguser/ot;

    iget-object v1, p0, Lcom/kingroot/kinguser/pe;->yo:Lcom/kingroot/kinguser/cbe;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ot;-><init>(Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 33
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
        0x9 -> :sswitch_1
        0x11 -> :sswitch_3
        0x13 -> :sswitch_3
        0x15 -> :sswitch_3
        0xc8 -> :sswitch_0
        0x267 -> :sswitch_4
        0x311 -> :sswitch_3
        0x62b -> :sswitch_3
        0x646 -> :sswitch_3
        0x6a5 -> :sswitch_1
    .end sparse-switch
.end method

.method public gj()Lcom/kingroot/kinguser/cbe;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/pe;->yo:Lcom/kingroot/kinguser/cbe;

    return-object v0
.end method
