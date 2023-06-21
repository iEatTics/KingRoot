.class public Lcom/kingroot/kinguser/aro;
.super Lcom/kingroot/kinguser/arl;
.source "SourceFile"


# instance fields
.field private aLX:Z

.field private aLY:Lcom/kingroot/kinguser/arp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/arl;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aro;->aLX:Z

    .line 13
    const-class v0, Lcom/kingroot/kinguser/arp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arp;

    iput-object v0, p0, Lcom/kingroot/kinguser/aro;->aLY:Lcom/kingroot/kinguser/arp;

    .line 14
    return-void
.end method


# virtual methods
.method protected MG()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/aro;->aLY:Lcom/kingroot/kinguser/arp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arp;->No()J

    move-result-wide v4

    long-to-float v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qo()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v0, v3

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/aro;->aLX:Z

    .line 19
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aro;->aLX:Z

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 18
    goto :goto_0

    :cond_1
    move v1, v2

    .line 19
    goto :goto_1
.end method

.method protected MH()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
