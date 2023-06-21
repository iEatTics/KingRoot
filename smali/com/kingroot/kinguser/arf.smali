.class public Lcom/kingroot/kinguser/arf;
.super Lcom/kingroot/kinguser/aqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aqy",
        "<",
        "Lcom/kingroot/kinguser/arp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqy;-><init>()V

    .line 18
    const-class v0, Lcom/kingroot/kinguser/arp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arp;

    iput-object v0, p0, Lcom/kingroot/kinguser/arf;->aLz:Lcom/kingroot/kinguser/arl;

    .line 19
    return-void
.end method


# virtual methods
.method public MK()I
    .locals 6

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arf;->Ng()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return v0

    .line 61
    :cond_0
    const/4 v1, 0x2

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/arf;->aLz:Lcom/kingroot/kinguser/arl;

    check-cast v0, Lcom/kingroot/kinguser/arp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arp;->No()J

    move-result-wide v2

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qo()J

    move-result-wide v4

    .line 66
    long-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    long-to-float v2, v4

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 67
    const/16 v2, 0xa

    if-gt v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 69
    :cond_1
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 70
    const/4 v0, 0x4

    goto :goto_0

    .line 71
    :cond_2
    const/16 v2, 0x64

    if-gt v0, v2, :cond_3

    .line 72
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public Nb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nc()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/arf;->aLz:Lcom/kingroot/kinguser/arl;

    check-cast v0, Lcom/kingroot/kinguser/arp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arp;->No()J

    move-result-wide v0

    invoke-static {v0, v1, v3}, Lcom/kingroot/kinguser/act;->b(JZ)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
