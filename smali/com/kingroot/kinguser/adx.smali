.class public Lcom/kingroot/kinguser/adx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Ky:Lcom/kingroot/kinguser/vh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vh",
            "<",
            "Lcom/kingroot/kinguser/vf;",
            ">;"
        }
    .end annotation
.end field

.field private adP:Lcom/kingroot/kinguser/vf;

.field private final adQ:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private adR:I

.field private volatile adS:I

.field private volatile adT:I

.field private volatile adU:I

.field adV:Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/adx;->adQ:Landroid/os/RemoteCallbackList;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/adx;->adR:I

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/adx;->adS:I

    .line 41
    iput v1, p0, Lcom/kingroot/kinguser/adx;->adT:I

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/adx;->adU:I

    .line 190
    new-instance v0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;-><init>(Lcom/kingroot/kinguser/adx;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adx;->adV:Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;

    .line 45
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/adx;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->adQ:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/adx;Lcom/kingroot/kinguser/vf;)Lcom/kingroot/kinguser/vf;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kingroot/kinguser/adx;->adP:Lcom/kingroot/kinguser/vf;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/adx;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    return-object p1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/adx;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/adx;->adT:I

    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 181
    iput p5, p0, Lcom/kingroot/kinguser/adx;->adS:I

    .line 183
    new-instance v0, Lcom/kingroot/kinguser/vf;

    invoke-direct {v0, p3, p4}, Lcom/kingroot/kinguser/vf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adx;->adP:Lcom/kingroot/kinguser/vf;

    .line 184
    new-instance v0, Lcom/kingroot/kinguser/vh;

    iget-object v1, p0, Lcom/kingroot/kinguser/adx;->adP:Lcom/kingroot/kinguser/vf;

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/vh;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/vh;->dc(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    iget-object v1, p0, Lcom/kingroot/kinguser/adx;->adV:Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->ll()V

    .line 188
    return-void
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/adx;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/adx;->adU:I

    return v0
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/adx;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/adx;->adS:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/kingroot/kinguser/adx;->tH()Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adx;->eG(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/adx;->cG(I)V

    .line 166
    :goto_0
    return v3

    .line 146
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    const/4 v3, -0x1

    goto :goto_0

    .line 150
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget v0, p0, Lcom/kingroot/kinguser/adx;->adT:I

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v6, 0x3

    iget v0, p0, Lcom/kingroot/kinguser/adx;->adT:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/adx;->adU:I

    .line 157
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v6, 0x4

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tk()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 153
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/ady;->f([Ljava/lang/Object;)V

    .line 162
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/adx;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v3, v1

    .line 163
    goto :goto_0

    :cond_2
    move v0, v1

    .line 156
    goto :goto_1

    :cond_3
    move v0, v3

    .line 159
    goto :goto_2

    :cond_4
    move v3, v2

    .line 166
    goto :goto_0
.end method

.method public cD(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/kingroot/kinguser/adx;->adT:I

    .line 104
    return-void
.end method

.method public cE(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/kingroot/kinguser/adx;->adU:I

    .line 112
    return-void
.end method

.method public cF(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/kingroot/kinguser/adx;->adS:I

    .line 95
    return-void
.end method

.method public cG(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/kingroot/kinguser/adx;->adR:I

    .line 126
    return-void
.end method

.method public d(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->adQ:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 50
    return-void
.end method

.method public e(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->adQ:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 54
    return-void
.end method

.method public eG(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public tC()Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->adP:Lcom/kingroot/kinguser/vf;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    invoke-direct {v0}, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;-><init>()V

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    iget-object v1, p0, Lcom/kingroot/kinguser/adx;->adP:Lcom/kingroot/kinguser/vf;

    invoke-direct {v0, v1}, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;-><init>(Lcom/kingroot/kinguser/vf;)V

    goto :goto_0
.end method

.method public tD()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/vh;->getStatus()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 67
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 65
    goto :goto_0

    :cond_1
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public tE()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->lm()V

    .line 74
    :cond_0
    return-void
.end method

.method public tF()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->ln()V

    .line 80
    :cond_0
    return-void
.end method

.method public tG()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->lo()V

    .line 86
    :cond_0
    return-void
.end method

.method public tH()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/adx;->Ky:Lcom/kingroot/kinguser/vh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tI()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/kingroot/kinguser/adx;->adS:I

    return v0
.end method

.method public tJ()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/kingroot/kinguser/adx;->adR:I

    return v0
.end method

.method public tg()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/kingroot/kinguser/adx;->adT:I

    return v0
.end method

.method public th()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/kingroot/kinguser/adx;->adU:I

    return v0
.end method
