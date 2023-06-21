.class public Lcom/kingroot/kinguser/agr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static amX:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/agr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amW:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/agr$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/agr$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/agr;->amX:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/agr$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/agr;-><init>()V

    return-void
.end method

.method public static vW()Lcom/kingroot/kinguser/agr;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/agr;->amX:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agr;

    return-object v0
.end method


# virtual methods
.method public F(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "kinguser_9"

    invoke-static {v0}, Lcom/kingroot/kinguser/ago;->fy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aan;->dL(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/agp$b;->h(Landroid/os/IBinder;)Lcom/kingroot/kinguser/agp;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/agp;->E(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public fA(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-static {p1}, Lcom/kingroot/kinguser/aan;->dL(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 40
    if-nez v2, :cond_0

    .line 58
    :goto_0
    return v1

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 48
    const v5, 0x7fffffff

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 49
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 50
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_1

    .line 54
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_2
    move v1, v0

    .line 58
    goto :goto_0

    :cond_1
    move v0, v1

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move v0, v1

    .line 56
    goto :goto_2

    .line 54
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public fz(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "kinguser_9"

    invoke-static {v0}, Lcom/kingroot/kinguser/ago;->fy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aan;->dL(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/agp$b;->h(Landroid/os/IBinder;)Lcom/kingroot/kinguser/agp;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agp;->fz(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public vX()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "kinguser_9"

    invoke-static {v0}, Lcom/kingroot/kinguser/ago;->fy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aan;->dL(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agr;->amW:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/agp$b;->h(Landroid/os/IBinder;)Lcom/kingroot/kinguser/agp;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    const-string v1, "kinguser_9"

    invoke-interface {v0}, Lcom/kingroot/kinguser/agp;->vV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    .line 76
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
