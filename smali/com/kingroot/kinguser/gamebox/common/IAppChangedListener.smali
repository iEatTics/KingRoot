.class public interface abstract Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPackageAdd(Ljava/lang/String;)V
.end method

.method public abstract onPackageDelete(Ljava/lang/String;)V
.end method

.method public abstract onPackageReplace(Ljava/lang/String;)V
.end method
