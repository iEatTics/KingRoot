.class public Lcom/kingroot/common/ipc/IpcResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/common/ipc/IpcResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final IT:Lcom/kingroot/common/ipc/IpcResult;

.field private static final IU:Ljava/lang/ClassLoader;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private IV:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "k_framework"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/kingroot/common/ipc/IpcResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/ipc/IpcResult;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/kingroot/common/ipc/IpcResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/IpcResult;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/kingroot/common/ipc/IpcResult;->IT:Lcom/kingroot/common/ipc/IpcResult;

    .line 25
    const-class v0, Lcom/kingroot/common/ipc/IpcResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/ipc/IpcResult;->IU:Ljava/lang/ClassLoader;

    .line 459
    new-instance v0, Lcom/kingroot/common/ipc/IpcResult$1;

    invoke-direct {v0}, Lcom/kingroot/common/ipc/IpcResult$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/ipc/IpcResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kingroot/common/ipc/IpcResult;->IV:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6

    .prologue
    .line 446
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/common/ipc/IpcResult;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 447
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 2

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    return-void
.end method

.method private static l(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/IpcResult;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/kingroot/common/ipc/IpcResult;->IU:Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/kingroot/common/ipc/IpcResult;

    invoke-direct {v1, v0}, Lcom/kingroot/common/ipc/IpcResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic m(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/IpcResult;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/kingroot/common/ipc/IpcResult;->l(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final P(Z)Z
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 86
    if-nez v2, :cond_0

    .line 93
    :goto_0
    return p1

    .line 90
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    const-string v3, "readBoolean"

    const-string v4, "Boolean"

    invoke-direct {p0, v3, v2, v4, v1}, Lcom/kingroot/common/ipc/IpcResult;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public final ba(I)I
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 69
    if-nez v2, :cond_0

    .line 76
    :goto_0
    return p1

    .line 73
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    const-string v3, "readInt"

    const-string v4, "Integer"

    invoke-direct {p0, v3, v2, v4, v1}, Lcom/kingroot/common/ipc/IpcResult;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/kingroot/common/ipc/IpcResult;->IV:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/ipc/IpcResult;->IV:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string v2, "getResult"

    iget-object v3, p0, Lcom/kingroot/common/ipc/IpcResult;->IV:Ljava/lang/Object;

    const-string v4, "T"

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/kingroot/common/ipc/IpcResult;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingroot/common/ipc/IpcResult;->IV:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public final kF()Ljava/util/HashMap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 273
    if-nez v0, :cond_0

    move-object v0, v1

    .line 280
    :goto_0
    return-object v0

    .line 277
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 279
    const-string v3, "readHashMap"

    const-string v4, "HashMap"

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/kingroot/common/ipc/IpcResult;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 280
    goto :goto_0
.end method

.method public final kG()Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 377
    if-nez v0, :cond_0

    move-object v0, v1

    .line 384
    :goto_0
    return-object v0

    .line 381
    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    const-string v3, "readParcelable"

    const-string v4, "T extends Parcelable"

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/kingroot/common/ipc/IpcResult;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 384
    goto :goto_0
.end method

.method public final readBoolean()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/common/ipc/IpcResult;->P(Z)Z

    move-result v0

    return v0
.end method

.method public final readInt()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/common/ipc/IpcResult;->ba(I)I

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    move-object v0, v1

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    :try_start_0
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    const-string v3, "readString"

    const-string v4, "String"

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/kingroot/common/ipc/IpcResult;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 174
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/kingroot/common/ipc/IpcResult;->IV:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 457
    return-void
.end method
