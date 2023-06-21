.class public Lcom/kingroot/kinguser/abt;
.super Lcom/kingroot/kinguser/abs;
.source "SourceFile"


# instance fields
.field private volatile ZL:Z

.field private ZM:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/abs;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/kingroot/kinguser/abt;->ZL:Z

    .line 17
    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/abt;->mStartTime:J

    return-void
.end method

.method private am(Z)V
    .locals 0

    .prologue
    .line 91
    invoke-static {p1}, Lcom/kingroot/kinguser/aco;->ap(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/abw$a;)V
    .locals 2

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/abs;->a(Lcom/kingroot/kinguser/abw$a;)V

    .line 34
    sget-object v0, Lcom/kingroot/kinguser/abt$1;->ZN:[I

    iget-object v1, p1, Lcom/kingroot/kinguser/abw$a;->aab:Lcom/kingroot/kinguser/aci$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aci$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 40
    :pswitch_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 48
    :pswitch_3
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 52
    :pswitch_4
    const/16 v0, 0xb

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 56
    :pswitch_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 60
    :pswitch_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 64
    :pswitch_7
    const/4 v0, 0x4

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 68
    :pswitch_8
    invoke-virtual {p1}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/abt;->am(Z)V

    .line 69
    const/16 v0, 0x9

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 73
    :pswitch_9
    const/4 v0, 0x7

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 77
    :pswitch_a
    const/16 v0, 0xa

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 81
    :pswitch_b
    const/16 v0, 0xc

    iput v0, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(Lcom/kingroot/kinguser/aci$a;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/abs;->a(Lcom/kingroot/kinguser/aci$a;)V

    .line 23
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/abw$a;)V
    .locals 6

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/abt;->mStartTime:J

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/kingroot/kinguser/abt;->ZM:I

    invoke-static {v2, v3, v0, v1}, Lcom/kingroot/kinguser/aco;->a(JZI)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abt;->ru()Z

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/abt;->mStartTime:J

    .line 117
    return-void
.end method

.method protected rt()Lcom/kingroot/kinguser/aci;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/kingroot/kinguser/aci;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aci;-><init>()V

    return-object v0
.end method

.method protected ru()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abt;->rs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/abt;->ZL:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/abt;->ZK:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    invoke-static {v0}, Lcom/kingroot/kinguser/aco;->e(Lcom/kingroot/kinguser/abm;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/abt;->ZL:Z

    .line 106
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abt;->ZL:Z

    invoke-static {v0}, Lcom/kingroot/kinguser/aco;->ao(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abt;->ZL:Z

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
