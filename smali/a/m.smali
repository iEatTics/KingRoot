.class public final La/m;
.super La/ap;
.source "SourceFile"


# static fields
.field private static volatile l:La/m;


# instance fields
.field private m:Lcom/tencent/tps/client/AbsTPSClientBase;

.field private n:Lcom/tencent/tps/client/kr/OnQuerySupportedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, La/m;->l:La/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, La/ap;-><init>()V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private a(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 136
    new-instance v0, Lcom/kingroot/kinguser/ex;

    const/4 v3, 0x3

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ex;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V

    .line 142
    return-void
.end method

.method private b(La/av;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 74
    :try_start_0
    iget v2, p1, La/av;->as:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 76
    :pswitch_0
    iget-object v2, p0, La/m;->n:Lcom/tencent/tps/client/kr/OnQuerySupportedListener;

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, La/m;->n:Lcom/tencent/tps/client/kr/OnQuerySupportedListener;

    iget v3, p1, La/av;->arg1:I

    if-ne v3, v0, :cond_0

    move v1, v0

    :cond_0
    invoke-interface {v2, v1}, Lcom/tencent/tps/client/kr/OnQuerySupportedListener;->onGetResult(Z)V

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, La/m;->n:Lcom/tencent/tps/client/kr/OnQuerySupportedListener;

    .line 79
    iget v1, p1, La/av;->pE:I

    iget-object v2, p1, La/av;->I:Ljava/lang/String;

    iget v3, p1, La/av;->as:I

    invoke-direct {p0, v1, v2, v3}, La/m;->a(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    const-string v1, "listener no exists"

    iget v2, p1, La/av;->as:I

    invoke-direct {p0, v4, v1, v2}, La/m;->a(ILjava/lang/String;I)V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    const-string v2, "listener no exists"

    iget v3, p1, La/av;->as:I

    invoke-direct {p0, v1, v2, v3}, La/m;->a(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x4e23
        :pswitch_0
    .end packed-switch
.end method

.method private c(La/av;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 94
    iget-object v2, p0, La/m;->m:Lcom/tencent/tps/client/AbsTPSClientBase;

    if-nez v2, :cond_0

    .line 95
    const/4 v1, -0x1

    const-string v2, "client no exists"

    iget v3, p1, La/av;->as:I

    invoke-direct {p0, v1, v2, v3}, La/m;->a(ILjava/lang/String;I)V

    .line 106
    :goto_0
    return v0

    .line 99
    :cond_0
    iget v2, p1, La/av;->as:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 106
    goto :goto_0

    .line 101
    :pswitch_0
    invoke-static {}, Lcom/tencent/tps/client/AbsTPSClientBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, La/av;->arg2:I

    invoke-direct {p0, v2, v3}, La/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 102
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v0}, La/m;->a(ILjava/lang/String;I)V

    .line 103
    iget-object v1, p0, La/m;->m:Lcom/tencent/tps/client/AbsTPSClientBase;

    iget v3, p1, La/av;->arg1:I

    iget-object v4, p1, La/av;->pW:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Lcom/tencent/tps/client/AbsTPSClientBase;->onExploitDenied(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x4e22
        :pswitch_0
    .end packed-switch
.end method

.method private d(La/av;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    const-class v2, Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    iget-object v3, p0, La/m;->m:Lcom/tencent/tps/client/AbsTPSClientBase;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v1, -0x1

    const-string v2, "client for kr no exists"

    iget v3, p1, La/av;->as:I

    invoke-direct {p0, v1, v2, v3}, La/m;->a(ILjava/lang/String;I)V

    .line 123
    :goto_0
    return v0

    .line 116
    :cond_0
    iget v2, p1, La/av;->as:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 123
    goto :goto_0

    .line 118
    :pswitch_0
    invoke-static {}, Lcom/tencent/tps/client/AbsTPSClientBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, La/av;->arg2:I

    invoke-direct {p0, v2, v3}, La/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 119
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v1}, La/m;->a(ILjava/lang/String;I)V

    .line 120
    iget-object v1, p0, La/m;->m:Lcom/tencent/tps/client/AbsTPSClientBase;

    iget v3, p1, La/av;->arg1:I

    iget-object v4, p1, La/av;->pW:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Lcom/tencent/tps/client/AbsTPSClientBase;->onExploitDenied(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch
.end method

.method public static i()La/m;
    .locals 2

    .prologue
    .line 35
    sget-object v0, La/m;->l:La/m;

    if-nez v0, :cond_1

    .line 36
    const-class v1, La/m;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, La/m;->l:La/m;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, La/m;

    invoke-direct {v0}, La/m;-><init>()V

    sput-object v0, La/m;->l:La/m;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, La/m;->l:La/m;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(La/av;)V
    .locals 3

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-direct {p0, p1}, La/m;->b(La/av;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, La/m;->c(La/av;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, La/m;->d(La/av;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/16 v0, 0x4a3a

    const-string v1, "invalid eventID"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, La/m;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/tps/client/kr/OnQuerySupportedListener;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, La/m;->n:Lcom/tencent/tps/client/kr/OnQuerySupportedListener;

    .line 133
    return-void
.end method

.method public c(Lcom/tencent/tps/client/AbsTPSClientBase;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, La/m;->m:Lcom/tencent/tps/client/AbsTPSClientBase;

    .line 129
    return-void
.end method
