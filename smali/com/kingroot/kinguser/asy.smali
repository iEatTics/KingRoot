.class public interface abstract Lcom/kingroot/kinguser/asy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract GT()Ljava/util/ArrayList;
    .annotation runtime Lcom/kingroot/kinguser/uu;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract GU()Z
    .annotation runtime Lcom/kingroot/kinguser/uu;
    .end annotation
.end method

.method public abstract a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .param p1    # Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/kingroot/kinguser/us;
    .end annotation
.end method

.method public abstract a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .annotation runtime Lcom/kingroot/kinguser/us;
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .annotation runtime Lcom/kingroot/kinguser/us;
    .end annotation
.end method
