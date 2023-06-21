.class public interface abstract Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addProtectedPackages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllLogs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;
.end method

.method public abstract getSwitcher()Z
.end method

.method public abstract notifyManuallyReboot()V
.end method

.method public abstract registerClient()V
.end method

.method public abstract removeProtectedPackages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSwitcher(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V
.end method

.method public abstract setSwitcherTest(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V
.end method

.method public abstract syncListWithDaemon()V
.end method
