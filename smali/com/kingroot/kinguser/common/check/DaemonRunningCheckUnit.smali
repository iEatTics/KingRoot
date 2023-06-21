.class public Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;
.super Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static ats:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 88
    new-instance v0, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;

    invoke-direct {v4}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;->ats:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    return-void
.end method

.method public static zf()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;->ats:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 105
    return-void
.end method


# virtual methods
.method public d(ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/ajj;->zl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --ping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kinguser_su"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public yQ()Z
    .locals 5

    .prologue
    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/ajj;->zl()Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v3, "/dev/ku.sud.tmp"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/kingroot/kinguser/aja;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    const-string v1, "/dev/ku.sud.tmp -d"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/dev/ku.sud.tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public ze()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
