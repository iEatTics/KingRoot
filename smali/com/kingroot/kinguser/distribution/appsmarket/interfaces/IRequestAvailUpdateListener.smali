.class public interface abstract Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFetchDiffResult(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onFetchResult(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation
.end method
