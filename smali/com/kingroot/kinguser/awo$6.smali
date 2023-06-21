.class final Lcom/kingroot/kinguser/awo$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/pv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cj(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;
    .locals 5

    .prologue
    .line 298
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/kingroot/kinguser/cby;

    iget-object v2, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/kingroot/kinguser/cby;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public ck(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;
    .locals 5

    .prologue
    .line 304
    invoke-static {p1}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/kingroot/kinguser/cby;

    iget-object v2, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/kingroot/kinguser/cby;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public p(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/cby;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 313
    new-instance v3, Lcom/kingroot/kinguser/cby;

    iget-object v4, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    iget-object v5, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/kingroot/kinguser/cby;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_0
    return-object v1
.end method
