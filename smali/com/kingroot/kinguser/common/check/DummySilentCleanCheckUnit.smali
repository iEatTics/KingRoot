.class public Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;
.super Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private atA:Z

.field private aty:Z

.field private atz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->aty:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atz:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atA:Z

    .line 19
    iput-boolean p1, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->aty:Z

    .line 20
    return-void
.end method


# virtual methods
.method public d(ZZ)Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/ajr;->zt()Lcom/kingroot/kinguser/ajr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajr;->zv()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atz:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/ajr;->zt()Lcom/kingroot/kinguser/ajr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajr;->zw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atA:Z

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->aty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yQ()Z
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/ajr;->zt()Lcom/kingroot/kinguser/ajr;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->aty:Z

    iget-object v2, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atz:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ajr;->b(ZLjava/util/List;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public ze()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 24
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atA:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 46
    :goto_0
    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atz:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;->atz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    const-string v3, "/data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    const-string v3, "/mnt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    const-string v3, "/dev"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 41
    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
