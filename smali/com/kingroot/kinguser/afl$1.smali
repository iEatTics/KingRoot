.class Lcom/kingroot/kinguser/afl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private ahV:Ljava/text/Collator;

.field final synthetic ahW:Lcom/kingroot/kinguser/afl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afl;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kingroot/kinguser/afl$1;->ahW:Lcom/kingroot/kinguser/afl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/afl$1;->ahV:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;)I
    .locals 3

    .prologue
    .line 99
    iget-boolean v0, p1, Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;->mChecked:Z

    iget-boolean v1, p2, Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;->mChecked:Z

    if-eq v0, v1, :cond_1

    .line 100
    iget-boolean v0, p1, Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/afl$1;->ahV:Ljava/text/Collator;

    iget-object v1, p1, Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;->mDisplayName:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 93
    check-cast p1, Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;

    check-cast p2, Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/afl$1;->a(Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;)I

    move-result v0

    return v0
.end method
