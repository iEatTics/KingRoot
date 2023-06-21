.class public interface abstract Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager$Stub;
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

.method public abstract getSwitcher()Z
.end method

.method public abstract registerClient(Lcom/kingroot/kinguser/ai/IAntiInjectClient;)V
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

.method public abstract setSwitcher(ZLcom/kingroot/kinguser/ai/IAntiInjectClient;)V
.end method

.method public abstract syncDefaultProtectedPkgNames(Ljava/util/List;)V
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

.method public abstract syncList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
