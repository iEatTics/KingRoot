.class public interface abstract Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceive(IILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation
.end method
