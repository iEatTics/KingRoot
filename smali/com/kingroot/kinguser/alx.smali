.class public Lcom/kingroot/kinguser/alx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amv;


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/alx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private azc:Lcom/kingroot/kinguser/amv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/alx$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alx$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alx;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/uv;->kM()Lcom/kingroot/kinguser/uv;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/aly;->HG()Lcom/kingroot/kinguser/aly;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/amv;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amv;

    iput-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/alx$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/alx;-><init>()V

    return-void
.end method

.method public static HB()Lcom/kingroot/kinguser/alx;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/alx;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alx;

    return-object v0
.end method


# virtual methods
.method public HC()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0}, Lcom/kingroot/kinguser/amv;->HC()V

    .line 48
    return-void
.end method

.method public HD()Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0}, Lcom/kingroot/kinguser/amv;->HD()Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhatTypeReadyShow crash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    move-object v0, v1

    goto :goto_0
.end method

.method public HE()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0}, Lcom/kingroot/kinguser/amv;->HE()V

    .line 92
    return-void
.end method

.method public ax(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/amv;->ax(Ljava/util/List;)V

    .line 58
    return-void
.end method

.method public cy(Z)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/amv;->cy(Z)V

    .line 82
    return-void
.end method

.method public fj(I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/amv;->fj(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fk(I)I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/amv;->fk(I)I

    move-result v0

    return v0
.end method

.method public fl(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/amv;->fl(I)V

    .line 77
    return-void
.end method

.method public fm(I)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/alx;->azc:Lcom/kingroot/kinguser/amv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/amv;->fm(I)V

    .line 87
    return-void
.end method
