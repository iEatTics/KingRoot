.class public Lcom/kingroot/kinguser/ayl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ayf;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->ash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_MiniQQPimPort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ayl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ve()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x138b

    .line 110
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    .line 113
    invoke-interface {v0, v4}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v2

    if-nez v2, :cond_0

    .line 114
    invoke-interface {v0, v4}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->launchPlugin(I)Z

    move-result v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/kingroot/kinguser/ayi;

    invoke-direct {v0, v4, v1}, Lcom/kingroot/kinguser/ayi;-><init>(II)V

    throw v0

    .line 123
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/aym;

    invoke-direct {v2}, Lcom/kingroot/kinguser/aym;-><init>()V

    .line 124
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    .line 125
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aym;->transferToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aym;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget v0, v2, Lcom/kingroot/kinguser/aym;->bcS:I

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Lcom/kingroot/kinguser/ayk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayk;-><init>()V

    throw v0

    .line 130
    :pswitch_0
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/ayh;

    invoke-direct {v0, v4}, Lcom/kingroot/kinguser/ayh;-><init>(I)V

    throw v0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p1}, Lcom/kingroot/loader/common/protocol/AbsProtocol;->getCmdId(Landroid/os/Bundle;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :sswitch_0
    new-instance v1, Lcom/kingroot/kinguser/ayp;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ayp;-><init>()V

    .line 55
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ayp;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v2

    iget v3, v1, Lcom/kingroot/kinguser/ayp;->bcU:I

    iget-object v4, v1, Lcom/kingroot/kinguser/ayp;->bcV:Lcom/qq/taf/jce/JceStruct;

    iget-object v1, v1, Lcom/kingroot/kinguser/ayp;->bcW:Lcom/qq/taf/jce/JceStruct;

    new-instance v5, Lcom/kingroot/kinguser/ayl$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/ayl$1;-><init>(Lcom/kingroot/kinguser/ayl;)V

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    goto :goto_0

    .line 72
    :sswitch_1
    new-instance v1, Lcom/kingroot/kinguser/ayo;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ayo;-><init>()V

    .line 73
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ayo;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/ayo;->bcT:Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ayo;->transferToBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    const-string v0, ""

    iput-object v0, v1, Lcom/kingroot/kinguser/ayo;->bcT:Ljava/lang/String;

    goto :goto_1

    .line 83
    :sswitch_2
    new-instance v1, Lcom/kingroot/kinguser/ayq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ayq;-><init>()V

    .line 84
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ayq;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v2

    iget v1, v1, Lcom/kingroot/kinguser/ayq;->bdc:I

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/aye;->bi(I)V

    goto :goto_0

    .line 89
    :sswitch_3
    new-instance v1, Lcom/kingroot/kinguser/ayr;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ayr;-><init>()V

    .line 90
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ayr;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/akw;->Gx()Lcom/kingroot/kinguser/akw;

    move-result-object v2

    iget-object v1, v1, Lcom/kingroot/kinguser/ayr;->bdd:[I

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/akw;->h([I)V

    goto :goto_0

    .line 96
    :sswitch_4
    new-instance v1, Lcom/kingroot/kinguser/ayn;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ayn;-><init>()V

    .line 97
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ayn;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v0, "30F06D5DF23EAE66"

    iput-object v0, v1, Lcom/kingroot/kinguser/ayn;->lc:Ljava/lang/String;

    .line 100
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ayn;->transferToBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x7d1 -> :sswitch_4
    .end sparse-switch
.end method

.method public getPluginId()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x138b

    return v0
.end method
