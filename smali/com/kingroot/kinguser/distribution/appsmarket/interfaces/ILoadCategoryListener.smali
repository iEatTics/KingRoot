.class public interface abstract Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceive(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;)V"
        }
    .end annotation
.end method
